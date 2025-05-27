<div class="row">
    <div class="col-sm-12">
        <div class="card">
            <div class="card-body">
                <table class='table table-bordered table-hover dtr-inline'>
                    <thead>
                        <tr>
                            <th>Ranking</th>
                            <th>Nama Sepeda</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($ranking as $index => $row)
                        <tr>
                            <td>{{ $index + 1 }}</td>
                            <td class="{{ ($index == 0) ? 'text-success' : '' }}">{{ $row[0] }}</td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
