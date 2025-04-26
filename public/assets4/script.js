$(document).ready(function () {
    $("#search-rekomendasi").on("click", function () {
        let form = $('form[id="form-rekomendasi"]').serialize();
        let formArray = $('form[id="form-rekomendasi"]').serializeArray();
        formArray.map((a) => {
            if (a.value == "") {
                Swal.fire("Warning!", "Silahkan Isi Semua Field", "warning");
            }
        })
        $("#spinner").html(loader)
        $.ajax({
            data: form,
            url: "/normalisasi-user",
            type: "GET",
            dataType: 'json',
            success: function (response) {
                // console.log(transposedMatrix);
                // Membuat tabel HTML
                let rangking = [];
                response.hasil.ranking.map((a) => {
                    if (a[0] == 'Pilihan Anda') {
                        let nilai = a[1];
                        response.hasil.ranking.map((b) => {
                            if (nilai > b[1]) {
                                rangking.push([b[0], b[3]])
                            }
                        })
                    }
                })

                $("#spinner").html("")

                if (rangking.length == 0) {
                    Swal.fire("Sayang Sekali", "Tidak ada rekomendasi dari data yang anda masukan", "warning");
                    // Swal.fire("Sepeda Listrik " + response.end[0], "Adalah rekomendasi Sepeda Listrik terbaik", "success");

                } else {
                    Swal.fire({
                        title: rangking[0][0],
                        text: `${rangking[0][0]} adalah rekomendasi speda listrik terbaik untuk anda!`,
                        imageUrl: "/storage/" + rangking[0][1],
                        imageWidth: 400,
                        imageHeight: 200,
                        imageAlt: "Custom image"
                    });
                    // Swal.fire("Sepeda Listrik " + rangking[0][0], "Adalah rekomendasi Sepeda Listrik terbaik", "success");
                }
                let table3 = `<div class="row">
                                        <div class="col-sm-12">
                                            <div class="card">
                                            <div class="card-body">
                                                <table class='table table-bordered table-hover dtr-inline'>
                                                    <thead>
                                                        <tr>
                                                        <th>No</th>
                                                        <th>Sepeda Listrik</th>
                                                        </tr>
                                                    <thead>
                                                    <tbody>
                                                    `
                let no = 0;
                response.hasil.ranking.map((a, b) => {
                    if (a[0] != rangking[0][0]) {
                        if (a[0] == "Pilihan Anda") {
                            let nilai = a[1];
                            response.hasil.ranking.map((b) => {
                                if (nilai > b[1]) {
                                    keterangan = `<span class="text-info">${rangking[0][0]}</span>`
                                }
                            })
                        } else {
                            var keterangan = `<span>${a[0]}</span>`
                        }
                        if (keterangan !== undefined) {
                            let newNo = no + 1;
                            table3 += `<tr>
                            <td>${newNo}</td>
                            <td>${keterangan}</td>
                            </tr>
                            `
                            no = newNo
                        }
                        // else {
                        //     table3 += `<tr>
                        //     <td>${b}</td>
                        //     <td>${keterangan}</td>
                        //     </tr>
                        //     `
                        // }
                    }
                });
                table3 += "</tbody></table></div></div></div></div></div></div>";

                $("#rangking").html(table3);
                $("#modal-rekomendasi").modal("show")

            }
        })
    })
});
// KEPUTUSAN

// Fungsi untuk mentranspose matriks
function transpose(matrix) {
    return matrix[0].map((col, i) => matrix.map(row => row[i]));
}
