<?php

namespace App\Imports;

use App\Models\Kriteria;
use App\Models\Alternatif;
use App\Models\Perhitungan;
use Illuminate\Support\Str;
use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\ToCollection;
use Maatwebsite\Excel\Concerns\WithStartRow;

class DataImport implements ToCollection, WithStartRow
{
    /**
     * @param Collection $collection
     */
    public function collection(Collection $collection)
    {
        $count_alternatif = 0;
        $count_kriteria = 0;
        foreach ($collection as $row) {
            if ($row[0] != null) {
                $count_alternatif++;
            }
            if ($row[3] != null) {
                $count_kriteria++;
            }
        }
        foreach ($collection as $row) {
            $cek = Alternatif::where('alternatif', $row[0])->first();
            if (!$cek && $row[0] != null) {
                Alternatif::create([
                    'uuid' => Str::orderedUuid(),
                    'alternatif' => $row[0],
                    'keterangan' => $row[1],
                ]);
            }
            // $alternatif = Alternatif::where('alternatif', $row[0])->first();
            // $kriteria = Kriteria::where('kode', $row[3])->first();
            // Perhitungan::create([
            //     'uuid' => Str::orderedUuid(),
            //     'alternatif_uuid' => $alternatif->uuid,
            //     'kriteria_uuid' => $kriteria->uuid,
            //     'bobot' => $row[]
            // ]);
        }
        foreach ($collection as $row) {
            $cek = Kriteria::where('kode', $row[3])->first();
            if (!$cek && $row[3] != null) {
                Kriteria::create([
                    'uuid' => Str::orderedUuid(),
                    'kode' => $row[3],
                    'kriteria' => $row[4],
                    'atribut' => $row[5],
                    'bobot' => (float) $row[6],
                ]);
            }
        }

        foreach ($collection as $row) {
            $alternatif = Alternatif::where('alternatif', $row[0])->first();
            for ($i = 1; $i <= $count_kriteria; $i++) {
                $kriteria = Kriteria::where('kode', $i)->first();
                Perhitungan::create([
                    'uuid' => Str::orderedUuid(),
                    'alternatif_uuid' => $alternatif->uuid,
                    'kriteria_uuid' => $kriteria->uuid,
                    'bobot' => (float) $row[8 + $i]
                ]);
            }
        }
    }

    public function startRow(): int
    {
        return 2;
    }
}
