<form action="javascript:;" id="form-rekomendasi">
    <div class="row">
        <div class="col-sm-12">
            <h3>Apa yang Menjadi Prioritas Anda?</h3>
        </div>
    </div>

    <div class="row">
        @foreach ($kriterias as $key => $kriteria)
        @php
        $subs = get_sub_kriteria($kriteria->uuid);
        @endphp
        <div class="col-sm-12">
            <div class="mb-3">
                <label class="form-label" for="">{{ $kriteria->kriteria }}</label>
                <br>
                @if ($kriteria->atribut == 'BENEFIT')
                <input type="range" class="form-input" name="bobot_kriteria[]" min="1" max="5" style="width: 100%">
                <div class="row">
                    <div class="col-sm-6">
                        <small style="float: left" class="text-danger">Tidak Penting</small>
                    </div>
                    <div class="col-sm-6">
                        <small style="float: right" class="text-success">Sangat Penting</small>
                    </div>
                </div>
                @else
                <input type="range" class="form-input" name="bobot_kriteria[]" min="1" max="5" style="direction: rtl;width: 100%">
                <div class="row">
                    <div class="col-sm-6">
                        <small style="float: left" class="text-success">Sangat Penting</small>
                    </div>
                    <div class="col-sm-6">
                        <small style="float: right" class="text-danger">Tidak Penting</small>
                    </div>
                </div>
                @endif
            </div>
        </div>
        @endforeach
    </div>
</form>
<button class="btn btn-primary" id="search-rekomendasi">Tentukan kriteria</button>
