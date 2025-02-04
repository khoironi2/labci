<?php

namespace App\Http\Controllers;

use App\Models\Pemeriksaan;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class RiwayatPemeriksaanPerusahaanController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
        // $dataPemeriksaan = Pemeriksaan::latest()->get();
        $dataPemeriksaan = Pemeriksaan::join('pasiens', 'pasiens.id', '=', 'pemeriksaans.pasien_id')
        ->whereIn('pemeriksaans.status_id', [2, 3, 6])
        ->where('pasiens.perusahaan_id', auth()->user()->perusahaan_id)
        ->select('pemeriksaans.*') // Pastikan hanya mengambil data dari pemeriksaans
        ->latest()->get();

        return view('riwayatPemeriksaanPerusahaan', ['dataPemeriksaan' => $dataPemeriksaan]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    
    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(pemeriksaan $pemeriksaan)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(pemeriksaan $pemeriksaan)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, pemeriksaan $pemeriksaan)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(pemeriksaan $pemeriksaan)
    {
        //
    }

    public function search($search){
        // $dataPemeriksaan = Pemeriksaan::where('status_id', 'like', '%'.$search.'%')->paginate(10);
        $dataPemeriksaan = Pemeriksaan::join('pasiens', 'pasiens.id', '=', 'pemeriksaans.pasien_id')
        ->where('pasiens.perusahaan_id', auth()->user()->perusahaan_id)
        ->where('pemeriksaans.status_id', 'like', '%'.$search.'%')
        ->select('pemeriksaans.*') // Hanya ambil data dari tabel pemeriksaans
        ->paginate(10);

        return view('riwayatPemeriksaanPerusahaan', ['dataPemeriksaan' => $dataPemeriksaan]);
    }

}
