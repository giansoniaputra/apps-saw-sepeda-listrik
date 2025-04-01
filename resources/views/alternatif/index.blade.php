@extends('layouts.main')
@section('container')
<div class="row mb-2">
    <div class="col">
        <button type="button" class="btn btn-primary" id="btn-add-data">Tambah Alternatif</button>
    </div>
</div>
<div class="row">
    <div class="col-sm-12">
        <div class="card">
            <div class="card-header">
                <div class="row">
                    <div class="col-sm-3">
                        <label for="filter-dapil">Filter Daerah Pilihan</label>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-3">
                        <select class="form-control" id="filter-dapil">
                            @foreach ($dapils as $dapil)
                            <option value="{{ $dapil->uuid }}">Dapil {{ $dapil->kode }}</option>
                            @endforeach
                        </select>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <table id="table-alternatif" class="table table-bordered table-hover dataTable dtr-inline">
                    <thead>
                        <th>Aternatif</th>
                        <th>Dapil</th>
                        <th>Nama</th>
                        <th>Action</th>
                    </thead>
                    <tbody>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
@include('alternatif.modal-alternatif')
@endsection
@section('js_after')
<script src="/ex-script/alternatif.js"></script>
@endsection
