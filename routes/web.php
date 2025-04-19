<?php

use App\Models\Kriteria;
use App\Models\Alternatif;
use App\Imports\DataImport;
use App\Models\SubKriteria;
use Illuminate\Support\Str;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\LaporanController;
use App\Http\Controllers\KriteriaController;
use App\Http\Controllers\AlternatifController;
use App\Http\Controllers\PerhitunganController;
use App\Http\Controllers\SubKriteriaController;
use App\Models\Perhitungan;
use Illuminate\Http\Request;

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
        'alternatif' => Alternatif::count('id'),
        'kriteria' => Kriteria::count('id'),
    ];
    return view('dashboard', $data);
})->middleware('auth');
Route::get('/home', function () {
    $data = [
        'title' => 'Dashboard',
        'alternatif' => Alternatif::count('id'),
        'kriteria' => Kriteria::count('id'),
    ];
    return view('dashboard', $data);
})->middleware('auth');
// AUTH
Route::get('/auth', [AuthController::class, 'index'])->name('login')->middleware('guest');
Route::post('/authenticate', [AuthController::class, 'authenticate']);
Route::get('/logout', [AuthController::class, 'logout']);
Route::get('/register', [AuthController::class, 'register']);
Route::post('/register-create', [AuthController::class, 'create']);
Route::get('/dataTablesUser', [AuthController::class, 'dataTables'])->middleware('auth');

// KRITERIA
Route::resource('/kriteria', KriteriaController::class)->middleware('auth');
Route::get('/dataTablesKriteria', [KriteriaController::class, 'dataTablesKriteria'])->middleware('auth');
Route::get('/kriteriaEdit/{kreteria:uuid}', [KriteriaController::class, 'edit'])->middleware('auth');
// SUB KRITERI->middleware('auth')A
Route::resource('/subKriteria', SubKriteriaController::class)->middleware('auth');
Route::get('/dataTablesSubKriteria', [SubKriteriaController::class, 'dataTablesSubKriteria'])->middleware('auth');
// Alternati->middleware('auth')f
Route::get('alternatif', [AlternatifController::class, 'index'])->middleware('auth');
Route::get('/dataTablesAlternatif', [AlternatifController::class, 'dataTablesAlternatif'])->middleware('auth');
Route::post('/alternatif-store', [AlternatifController::class, 'store'])->middleware('auth');
Route::get('/alternatif-edit/{alternatif:uuid}', [AlternatifController::class, 'edit'])->middleware('auth');
Route::post('/alternatif-update/{alternatif:uuid}', [AlternatifController::class, 'update'])->middleware('auth');
Route::post('/alternatif-destroy/{alternatif:uuid}', [AlternatifController::class, 'destroy'])->middleware('auth');
// Perhitunga Moor->middleware('auth')a
Route::get('/perhitungan', [PerhitunganController::class, 'index'])->middleware('auth');
Route::get('/perhitungan-create', [PerhitunganController::class, 'create'])->middleware('auth');
Route::get('/perhitungan-update/{perhitungan:uuid}', [PerhitunganController::class, 'update'])->middleware('auth');
Route::get('/saw-normalisasi', [PerhitunganController::class, 'normalisasi'])->middleware('auth');
Route::get('/saw-preferensi', [PerhitunganController::class, 'preferensi'])->middleware('auth');
Route::get('/saw', [PerhitunganController::class, 'index_saw'])->middleware('auth');
Route::get('/cetak-laporan', [LaporanController::class, 'laporan_ranking'])->middleware('auth');
Route::get('/upload-excel', function () {
    return view('upload-excel');
})->middleware('auth');
Route::post('/upload-excel', function (Request $request) {
    Alternatif::truncate();
    Kriteria::truncate();
    Perhitungan::truncate();
    Excel::import(new DataImport, $request->file('excel'));
    echo '
    <script>
        alert("Data Berhasil DiImport")
        document.location.href = "/saw"
    </script>
    ';
})->middleware('auth');


// Route::get('/masukan-sub', function () {
//     $kriteria = Kriteria::orderBy('kode')->get();
//     foreach ($kriteria as $row) {
//         for ($i = 0; $i < 4; $i++) {
//             if ($i === 0) {
//                 $sub = '78-100 (Sangat Baik)';
//                 $nilai = 4;
//             } else if ($i === 1) {
//                 $sub = '55-77 (Baik)';
//                 $nilai = 3;
//             } else if ($i === 2) {
//                 $sub = '30-40 (Cukup)';
//                 $nilai = 2;
//             } else if ($i === 3) {
//                 $sub = '0-29 (Kurang)';
//                 $nilai = 1;
//             }
//             SubKriteria::create([
//                 'uuid' => Str::orderedUuid(),
//                 'kriteria_uuid' => $row->uuid,
//                 'sub_kriteria' => $sub,
//                 'bobot' => $nilai,
//             ]);
//         }
//     }
//     return redirect('/kriteria');
// });

// Route::get('/update-sub', function () {
//     $kriteria = SubKriteria::all();
//     foreach ($kriteria as $row) {
//         if ($row->sub_kriteria == '78-100 (Sangat Baik)') {
//             $sub = '78-100';
//         } else if ($row->sub_kriteria === '55-77 (Baik)') {
//             $sub = '55-77';
//         } else if ($row->sub_kriteria === '30-40 (Cukup)') {
//             $sub = '30-40';
//         } else if ($row->sub_kriteria === '0-29 (Kurang)') {
//             $sub = '0-29';
//         }
//         Subkriteria::where('uuid', $row->uuid)->where('sub_kriteria', $row->sub_kriteria)->update(['sub_kriteria' => $sub]);
//     }
//     return redirect('/kriteria');
// });
