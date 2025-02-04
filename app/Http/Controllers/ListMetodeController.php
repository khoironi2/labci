<?php

namespace App\Http\Controllers;

use App\Models\MetodePemeriksaan;
use App\Models\BidangPemeriksaan;

use Illuminate\Http\Request;

class ListMetodeController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //

        // $dataMetode = MetodePemeriksaan::with('bidang')->orderBy('created_at', 'desc') ->get();
        $dataMetode = MetodePemeriksaan::with(['bidang', 'parameter'])  // Menambahkan 'parameters' untuk mengambil data parameter
                                ->orderBy('created_at', 'desc')
                                ->get();
        $dataBidang = BidangPemeriksaan::with('mcu')->get();

        return view('rolesviews.superadmin.listmetode',
        [
        'dataMetode' => $dataMetode,
        'dataBidang' => $dataBidang
    ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
        return view('rolesviews.superadmin.create.createmetode');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
        $validateData = $request->validate([
            'name' => 'required|max:100',
            'id_bidang' => 'required|max:30',
            'harga' => 'max:100',
            'nilai_normal' => 'max:100',
            'satuan' => 'max:100'
        ]);

        MetodePemeriksaan::create($validateData);

        return redirect('/list-metode')->with('success', 'Metode telah berhasil ditambahkan');
    }

    /**
     * Display the specified resource.
     */
    public function show(MetodePemeriksaan $metodePemeriksaan)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($metodePemeriksaan)
    {
        //
        $data = MetodePemeriksaan::find($metodePemeriksaan);
        return view('rolesviews.superadmin.edit.editmetode',[
            'data' => $data,
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $metodePemeriksaan)
    {
        //
        $validateData = $request->validate([
            'name' => 'required|max:100',
            'id_bidang' => 'required|max:30',
            'harga' => 'max:100',
            'nilai_normal' => 'max:100',
            'satuan' => 'max:100'
        ]);

        MetodePemeriksaan::where('id', $metodePemeriksaan )->update($validateData);

        return redirect('/list-metode')->with('success','Metode telah berhasil diperbaharui');

    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($metodePemeriksaan)
    {
        //
        // Lakukan operasi penghapusan data
        MetodePemeriksaan::destroy($metodePemeriksaan);


        return redirect('/list-metode')->with('success', 'Metode telah berhasil dihapus');
    }
}
