<?php

namespace App\Http\Controllers;

use App\Models\Kriteria;
use App\Models\Alternatif;
use App\Models\Perhitungan;
use App\Models\SubKriteria;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\View;

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
                    if ($kriteria->atribut == 'BENEFIT') {
                        $perhitung = Perhitungan::where('kriteria_uuid', $kriteria->uuid)->orderBy('bobot', 'desc')->first();
                        $hasil = $bobot->bobot / $perhitung->bobot;
                    } else {
                        $perhitung = Perhitungan::where('kriteria_uuid', $kriteria->uuid)->orderBy('bobot')->first();
                        $hasil = $perhitung->bobot / $bobot->bobot;
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
            // $bobot[] = $kriteria->bobot / 100;
            $bobot[] = $kriteria->bobot;
        }
        //Meng kalikan bobot dengan normalisasi
        $hasil_kali = [];
        for ($i = 0; $i < count($bobot_kriteria); $i++) {
            for ($j = 0; $j < count($bobot); $j++) {
                $hasil_kali[] = round(($bobot_kriteria[$i][$j] * $bobot[$j]), 4, PHP_ROUND_HALF_EVEN);
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
            $rangking_assoc[] = [$nama[$index]->keterangan, $nilai, $nama[$index]->alternatif];
        }

        $names = array_column($rangking_assoc, 0);
        $scores = array_column($rangking_assoc, 1);
        $alternatif = array_column($rangking_assoc, 2);

        // Menggunakan array_multisort untuk mengurutkan scores secara menurun
        array_multisort($scores, SORT_DESC, $names, $alternatif);

        // Menggabungkan kembali array setelah diurutkan
        $final_ranking = array_map(function ($name, $score, $alternatif) {
            return [$name, $score, $alternatif];
        }, $names, $scores, $alternatif);

        $data['ranking'] = $final_ranking;

        return response()->json(['data' => $data, 'pecah_hasil' => $pecah_hasil, 'hasil_kali' => $hasil_kali]);
    }

    public function normalisasi_user(Request $request)
    {
        $response = [];
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
        $perhitungan = Perhitungan::all();
        $elements = '';
        $array_bobot = [];
        foreach ($data['alternatifs'] as $alternatif) {
            $elements .= "<tr><td>A$alternatif->alternatif</td>
            <td>$alternatif->keterangan</td>";
            foreach ($data['kriterias'] as $index => $kriteria) {
                $bobots = $perhitungan->where('alternatif_uuid', $alternatif->uuid)->where('kriteria_uuid', $kriteria->uuid);
                foreach ($bobots as $i =>  $bobot) {
                    if ($kriteria->atribut == 'BENEFIT') {
                        $perhitung = $perhitungan->where('kriteria_uuid', $kriteria->uuid)->sortByDesc('bobot')->first();
                        $hasil = $bobot->bobot / $perhitung->bobot;
                    } else {
                        $perhitung = $perhitungan->where('kriteria_uuid', $kriteria->uuid)->sortBy('bobot')->first();
                        $hasil = $perhitung->bobot / $bobot->bobot;
                    }
                    $bobot_kriteria = round($hasil, 3);
                    $array_bobot[] = $bobot_kriteria;
                }
            }
            $elements .= "</tr>";
        }
        $filter = [];
        $c = $request->except(['bobot_kriteria', '_token']);
        foreach ($data['alternatifs'] as $i => $alternatif) {
            $nilai_filter = [];
            foreach ($data['kriterias'] as $index => $kriteria) {
                $pembagi_bobot_filter = Perhitungan::where('alternatif_uuid', $alternatif->uuid)->where('kriteria_uuid', $kriteria->uuid)->first();
                $nilai_filter[] = filter($c["c" . $index + 1], $pembagi_bobot_filter->bobot);
            }
            $filter[] = (array_sum($nilai_filter) >= 6) ? 1 : 0;
            // $filter[] = array_sum($nilai_filter);
        }
        //MENGHITUNG RANKING-----------------------------------------------
        $bobot_kriteria = array_chunk($array_bobot, $data['sum_kriteria']);
        // $response['normalisasi'] = $bobot_kriteria;
        // $response['filter'] = $filter;
        // return response()->json(['filter' => $filter]);



        $response['filter'] = $filter;
        // PERHITUNGAN SLIDER
        // $pembagi = 0;
        // foreach ($request->bobot_kriteria as $row) {
        //     $pembagi += $row;
        // }
        // $normalisasi_bobot = [];
        // foreach ($request->all() as $row) {
        //     $normalisasi_bobot[] = round(($row / $pembagi), 2, PHP_ROUND_HALF_EVEN);
        // }
        $request_bobot = [];
        foreach ($request->bobot_kriteria as $row) {
            $request_bobot[] = round($row / array_sum($request->bobot_kriteria), 2, PHP_ROUND_HALF_EVEN);
        }
        $hasil_kali = [];
        for ($i = 0; $i < count($bobot_kriteria); $i++) {
            for ($j = 0; $j < count($request_bobot); $j++) {
                $hasil_kali[] = round(($bobot_kriteria[$i][$j] * $request_bobot[$j]), 4, PHP_ROUND_HALF_EVEN);
            }
        }
        $pecah_hasil = array_chunk($hasil_kali, $data['sum_kriteria']);
        $preferensi = [];
        for ($i = 0; $i < count($pecah_hasil); $i++) {
            if ($filter[$i] == 1) {
                $altern = Alternatif::where('alternatif', $i + 1)->first();
                $preferensi[] = [$altern, array_sum($pecah_hasil[$i])];
            }
        }

        // $response['preferensi'] = $preferensi;
        // $response['bobot_kriteria'] = $bobot_kriteria;
        // $response['pecah_hasil'] = $pecah_hasil;

        $rangking_assoc = [];
        foreach ($preferensi as $index => $nilai) {
            $rangking_assoc[] = [$nilai[0]->keterangan, round($nilai[1], 4, PHP_ROUND_HALF_EVEN), $nilai[0]->alternatif];
        }

        $names = array_column($rangking_assoc, 0);
        $scores = array_column($rangking_assoc, 1);
        $alternatif = array_column($rangking_assoc, 2);

        // Menggunakan array_multisort untuk mengurutkan scores secara menurun
        array_multisort($scores, SORT_DESC, $names, $alternatif);
        $response['rangking_assoc'] = $rangking_assoc;

        // Menggabungkan kembali array setelah diurutkan
        $final_ranking = array_map(function ($name, $score, $alternatif) {
            return [$name, $score, $alternatif];
        }, $names, $scores, $alternatif);
        // return response()->json(['final_ranking' => $filter]);
        // // Perkalian Semua Array
        // $ranking = [];
        // for ($u = 0; $u < count($pecah_hasil); $u++) {
        //     $ranking[] = round(array_sum($pecah_hasil[$u]), 6, PHP_ROUND_HALF_EVEN);
        // }

        // $ranking_terbesar = max($ranking);
        // $index_terbesar = array_search($ranking_terbesar, $ranking);

        // $alternatif_ranking = Alternatif::where('alternatif', $index_terbesar + 1)->first();


        // //Mengambil Bobot Kriteria
        // $bobot = [];
        // foreach ($data['kriterias'] as $kriteria) {
        //     // $bobot[] = $kriteria->bobot / 100;
        //     $bobot[] = $kriteria->bobot;
        // }
        // //Meng kalikan bobot dengan normalisasi
        // $hasil_kali = [];
        // for ($i = 0; $i < count($bobot_kriteria); $i++) {
        //     for ($j = 0; $j < count($bobot); $j++) {
        //         $hasil_kali[] = round(($bobot_kriteria[$i][$j] * $bobot[$j]), 4, PHP_ROUND_HALF_EVEN);
        //     }
        // }
        // //hasil perkalian di pecah menjadi array muti dimensi
        // $pecah_hasil = array_chunk($hasil_kali, $data['sum_kriteria']);

        // // Perkalian Semua Array
        // $ranking = [];
        // for ($u = 0; $u < count($pecah_hasil); $u++) {
        //     $ranking[] = round(array_sum($pecah_hasil[$u]), 4);
        // }

        // //Merangking
        // $nama = Alternatif::orderBy('alternatif', 'asc')->get();
        // $rangking_assoc = [];
        // foreach ($ranking as $index => $nilai) {
        //     $rangking_assoc[] = [$nama[$index]->keterangan, $nilai, $nama[$index]->alternatif];
        // }

        // $names = array_column($rangking_assoc, 0);
        // $scores = array_column($rangking_assoc, 1);
        // $alternatif = array_column($rangking_assoc, 2);

        // // Menggunakan array_multisort untuk mengurutkan scores secara menurun
        // array_multisort($scores, SORT_DESC, $names, $alternatif);

        // // Menggabungkan kembali array setelah diurutkan
        // $final_ranking = array_map(function ($name, $score, $alternatif) {
        //     return [$name, $score, $alternatif];
        // }, $names, $scores, $alternatif);

        // $data['ranking'] = $final_ranking;

        // return response()->json(['alternatif' => $alternatif_ranking, 'hasil' => $data]);

        $view = View::make('partial.normalisasi', [
            'alternatifs' => $data['alternatifs'],
            'kriteria' => $data['kriterias'],
            'ranking' => $final_ranking,
        ])->render();
        $response['view'] = $view;
        if (count($final_ranking) > 0) {
            $response['alternatif'] = Alternatif::where('alternatif', $final_ranking[0][2])->first();
        } else {
            $response['alternatif'] = '';
        }
        return response()->json($response);
    }
    // public function normalisasi_user(Request $request)
    // {
    //     $sum_kriteria = Kriteria::count('id');
    //     $array_pembilang = [];
    //     $array_pembagi = [];
    //     $count_alternatif = Alternatif::count('id');
    //     $kriterias = Kriteria::orderBy('kode', 'asc')->get();
    //     $alternatifs = Alternatif::orderBy('alternatif', 'asc')->get();
    //     $mooras = Perhitungan::all();
    //     // $last_id = Alternatif::orderBy('alternatif', 'desc')->first();
    //     // $last_id_moora = Perhitungan::orderBy('id', 'desc')->first();
    //     // // MENAMBAH ALTERNATIF BARU
    //     // $newRecord = new Alternatif();
    //     // $newRecord->id = $last_id->id + 1;
    //     // $newRecord->uuid = Str::orderedUuid();
    //     // $newRecord->alternatif = count($alternatifs) + 1;
    //     // $newRecord->keterangan = 'Pilihan Anda';
    //     // $newRecord->created_at = Carbon::now();
    //     // $newRecord->updated_at = Carbon::now();
    //     // $alternatifs->push($newRecord);
    //     // // MENAMBAH ALTERNATIF BARU
    //     // // MENAMBAH PERHITUNGAN BARU
    //     // $i = 0;
    //     // foreach ($request->all() as $index => $row) {
    //     //     $newMoora = new Perhitungan();
    //     //     $newMoora->id =  $last_id_moora->id++;
    //     //     $newMoora->uuid = Str::orderedUuid();
    //     //     $newMoora->alternatif_uuid = $alternatifs[count($alternatifs) - 1]->uuid;
    //     //     $newMoora->kriteria_uuid = $kriterias[$i++]->uuid;
    //     //     $newMoora->bobot = $row;
    //     //     $newMoora->created_at = Carbon::now();
    //     //     $newMoora->updated_at = Carbon::now();
    //     //     $mooras->push($newMoora);
    //     // }
    //     // $query = $mooras->where('alternatif_uuid', $alternatifs[5]->uuid)->first();
    //     // return response()->json(['alternatifs' => $mooras]);
    //     // return response()->json(['success' => $alternatifs[5]->uuid . '  /  ' . $kriterias[1]->uuid]);
    //     // MENAMBAH PERHITUNGAN BARU
    //     $elements = '';
    //     $array_bobot = [];
    //     foreach ($alternatifs as $alternatif) {
    //         $elements .= "<tr><td>A$alternatif->alternatif</td>
    //         <td>$alternatif->keterangan</td>";
    //         foreach ($kriterias as $kriteria) {
    //             $bobots = $mooras->where('alternatif_uuid', $alternatif->uuid)->where('kriteria_uuid', $kriteria->uuid);
    //             foreach ($bobots as $bobot) {
    //                 if ($kriteria->atribut == 'BENEFIT') {
    //                     $perhitung = $mooras->where('kriteria_uuid', $kriteria->uuid)->sortByDesc('bobot')->first();
    //                     $hasil = $bobot->bobot / $perhitung->bobot;
    //                 } else {
    //                     $perhitung = $mooras->where('kriteria_uuid', $kriteria->uuid)->sortBy('bobot')->first();
    //                     $hasil = $perhitung->bobot / $bobot->bobot;
    //                 }
    //                 $bobot_kriteria = round($hasil, 3);
    //                 $array_bobot[] = $bobot_kriteria;
    //             }
    //         }
    //         $elements .= "</tr>";
    //     }
    //     $data['elements'] = $elements;
    //     //MENGHITUNG RANKING-----------------------------------------------
    //     $bobot_kriteria = array_chunk($array_bobot, Kriteria::count('id'));

    //     //Mengambil Bobot Kriteria
    //     $bobot = [];
    //     foreach ($kriterias as $kriteria) {
    //         // $bobot[] = $kriteria->bobot / 100;
    //         $bobot[] = $kriteria->bobot;
    //     }
    //     //Meng kalikan bobot dengan normalisasi
    //     $hasil_kali = [];
    //     for ($i = 0; $i < count($bobot_kriteria); $i++) {
    //         for ($j = 0; $j < count($bobot); $j++) {
    //             $hasil_kali[] = round(($bobot_kriteria[$i][$j] * $bobot[$j]), 4, PHP_ROUND_HALF_EVEN);
    //         }
    //     }
    //     //hasil perkalian di pecah menjadi array muti dimensi
    //     $pecah_hasil = array_chunk($hasil_kali, Kriteria::count('id'));

    //     // Perkalian Semua Array
    //     $ranking = [];
    //     for ($u = 0; $u < count($pecah_hasil); $u++) {
    //         $ranking[] = round(array_sum($pecah_hasil[$u]), 4);
    //     }

    //     //Merangking
    //     $nama = $alternatifs->sortBy('alternatif');
    //     $rangking_assoc = [];
    //     foreach ($ranking as $index => $nilai) {
    //         $rangking_assoc[] = [$nama[$index]->keterangan, $nilai, $nama[$index]->alternatif, $nama[$index]->photo, $nama[$index]->harga];
    //     }

    //     $names = array_column($rangking_assoc, 0);
    //     $scores = array_column($rangking_assoc, 1);
    //     $alternatif = array_column($rangking_assoc, 2);
    //     $photo = array_column($rangking_assoc, 3);
    //     $harga = array_column($rangking_assoc, 4);

    //     // Menggunakan array_multisort untuk mengurutkan scores secara menurun
    //     array_multisort($scores, SORT_DESC, $names, $alternatif, $photo, $harga);

    //     // Menggabungkan kembali array setelah diurutkan
    //     $final_ranking = array_map(function ($name, $score, $alternatif, $photo, $harga) {
    //         return [$name, $score, $alternatif, $photo, rupiah($harga)];
    //     }, $names, $scores, $alternatif, $photo, $harga);

    //     $data['ranking'] = $final_ranking;

    //     return response()->json([
    //         'hasil' => $data,
    //         'pecah_hasil' => $pecah_hasil,
    //         'hasil_kali' => $hasil_kali,
    //         'data' => [
    //             'kriteria' => $kriterias,
    //             'alternatif' => $alternatifs
    //         ]
    //     ]);
    // }

    function transpose($matrix)
    {
        $transposedMatrix = [];
        foreach ($matrix as $rowIndex => $row) {
            foreach ($row as $colIndex => $value) {
                $transposedMatrix[$colIndex][$rowIndex] = $value;
            }
        }
        return $transposedMatrix;
    }
}
