<?php

namespace App\Http\Controllers;

use App\Models\Pemeriksaan;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Keterangan;
use App\Models\ParameterPemeriksaan;
use App\Models\KesimpulanPemeriksaan;
use App\Models\KesimpulanMcu;
use App\Models\Setting;

class CetakHasilController extends Controller
{

    // public function show($id)
    // {
    //     //
    //     $dataPemeriksaan = Pemeriksaan::with('keterangan')->find($id);


    //     return view('cetakhasil',[
    //         'dataPemeriksaan' => $dataPemeriksaan,

    //     ]);
    // }

    public function show($id)
    {
        $dataPemeriksaan = Pemeriksaan::with([
            'keterangan.mcu',
            'keterangan.bidang',
            'keterangan.metode',
            'keterangan.parameter'
        ])->find($id);
        $dataKesimpulanPemeriksaan = KesimpulanPemeriksaan::where('id_pemeriksaan', $id)
        ->with('mcu', 'dokterPemeriksa')
        ->get();

        $timdokterpemeriksa = KesimpulanPemeriksaan::where('id_pemeriksaan', $id)->get();

        $dataKesimpulanmcu = KesimpulanMcu::where('id_pemeriksaan', $id)->first();
        $dataKeterangan = Keterangan::where('pemeriksaan_id', $id)
            ->with(['mcu', 'bidang', 'metode', 'parameter'])
            ->get();

            $setting = Setting::first(); // Mengambil 1 data pertama dari tabel settings
            $warnasatu = $setting ? $setting->warna_satu : null; // Jika data ditemukan, ambil kolom warna

        return view('cetakhasil', [
            'dataPemeriksaan' => $dataPemeriksaan,
            'dataKesimpulanPemeriksaan' => $dataKesimpulanPemeriksaan,
            'dataKesimpulanmcu' => $dataKesimpulanmcu,
            'timdokterpemeriksa' => $timdokterpemeriksa,
            'dataKeterangan' => $dataKeterangan,
            'warnasatu' => $warnasatu

        ]);
    }

    public function showUsingPhoto($id)
    {
        $dataPemeriksaan = Pemeriksaan::with([
            'keterangan.mcu',
            'keterangan.bidang',
            'keterangan.metode',
            'keterangan.parameter'
        ])->find($id);
        $dataKesimpulanPemeriksaan = KesimpulanPemeriksaan::where('id_pemeriksaan', $id)
        ->with('mcu', 'dokterPemeriksa')
        ->get();

        $timdokterpemeriksa = KesimpulanPemeriksaan::where('id_pemeriksaan', $id)->get();

        $dataKesimpulanmcu = KesimpulanMcu::where('id_pemeriksaan', $id)->first();
        $dataKeterangan = Keterangan::where('pemeriksaan_id', $id)
            ->with(['mcu', 'bidang', 'metode', 'parameter'])
            ->get();

            $setting = Setting::first(); // Mengambil 1 data pertama dari tabel settings
            $warnasatu = $setting ? $setting->warna_satu : null; // Jika data ditemukan, ambil kolom warna

        return view('cetakhasilusingphoto', [
            'dataPemeriksaan' => $dataPemeriksaan,
            'dataKesimpulanPemeriksaan' => $dataKesimpulanPemeriksaan,
            'dataKesimpulanmcu' => $dataKesimpulanmcu,
            'timdokterpemeriksa' => $timdokterpemeriksa,
            'dataKeterangan' => $dataKeterangan,
            'warnasatu' => $warnasatu

        ]);
    }



}
