<?php

namespace App\Http\Controllers;

use App\Models\DetailPaket;
use App\Models\Paket;
use App\Models\MetodePemeriksaan;
use App\Models\ParameterPemeriksaan;
use Illuminate\Http\Request;

class DetailPaketController extends Controller
{
    public function index()
    {
        $detailPakets = DetailPaket::with(['paket', 'metode', 'parameter'])->get();
        $pakets = Paket::all();
        $metodes = MetodePemeriksaan::all();
        $parameters = ParameterPemeriksaan::all();

        return view('rolesviews.superadmin.detail_paket.index', compact('detailPakets', 'pakets', 'metodes', 'parameters'));
    }



    public function store(Request $request)
        {
            $request->validate([
                'paket_id' => 'required|exists:paket,id',
                'metode_id' => 'nullable',
                'parameter_id' => 'nullable',
            ]);

            // Validasi tambahan: hanya salah satu yang boleh diisi
            if ($request->filled('metode_id') && $request->filled('parameter_id')) {
                return redirect()->back()->with('error','Hanya boleh memilih salah satu antara Metode atau Parameter.')->withInput();
            }

            if (!$request->filled('metode_id') && !$request->filled('parameter_id')) {
                return redirect()->back()->with('error','Salah satu antara Metode atau Parameter harus dipilih.')->withInput();
            }

            // Menyimpan data ke database
            DetailPaket::create([
                'paket_id' => $request->paket_id,
                'metode_id' => $request->metode_id,
                'parameter_id' => $request->parameter_id,
            ]);

            return redirect()->back()->with('success', 'Detail Paket berhasil ditambahkan.');
        }


    public function update(Request $request, $id)
    {
        $request->validate([
            'paket_id' => 'required|exists:paket,id',
            'metode_id' => 'nullable',
            'parameter_id' => 'nullable',
        ]);

        $detailPaket = DetailPaket::findOrFail($id);
        $detailPaket->update($request->all());

        return redirect()->back()->with('success', 'Detail Paket berhasil diperbarui.');
    }

    public function destroy($id)
    {
        $detailPaket = DetailPaket::findOrFail($id);
        $detailPaket->delete();

        return redirect()->back()->with('success', 'Detail Paket berhasil dihapus.');
    }
}
