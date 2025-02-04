<?php

namespace App\Http\Controllers;
use App\Models\Perusahaan;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class PerusahaanController extends Controller
{
    //
    // Menampilkan daftar perusahaan
    public function index()
    {
        $perusahaan = Perusahaan::with('marketingUser')->latest()->get();
        $users = User::all();
        return view('rolesviews.superadmin.perusahaan.index', compact('perusahaan','users'));
    }

    // Menampilkan form untuk menambahkan perusahaan baru
    public function create()
    {
        $users = User::all(); // Untuk memilih marketing dari daftar user
        return view('perusahaan.create', compact('users'));
    }


    public function store(Request $request)
    {
        $request->merge([
            'password' => 'stakeholdercilab',
            'marketing' => auth()->user()->id,
        ]);

        $request->validate([
            'email' => 'required|email|unique:perusahaan,email|unique:users,email', // Pastikan email unik di kedua tabel
            'password' => 'required|string',
        ]);

        // Buat perusahaan baru
        $perusahaan = Perusahaan::create([
            'nama_perusahaan' => $request->nama_perusahaan,
            'contact_person' => $request->contact_person,
            'jabatan' => $request->jabatan,
            'alamat' => $request->alamat,
            'kota' => $request->kota,
            'no_hp' => $request->no_hp,
            'email' => $request->email,
            'password' => Hash::make($request->password),
            'marketing' => $request->marketing,
        ]);

        // Buat user baru dengan perusahaan_id dari perusahaan yang baru dibuat
        User::create([
            'username' => $request->nama_perusahaan, // Bisa diubah sesuai kebutuhan
            'nama_lengkap' => $request->nama_perusahaan, // Bisa diubah sesuai kebutuhan
            'no_telp' => $request->no_hp,
            'email' => $request->email,
            'password' => Hash::make($request->password),
            'perusahaan_id' => $perusahaan->id, // Mengisi kolom perusahaan_id dengan id perusahaan yang baru dibuat
            'roles_id' => 5, // Tambahkan jika user punya role tertentu
        ]);

        return redirect()->route('list-perusahaan')->with('success', 'Perusahaan dan akun user berhasil dibuat');
    }



    // Menampilkan form untuk mengedit perusahaan
    public function edit($id)
    {
        $perusahaan = Perusahaan::findOrFail($id);
        $users = User::all();
        return view('perusahaan.edit', compact('perusahaan', 'users'));
    }

    // Mengupdate data perusahaan
    public function update(Request $request, $id)
    {
        $request->validate([
            'nama_perusahaan' => 'required|string|max:255',
            'contact_person' => 'required|string|max:255',
            'jabatan' => 'nullable|string|max:255',
            'alamat' => 'nullable|string|max:255',
            'kota' => 'nullable|string|max:255',
            'no_hp' => 'nullable|string|max:255',
            'email' => 'nullable|email|max:255',
            'marketing' => 'nullable|exists:users,id',
        ]);

        $perusahaan = Perusahaan::findOrFail($id);
        $perusahaan->update($request->all());

        return redirect()->route('list-perusahaan')->with('success', 'Perusahaan berhasil diupdate');
    }

    // Menghapus data perusahaan
    public function destroy($id)
    {
        $perusahaan = Perusahaan::findOrFail($id);
        $perusahaan->delete();

        return redirect()->route('list-perusahaan')->with('success', 'Perusahaan berhasil dihapus');
    }
}
