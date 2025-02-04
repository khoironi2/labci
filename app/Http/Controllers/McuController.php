<?php

namespace App\Http\Controllers;

use App\Models\Mcu;
use Illuminate\Http\Request;

class McuController extends Controller
{
    //
    public function index()
    {
        $mcuData = Mcu::all();
        return view('rolesviews.superadmin.mcu.index', compact('mcuData'));
    }

    public function store(Request $request)
    {
        $request->validate(['nama_mcu' => 'required|string|max:255']);
        Mcu::create($request->only('nama_mcu'));
        return redirect()->back()->with('success', 'Data MCU berhasil ditambahkan');
    }

    public function update(Request $request, $id)
    {
        $request->validate(['nama_mcu' => 'required|string|max:255']);
        $mcu = Mcu::findOrFail($id);
        $mcu->update($request->only('nama_mcu'));
        return redirect()->back()->with('success', 'Data MCU berhasil diupdate');
    }

    public function destroy($id)
    {
        $mcu = Mcu::findOrFail($id);
        $mcu->delete();
        return redirect()->back()->with('success', 'Data MCU berhasil dihapus');
    }
}
