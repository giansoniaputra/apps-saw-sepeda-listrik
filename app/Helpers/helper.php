<?php

use App\Models\SubKriteria;

function get_sub_kriteria($uuid)
{
    $data = SubKriteria::where('kriteria_uuid', $uuid)->get();
    return $data;
}

function rupiah($angka)
{
    return 'Rp. ' . number_format($angka, 0, '.', ',');
}

function filter($index, $bobot)
{
    return ($index == $bobot) ? 1 : 0;
}
