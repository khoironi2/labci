<?php

namespace App\Http\Controllers;

use App\Models\KesimpulanMcu;
use App\Models\KesimpulanPemeriksaan;
use App\Models\Keterangan;
use App\Models\Pemeriksaan;
use App\Models\Transaksi;
use Illuminate\Http\Request;

class HasilPemeriksaanPerusahaanController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
        // $dataPemeriksaan = Pemeriksaan::where('status_id','2')->latest()->simplePaginate(10);
        // $dataPemeriksaan = Pemeriksaan::whereIn('status_id', [2, 3, 6])
        // ->latest() // Mengurutkan berdasarkan yang terbaru
        // ->simplePaginate(10); // Paginate 10 data per halaman

        $dataPemeriksaan = Pemeriksaan::join('pasiens', 'pasiens.id', '=', 'pemeriksaans.pasien_id')
        ->whereIn('pemeriksaans.status_id', [2, 3, 6])
        ->where('pasiens.perusahaan_id', auth()->user()->perusahaan_id)
        ->select('pemeriksaans.*') // Pastikan hanya mengambil data dari pemeriksaans
        ->latest()
        ->simplePaginate(10);



        return view('rolesviews.administrasi.hasilpemeriksaanperusahaan', ['dataPemeriksaan' => $dataPemeriksaan]);
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
    public function show(Pemeriksaan $pemeriksaan)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Pemeriksaan $pemeriksaan)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Pemeriksaan $pemeriksaan)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        // Hapus data di tabel keterangan yang terkait dengan pemeriksaan_id
        Keterangan::where('pemeriksaan_id', $id)->delete();

        // Hapus data di tabel transaksi yang terkait dengan pemeriksaan_id
        Transaksi::where('pemeriksaan_id', $id)->delete();
        KesimpulanMcu::where('id_pemeriksaan', $id)->delete();
        KesimpulanPemeriksaan::where('id_pemeriksaan', $id)->delete();

        // Hapus data di tabel pemeriksaan
        Pemeriksaan::destroy($id);

        return redirect('/hasil-pemeriksaan')->with('success', 'Pemeriksaan telah berhasil dihapus');
    }

}
