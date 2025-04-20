<?php

use App\Models\SubKriteria;

function get_sub_kriteria($uuid)
{
    $data = SubKriteria::where('kriteria_uuid', $uuid)->get();
    return $data;
}

?>