<?php

use App\Models\Dapil;
use App\Models\Alternatif;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\DapilController;
use App\Http\Controllers\LaporanController;
use App\Http\Controllers\KriteriaController;
use App\Http\Controllers\AlternatifController;
use App\Http\Controllers\PerhitunganController;
use App\Http\Controllers\SubKriteriaController;
use App\Models\Kriteria;

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
    $data = [
        'title' => 'Dashboard',
        'dapil' => Dapil::count('id'),
        'alternatif' => Alternatif::count('id'),
        'kriteria' => Kriteria::count('id'),
    ];
    return view('dashboard', $data);
})->middleware('auth');
Route::get('/home', function () {
    $data = [
        'title' => 'Dashboard',
        'dapil' => Dapil::count('id'),
        'alternatif' => Alternatif::count('id'),
        'kriteria' => Kriteria::count('id'),
    ];
    return view('dashboard', $data);
})->middleware('auth');

// AUTH
Route::get('/auth', [AuthController::class, 'index'])->name('login')->middleware('guest');
Route::post('/authenticate', [AuthController::class, 'authenticate']);
Route::get('/logout', [AuthController::class, 'logout'])->middleware('auth');
Route::get('/register', [AuthController::class, 'register'])->middleware('auth');
Route::post('/register-create', [AuthController::class, 'create'])->middleware('auth');
Route::get('/dataTablesUser', [AuthController::class, 'dataTables'])->middleware('auth');

Route::middleware(['auth'])->group(function () {
    // KRITERIA
    Route::resource('/kriteria', KriteriaController::class);
    Route::get('/dataTablesKriteria', [KriteriaController::class, 'dataTablesKriteria']);
    Route::get('/kriteriaEdit/{kreteria:uuid}', [KriteriaController::class, 'edit']);
    Route::resource('/subKriteria', SubKriteriaController::class);
    Route::get('/dataTablesSubKriteria', [KriteriaController::class, 'dataTablesSubKriteria']);
    // DAERAH PILIHAN
    Route::resource('/dapil', DapilController::class);
    Route::get('/dataTablesDapil', [DapilController::class, 'datatables']);
    // ALTERNATIF
    Route::resource('/alternatif', AlternatifController::class);
    Route::get('/dataTablesAlternatif', [AlternatifController::class, 'dataTables']);
    // PERHITUNGAN
    Route::get('/perhitungan/{dapil:uuid}', [PerhitunganController::class, 'index']);
    Route::post('/perhitungan-update/{perhitungan:uuid}', [PerhitunganController::class, 'update']);
    Route::post('/cari-keputusan/{dapil:uuid}', [PerhitunganController::class, 'cari_keputusan']);
    // RANKING
    Route::get('/ranking/{dapil:uuid}', [LaporanController::class, 'laporan_ranking']);
});
