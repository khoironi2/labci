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
use App\Models\MetodePemeriksaan;
use App\Models\ParameterPemeriksaan;
use App\Models\Perusahaan;
use App\Models\Dokter;
use App\Models\Paket;
use App\Models\Transaksi;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class RegistrasiPemeriksaanByPaketController extends Controller
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

        return view('rolesviews.poli.registrasipemeriksaanbypaket', [
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
    DB::transaction(function () use ($request) {
        // Validasi data
        $request->validate([
            'pasien_id' => 'required|array',
            'pasien_id.*' => 'exists:pasiens,id',
            'paket_id' => 'required|array', // Karena multiple, paket_id adalah array
            'paket_id.*' => 'exists:paket,id',
            'status_permohonan' => 'nullable',
            'jenis_layanan' => 'required',
            'pengantaran_hasil' => 'required',
            'rekomendasi' => 'required',
        ]);

        // Ambil total harga untuk semua paket yang dipilih
        $totalHarga = Paket::whereIn('id', $request->paket_id)->sum('total_harga');

        // Ambil detail paket berdasarkan paket yang dipilih
        $paketList = Paket::with('detailpaket')->whereIn('id', $request->paket_id)->get();

        // Iterasi setiap pasien yang dipilih
        foreach ($request->pasien_id as $pasienId) {
            // Simpan satu data pemeriksaan untuk pasien
            $pemeriksaan = new Pemeriksaan();
            $pemeriksaan->pasien_id = $pasienId;
            $pemeriksaan->status_permohonan = $request->status_permohonan;
            $pemeriksaan->jenis_layanan = $request->jenis_layanan;
            $pemeriksaan->pengantaran_hasil = $request->pengantaran_hasil;
            $pemeriksaan->rekomendasi = $request->rekomendasi;
            $pemeriksaan->total_harga = $totalHarga;
            $pemeriksaan->status_id = 5;
            $pemeriksaan->save();

            // **Menghindari duplikasi dalam tabel Keterangan**
            $uniqueKeterangan = collect();
            
            foreach ($paketList as $paket) {
                foreach ($paket->detailpaket as $detail) {
                    $key = "{$detail->id_mcu}-{$detail->bidang_id}-{$detail->parameter_id}-{$detail->metode_id}";
                    if (!$uniqueKeterangan->has($key)) {
                        $uniqueKeterangan->put($key, [
                            'pemeriksaan_id' => $pemeriksaan->id,
                            'id_mcu' => $detail->id_mcu,
                            'bidang_id' => $detail->bidang_id,
                            'parameter_id' => $detail->parameter_id,
                            'metode_id' => $detail->metode_id,
                            'paket_id' => $paket->id,
                        ]);
                    }
                }
            }

            // Simpan semua keterangan yang unik
            Keterangan::insert($uniqueKeterangan->values()->toArray());

            // **Simpan transaksi untuk setiap kombinasi pasien & paket**
            foreach ($request->paket_id as $paketId) {
                $transaksi = new Transaksi();
                $transaksi->pemeriksaan_id = $pemeriksaan->id;
                $transaksi->paket_id = $paketId;
                $transaksi->pasien_id = $pasienId;
                $transaksi->save();
            }
        }
    });

    return redirect()->route('registrasi-pemeriksaan-by-paket')->with('success', 'Data pemeriksaan dan transaksi berhasil disimpan');
}




    public function getDataPasien($id){
        $dataPasien = Pasien::find($id);
        return response()->json($dataPasien);
    }
    public function getDataPerusahaan($id){
        $dataPerusahaan = Perusahaan::find($id);
        return response()->json($dataPerusahaan);
    }
    public function getPasienByPerusahaan($id)
    {
        $dataPasien = Pasien::where('perusahaan_id', $id)->get();
        return response()->json($dataPasien);
    }

    public function getDataDokter($id){
        $dataDokter = Dokter::find($id);
        return response()->json($dataDokter);
    }

    public function getPaketByPerusahaan($id)
    {
        $paket = Paket::where('perusahaan_id', $id)->get();
        return response()->json($paket);
    }
    public function getPaket()
    {
        $paket = Paket::all();
        return response()->json($paket);
    }



}
