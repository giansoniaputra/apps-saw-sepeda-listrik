<?php

use App\Models\Kriteria;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\View;
use Illuminate\Support\Facades\Route;

Route::get('/view-slider', function (Request $request) {
    $view = View::make('partial.slider', [
        'kriterias' => Kriteria::orderBy('kode')->get()
    ])->render();
    return response()->json(['view' => $view]);
});

Route::post('/view-dropdown', function (Request $request) {
    $view = View::make('partial.dropdown', [
        'kriterias' => Kriteria::orderBy('kode')->get(),
        'bobot' => $request->bobot_kriteria
    ])->render();
    return response()->json(['view' => $view, 'bobot' => $request->bobot_kriteria]);
});
