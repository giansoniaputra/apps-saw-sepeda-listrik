<form action="javascript:;" id="form-keputusan">
    @foreach ($bobot as $item)
    <input type="hidden" name="bobot_kriteria[]" value="{{ $item }}">
    @endforeach
    <div class="row">
        @foreach ($kriterias as $key => $kriteria)
        @php
        $subs = get_sub_kriteria($kriteria->uuid);
        @endphp
        <div class="col-sm-12">
            <div class="mb-3">
                <label for="c{{ $kriteria->kode }}">{{ $kriteria->kriteria }}</label>
                <select class="form-select" name="c{{ $kriteria->kode }}" aria-label="Default select example">
                    @foreach ($subs as $item => $sub)
                    <option value="{{ $sub->bobot }}">{{ $sub->sub_kriteria }}</option>
                    {{-- <option value="{{ $sub->bobot }}">{{ $sub->bobot }}</option> --}}
                    @endforeach
                </select>
            </div>
        </div>
        @endforeach
    </div>
</form>
<button class="btn btn-primary" id="search-keputusan">Lihat Rekomendasi</button>
