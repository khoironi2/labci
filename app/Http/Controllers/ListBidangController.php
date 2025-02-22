<?php

namespace App\Http\Controllers;

use App\Models\BidangPemeriksaan;
use App\Models\Mcu;
use Illuminate\Http\Request;

class ListBidangController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
        // $dataBidang = BidangPemeriksaan::all();
        $dataBidang = BidangPemeriksaan::with('mcu')->get();
        $dataMcu = Mcu::all();

        return view('rolesviews.superadmin.listbidang', [
            'dataBidang' => $dataBidang,
            'dataMcu' => $dataMcu
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
        return view('rolesviews.superadmin.create.createbidang');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
        $validateData = $request->validate([
            'name' => 'required|max:100',
            'id_mcu' => 'required|max:30',
            'harga' => 'max:30',
            'nilai_normal' => 'max:30',
            'satuan' => 'max:30',
        ]);

        BidangPemeriksaan::create($validateData);

        return redirect('/list-bidang')->with('success','Bidang telah berhasil ditambahkan');
    }

    /**
     * Display the specified resource.
     */
    public function show(BidangPemeriksaan $bidangPemeriksaan)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($bidangPemeriksaan)
    {
        //

        $data = BidangPemeriksaan::find($bidangPemeriksaan);
        return view('rolesviews.superadmin.edit.editbidang',[
            'data' => $data,
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $bidangPemeriksaan)
    {
        //
        //
        $validateData = $request->validate([
            'name' => 'required|max:100',
            'id_mcu' => 'required|max:30',
            'harga' => 'max:30',
            'nilai_normal' => 'max:30',
            'satuan' => 'max:30',
        ]);

        BidangPemeriksaan::where('id', $bidangPemeriksaan )->update($validateData);

        return redirect('/list-bidang')->with('success','Bidang telah berhasil diperbaharui');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($bidangPemeriksaan)
    {

    // Lakukan operasi penghapusan data
        BidangPemeriksaan::destroy($bidangPemeriksaan);


        return redirect('/list-bidang')->with('success','Bidang telah berhasil dihapus');
    }
}
