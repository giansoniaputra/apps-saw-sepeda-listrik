<?php

namespace App\Http\Controllers;

use App\Models\Kriteria;
use App\Models\Alternatif;
use App\Models\Perhitungan;
use App\Models\SubKriteria;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class PerhitunganController extends Controller
{
    public function index()
    {
        $data = [
            'title' => 'Perhitungan Moora',
            'perhitungan' => DB::table('perhitungans as a')
                ->join('alternatifs as b', 'a.alternatif_uuid', '=', 'b.uuid')
                ->select('a.*', 'b.alternatif', 'b.keterangan')
                ->orderBy('b.alternatif', 'asc'),
            'kriterias' => Kriteria::orderBy('kode', 'asc')->get(),
            'alternatifs' => Alternatif::orderBy('alternatif', 'asc')->get(),
            'sum_kriteria' => Kriteria::count('id'),
        ];
        return view('moora.index', $data);
    }

    public function index_saw()
    {
        $cek = Perhitungan::first();
        if (!$cek) {
            $kriterias = Kriteria::orderBy('kode', 'asc')->get();
            $alternatifs = Alternatif::orderBy('alternatif', 'asc')->get();
            foreach ($alternatifs as $alternatif) {
                foreach ($kriterias as $kriteria) {
                    $data = [
                        'uuid' => Str::orderedUuid(),
                        'alternatif_uuid' => $alternatif->uuid,
                        'kriteria_uuid' => $kriteria->uuid,
                        'bobot' => 0
                    ];
                    Perhitungan::create($data);
                }
            }
        } else {
            $kriterias = Kriteria::orderBy('kode', 'asc')->get();
            $alternatifs = Alternatif::orderBy('alternatif', 'asc')->get();
            foreach ($alternatifs as $alternatif) {
                $query = Perhitungan::where('alternatif_uuid', $alternatif->uuid)->first();
                if (!$query) {
                    foreach ($kriterias as $kriteria) {
                        $data = [
                            'uuid' => Str::orderedUuid(),
                            'alternatif_uuid' => $alternatif->uuid,
                            'kriteria_uuid' => $kriteria->uuid,
                            'bobot' => 0
                        ];
                        Perhitungan::create($data);
                    }
                }
            }
            foreach ($kriterias as $kriteria) {
                $query = Perhitungan::where('kriteria_uuid', $kriteria->uuid)->first();
                if (!$query) {
                    foreach ($alternatifs as $alternatif) {
                        $data = [
                            'uuid' => Str::orderedUuid(),
                            'alternatif_uuid' => $alternatif->uuid,
                            'kriteria_uuid' => $kriteria->uuid,
                            'bobot' => 0
                        ];
                        Perhitungan::create($data);
                    }
                }
            }
        }
        $data = [
            'title' => 'Perhitungan SAW',
            'perhitungan' => DB::table('perhitungans as a')
                ->join('alternatifs as b', 'a.alternatif_uuid', '=', 'b.uuid')
                ->select('a.*', 'b.alternatif', 'b.keterangan')
                ->orderBy('b.alternatif', 'asc'),
            'kriterias' => Kriteria::orderBy('kode', 'asc')->get(),
            'alternatifs' => Alternatif::orderBy('alternatif', 'asc')->get(),
            'sum_kriteria' => Kriteria::count('id'),
        ];
        return view('saw.index', $data);
    }

    public function create()
    {
        $cek = Perhitungan::first();
        if (!$cek) {
            $kriterias = Kriteria::orderBy('kode', 'asc')->get();
            $alternatifs = Alternatif::orderBy('alternatif', 'asc')->get();
            foreach ($alternatifs as $alternatif) {
                foreach ($kriterias as $kriteria) {
                    $data = [
                        'uuid' => Str::orderedUuid(),
                        'alternatif_uuid' => $alternatif->uuid,
                        'kriteria_uuid' => $kriteria->uuid,
                        'bobot' => 0
                    ];
                    Perhitungan::create($data);
                }
            }
            return response()->json(['success' => 'Perhitungan Baru Berhasil Ditambahkan! Silahkan Masukan Nilainya']);
        } else {
            $kriterias = Kriteria::orderBy('kode', 'asc')->get();
            $alternatifs = Alternatif::orderBy('alternatif', 'asc')->get();
            foreach ($alternatifs as $alternatif) {
                $query = Perhitungan::where('alternatif_uuid', $alternatif->uuid)->first();
                if (!$query) {
                    foreach ($kriterias as $kriteria) {
                        $data = [
                            'uuid' => Str::orderedUuid(),
                            'alternatif_uuid' => $alternatif->uuid,
                            'kriteria_uuid' => $kriteria->uuid,
                            'bobot' => 0
                        ];
                        Perhitungan::create($data);
                    }
                }
            }
            foreach ($kriterias as $kriteria) {
                $query = Perhitungan::where('kriteria_uuid', $kriteria->uuid)->first();
                if (!$query) {
                    foreach ($alternatifs as $alternatif) {
                        $data = [
                            'uuid' => Str::orderedUuid(),
                            'alternatif_uuid' => $alternatif->uuid,
                            'kriteria_uuid' => $kriteria->uuid,
                            'bobot' => 0
                        ];
                        Perhitungan::create($data);
                    }
                }
            }
            return response()->json(['success' => 'Perhitungan Baru Berhasil Ditambahkan! Silahkan Masukan Nilainya']);
        }
    }

    public function update(Perhitungan $perhitungan, Request $request)
    {
        Perhitungan::where('uuid', $perhitungan->uuid)->update(['bobot' => $request->bobot]);
        return response()->json(['success' => $request->bobot]);
    }

    public function normalisasi()
    {
        //Inisialisasi Normalisasi
        $data = [
            'title' => 'Normalisasi',
            'perhitungan' => DB::table('perhitungans as a')
                ->join('alternatifs as b', 'a.alternatif_uuid', '=', 'b.uuid')
                ->select('a.*', 'b.alternatif', 'b.keterangan')
                ->orderBy('b.alternatif', 'asc'),
            'kriterias' => Kriteria::orderBy('kode', 'asc')->get(),
            'alternatifs' => Alternatif::orderBy('alternatif', 'asc')->get(),
            'sum_kriteria' => Kriteria::count('id'),
        ];
        // $elements2 = '';
        // $array_bobot2 = [];
        // foreach ($data['alternatifs'] as $alternatif) {
        //     $elements2 .= "<tr><td>A$alternatif->alternatif</td>
        //     <td>$alternatif->keterangan</td>";
        //     foreach ($data['kriterias'] as $kriteria) {
        //         $bobots = DB::table('perhitungans')
        //             ->where('kriteria_uuid', $kriteria->uuid)
        //             ->where('alternatif_uuid', $alternatif->uuid)
        //             ->get();
        //         foreach ($bobots as $bobot) {
        //             $max = SubKriteria::where('kriteria_uuid', $kriteria->uuid)->orderBy('bobot', 'desc')->first();
        //             $bobot_kriteria = round($bobot->bobot / $max->bobot, 3);
        //             $elements2 .= "<td class=\"text-center\" id=\"nilai-bobot\">
        //                                 <p class=\"p-bobot\">" . $bobot_kriteria . "</p>
        //                                 <form action=\"javascript:;\" id=\"form-update-bobot\">
        //                                     <input type=\"number\" class=\"d-none input-bobot\" data-uuid=" . $bobot_kriteria . " value=\"" . $bobot_kriteria . "\" style=\"width:6vh\">
        //                                 </form>
        //                             </td>";
        //             $array_bobot2[] = $bobot_kriteria;
        //         }
        //     }
        //     $elements2 .= "</tr>";
        // }
        $elements = '';
        $array_bobot = [];
        foreach ($data['alternatifs'] as $alternatif) {
            $elements .= "<tr><td>A$alternatif->alternatif</td>
            <td>$alternatif->keterangan</td>";
            foreach ($data['kriterias'] as $kriteria) {
                $bobots = DB::table('perhitungans')
                    ->where('kriteria_uuid', $kriteria->uuid)
                    ->where('alternatif_uuid', $alternatif->uuid)
                    ->get();
                foreach ($bobots as $bobot) {
                    // // SPLIT SUBKRITEIA
                    // $sub_split = Subkriteria::where('kriteria_uuid', $kriteria->uuid)->get();
                    // $nilai_range_bobot = 0;
                    // foreach ($sub_split as $item) {
                    //     $split = explode('-', $item->sub_kriteria);
                    //     $range_awal = $split[0];
                    //     $range_akhir = $split[1];
                    //     if ($bobot->bobot >= $range_awal && $bobot->bobot <= $range_akhir) {
                    //         if ($bobot->bobot < 1) {
                    //             $nilai_range_bobot = 0;
                    //         } else {
                    //             $nilai_range_bobot = $item->bobot;
                    //         }
                    //     }
                    // }
                    // // SPLIT SUBKRITEIA


                    if ($kriteria->atribut == 'BENEFIT') {
                        $perhitung = Perhitungan::where('kriteria_uuid', $kriteria->uuid)->orderBy('bobot', 'desc')->first();
                        $hasil = $bobot->bobot / $perhitung->bobot;
                        // // SPLIT SUBKRITEIA
                        // $sub_split = Subkriteria::where('kriteria_uuid', $kriteria->uuid)->get();
                        // $nilai_range = 0;
                        // foreach ($sub_split as $item) {
                        //     $split = explode('-', $item->sub_kriteria);
                        //     $range_awal = $split[0];
                        //     $range_akhir = $split[1];
                        //     if ($perhitung->bobot >= $range_awal && $perhitung->bobot <= $range_akhir) {
                        //         if ($perhitung->bobot < 1) {
                        //             $nilai_range = 0;
                        //         } else {
                        //             $nilai_range = $item->bobot;
                        //         }
                        //     }
                        // }
                        // // SPLIT SUBKRITEIA
                        // if ($nilai_range_bobot == 0) {
                        //     $hasil = 0;
                        // } else {
                        //     $hasil =  $nilai_range_bobot / $nilai_range;
                        // }
                    } else {
                        $perhitung = Perhitungan::where('kriteria_uuid', $kriteria->uuid)->orderBy('bobot')->first();
                        $hasil = $perhitung->bobot / $bobot->bobot;
                        // // SPLIT SUBKRITEIA
                        // $sub_split = Subkriteria::where('kriteria_uuid', $kriteria->uuid)->get();
                        // $nilai_range = 0;
                        // foreach ($sub_split as $item) {
                        //     $split = explode('-', $item->sub_kriteria);
                        //     $range_awal = $split[0];
                        //     $range_akhir = $split[1];
                        //     if ($perhitung->bobot >= $range_awal && $perhitung->bobot <= $range_akhir) {
                        //         if ($perhitung->bobot < 1) {
                        //             $nilai_range = 0;
                        //         } else {
                        //             $nilai_range = $item->bobot;
                        //         }
                        //     }
                        // }
                        // // SPLIT SUBKRITEIA
                        // if ($nilai_range_bobot == 0) {
                        //     $hasil = 0;
                        // } else {
                        //     $hasil = $nilai_range / $nilai_range_bobot;
                        // }
                    }
                    $bobot_kriteria = round($hasil, 3);
                    $elements .= "<td class=\"text-center\" id=\"nilai-bobot\">
                                        <p class=\"p-bobot\">" . $bobot_kriteria . "</p>
                                        <form action=\"javascript:;\" id=\"form-update-bobot\">
                                            <input type=\"number\" class=\"d-none input-bobot\" data-uuid=" . $bobot_kriteria . " value=\"" . $bobot_kriteria . "\" style=\"width:6vh\">
                                        </form>
                                    </td>";
                    $array_bobot[] = $bobot_kriteria;
                }
            }
            $elements .= "</tr>";
        }
        $data['elements'] = $elements;
        //MENGHITUNG RANKING-----------------------------------------------
        $bobot_kriteria = array_chunk($array_bobot, $data['sum_kriteria']);

        //Mengambil Bobot Kriteria
        $bobot = [];
        foreach ($data['kriterias'] as $kriteria) {
            $bobot[] = $kriteria->bobot / 100;
        }
        //Meng kalikan bobot dengan normalisasi
        $hasil_kali = [];
        for ($i = 0; $i < count($bobot_kriteria); $i++) {
            for ($j = 0; $j < count($bobot); $j++) {
                $hasil_kali[] = floatval(number_format($bobot_kriteria[$i][$j] * $bobot[$j], 3));
            }
        }

        //hasil perkalian di pecah menjadi array muti dimensi
        $pecah_hasil = array_chunk($hasil_kali, $data['sum_kriteria']);

        // Perkalian Semua Array
        $ranking = [];
        for ($u = 0; $u < count($pecah_hasil); $u++) {
            $ranking[] = round(array_sum($pecah_hasil[$u]), 4);
        }

        //Merangking
        $nama = Alternatif::orderBy('alternatif', 'asc')->get();
        $rangking_assoc = [];
        foreach ($ranking as $index => $nilai) {
            $rangking_assoc[] = [$nama[$index]->keterangan, $nilai];
        }

        $names = array_column($rangking_assoc, 0);
        $scores = array_column($rangking_assoc, 1);

        // Menggunakan array_multisort untuk mengurutkan scores secara menurun
        array_multisort($scores, SORT_DESC, $names);

        // Menggabungkan kembali array setelah diurutkan
        $final_ranking = array_map(function ($name, $score) {
            return [$name, $score];
        }, $names, $scores);

        $data['ranking'] = $final_ranking;

        return response()->json(['data' => $data, 'pecah_hasil' => $pecah_hasil]);
    }
}
