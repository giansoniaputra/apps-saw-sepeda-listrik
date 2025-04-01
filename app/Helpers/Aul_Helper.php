<?php

use App\Models\Dapil;
use App\Models\Ranking;
use App\Models\Perhitungan;
use App\Models\SubKriteria;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\DB;

function getDapil()
{
    $query = Dapil::orderBy('kode')->get();
    return $query;
}

function getSub($kriteria)
{
    $query = SubKriteria::where("kriteria_uuid", $kriteria)->get();
    return $query;
}

function getPerhitungan($alternatif, $kriteria)
{
    $query = Perhitungan::where("kriteria_uuid", $kriteria)->where("alternatif_uuid", $alternatif)->first();
    return $query;
}

function getBobotNormalisasi($kriteria, $dapil_uuid, $atribut)
{
    if ($atribut == 'COST') {
        $perhitungan = DB::table('perhitungans as a')
            ->join('alternatifs as b', 'a.alternatif_uuid', '=', 'b.uuid')
            ->join('dapils as c', 'b.dapil_uuid', '=', 'c.uuid')
            ->select('a.*', 'b.alternatif', 'b.kode')
            ->where('b.dapil_uuid', $dapil_uuid)
            ->where('a.kriteria_uuid', $kriteria)
            ->orderBy('a.bobot', 'asc')->first();
    } else {
        $perhitungan = DB::table('perhitungans as a')
            ->join('alternatifs as b', 'a.alternatif_uuid', '=', 'b.uuid')
            ->join('dapils as c', 'b.dapil_uuid', '=', 'c.uuid')
            ->select('a.*', 'b.alternatif', 'b.kode')
            ->where('b.dapil_uuid', $dapil_uuid)
            ->where('a.kriteria_uuid', $kriteria)
            ->orderBy('a.bobot', 'desc')->first();
    }
    return $perhitungan;
}

function inserRanking($dapil, $nama, $nilai)
{
    $ranking = Ranking::where('dapil_uuid', $dapil);
    if ($ranking->first()) {
        $ranking->delete();
    }
    Ranking::create([
        'uuid' => Str::orderedUuid(),
        'dapil_uuid' => $dapil,
        'nama' => $nama,
        'nilai' => $nilai,
    ]);
}
