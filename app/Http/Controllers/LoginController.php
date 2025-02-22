<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
        return view('login');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }


    public function authenticate(Request $request){
        $credentials = $request->validate([
            'email' => 'required',
            'password' => 'required'
        ]);


        // if (Auth::attempt($credentials)) {
        //     $request->session()->regenerate();

        //     return redirect()->intended('dashboard');
        // }
        if (Auth::attempt($credentials)) {
            $request->session()->regenerate();

            // Cek roles pengguna
            if (auth()->user()->roles_id === 5) {
                return redirect()->intended('dashboard-perusahaan');
            }

            return redirect()->intended('dashboard');
        }


        return back()->with([
            'loginError' => 'Login gagal, Cek kembali Email dan password anda',
        ])->onlyInput('email');
    }
    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        return request()->all();
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
