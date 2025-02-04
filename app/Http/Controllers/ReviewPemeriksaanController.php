<?php

namespace App\Http\Controllers;

use App\Models\Keterangan;
use App\Models\Pemeriksaan;
use App\Models\Dokter;
use App\Models\User;
use App\Models\KesimpulanPemeriksaan;
use App\Models\KesimpulanMcu;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Transaksi;

class ReviewPemeriksaanController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
        // $dataPemeriksaan = Pemeriksaan::where('status_id','2')->latest()->simplePaginate(10);
        $dataPemeriksaan = Pemeriksaan::where('status_id','1')->latest()->simplePaginate(10);
        return view('rolesviews.poli.listreviewpemeriksaan', ['dataPemeriksaan' => $dataPemeriksaan]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }



    public function store(Request $request)
    {

        // Cek apakah id_mcu sudah ada pada id_pemeriksaan yang sama
        $exists = KesimpulanPemeriksaan::where('id_pemeriksaan', $request->id_pemeriksaan)
            ->where('id_mcu', $request->id_mcu)
            ->exists();

        if ($exists) {
            return redirect()->back()->with('error', 'Gagal input, Kesimpulan sudah diinputkan pada MCU yang sama.');
        }

        // Proses upload file jika ada
        $filePath = null;
        if ($request->hasFile('gambar_hasil')) {
            $file = $request->file('gambar_hasil');
            $fileName = time() . '_' . $file->getClientOriginalName(); // Nama unik untuk file
            $file->move(('./img/file_pendukung'), $fileName); // Simpan di public/img/file_pendukung
            $filePath = 'img/file_pendukung/' . $fileName; // Path untuk disimpan ke database
        }

        // Input data ke tabel kesimpulan_pemeriksaan
        try {
            KesimpulanPemeriksaan::create([
                'id_pemeriksaan' => $request->id_pemeriksaan,
                'id_mcu' => $request->id_mcu,
                'catatan_hasil' => $request->catatan_hasil,
                'kesimpulan' => $request->kesimpulan,
                'saran' => $request->saran,
                'kesan' => $request->kesan,
                'validasi_oleh' => auth()->user()->id,
                'dokter_penanggung_jawab' => $request->dokter_penanggung_jawab,
                'dokter_pemeriksa' => $request->dokter_pemeriksa,
                'gambar_hasil' => $filePath, // Simpan path file
            ]);

            $pemeriksaan = Pemeriksaan::where('id', $request->id_pemeriksaan)
                ->where('status_id', '!=', 3) // Pastikan status_id bukan 3
                ->first();

            if ($pemeriksaan) {
                $pemeriksaan->update([
                    'status_id' => 3
                ]);
            }

            // Redirect atau response success
            return redirect()->back()->with('success', 'Data berhasil disimpan.');
        } catch (\Exception $e) {
            // Tangani error
            return redirect()->back()->with('error', 'Terjadi kesalahan: ' . $e->getMessage());
        }
    }

    public function storeKesimpulanMcu(Request $request)
    {

        // Cek apakah id_mcu sudah ada pada id_pemeriksaan yang sama
        $exists = KesimpulanMcu::where('id_pemeriksaan', $request->id_pemeriksaan)
            ->exists();

        if ($exists) {
            return redirect()->back()->with('error', 'Gagal input, Kesimpulan sudah diinputkan pada Pemeriksaan yang sama.');
        }

            // Input data ke tabel kesimpulan_pemeriksaan
        try {
            KesimpulanMcu::create([
                'id_pemeriksaan' => $request->id_pemeriksaan,
                'catatan_hasil' => $request->catatan_hasil,
                'penilaian' => $request->penilaian,
                'kesimpulan' => $request->kesimpulan,
                'saran' => $request->saran,
                'catatan' => $request->catatan,
                'validasi_oleh' => auth()->user()->id,
                'dokter_penanggung_jawab' => $request->dokter_penanggung_jawab,
                'dokter_pemeriksa' => $request->dokter_pemeriksa,
            ]);
            // Update status_id menjadi 3 di tabel pemeriksaan berdasarkan id_pemeriksaan
            $pemeriksaan = Pemeriksaan::where('id', $request->id_pemeriksaan)
                ->where('status_id', '!=', 6) // Pastikan status_id bukan 3
                ->first();

            if ($pemeriksaan) {
                $pemeriksaan->update([
                    'status_id' => 6
                ]);
            }
            // Redirect atau response success
            return redirect()->back()->with('success', 'Data berhasil disimpan.');
        } catch (\Exception $e) {
            // Tangani error
            return redirect()->back()->with('error', 'Terjadi kesalahan: ' . $e->getMessage());
        }
    }


    public function updateKesimpulanMcu(Request $request)
{
    // Cari kesimpulan berdasarkan id_pemeriksaan
    $kesimpulanMcu = KesimpulanMcu::where('id_pemeriksaan', $request->id_pemeriksaan)->first();

    if ($kesimpulanMcu) {
        // Jika data ditemukan, update data tersebut
        try {
            $kesimpulanMcu->update([
                'catatan_hasil' => $request->catatan_hasil,
                'penilaian' => $request->penilaian,
                'kesimpulan' => $request->kesimpulan,
                'saran' => $request->saran,
                'catatan' => $request->catatan,
                // 'validasi_oleh' => $request->validasi_oleh,
                'validasi_oleh' => auth()->user()->id,
                'dokter_penanggung_jawab' => $request->dokter_penanggung_jawab,
                'dokter_pemeriksa' => $request->dokter_pemeriksa,
            ]);

            // Update status_id menjadi 3 di tabel pemeriksaan berdasarkan id_pemeriksaan
            $pemeriksaan = Pemeriksaan::where('id', $request->id_pemeriksaan)
                ->where('status_id', '=', 6) // Pastikan status_id bukan 3
                ->first();

            if ($pemeriksaan) {
                $pemeriksaan->update([
                    'status_id' => 6
                ]);
            }

            // Redirect atau response success
            return redirect()->back()->with('success', 'Data berhasil diupdate.');
        } catch (\Exception $e) {
            // Tangani error
            return redirect()->back()->with('error', 'Terjadi kesalahan: ' . $e->getMessage());
        }
    } else {
        // Jika tidak ditemukan, beri tahu pengguna
        return redirect()->back()->with('error', 'Data tidak ditemukan untuk id_pemeriksaan yang diberikan.');
    }
}




    /**
     * Display the specified resource.
     */
    public function show(Pemeriksaan $pemeriksaan)
    {
        //
    }



    public function edit($id)
    {
        $dataPemeriksaan = Pemeriksaan::find($id);
        $dataKeterangan = Keterangan::where('pemeriksaan_id', $id)
            ->with(['mcu', 'bidang', 'metode', 'parameter'])
            ->get();


        return view('rolesviews.poli.reviewpemeriksaan', [
            'dataPemeriksaan' => $dataPemeriksaan,
            'dataKeterangan' => $dataKeterangan
        ]);
    }




    public function editkesimpulanpemeriksaan($id)
    {
        $dataPemeriksaan = Pemeriksaan::find($id);
        $dataKeterangan = Keterangan::where('pemeriksaan_id', $id)
            ->with(['mcu', 'bidang', 'metode', 'parameter'])
            ->get();
        $datadokter = Dokter::all();
        $dataUser = User::all();
        $dataKesimpulanPemeriksaan = KesimpulanPemeriksaan::where('id_pemeriksaan', $id)->get();

        return view('rolesviews.poli.kesimpulanpemeriksaan', [
            'dataPemeriksaan' => $dataPemeriksaan,
            'dataKeterangan' => $dataKeterangan,
            'datadokter' => $datadokter,
            'dataUser' => $dataUser,
            'dataKesimpulanPemeriksaan' => $dataKesimpulanPemeriksaan,
        ]);
    }

    public function updatekesimpulanpemeriksaan(Request $request, $id_pemeriksaan)
{
    // Cari data berdasarkan id_pemeriksaan dan id_mcu
    $kesimpulanPemeriksaan = KesimpulanPemeriksaan::where('id_pemeriksaan', $id_pemeriksaan)
        ->where('id_mcu', $request->id_mcu)  // Pastikan id_mcu sesuai
        ->firstOrFail();

    // Proses upload file jika ada
    $filePath = $kesimpulanPemeriksaan->gambar_hasil; // Jika tidak ada file baru, pakai yang lama
    if ($request->hasFile('gambar_hasil')) {
        $file = $request->file('gambar_hasil');
        $fileName = time() . '_' . $file->getClientOriginalName(); // Nama unik untuk file
        $file->move(('./img/file_pendukung'), $fileName); // Simpan di public/img/file_pendukung
        $filePath = 'img/file_pendukung/' . $fileName; // Path untuk disimpan ke database
    }

    // Update data ke tabel kesimpulan_pemeriksaan
    try {
        $kesimpulanPemeriksaan->update([
            'catatan_hasil' => $request->catatan_hasil,
            'kesimpulan' => $request->kesimpulan,
            'saran' => $request->saran,
            'kesan' => $request->kesan,
            'validasi_oleh' => auth()->user()->id,
            'dokter_penanggung_jawab' => $request->dokter_penanggung_jawab,
            'dokter_pemeriksa' => $request->dokter_pemeriksa,
            'gambar_hasil' => $filePath, // Simpan path file
        ]);

        $pemeriksaan = Pemeriksaan::where('id', $request->id_pemeriksaan)
                ->where('status_id', '!=', 3) // Pastikan status_id bukan 3
                ->first();

            if ($pemeriksaan) {
                $pemeriksaan->update([
                    'status_id' => 3
                ]);
            }

        // Redirect atau response success
        return redirect()->back()->with('success', 'Data berhasil diperbarui.');
    } catch (\Exception $e) {
        // Tangani error
        return redirect()->back()->with('error', 'Terjadi kesalahan: ' . $e->getMessage());
    }
}








    /**
     * Update the specified resource in storage.
     */



    public function update(Request $request, $id)
    {
        $dataPemeriksaan = Pemeriksaan::find($id);

        // Periksa tombol yang diklik
        $status_id = $request->input('submit_action') === 'permanent' ? 2 : 1;

        // Update status pemeriksaan
        $dataPemeriksaan->update([
            'status_id' => $status_id
        ]);

        // Update data keterangan
        $keterangan = Keterangan::where('pemeriksaan_id', $id)->get();
        foreach ($keterangan as $item) {
            $item->update([
                // 'catatan' => $request->input('catatan')[$item->id],
                // 'kesan' => $request->input('kesan')[$item->id],
                'hasil' => $request->input('hasil')[$item->id],
            ]);
        }

        // Redirect berdasarkan tombol yang diklik
        if ($request->input('submit_action') === 'permanent') {
            return redirect('/review-pemeriksaan')->with('success', 'Pemeriksaan telah berhasil diperbarui');
        } else {
            return redirect()->back()->with('success', 'Pemeriksaan telah disimpan sebagai draft');
        }
    }



    public function editkesimpulanmcu($id)
    {
        $dataPemeriksaan = Pemeriksaan::find($id);
        $dataKeterangan = Keterangan::where('pemeriksaan_id', $id)
            ->with(['mcu', 'bidang', 'metode', 'parameter'])
            ->get();
        $datadokter = Dokter::all();
        $dataUser = User::all();
        $dataKesimpulanPemeriksaan = KesimpulanPemeriksaan::where('id_pemeriksaan', $id)->get();
        $dataKesimpulanmcu = KesimpulanMcu::where('id_pemeriksaan', $id)->first(); // Mengambil 1 record berdasarkan id_pemeriksaan

        return view('rolesviews.poli.kesimpulanmcu', [
            'dataPemeriksaan' => $dataPemeriksaan,
            'dataKeterangan' => $dataKeterangan,
            'datadokter' => $datadokter,
            'dataUser' => $dataUser,
            'dataKesimpulanPemeriksaan' => $dataKesimpulanPemeriksaan,
            'dataKesimpulanmcu' => $dataKesimpulanmcu,
        ]);
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

        // Hapus data di tabel pemeriksaan
        Pemeriksaan::destroy($id);

        return redirect('/review-pemeriksaan')->with('success', 'Pemeriksaan telah berhasil dihapus');
    }




public function getKesimpulanPemeriksaan(Request $request)
{
    $id_pemeriksaan = $request->id_pemeriksaan;
    $id_mcu = $request->id_mcu;

    $kesimpulan = KesimpulanPemeriksaan::with('dokterPemeriksa') // Ambil data dokter pemeriksa
        ->where('id_pemeriksaan', $id_pemeriksaan)
        ->where('id_mcu', $id_mcu)
        ->first();

    return response()->json($kesimpulan);
}


}
