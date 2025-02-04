<?php

namespace App\Http\Controllers;

use App\Models\Pemeriksaan;
use App\Models\Keterangan;
use App\Models\Transaksi;
use Illuminate\Http\Request;

class PemeriksaanController extends Controller
{
    public function index(){
        $dataPemeriksaan = Pemeriksaan::where('status_id','5')->latest()->simplePaginate(10);
        return view('rolesviews.laborat.antreanpemeriksaan', ['dataPemeriksaan' => $dataPemeriksaan]);
    }

    public function edit($id){
        $dataPemeriksaan = Pemeriksaan::find($id);
        $dataKeterangan = Keterangan::where('pemeriksaan_id', $id)->get();
        return view('rolesviews.laborat.prosespemeriksaan', [
            'dataPemeriksaan' => $dataPemeriksaan,
            'dataKeterangan' => $dataKeterangan
        ]);
    }

    public function update(Request $request, $id)
{
    // Mengambil data pemeriksaan berdasarkan ID
    $dataPemeriksaan = Pemeriksaan::find($id);

    // Update status pemeriksaan
    $dataPemeriksaan->update([
        'status_id' => 1, // Update sesuai dengan status yang diinginkan
    ]);

    // Redirect ke halaman antrean-pemeriksaan dengan pesan sukses
    return redirect('/antrean-pemeriksaan')->with('success', 'Pembayaran telah berhasil diperbarui.......');
                                             // Mengirimkan id pemeriksaan untuk redirect ke cetak-nota
}


    
    public function destroy($id)
    {
        
        // Hapus data di tabel transaksi yang terkait dengan pemeriksaan_id
        Transaksi::where('pemeriksaan_id', $id)->delete();

        Keterangan::where('pemeriksaan_id', $id)->delete();

        // Menghapus data terkait di tabel 'pemeriksaans'
        $dataPemeriksaan = Pemeriksaan::find($id);
        if ($dataPemeriksaan) {
            $dataPemeriksaan->delete();
        }

        return redirect('/antrean-pemeriksaan')->with('berhasil', 'Pemeriksaan telah berhasil dihapus');
    }
}
