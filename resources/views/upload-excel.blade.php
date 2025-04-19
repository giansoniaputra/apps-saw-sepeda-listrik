<div class="container">
    <form action="/upload-excel" method="POST" enctype="multipart/form-data">
        @csrf
        <div class="mb-3">
            <label for="excel" class="form-label">Choose file</label>
            <input type="file" required class="form-control" name="excel" id="excel" placeholder=""
                aria-describedby="fileHelpId" />
        </div>
        <button type="submit" class="btn btn-primary">Upload</button>
    </form>
</div>
