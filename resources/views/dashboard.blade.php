@extends('layouts.main')
@section('container')
<div class="row">
    <div class="col-sm-4">
        <div class="card widget-icon-box">
            <div class="card-body">
                <div class="d-flex justify-content-between">
                    <div class="flex-grow-1 overflow-hidden">
                        <h5 class="text-muted text-uppercase fs-13 mt-0" title="Number of Customers">Jumlah Dapil</h5>
                        <h3 class="my-3">{{ $dapil }}</h3>
                    </div>
                    <div class="avatar-sm flex-shrink-0">
                        <span class="avatar-title text-bg-primary rounded rounded-3 fs-3 widget-icon-box-avatar shadow">
                            <i class="ri-map-pin-fill"></i>
                        </span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-sm-4">
        <div class="card widget-icon-box">
            <div class="card-body">
                <div class="d-flex justify-content-between">
                    <div class="flex-grow-1 overflow-hidden">
                        <h5 class="text-muted text-uppercase fs-13 mt-0" title="Number of Customers">Jumlah Calon Legistalif</h5>
                        <h3 class="my-3">{{ $alternatif }}</h3>
                    </div>
                    <div class="avatar-sm flex-shrink-0">
                        <span class="avatar-title text-bg-success rounded rounded-3 fs-3 widget-icon-box-avatar shadow">
                            <i class="ri-group-line"></i>
                        </span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-sm-4">
        <div class="card widget-icon-box">
            <div class="card-body">
                <div class="d-flex justify-content-between">
                    <div class="flex-grow-1 overflow-hidden">
                        <h5 class="text-muted text-uppercase fs-13 mt-0" title="Number of Customers">Jumlah Kriteria</h5>
                        <h3 class="my-3">{{ $kriteria }}</h3>
                    </div>
                    <div class="avatar-sm flex-shrink-0">
                        <span class="avatar-title text-bg-warning rounded rounded-3 fs-3 widget-icon-box-avatar shadow">
                            <i class="ri-pie-chart-line"></i>
                        </span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
