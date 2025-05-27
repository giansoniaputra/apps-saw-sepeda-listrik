<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/assets4/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">
    <script src="/assets4/jquery.js"></script>
    <link rel="stylesheet" href="/assets/sweetalert2.min.css">
    <script src="/assets/sweetalert2.all.min.js"></script>
    <meta name="token" content="{{ csrf_token() }}">
    <title>Rekomendasi Sepeda Listrik</title>
    <style>
        .spinner {
            width: 56px;
            height: 56px;
            display: grid;
            border: 4.5px solid #0000;
            border-radius: 50%;
            border-color: #ffff #0000;
            animation: spinner-e04l1k 1s infinite linear;
        }

        .spinner::before,
        .spinner::after {
            content: "";
            grid-area: 1/1;
            margin: 2.2px;
            border: inherit;
            border-radius: 50%;
        }

        .spinner::before {
            border-color: #474bff #0000;
            animation: inherit;
            animation-duration: 0.5s;
            animation-direction: reverse;
        }

        .spinner::after {
            margin: 8.9px;
        }

        @keyframes spinner-e04l1k {
            100% {
                transform: rotate(1turn);
            }
        }

        .card-spinner {
            position: fixed;
            top: 50vh;
            left: 50%;
            transform: translate(-50%, -50%);
            z-index: 100000;
            padding: 75px 150px;
            background-color: rgba(0, 0, 0, 0.3);
        }

        .modal-header {
            background-color: #1A2942;
            color: white;
        }

        .btn-close {
            background-color: white;
            border-radius: 50%;
        }

        .modal-body {
            background-color: white;
        }

        .modal-body input,
        .modal-body select,
        .modal-body textarea {
            border: 1px solid #1A2942 !important;
        }

    </style>
    <script>
        const loader = `
            <div class="card d-flex justify-conten-center align-items-center card-spinner">
                <div class="spinner" style="position:relative;z-index: 101;"></div>
            </div>`;
        const csrfToken = document.querySelector("meta[name='token']").getAttribute('content')

    </script>
</head>

<body>
    <div id="spinner"></div>
    <a href="https://github.com/alexandracaulea/freecodecamp-projects/tree/master/Responsive-Web-Design-Projects/Build%20a%20Survey%20Form" target="_blank" rel="noopener noreferrer" class="github-corner" aria-label="View source on GitHub">
        <svg width="86" height="82" viewBox="0 0 86 82" fill="none" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
            <path d="M85.346.362h-85l85 81.175V.362z" />
            <path d="M67.282 37.7c-1.209 1.268-2.414 2.188-3.617 2.76-1.202.573-2.362.788-3.478.647-1.117-.141-2.106-.416-2.969-.824-.862-.408-1.783-.984-2.764-1.727.114 1.127-.385 2.275-1.498 3.442l-4.292 4.503-6.834-6.515 3.1-3.252c-.62-.4-1.151-.81-1.594-1.232-.442-.422-.78-.823-1.011-1.203a5.282 5.282 0 01-.526-1.122 3.431 3.431 0 01-.185-.988c-.004-.29.008-.55.037-.777.029-.227.075-.406.137-.537l.094-.197a8.07 8.07 0 00.481-1.834c.072-.568.074-.98.006-1.236l-.103-.385c-.075-.643-.056-1.024.055-1.14.111-.117.298-.083.559.102l.295.282c.361.408.611.9.75 1.478.137.577.16 1.045.069 1.403l-.04.535c-.61 2.411.352 4.06 2.885 4.947.861-.707 1.745-1.043 2.65-1.008-.79-.944-1.41-1.836-1.858-2.678-.449-.842-.762-1.809-.94-2.902-.178-1.093-.019-2.261.48-3.506.497-1.244 1.35-2.5 2.559-3.767 1.367-1.435 3.019-2.216 4.955-2.344.623-1.507 1.849-2.694 3.677-3.562.066.127.205.244.417.35.212.107.526.597.943 1.472.417.875.764 1.955 1.042 3.238a19.751 19.751 0 013.919 2.78 20.44 20.44 0 012.965 3.782c1.262.184 2.324.465 3.186.84.862.376 1.407.674 1.637.892l.296.378c-.746 1.9-1.873 3.18-3.382 3.844-.035 1.94-.736 3.627-2.103 5.061z" fill="#f6f6f6" />
        </svg>
    </a>
    <div class="container">
        <header class="header">
            <h1 id="title" class="header__title">Sepeda Listrik</h1>
            <p id="description" class="header__description">
                Silahkan Pilih Kriteria Speda Listrik yang Anda Inginkan!
            </p>
            <img src="https://res.cloudinary.com/alexandracaulea/image/upload/v1585333913/illustration_x46ict.svg" alt="" aria-hidden="true" class="illustration" />
        </header>
        <main class="main" id="render-page">

        </main>
    </div>

    <!-- Modal -->
    <div class="modal fade" id="modal-rekomendasi" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalLabel">Rekomendasi Speda Listrik</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div id="rangking"></div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
    <script src="/assets4/jquery.js"></script>
    <script src="/assets4/script.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.min.js" integrity="sha384-VQqxDN0EQCkWoxt/0vsQvZswzTHUVOImccYmSyhJTp7kGtPed0Qcx8rK9h9YEgx+" crossorigin="anonymous">
    </script>
    <!-- <script src="https://cdn.freecodecamp.org/testable-projects-fcc/v1/bundle.js"></script> -->
</body>

</html>
