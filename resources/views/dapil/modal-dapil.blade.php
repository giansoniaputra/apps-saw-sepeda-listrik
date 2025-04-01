<div class="modal fade" id="modal-dapil" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="modal-dapilLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modal-title"></h5>
                <button type="button" class="btn-close" id="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div> <!-- end modal header -->
            <div class="modal-body">
                <form action="javascript:;" id="form-dapil">
                    @csrf
                    <div class="form-group mb-3">
                        <label for="kode">Nomor Dapil</label>
                        <input type="number" placeholder="Masukan Dapil" id="kode" name="kode" class="form-control">
                    </div>
                    <div class="form-group mb-3">
                        <label for="daerah">Daerah Pilihan</label>
                        <input type="text" id="daerah" name="daerah" class="form-control" placeholder="Masukan Daerah">
                    </div>
                </form>
            </div>
            <div class="modal-footer" id="btn-action">
            </div>
        </div>
    </div>
</div>
