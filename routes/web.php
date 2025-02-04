<?php

use App\Models\Pemeriksaan;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\LogoutController;
use App\Http\Controllers\ListUserController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\CetakHasilController;
use App\Http\Controllers\CetakNotaPemeriksaan;
use App\Http\Controllers\DashboardPerusahaanController;
use App\Http\Controllers\McuController;
use App\Http\Controllers\ListBidangController;
use App\Http\Controllers\ListMetodeController;
use App\Http\Controllers\ListPasienController;
use App\Http\Controllers\PerusahaanController;
use App\Http\Controllers\PaketController;
use App\Http\Controllers\DetailPaketController;
use App\Http\Controllers\DokterController;
use App\Http\Controllers\PemeriksaanController;
use App\Http\Controllers\ListParameterController;
use App\Http\Controllers\HasilPemeriksaanController;
use App\Http\Controllers\HasilPemeriksaanPerusahaanController;
use App\Http\Controllers\ProfileUserController;
use App\Http\Controllers\RegistrasiPageController;
use App\Http\Controllers\SettingController;
use App\Http\Controllers\RegistrasiPemeriksaanController;
use App\Http\Controllers\RegistrasiPaketPemeriksaanController;
use App\Http\Controllers\RegistrasiPemeriksaanPerusahaanController;
use App\Http\Controllers\RegistrasiPemeriksaanByPaketController;
use App\Http\Controllers\ReviewPemeriksaanController;
use App\Http\Controllers\RiwayatPemeriksaanController;
use App\Http\Controllers\RiwayatPemeriksaanPerusahaanController;
use App\Http\Livewire\DynamicRegistrasiPemeriksaan;
use App\Http\Livewire\DynamicRegistrasiPerusahaan;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    if(!auth()->check()){
        return redirect()->route('login');
    }else{
        return redirect()->route('dashboard');
    }
});

Route::get('/login', [LoginController::class,'index'])->name('login')->middleware('guest');
Route::post('/login', [LoginController::class,'authenticate'])->name('login');

Route::post('/logout', [LogoutController::class,'logout'])->name('logout');

Route::get('/dashboard', [DashboardController::class,'index'])->name('dashboard')->middleware('auth');
Route::get('/dashboard-perusahaan', [DashboardPerusahaanController::class,'index'])->name('dashboard-perusahaan')->middleware('perusahaan');
Route::get('/registrasipages', [RegistrasiPageController::class,'index'])->name('registrasipages')->middleware('auth');

Route::get('/riwayat-pemeriksaan', [RiwayatPemeriksaanController::class, 'index'])->name('riwayat-pemeriksaan')->middleware('auth');
Route::get('/riwayat-pemeriksaan/{search}', [RiwayatPemeriksaanController::class, 'search'])->name('riwayat-pemeriksaan-search')->middleware('auth');

Route::get('/riwayat-pemeriksaan-perusahaan', [RiwayatPemeriksaanPerusahaanController::class, 'index'])->name('riwayat-pemeriksaan-perusahaan')->middleware('perusahaan');
Route::get('/riwayat-pemeriksaan-perusahaan/{search}', [RiwayatPemeriksaanPerusahaanController::class, 'search'])->name('riwayat-pemeriksaan-perusahaan-search')->middleware('perusahaan');

//Super Admin
Route::resource('/list-user', ListUserController::class)->names([
    'index' => 'list-user',
    'create' => 'create-user',
    'store' => 'store-user'
])->middleware('superadmin');
Route::resource('/list-perusahaan', PerusahaanController::class)->names([
    'index' => 'list-perusahaan',
    'create' => 'create-perusahaan',
    'store' => 'store-perusahaan'
])->middleware('auth');

Route::resource('/list-paket', PaketController::class)->names([
    'index' => 'list-paket',
    'create' => 'create-paket',
    'store' => 'store-paket'
])->middleware('auth');
Route::resource('/list-detailpaket', DetailPaketController::class)->names([
    'index' => 'list-detailpaket',
    'create' => 'create-detailpaket',
    'store' => 'store-detailpaket'
])->middleware('auth');

Route::resource('/dokter', DokterController::class)->names([
    'index' => 'dokter',
    'create' => 'create-dokter',
    'store' => 'store-dokter'
])->middleware('administrasi');

Route::get('/list-user-search', [ListUserController::class, 'search'])->name('search-user')->middleware('superadmin');

Route::resource('/profile', ProfileUserController::class)->names([
    'index' => 'profile',
    'update' => 'update-profile'
])->except(['create', 'destroy', 'edit', 'store']) ->middleware('auth');

Route::resource('/settings', SettingController::class)
    ->only(['index', 'update'])
    ->names([
        'index' => 'settings',
        'update' => 'update-settings'
    ])
    ->middleware('auth');



Route::get('/change-password', [ProfileUserController::class, 'changePassword'])->name('change-password')->middleware('auth');
Route::post('/change-password', [ProfileUserController::class, 'updatePassword'])->name('update-password')->middleware('auth');

Route::resource('/list-mcu', McuController::class)->names([
    'index' => 'list-mcu',
    'create' => 'create-mcu',
    'store' => 'store-mcu',
])->middleware('superadmin');

Route::resource('/list-bidang', ListBidangController::class)->names([
    'index' => 'list-bidang',
    'create' => 'create-bidang',
    'store' => 'store-bidang',
])->middleware('superadmin');

Route::resource('/list-metode', ListMetodeController::class)->names([
    'index' => 'list-metode',
    'create' => 'create-metode',
    'store' => 'store-metode'
])->middleware('superadmin');

