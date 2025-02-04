<?php

namespace App\Http\Controllers;

use App\Models\BidangPemeriksaan;
use App\Models\MetodePemeriksaan;
use App\Models\ParameterPemeriksaan;
use Illuminate\Http\Request;

class ListParameterController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
        $dataParameter = ParameterPemeriksaan::with('metode')->orderBy('id', 'desc') ->get();
        // $dataParameter = ParameterPemeriksaan::with(['metode.bidang.mcu'])->orderBy('id', 'desc') ->get();
        // $dataMetode = MetodePemeriksaan::with('bidang')->get();
        $dataMetode = MetodePemeriksaan::with('bidang.mcu')->get();

        return view('rolesviews.superadmin.listparameter', [
            'dataParameter' => $dataParameter,
            'dataMetode' => $dataMetode
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
        $dataBidang = BidangPemeriksaan::all();
        $dataMetode = MetodePemeriksaan::all();
        return view(
            'rolesviews.superadmin.create.createparameter',
            ['dataBidang' => $dataBidang],
            ['dataMetode' => $dataMetode]
        );
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
        $validateData = $request->validate([
            'parameter' => 'required|max:30',
            // 'bidang_id' => 'required',
            'metode_id' => 'required',
            'nilai_rujukan' => 'required',
            'satuan' => 'max:100',
            'harga' => 'max:100'
        ]);

        ParameterPemeriksaan::create($validateData);

        return redirect('/list-parameter')->with('success', 'Parameter telah berhasil ditambahkan');
    }

    /**
     * Display the specified resource.
     */
    public function show(ParameterPemeriksaan $parameterPemeriksaan)
    {
        //

    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($parameterPemeriksaan)
    {
        //
        $dataBidang = BidangPemeriksaan::all();
        $dataMetode = MetodePemeriksaan::all();
        $data = ParameterPemeriksaan::find($parameterPemeriksaan);
        return view('rolesviews.superadmin.edit.editparameter',[
            'data' => $data,
            'dataBidang' => $dataBidang,
            'dataMetode' => $dataMetode
        ],);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $parameterPemeriksaan)
    {
        //
        $validateData = $request->validate([
            'parameter' => 'required|max:30',
            // 'bidang_id' => 'required',
            'metode_id' => 'required',
            'nilai_rujukan' => 'required',
            'satuan' => 'max:100',
            'harga' => 'max:100'
        ]);

        ParameterPemeriksaan::where('id', $parameterPemeriksaan )->update($validateData);

        return redirect('/list-parameter')->with('success','Parameter telah berhasil diperbaharui');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($parameterPemeriksaan)
    {
        //
        ParameterPemeriksaan::destroy($parameterPemeriksaan);


        return redirect('/list-parameter')->with('success','Parameter telah berhasil dihapus');
    }
}
