// $(document).ready(function () {
//     $("#search-rekomendasi").on("click", function () {
//         let form = $('form[id="form-rekomendasi"]').serialize();
//         let formArray = $('form[id="form-rekomendasi"]').serializeArray();
//         formArray.map((a) => {
//             if (a.value == "") {
//                 Swal.fire("Warning!", "Silahkan Isi Semua Field", "warning");
//             }
//         })
//         $("#spinner").html(loader)
//         $.ajax({
//             data: form,
//             url: "/normalisasi-user",
//             type: "GET",
//             dataType: 'json',
//             success: function (response) {
//                 // console.log(transposedMatrix);
//                 // Membuat tabel HTML
//                 let rangking = [];
//                 response.hasil.ranking.map((a) => {
//                     if (a[0] == 'Pilihan Anda') {
//                         let nilai = a[1];
//                         response.hasil.ranking.map((b) => {
//                             if (nilai > b[1]) {
//                                 rangking.push([b[0], b[3], b[4]])
//                             }
//                         })
//                     }
//                 })

//                 $("#spinner").html("")

//                 if (rangking.length == 0) {
//                     Swal.fire("Sayang Sekali", "Tidak ada rekomendasi dari data yang anda masukan", "warning");
//                     // Swal.fire("Sepeda Listrik " + response.end[0], "Adalah rekomendasi Sepeda Listrik terbaik", "success");

//                 } else {
//                     Swal.fire({
//                         title: rangking[0][0],
//                         text: `${rangking[0][0]} adalah rekomendasi speda listrik terbaik untuk anda dengan harga ${rangking[0][4]}`,
//                         imageUrl: "/storage/" + rangking[0][1],
//                         imageWidth: 400,
//                         imageHeight: 200,
//                         imageAlt: "Custom image"
//                     });
//                     // Swal.fire("Sepeda Listrik " + rangking[0][0], "Adalah rekomendasi Sepeda Listrik terbaik", "success");
//                 }
//                 let table3 = `<div class="row">
//                                         <div class="col-sm-12">
//                                             <div class="card">
//                                             <div class="card-body">
//                                                 <table class='table table-bordered table-hover dtr-inline'>
//                                                     <thead>
//                                                         <tr>
//                                                         <th>No</th>
//                                                         <th>Sepeda Listrik</th>
//                                                         </tr>
//                                                     <thead>
//                                                     <tbody>
//                                                     `
//                 let no = 0;
//                 response.hasil.ranking.map((a, b) => {
//                     if (a[0] != rangking[0][0]) {
//                         if (a[0] == "Pilihan Anda") {
//                             let nilai = a[1];
//                             response.hasil.ranking.map((b) => {
//                                 if (nilai > b[1]) {
//                                     keterangan = `<span class="text-info">${rangking[0][0]}</span>`
//                                 }
//                             })
//                         } else {
//                             var keterangan = `<span>${a[0]}</span>`
//                         }
//                         if (keterangan !== undefined) {
//                             let newNo = no + 1;
//                             table3 += `<tr>
//                             <td>${newNo}</td>
//                             <td>${keterangan}</td>
//                             </tr>
//                             `
//                             no = newNo
//                         }
//                         // else {
//                         //     table3 += `<tr>
//                         //     <td>${b}</td>
//                         //     <td>${keterangan}</td>
//                         //     </tr>
//                         //     `
//                         // }
//                     }
//                 });
//                 table3 += "</tbody></table></div></div></div></div></div></div>";

//                 $("#rangking").html(table3);
//                 $("#modal-rekomendasi").modal("show")

//             }
//         })
//     })
// });
// $(document).ready(function () {
//     $("#search-rekomendasi").on("click", function () {
//         let form = $('form[id="form-rekomendasi"]').serialize();
//         let formArray = $('form[id="form-rekomendasi"]').serializeArray();
//         formArray.map((a) => {
//             if (a.value == "") {
//                 Swal.fire("Warning!", "Silahkan Isi Semua Field", "warning");
//             }
//         })
//         $("#spinner").html(loader)
//         $.ajax({
//             data: form,
//             url: "/normalisasi-user",
//             type: "GET",
//             dataType: 'json',
//             success: function (response) {
//                 // console.log(response.alternatif);
//                 let alternatif = response.alternatif

