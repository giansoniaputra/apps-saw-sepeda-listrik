<?php

namespace App\Http\Controllers;

use App\Models\Alternatif;
use App\Models\Perhitungan;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Models\PerhitunganMoora;
use Illuminate\Support\Facades\Storage;
use Yajra\DataTables\Facades\DataTables;
use Illuminate\Support\Facades\Validator;

class AlternatifController extends Controller
{
    public function index()
    {
        $data = [
            'title' => 'Alternatif'
        ];
        return view('alternatif.index', $data);
    }

  public function store(Request $request)
{
    $rules = [
        'alternatif' => 'required|unique:alternatifs',
        'keterangan' => 'required',
        'type' => 'required', // ✅ Tambahkan ini
    ];
    $pesan = [
        'alternatif.required' => 'Alternatif tidak boleh kosong!',
        'alternatif.unique' => 'Alternatif sudah ada!',
        'keterangan.required' => 'Keterangan tidak boleh kosong!',
        'type.required' => 'Type tidak boleh kosong!', // ✅ Tambahkan ini juga
    ];

    $validator = Validator::make($request->all(), $rules, $pesan);
    if ($validator->fails()) {
        return response()->json(['errors' => $validator->errors()]);
    } else {
        $alternatif = new Alternatif($request->only([
            'alternatif', 'keterangan', 'type', 'harga', 'batrai', 'power', 'kecepatan', 'jarak', 'daya'
        ])); // ✅ hanya ambil field yang dibutuhkan
        $alternatif->uuid = Str::orderedUuid();
      if ($request->hasFile('photo')) {
    $file = $request->file('photo');
    $filename = time() . '_' . $file->getClientOriginalName();
    $path = $file->storeAs('photo', $filename, 'public');
    $alternatif->photo = $path; // contoh: "photo/1717231234_sepeda.png"
}


        $alternatif->save();
        return response()->json(['success' => 'Alternatif Berhasil Dibuat!']);
    }
}


    public function edit(Alternatif $alternatif)
    {
        return response()->json(['data' => $alternatif]);
    }

  public function update(Alternatif $alternatif, Request $request)
{
    $rules = [
        'alternatif' => 'required',
        'keterangan' => 'required',
    ];
    $pesan = [
        'alternatif.required' => 'Alternatif tidak boleh kosong!',
        'keterangan.required' => 'Ketarangan tidak boleh kosong!',
    ];

    $cek = Alternatif::where('uuid', $request->uuid)->first();
    if ($cek->alternatif == $request->alternatif) {
        $rules['alternatif'] = 'required';
    } else {
        $rules['alternatif'] = 'required|unique:alternatifs';
        $pesan['alternatif.unique'] = 'alternatif sudah ada';
    }

    $validator = Validator::make($request->all(), $rules, $pesan);
    if ($validator->fails()) {
        return response()->json(['errors' => $validator->errors()]);
    }

    // Update semua field secara manual
    $alternatif->alternatif = $request->alternatif;
    $alternatif->keterangan = $request->keterangan;
    $alternatif->type = $request->type;
    $alternatif->harga = $request->harga;
    $alternatif->batrai = $request->batrai;
    $alternatif->power = $request->power;
    $alternatif->kecepatan = $request->kecepatan;
    $alternatif->jarak = $request->jarak;
    $alternatif->daya = $request->daya;

    if ($request->hasFile('photo')) {
        Storage::delete($alternatif->photo);
        $file = $request->file('photo');
        $filename = time() . '_' . $file->getClientOriginalName();
        $path = $file->storeAs('photo', $filename, 'public');
        $alternatif->photo = $path;
    }

    $alternatif->save();
    return response()->json(['success' => 'Alternatif Berhasil Di Ubah!']);
}

    public function destroy(Alternatif $alternatif)
    {
        Alternatif::destroy($alternatif->id);
        Perhitungan::where('alternatif_uuid', $alternatif->uuid)->delete();
        if ($alternatif->photo) {
            Storage::delete($alternatif->photo);
        }
        return response()->json(['success' => 'Alternatif Berhasil Di Hapus!']);
    }

    public function dataTablesAlternatif()
    {
        $query = Alternatif::all();
        foreach ($query as $row) {
            $row->alternatif = "A" . $row->alternatif;
        }
        return DataTables::of($query)->addColumn('action', function ($row) {
            $actionBtn =
                '
                <button class="btn btn-rounded btn-sm btn-warning text-dark edit-button" title="Edit Data" data-uuid="' . $row->uuid . '"><i class="fas fa-edit"></i></button>
                <button class="btn btn-rounded btn-sm btn-danger text-white delete-button" title="Hapus Data" data-uuid="' . $row->uuid . '" data-token="' . csrf_token() . '"><i class="fas fa-trash-alt"></i></button>';
            return $actionBtn;
        })->make(true);
    }
}
