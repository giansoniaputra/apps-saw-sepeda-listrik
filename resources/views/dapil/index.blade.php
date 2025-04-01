@extends('layouts.main')
@section('container')
<div class="row mb-2">
    <div class="col">
        <button type="button" class="btn btn-primary" id="btn-add-data">Tambah Dapil</button>
    </div>
</div>
<div class="row">
    <div class="col-sm-12">
        <div class="card">
            <div class="card-header">
            </div>
            <div class="card-body">
                <table id="table-dapil" class="table table-bordered table-hover dataTable dtr-inline">
                    <thead>
                        <th>Dapil</th>
                        <th>Daerah</th>
                        <th>Action</th>
                    </thead>
                    <tbody>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
@include('dapil.modal-dapil')
@endsection
@section('js_after')
<script src="/ex-script/dapil.js"></script>
@endsection