//                 // console.log(transposedMatrix);
//                 // Membuat tabel HTML
//                 let rangking = [];
//                 response.hasil.ranking.map((a) => {
//                     if (a[0] == alternatif.keterangan) {
//                         let nilai = a[1];
//                         response.hasil.ranking.map((b) => {
//                             if (nilai > b[1]) {
//                                 rangking.push([b[0], b[3], b[4]])
//                             }
//                         })
//                     }
//                 })

//                 $("#spinner").html("")

//                 // if (rangking.length == 0) {
//                 //     Swal.fire("Sayang Sekali", "Tidak ada rekomendasi dari data yang anda masukan", "warning");
//                 //     // Swal.fire("Sepeda Listrik " + response.end[0], "Adalah rekomendasi Sepeda Listrik terbaik", "success");

//                 // } else {
//               Swal.fire({
//    title: alternatif.type,
  //  html: `
    //    <div style="text-align: justify; font-size: 14px;">
      //      <strong>${alternatif.type}</strong> adalah rekomendasi sepeda listrik terbaik untuk Anda. Berikut detail spesifikasinya:
          //  <ul style="padding-left: 16px; margin-top: 10px;">
        //        <li><strong>Nama Sepeda:</strong> ${alternatif.keterangan}</li>
            //    <li><strong>Harga:</strong> Rp. ${parseInt(alternatif.harga).toLocaleString('id-ID')}</li>
              //  <li><strong>Daya Angkut:</strong> ${alternatif.daya} Kg</li>
               // <li><strong>Jarak Tempuh:</strong> ${alternatif.jarak} Km</li>
               // <li><strong>Kecepatan Maksimal:</strong> ${alternatif.kecepatan} Km/h</li>
                //<li><strong>Motor Power:</strong> ${alternatif.power} Watt</li>
               // <li><strong>Baterai:</strong> ${alternatif.batrai}</li>
            //</ul>
       // </div>
    //`,
    // imageUrl: "/storage/" + alternatif.photo,
    // imageWidth: 400,
    // imageHeight: 200,
    // imageAlt: "Custom image",
     //customClass: {
       // popup: 'swal-left-align'
  //  }
//});

//                 //     // Swal.fire("Sepeda Listrik " + rangking[0][0], "Adalah rekomendasi Sepeda Listrik terbaik", "success");
//                 // }
//                 let table3 = `<div class="row">
//                                         <div class="col-sm-12">
//                                             <div class="card">
//                                             <div class="card-body">
//                                                 <table class='table table-bordered table-hover dtr-inline'>
//                                                     <thead>
//                                                         <tr>
//                                                         <th>No</th>
//                                                         <th>Sepeda Listrik</th>
//                                                         </tr>
//                                                     <thead>
//                                                     <tbody>
//                                                     `
//                 let no = 0;
//                 response.hasil.ranking.map((a, b) => {
//                     if (a[0] != rangking[0][0]) {
//                         var keterangan = `<span class="${(alternatif.keterangan == a[0]) ? 'text-info' : ''}">${a[0]}</span>`
//                         if (keterangan !== undefined) {
//                             let newNo = no + 1;
//                             table3 += `<tr>
//                             <td>${newNo}</td>
//                             <td>${keterangan}</td>
//                             </tr>
//                             `
//                             no = newNo
//                         }
//                         // else {
//                         //     table3 += `<tr>
//                         //     <td>${b}</td>
//                         //     <td>${keterangan}</td>
//                         //     </tr>
//                         //     `
//                         // }
//                     }
//                 });
//                 table3 += "</tbody></table></div></div></div></div></div></div>";

//                 $("#rangking").html(table3);
//                 $("#modal-rekomendasi").modal("show")

//             }
//         })
//     })
// });
// KEPUTUSAN

// Fungsi untuk mentranspose matriks
// function transpose(matrix) {
//     return matrix[0].map((col, i) => matrix.map(row => row[i]));
// }

