<?php

namespace App\Http\Controllers;

use App\Models\Setting;
use Illuminate\Http\Request;

class SettingController extends Controller
{
    /**
     * Menampilkan halaman pengaturan.
     *
     * @return \Illuminate\View\View
     */
    public function index()
    {
        // Mengambil satu data Setting
        $setting = Setting::first(); // Anda bisa menggunakan ->get() jika lebih dari satu data

        return view('settings', compact('setting')); // Mengirim data setting ke view
    }

    /**
     * Menyimpan perubahan pengaturan.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update(Request $request)
    {
        // Validasi data yang diterima
        $request->validate([
            'warna_satu' => 'required|string|max:255',
            'ppn' => 'required|numeric',
            'pph' => 'required|numeric',
        ]);

        // Mengambil Setting pertama dan memperbarui data
        $setting = Setting::first();
        $setting->warna_satu = $request->input('warna_satu');
        $setting->ppn = $request->input('ppn');
        $setting->pph = $request->input('pph');
        $setting->save();

        // Redirect ke halaman pengaturan dengan pesan sukses
        return redirect()->route('settings')->with('success', 'Pengaturan berhasil diperbarui!');
    }
}
