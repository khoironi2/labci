<?php

namespace App\Http\Controllers;

use App\Models\Paket;
use App\Models\Perusahaan;
use App\Models\User;
use App\Models\MetodePemeriksaan;
use App\Models\ParameterPemeriksaan;
use Illuminate\Http\Request;

class PaketController extends Controller
{

    public function index()
{
    // $pakets = Paket::with(['perusahaan', 'marketingUser', 'detailpaket.metode', 'detailpaket.parameter'])->latest()->get();
    $pakets = Paket::with([
        'perusahaan',
        'marketingUser',
        'detailpaket.mcu',
        'detailpaket.bidang',
        'detailpaket.metode',
        'detailpaket.parameter'
    ])->latest()->get();
    $users = User::all();
    $perusahaans = Perusahaan::all();
    $metodes = MetodePemeriksaan::all();
    $parameters = ParameterPemeriksaan::all();

    return view('rolesviews.superadmin.paket.index', compact('pakets', 'users', 'perusahaans','metodes','parameters'));
}



    public function store(Request $request)
    {
        $request->validate([
            'nama_paket' => 'required',
            'perusahaan_id' => 'required',
            'marketing' => 'required',
            'total_harga' => 'nullable',
            'diskon_persen' => 'nullable',
            'diskon_rupiah' => 'nullable',
        ]);

        Paket::create($request->all());
        return redirect()->route('list-paket')->with('success', 'Paket berhasil ditambahkan!');
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'nama_paket' => 'required',
            'perusahaan_id' => 'required|exists:perusahaan,id',
            'marketing' => 'required|exists:users,id',
            'total_harga' => 'nullable',
            'diskon_persen' => 'nullable',
            'diskon_rupiah' => 'nullable',
        ]);

        $paket = Paket::findOrFail($id);
        $paket->update($request->all());

        return redirect()->route('list-paket')->with('success', 'Paket berhasil diperbarui!');
    }

    public function destroy($id)
    {
        $paket = Paket::findOrFail($id);
        $paket->delete();

        return redirect()->route('list-paket')->with('success', 'Paket berhasil dihapus!');
    }
}