$(document).ready(function () {
    renderSlider()

    $("#render-page").on("click", "#search-rekomendasi", function () {
        let form = $('form[id="form-rekomendasi"]').serialize();
        // let formArray = $('form[id="form-rekomendasi"]').serializeArray();
        // formArray.map((a) => {
        //     if (a.value == "") {
        //         Swal.fire("Warning!", "Silahkan Isi Semua Field", "warning");
        //     }
        // })
        $("#spinner").html(loader)
        $.ajax({
            data: form + "&_token=" + csrfToken,
            url: "/view-dropdown",
            type: "POST",
            dataType: 'json',
            success: function (response) {
                $("#spinner").html("")
                $("#render-page").html(response.view)
            }
        });

    })

    // KEPUTUSAN
    $("#render-page").on("click", "#search-keputusan", function () {
        let form = $('form[id="form-keputusan"]').serialize();
        let formArray = $('form[id="form-keputusan"]').serializeArray();
        formArray.map((a) => {
            if (a.value == "") {
                Swal.fire("Warning!", "Silahkan Isi Semua Field", "warning");
            }
        })

        $("#spinner").html(loader)
        $.ajax({
            data: form + "&_token=" + csrfToken,
            url: "/normalisasi-user",
            type: "POST",
            dataType: 'json',
            success: function (response) {
                $("#spinner").html("")
                let alternatif = response.alternatif
                if (alternatif != '') {

                   Swal.fire({
    title: `<strong style="font-size: 24px; color: #1A2942;">${alternatif.type}</strong>`,
    html: `
        <div style="text-align: left; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; color: #333;">
            <p style="font-size: 16px; margin-bottom: 16px;">
                <strong>${alternatif.type}</strong> adalah rekomendasi sepeda listrik terbaik untuk Anda dengan spesifikasi sebagai berikut:
            </p>
            <ul style="list-style-type: none; padding-left: 0; font-size: 15px; line-height: 1.5; max-width: 400px; margin: 0 auto;">
                <li style="padding: 6px 0; border-bottom: 1px solid #eee;">
                    <strong>Nama Sepeda:</strong> ${alternatif.keterangan}
                </li>
                <li style="padding: 6px 0; border-bottom: 1px solid #eee;">
                    <strong>Harga:</strong> Rp. ${parseInt(alternatif.harga).toLocaleString('id-ID')}
                </li>
                <li style="padding: 6px 0; border-bottom: 1px solid #eee;">
                    <strong>Daya Angkut:</strong> ${alternatif.daya} Kg
                </li>
                <li style="padding: 6px 0; border-bottom: 1px solid #eee;">
                    <strong>Jarak Tempuh:</strong> ${alternatif.jarak} Km
                </li>
                <li style="padding: 6px 0; border-bottom: 1px solid #eee;">
                    <strong>Kecepatan Maksimal:</strong> ${alternatif.kecepatan} Km/h
                </li>
                <li style="padding: 6px 0; border-bottom: 1px solid #eee;">
                    <strong>Motor Power:</strong> ${alternatif.power} Watt
                </li>
                <li style="padding: 6px 0;">
                    <strong>Baterai:</strong> ${alternatif.batrai}
                </li>
            </ul>
        </div>
    `,
    imageUrl: "/storage/" + alternatif.photo,
    imageWidth: 400,
    imageHeight: 200,
    imageAlt: "Gambar Sepeda Listrik",
    customClass: {
        popup: 'swal-popup-custom'
    },
    // Optional: center the popup text nicely
    didOpen: () => {
        const popup = Swal.getPopup();
        popup.style.textAlign = 'center';
        popup.style.fontFamily = "'Segoe UI', Tahoma, Geneva, Verdana, sans-serif";
        popup.style.color = '#1A2942';
    }
});

                    $("#rangking").html(response.view);
                    $("#modal-rekomendasi").modal("show")
                } else {
                    Swal.fire("Perhatian!", "Tidak Ada Rekomendasi Untuk Anda!", "warning");
                }

            }
        })
    })


    function renderSlider() {
        $("#spinner").html(loader)
        $.ajax({
            url: "/view-slider",
            type: "GET",
            dataType: 'json',
            success: function (response) {
                $("#spinner").html("")
                $("#render-page").html(response.view)
            }
        });
    }
});
