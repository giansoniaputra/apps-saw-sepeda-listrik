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
        $array_pembilang = [];
        $array_pembagi = [];
        $count_alternatif = Alternatif::count('id');
        $kriterias = Kriteria::orderBy('kode', 'asc')->get();
        $alternatifs = Alternatif::orderBy('alternatif', 'asc')->get();
        $mooras = Perhitungan::all();
        $last_id = Alternatif::orderBy('alternatif', 'desc')->first();
        $last_id_moora = Perhitungan::orderBy('id', 'desc')->first();
        // MENAMBAH ALTERNATIF BARU
        $newRecord = new Alternatif();
        $newRecord->id = $last_id->id + 1;
        $newRecord->uuid = Str::orderedUuid();
        $newRecord->alternatif = count($alternatifs) + 1;
        $newRecord->keterangan = 'Pilihan Anda';
        $newRecord->created_at = Carbon::now();
        $newRecord->updated_at = Carbon::now();
        $alternatifs->push($newRecord);
        // MENAMBAH ALTERNATIF BARU
        // MENAMBAH PERHITUNGAN BARU
        $i = 0;
        foreach ($request->all() as $index => $row) {
            $newMoora = new Perhitungan();
            $newMoora->id =  $last_id_moora->id++;
            $newMoora->uuid = Str::orderedUuid();
            $newMoora->alternatif_uuid = $alternatifs[count($alternatifs) - 1]->uuid;
            $newMoora->kriteria_uuid = $kriterias[$i++]->uuid;
            $newMoora->bobot = $row;
            $newMoora->created_at = Carbon::now();
            $newMoora->updated_at = Carbon::now();
            $mooras->push($newMoora);
        }
        // $query = $mooras->where('alternatif_uuid', $alternatifs[5]->uuid)->first();
        // return response()->json(['alternatifs' => $mooras]);
        // return response()->json(['success' => $alternatifs[5]->uuid . '  /  ' . $kriterias[1]->uuid]);
        // MENAMBAH PERHITUNGAN BARU
        foreach ($kriterias as $kriteria) {
            foreach ($alternatifs as $alternatif) {
                $query = $mooras->where('alternatif_uuid', $alternatif->uuid)->where('kriteria_uuid', $kriteria->uuid)->first();
                $array_pembagi[] = pow($query->bobot, 2);
                $array_pembilang[] = $query->bobot;
            }
        }
        // PERHITUNGAN KOSTUM
        $kuadrat = array_chunk($array_pembagi, $count_alternatif + 1);
        $pembilang = array_chunk($array_pembilang, $count_alternatif + 1);
        $pembagi = [];
        foreach ($kuadrat as $row) {
            $jumlah = array_sum($row);
            $akarKuadrat = floatval(number_format(sqrt($jumlah), 3));
            $pembagi[] = $akarKuadrat;
        }
        $hasil = [];
        foreach ($pembilang as $row => $val) {
            $hasil[$row] = array_map(function ($value) use ($row, $pembagi) {
                return floatval(number_format($value / $pembagi[$row], 3));
            }, $val);
        }
        // PREPERENSI
        $data = $this->transpose($hasil);
        $kriterias = Kriteria::orderBy('kode', 'asc');

        $bobot = [];
        foreach ($kriterias->get() as $kriteria) {
            $bobot[] = kriteria::bobot($kriteria->bobot);
        }
        $result_array = [];
        for ($i = 0; $i < count($data); $i++) {
            for ($j = 0; $j < count($bobot); $j++) {
                $result_array[] = floatval(number_format($data[$i][$j] * $bobot[$j], 3));
            }
        }
        $final_result = array_chunk($result_array, $kriterias->count('id'));
        $rangking = [];
        $atribut = [];
        foreach ($kriterias->get() as $row) {
            $atribut[] = $row->atribut;
        }

        // Loop melalui setiap array (SIPA)
        for ($k = 0; $k < count($final_result); $k++) {
            for ($l = 0; $l < count($bobot); $l++) {
                $jumlah = 0;
                if ($atribut[$l] == 'BENEFIT') {
                    $jumlah += $final_result[$k][$l];
                } else {
                    $jumlah -= $final_result[$k][$l];
                }
                $rangking[] = $jumlah;
            }
        }

        $rangking_result = array_chunk($rangking, $kriterias->count('id'));
        $final_ranking = [];
        for ($u = 0; $u < count($rangking_result); $u++) {
            $final_ranking[] = array_sum($rangking_result[$u]);
        }

        $rangking_assoc = [];
        foreach ($final_ranking as $index => $nilai) {
            $rangking_assoc[] = [$alternatifs[$index]->keterangan, $nilai];
        }

        $names = array_column($rangking_assoc, 0);
        $scores = array_column($rangking_assoc, 1);

        // Menggunakan array_multisort untuk mengurutkan scores secara menurun
        array_multisort($scores, SORT_DESC, $names);

        // Menggabungkan kembali array setelah diurutkan
        $result2 = array_map(function ($name, $score) {
            return [$name, $score];
        }, $names, $scores);


        return response()->json([
            'result' => $final_result,
            'hasil' => $result2
        ]);
    }

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
