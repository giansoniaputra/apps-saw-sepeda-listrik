<div class="modal fade" id="modal-alternatif" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="modal-alternatifLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modal-title"></h5>
                <button type="button" class="btn-close" id="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div> <!-- end modal header -->
            <div class="modal-body">
                <form action="javascript:;" id="form-alternatif">
                    @csrf
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">A</span>
                        </div>
                        <input type="number" id="kode" name="kode" class="form-control">
                    </div>
                    <div class="form-group mb-3">
                        <div class="mb-3">
                            <label for="dapil_uuid" class="form-label">Daerah Pilihan</label>
                            <select class="form-control" name="dapil_uuid" id="dapil_uuid">
                                <option selected disabled value="">Pilih Daerah Pilihan</option>
                                @foreach ($dapils as $dapil)
                                <option value="{{ $dapil->uuid }}">Dapil {{ $dapil->kode }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="form-group mb-3">
                        <label for="alternatif">Nama</label>
                        <input type="text" id="alternatif" name="alternatif" class="form-control">
                    </div>
                </form>
            </div>
            <div class="modal-footer" id="btn-action">
            </div>
        </div>
    </div>
</div>
