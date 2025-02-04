<?php

namespace App\Http\Controllers;
use App\Models\Dokter;
use App\Models\User;
use Illuminate\Http\Request;

class DokterController extends Controller
{
    //
    public function index()
    {
        $dokters = Dokter::with('marketingUser')->latest()->paginate(10);
        $users = User::all();
        return view('rolesviews.superadmin.dokter.index', compact('dokters', 'users'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'gelardepan' => 'nullable|string',
            'nama_lengkap' => 'required|string',
            'gelarbelakang' => 'nullable|string',
            'kategori' => 'required|in:Dokter,Rekanan',
            'tanggal_lahir' => 'required|date',
            'jenis_kelamin' => 'required|in:Laki-Laki,Perempuan',
            'alamat' => 'required|string',
            'kota' => 'required|string',
            'no_hp' => 'required|string',
            'reward' => 'nullable|string',
            'bank' => 'nullable|string',
            'no_rek' => 'nullable|string',
        ]);
        $request['marketing'] = auth()->user()->id;

        Dokter::create($request->all());
        return redirect()->back()->with('success', 'Data Dokter berhasil ditambahkan.');
    }


    public function update(Request $request, Dokter $dokter)
    {
        $request->validate([
            'gelardepan' => 'nullable|string',
            'nama_lengkap' => 'required|string',
            'gelarbelakang' => 'nullable|string',
            'kategori' => 'required|in:Dokter,Rekanan',
            'tanggal_lahir' => 'required|date',
            'jenis_kelamin' => 'required|in:Laki-Laki,Perempuan',
            'alamat' => 'required|string',
            'kota' => 'required|string',
            'no_hp' => 'required|string',
            'reward' => 'nullable|string',
            'bank' => 'nullable|string',
            'no_rek' => 'nullable|string',
            'ttd_dokter' => 'nullable|image|mimes:jpeg,png,jpg,gif', // Validasi file
        ]);
        $request['marketing'] = auth()->user()->id;

        $filePath = $dokter->ttd_dokter; // Menyimpan nilai lama jika tidak diunggah baru
        if ($request->hasFile('ttd_dokter')) {
            $file = $request->file('ttd_dokter');
            $fileName = time() . '_' . $file->getClientOriginalName(); // Nama unik untuk file
            $file->move(public_path('img/ttd/dokter'), $fileName); // Simpan di public/img/ttd/dokter
            $filePath = 'img/ttd/dokter/' . $fileName; // Path untuk disimpan ke database

            // Hapus file lama jika ada
            if ($dokter->ttd_dokter && file_exists(public_path($dokter->ttd_dokter))) {
                unlink(public_path($dokter->ttd_dokter));
            }
        }

        $dokter->update(array_merge($request->except('ttd_dokter'), [
            'ttd_dokter' => $filePath,
        ]));

        return redirect()->back()->with('success', 'Data Dokter berhasil diperbarui.');
    }


    public function destroy(Dokter $dokter)
    {
        $dokter->delete();
        return redirect()->back()->with('success', 'Data Dokter berhasil dihapus.');
    }
}
