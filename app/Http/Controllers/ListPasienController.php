<?php

namespace App\Http\Controllers;

use App\Models\Pasien;
use App\Models\Perusahaan;
use Illuminate\Http\Request;

class ListPasienController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
        $datapasien = Pasien::latest()->simplePaginate(10);
        $dataperusahaan = Perusahaan::all();

        return view('rolesviews.administrasi.listpasien',
        [
            'datapasien' => $datapasien,
            'dataperusahaan' => $dataperusahaan,
        ]
    );
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
        $dataperusahaan = Perusahaan::all();
        return view('rolesviews.administrasi.create.createpasien',  
        [
            'dataperusahaan' => $dataperusahaan,
        ]);
    }

    /**
     * Store a newly created resource in storage.
     */
 

    public function store(Request $request) 
    {
        $validateData = $request->validate([
            'nama' => 'required',
            'tanggal_lahir' => 'required',
            'jenis_identitas' => 'required',
            'jenis_kelamin' => 'required',
            'no_identitas' => 'nullable',
            'no_telp' => 'required',
            'bpjs' => 'nullable',
            'alamat' => 'required|max:160',
            'perusahaan_id' => 'nullable',
            'gambar_pasiens' => 'required', // Validasi untuk gambar
        ]);

        // Proses gambar base64
        if ($request->has('gambar_pasiens')) {
            $base64Image = $request->input('gambar_pasiens');
            $image = str_replace('data:image/png;base64,', '', $base64Image);
            $image = str_replace(' ', '+', $image);
            $imageName = 'foto_pasien_' . time() . '.png';
            $filePath = ('./img/foto_pasiens/' . $imageName);
            file_put_contents($filePath, base64_decode($image));
            $validateData['gambar_pasiens'] = 'img/foto_pasiens/' . $imageName;
        }

        Pasien::create($validateData);

        return redirect('/list-pasien')->with('success', 'Pasien telah berhasil ditambahkan');
    }



    /**
     * Display the specified resource.
     */
    public function show(Pasien $pasien)
    {
        //


    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($pasien)
    {
        //
        $dataperusahaan = Perusahaan::all();
        $data = Pasien::find($pasien);
        return view('rolesviews.administrasi.edit.editpasien',
        [
            'pasien' => $data,
            'dataperusahaan' => $dataperusahaan,
        ]
    );
    }

    /**
     * Update the specified resource in storage.
     */


    public function update(Request $request, $pasien)
{
    $validateData = $request->validate([
        'nama' => 'required',
        'tanggal_lahir' => 'required',
        'jenis_identitas' => 'nullable',
        'jenis_kelamin' => 'required',
        'no_identitas' => 'nullable',
        'no_telp' => 'required',
        'bpjs' => 'nullable',
        'alamat' => 'required|max:160',
        'perusahaan_id' => 'nullable',
    ]);

    // Cari data pasien lama
    $existingPasien = Pasien::findOrFail($pasien);

    // Proses gambar dari kamera (hanya jika ada gambar baru diunggah)
    if ($request->has('gambar_pasiens') && $request->gambar_pasiens) {
        $imageData = $request->gambar_pasiens;

        // Validasi format Base64
        if (preg_match('/^data:image\/(\w+);base64,/', $imageData, $matches)) {
            $imageType = strtolower($matches[1]); // Dapatkan tipe gambar (png, jpg, jpeg, dll)

            // Validasi tipe gambar
            if (!in_array($imageType, ['png', 'jpg', 'jpeg'])) {
                return redirect()->back()->with('error', 'Format gambar tidak didukung.');
            }

            $imageName = 'pasien-' . $pasien . '-' . time() . '.' . $imageType;

            // Decode gambar
            $decodedImage = base64_decode(preg_replace('#^data:image/\w+;base64,#i', '', $imageData));

            if (!$decodedImage) {
                return redirect()->back()->with('error', 'Gambar tidak valid.');
            }

            // Simpan gambar
            $imagePath = ('./img/foto_pasiens/' . $imageName);
            if (file_put_contents($imagePath, $decodedImage) === false) {
                return redirect()->back()->with('error', 'Gagal menyimpan gambar.');
            }

            // Validasi gambar setelah disimpan
            if (!file_exists($imagePath) || getimagesize($imagePath) === false) {
                return redirect()->back()->with('error', 'Gambar tidak valid setelah disimpan.');
            }

            // Hapus gambar lama jika ada
            if ($existingPasien->gambar_pasiens && file_exists(public_path($existingPasien->gambar_pasiens))) {
                unlink(public_path($existingPasien->gambar_pasiens));
            }

            // Tambahkan nama file ke data validasi
            $validateData['gambar_pasiens'] = 'img/foto_pasiens/' . $imageName;
        } else {
            return redirect()->back()->with('error', 'Gambar tidak valid.');
        }
    }

    // Update data pasien
    $existingPasien->update($validateData);

    return redirect('/list-pasien')->with('success', 'Data Pasien telah berhasil diperbaharui');
}














    



    /**
     * Remove the specified resource from storage.
     */
    public function destroy($pasien)
    {
        //
        Pasien::destroy($pasien);


        return redirect('/list-pasien')->with('success', 'Pasien telah berhasil dihapus');
    }

    public function search(Request $request)
    {
        $search = $request->get('search');
        $datapasien = Pasien::where('nama', 'like', '%' . $search . '%')
        ->orWhere('no_identitas', 'like', '%' . $search . '%')
        ->orWhere('no_telp', 'like', '%' . $search . '%')
        ->orWhere('bpjs', 'like', '%' . $search . '%')
        ->orWhere('alamat', 'like', '%' . $search . '%')
        ->paginate(5);
        return view('rolesviews.administrasi.listpasien', ['datapasien' => $datapasien]);
    }
}