Route::resource('/list-parameter', ListParameterController::class)->names([
    'index' => 'list-parameter',
    'create' => 'create-parameter',
])->middleware('superadmin');

//Administrasi
Route::resource('/list-pasien', ListPasienController::class)->names([
    'index' => 'list-pasien',
    'create' => 'create-pasien',
])->middleware('administrasi');

Route::get('/list-pasien-search', [ListPasienController::class, 'search'])->name('search-pasien')->middleware('administrasi');

Route::resource('/hasil-pemeriksaan', HasilPemeriksaanController::class)->names([
    'index' => 'hasil-pemeriksaan'
])->middleware('poli');
Route::resource('/hasil-pemeriksaan-perusahaan', HasilPemeriksaanPerusahaanController::class)->names([
    'index' => 'hasil-pemeriksaan-perusahaan'
])->middleware('perusahaan');

Route::get('/cetak-hasil/{id}', [CetakHasilController::class, 'show'])->name('cetak-hasil')->middleware('auth');
Route::get('/cetak-hasil-using-photo/{id}', [CetakHasilController::class, 'showUsingPhoto'])->name('cetak-hasil-using-photo')->middleware('auth');
Route::get('/cetak-nota/{id}', [CetakNotaPemeriksaan::class, 'show'])->name('cetak-nota')->middleware('administrasi');


//Poli
Route::resource('/registrasi-pemeriksaan', RegistrasiPemeriksaanController::class)->names([
    'index' => 'registrasi-pemeriksaan',
    'store' => 'store-pemeriksaan'
])->middleware('administrasi');

Route::resource('/registrasi-paket-pemeriksaan', RegistrasiPaketPemeriksaanController::class)->names([
    'index' => 'registrasi-paket-pemeriksaan',
    'store' => 'store-paket-pemeriksaan'
])->middleware('administrasi');

Route::resource('/registrasi-perusahaan', RegistrasiPemeriksaanPerusahaanController::class)->names([
    'index' => 'registrasi-perusahaan',
    'store' => 'store-pemeriksaan-perusahaan'
])->middleware('administrasi');

Route::resource('/registrasi-pemeriksaan-by-paket', RegistrasiPemeriksaanByPaketController::class)->names([
    'index' => 'registrasi-pemeriksaan-by-paket',
    'store' => 'store-pemeriksaan-by-paket'
])->middleware('administrasi');

Route::resource('/review-pemeriksaan', ReviewPemeriksaanController::class)->names([
    'index' => 'review-pemeriksaan',
])->middleware('poli');

Route::post('/review-pemeriksaan/kesimpulan', [ReviewPemeriksaanController::class, 'storeKesimpulanMcu'])
    ->name('review-pemeriksaan.store-kesimpulanmcu')
    ->middleware('poli');

Route::get('/review-pemeriksaan/{review_pemeriksaan}/edit-kesimpulan', [ReviewPemeriksaanController::class, 'editkesimpulanpemeriksaan'])
    ->name('review-pemeriksaan.editkesimpulanpemeriksaan')
    ->middleware('poli');
Route::get('/get-kesimpulan-pemeriksaan', [ReviewPemeriksaanController::class, 'getKesimpulanPemeriksaan'])->name('getKesimpulanPemeriksaan');
Route::put('/review-pemeriksaan/{review_pemeriksaan}/update-kesimpulan-pemeriksaan', [ReviewPemeriksaanController::class, 'updatekesimpulanpemeriksaan'])
    ->name('review-pemeriksaan.update-kesimpulan-pemeriksaan')
    ->middleware('poli');

Route::put('/review-pemeriksaan/{review_pemeriksaan}/update-kesimpulanmcu', [ReviewPemeriksaanController::class, 'updateKesimpulanMcu'])
    ->name('review-pemeriksaan.update-kesimpulanmcu')
    ->middleware('poli');

Route::get('/review-pemeriksaan/{review_pemeriksaan}/edit-kesimpulanmcu', [ReviewPemeriksaanController::class, 'editkesimpulanmcu'])
    ->name('review-pemeriksaan.editkesimpulanmcu')
    ->middleware('poli');

Route::get('/dynamic-registrasi-pemeriksaan', DynamicRegistrasiPemeriksaan::class)->name('dynamic-registrasi-pemeriksaan')->middleware('poli');
Route::get('/dynamic-registrasi-perusahaan', DynamicRegistrasiPerusahaan::class)->name('dynamic-registrasi-pemeriksaan')->middleware('poli');

//Laborat
Route::resource('/antrean-pemeriksaan', PemeriksaanController::class)->names([
    'index' => 'list-antrean-pemeriksaan',
    'show' => 'show-antrean-pemeriksaan',
])->middleware('administrasi');

Route::get('/getDataPasien/{id}', [RegistrasiPemeriksaanController::class, 'getDataPasien'])->middleware('administrasi');
Route::get('/getDataPerusahaan/{id}', [RegistrasiPemeriksaanController::class, 'getDataPerusahaan'])->middleware('administrasi');
Route::get('/getDataDokter/{id}', [RegistrasiPemeriksaanController::class, 'getDataDokter'])->middleware('administrasi');
Route::get('/getPasienByPerusahaan/{id}', [RegistrasiPemeriksaanPerusahaanController::class, 'getPasienByPerusahaan'])->middleware('administrasi');
Route::get('/getPaketByPerusahaan/{id}', [RegistrasiPemeriksaanPerusahaanController::class, 'getPaketByPerusahaan'])->middleware('administrasi');
Route::get('/getPaket', [RegistrasiPemeriksaanByPaketController::class, 'getPaket'])->middleware('administrasi');


