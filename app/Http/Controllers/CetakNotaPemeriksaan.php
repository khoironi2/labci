<?php

namespace App\Http\Controllers;

use App\Models\Pemeriksaan;
use App\Http\Controllers\Controller;
use App\Models\Keterangan;
use App\Models\Setting;
use App\Models\Transaksi;

class CetakNotaPemeriksaan extends Controller
{
    //
    public function show($id)
    {
        //
        $dataPemeriksaan = Pemeriksaan::all()->find($id);
        $datatransaksi = Transaksi::where('pemeriksaan_id', $id)->get();

        $dataKeterangan = Keterangan::where('pemeriksaan_id', $id)
        ->whereNull('paket_id')
        ->get();

        $setting = Setting::first(); // Mengambil 1 data pertama dari tabel settings
        $ppn = $setting ? $setting->ppn : null; // Jika data ditemukan, ambil kolom ppn

        return view('cetaknota', [
            'dataPemeriksaan' => $dataPemeriksaan,
            'datatransaksi' => $datatransaksi,
            'dataKeterangan' => $dataKeterangan,
            'ppn' => $ppn // Menambahkan ppn ke dalam data view

        ]);

  
    }
}
