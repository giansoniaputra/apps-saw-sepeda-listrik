<?php

namespace App\Http\Controllers;

use App\Models\Dapil;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;
use Illuminate\Support\Facades\Validator;

class DapilController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $data = [
            'title' => 'Daerah Pilihan'
        ];
        return view('dapil.index', $data);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'kode' => 'required|unique:dapils',
            'daerah' => 'required',
        ], [
            'kode.required' => 'Kode tidak boleh kosong!',
            'kode.unique' => 'Kode dapil sudah terdaftar!',
            'daerah.required' => 'Daerah tidak boleh kosong!',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()])->setStatusCode(400);
        } else {
            $dapil = new Dapil($request->all());
            $dapil->uuid = Str::orderedUuid();
            $dapil->save();
            return response()->json(['success' => 'Daerah Pilihan Berhasil Ditambahkan!']);
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(Dapil $dapil)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Dapil $dapil)
    {
        return response()->json(['data' => $dapil]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Dapil $dapil)
    {
        $rules = [
            'daerah' => 'required',
        ];
        $message = [
            'daerah.required' => 'Daerah tidak boleh kosong!',
        ];
        $cekDapil = Dapil::where('kode', $request->kode)->first();
        if ($cekDapil && $cekDapil->kode != $dapil->kode) {
            $rules['kode'] = 'required|unique:dapils';
            $message['kode.required'] = 'Kode tidak boleh kosong!';
            $message['kode.unique'] = 'Kode dapil sudah terdaftar!';
        } else {
            $rules['kode'] = 'required';
            $message['kode.required'] = 'Kode tidak boleh kosong!';
        }
        $validator = Validator::make($request->all(), $rules, $message);
        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()])->setStatusCode(400);
        } else {
            $dapil->fill($request->all());
            $dapil->save();
            return response()->json(['success' => 'Daerah Pilihan Berhasil Diubah!']);
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Dapil $dapil)
    {
        Dapil::destroy($dapil->id);
        return response()->json(['success' => 'Daerah Pilihan Berhasil Dihapus']);
    }

    public function dataTables(Request $request)
    {
        $query = Dapil::orderBy('kode')->get();
        return DataTables::of($query)->addColumn('action', function ($row) {
            $actionBtn =
                '
    <button class="btn btn-rounded btn-sm btn-warning text-dark edit-button" title="Edit Data" data-uuid="' . $row->uuid . '"><i class="ri-edit-2-line"></i></button>
    <button class="btn btn-rounded btn-sm btn-danger text-white delete-button" title="Hapus Data" data-uuid="' . $row->uuid . '" data-token="' . csrf_token() . '"><i class=" ri-delete-bin-6-fill"></i></button>';
            return $actionBtn;
        })->make(true);
    }
}
