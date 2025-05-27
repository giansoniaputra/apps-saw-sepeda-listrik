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
    if ($index + 1 == 1) {
        return ($bobot == 4) ? 1 : 0;
    } else if ($index + 1 == 2) {
        return ($bobot == 1) ? 1 : 0;
    } else if ($index + 1 == 3) {
        return ($bobot == 3) ? 1 : 0;
    } else if ($index + 1 == 4) {
        return ($bobot == 1) ? 1 : 0;
    } else if ($index + 1 == 5) {
        return ($bobot == 1) ? 1 : 0;
    } else if ($index + 1 == 6) {
        return ($bobot == 3) ? 1 : 0;
    } else if ($index + 1 == 7) {
        return ($bobot == 4) ? 1 : 0;
    } else if ($index + 1 == 8) {
        return ($bobot == 1) ? 1 : 0;
    } else if ($index + 1 == 9) {
        return ($bobot == 3) ? 1 : 0;
    } else if ($index + 1 == 10) {
        return ($bobot == 3) ? 1 : 0;
    }
}
