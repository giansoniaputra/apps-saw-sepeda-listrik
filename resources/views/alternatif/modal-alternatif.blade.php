<!-- Modal -->
<div class="modal fade" id="modal-alternatif" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog modal-xl modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modal-title"></h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close" id="btn-close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="javascript:;" id="form-alternatif">
                    <input type="hidden" name="uuid" id="current_uuid">
                    @csrf
                    <div class="row">
                        <div class="col-sm-6">
                            <label for="alternatif">Alternatif</label>
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">A</span>
                                </div>
                                <input type="number" id="alternatif" name="alternatif" class="form-control"
                                    placeholder="Masukan Hanya Angka Saja">
                            </div>
                            <div class="form-group mb-3">
                                <label for="keterangan">Nama Motor</label>
                                <textarea name="keterangan" class="form-control" id="keterangan" placeholder="Masukan Nama Motor"></textarea>
                            </div>
                            <div class="form-group mb-3">
                                <label for="type" class="form-label">Type</label>
                                <input type="text" name="type" id="type" class="form-control"
                                    placeholder="" />
                            </div>
                            <div class="form-group mb-3">
                                <label for="harga" class="form-label">Harga</label>
                                <input type="number" name="harga" id="harga" class="form-control"
                                    placeholder="" />
                            </div>
                            <div class="form-group mb-3">
                                <label for="batrai" class="form-label">Baterai</label>
                                <input type="number" name="batrai" id="batrai" class="form-control"
                                    placeholder="" />
                            </div>
                            <div class="form-group mb-3">
                                <label for="power" class="form-label">Power</label>
                                <input type="number" name="power" id="power" class="form-control"
                                    placeholder="" />
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group mb-3">
                                <label for="kecepatan" class="form-label">Kecepatan</label>
                                <input type="number" name="kecepatan" id="kecepatan" class="form-control"
                                    placeholder="" />
                            </div>
                            <div class="form-group mb-3">
                                <label for="jarak" class="form-label">Jarak</label>
                                <input type="number" name="jarak" id="jarak" class="form-control"
                                    placeholder="" />
                            </div>
                            <div class="form-group mb-3">
                                <label for="daya" class="form-label">Daya</label>
                                <input type="number" name="daya" id="daya" class="form-control"
                                    placeholder="" />
                            </div>
                            <div class="mb-3">
                                <label for="photo" class="form-label">Upload Photo</label>
                                <input type="file" class="form-control" name="photo" id="photo"
                                    placeholder="" />
                            </div>
                        </div>
                </form>
            </div>
            <div class="modal-footer" id="btn-action">
            </div>
        </div>
    </div>
</div>
