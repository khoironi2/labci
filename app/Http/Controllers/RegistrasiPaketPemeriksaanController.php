<?php

namespace App\Http\Controllers;

use App\Models\Pasien;
use App\Models\Status;
use App\Models\Keterangan;
use App\Models\Pemeriksaan;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Resources\PostResource;
use App\Models\BidangPemeriksaan;
use App\Models\DetailPaket;
use App\Models\MetodePemeriksaan;
use App\Models\ParameterPemeriksaan;
use App\Models\Perusahaan;
use App\Models\Dokter;
use App\Models\Paket;
use Illuminate\Support\Facades\Validator;

class RegistrasiPaketPemeriksaanController extends Controller
{
    //
    public function index()
    {
        //
        $datapemeriksaan = Pemeriksaan::all();
        $databidang = BidangPemeriksaan::all();
        $datametode = MetodePemeriksaan::all();
        $dataparameter = ParameterPemeriksaan::all();
        $datapasien = Pasien::all();
        $dataperusahaan = Perusahaan::all();
        $datadokter = Dokter::all();

        return view('rolesviews.poli.registrasipaketpemeriksaan', [
            'datapemeriksaan' => $datapemeriksaan,
            'databidang' => $databidang,
            'datametode' => $datametode,
            'dataparameter' => $dataparameter,
            'datapasien' => $datapasien,
            'dataperusahaan' => $dataperusahaan,
            'datadokter' => $datadokter,
            'keterangan' => [],
        ]);
    }



    public function store(Request $request)
    {
        $validateData = $request->validate([
            'perusahaan_id' => 'nullable',
            'nama_paket' => 'required',
            'diskon_persen' => 'nullable',
            'diskon_rupiah' => 'nullable',
            'harga_manual' => 'nullable', // Tambahkan harga_manual ke validasi
            'total_harga' => 'nullable', // Pastikan tipe datanya sesuai
        ]);
        $validateData['marketing'] = auth()->user()->id;

        // Hilangkan % pada diskon_persen jika ada
        if (!empty($validateData['diskon_persen'])) {
            $validateData['diskon_persen'] = str_replace('%', '', $validateData['diskon_persen']);
        }

        // Hilangkan Rp dan titik pemisah ribuan pada diskon_rupiah jika ada
        if (!empty($validateData['diskon_rupiah'])) {
            $validateData['diskon_rupiah'] = str_replace(['Rp', '.', ' '], '', $validateData['diskon_rupiah']);
        }

        // Cek apakah harga_manual diisi dalam request
        if (!empty($request->harga_manual)) {
            // Jika harga_manual ada, gunakan sebagai total_harga setelah membersihkan formatnya
            $totalHarga = str_replace(['Rp', '.', ' '], '', $request->harga_manual);
        } else {
            // Jika tidak ada, gunakan nilai dari session
            $totalHarga = session('total_harga_paket', 0);

            // Hitung diskon jika ada diskon_persen
            if (!empty($validateData['diskon_persen'])) {
                $diskonPersen = (float)$validateData['diskon_persen'];
                $diskon = ($diskonPersen / 100) * $totalHarga;
                $totalHarga -= $diskon;
            }

            // Hitung diskon jika ada diskon_rupiah
            if (!empty($validateData['diskon_rupiah'])) {
                $diskonRupiah = (float)$validateData['diskon_rupiah'];
                $totalHarga -= $diskonRupiah;
            }
        }

        // Simpan total_harga yang telah dikalkulasi
        $validateData['total_harga'] = $totalHarga;



        $keterangan = $request->session()->get('keterangan');

        if (!$keterangan) {
            return redirect('/registrasi-paket-pemeriksaan')->with('error', 'paket Pemeriksaan gagal ditambahkan, silahkan tambahkan keterangan');
        }

        // $validateData['status_id'] = 1;

        $result = Paket::create($validateData);

        foreach ($keterangan as $value) {
            DetailPaket::create([
                'paket_id' => $result->id,
                'id_mcu' => $value['mcu_id'],
                'bidang_id' => $value['bidang_id'],
                'metode_id' => $value['metode_id'],
                'parameter_id' => $value['parameter_id'],
            ]);
        }

        $request->session()->forget(['requestKeterangan', 'keterangan']);

        return redirect('/list-paket')->with('success', 'Pemeriksaan telah berhasil ditambahkan');
    }


    public function getDataPasien($id){
        $dataPasien = Pasien::find($id);
        return response()->json($dataPasien);
    }
    public function getDataPerusahaan($id){
        $dataPerusahaan = Perusahaan::find($id);
        return response()->json($dataPerusahaan);
    }
    public function getDataDokter($id){
        $dataDokter = Dokter::find($id);
        return response()->json($dataDokter);
    }


}
