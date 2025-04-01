<!-- ========== Left Sidebar Start ========== -->
<div class="leftside-menu">

    <!-- Brand Logo Light -->
    <a href="/" class="logo logo-light">
        <span class="logo-lg">
            <img src="/assets/logo.png" alt="logo">
            <h3>DEMOKRAT</h3>
        </span>
        <span class="logo-sm">
            <img src="/assets/logo.png" alt="small logo">
            <h3>DEMOKRAT</h3>
        </span>
    </a>

    <!-- Brand Logo Dark -->
    <a href="/" class="logo logo-dark">
        <span class="logo-lg">
            <img src="/assets/logo.png" alt="dark logo">
            <h3>DEMOKRAT</h3>
        </span>
        <span class="logo-sm">
            <img src="/assets/logo.png" alt="small logo">
            <h3>DEMOKRAT</h3>
        </span>
    </a>

    <!-- Sidebar Hover Menu Toggle Button -->
    <div class="button-sm-hover" data-bs-toggle="tooltip" data-bs-placement="right" title="Show Full Sidebar">
        <i class="ri-checkbox-blank-circle-line align-middle"></i>
    </div>

    <!-- Full Sidebar Menu Close Button -->
    <div class="button-close-fullsidebar">
        <i class="ri-close-fill align-middle"></i>
    </div>

    <!-- Sidebar -left -->
    <div class="h-100" id="leftside-menu-container" data-simplebar>
        <ul class="side-nav">

            <li class="side-nav-title mt-1"> Main</li>

            <li class="side-nav-item">
                <a href="/" class="side-nav-link">
                    <i class="ri-dashboard-2-fill"></i>
                    <span> Dashboard </span>
                </a>
            </li>
            <li class="side-nav-item">
                <a data-bs-toggle="collapse" href="#sidebarEmail" aria-expanded="false" aria-controls="sidebarEmail" class="side-nav-link">
                    <i class="ri-mail-fill"></i>
                    <span> Master </span>
                    <span class="menu-arrow"></span>
                </a>
                <div class="collapse" id="sidebarEmail">
                    <ul class="side-nav-second-level">
                        <li>
                            <a href="/kriteria">Kriteria</a>
                            <a href="/dapil">Daerah Pilihan</a>
                        </li>
                    </ul>
                </div>
            </li>
            <li class="side-nav-item">
                <a href="/alternatif" class="side-nav-link">
                    <i class="ri-dashboard-2-fill"></i>
                    <span> Alternatif </span>
                </a>
            </li>
            <li class="side-nav-item">
                <a data-bs-toggle="collapse" href="#sidebarPenentuan" aria-expanded="false" aria-controls="sidebarPenentuan" class="side-nav-link">
                    <i class="ri-mail-fill"></i>
                    <span> Pengambilan Keputusan </span>
                    <span class="menu-arrow"></span>
                </a>
                <div class="collapse" id="sidebarPenentuan">
                    <ul class="side-nav-second-level">
                        <li>
                            @php
                            $dapil = getDapil();
                            @endphp
                            @foreach ($dapil as $row)
                            <a href="/perhitungan/{{ $row->uuid }}">Dapil {{ $row->kode }}</a>
                            @endforeach
                        </li>
                    </ul>
                </div>
            </li>

        </ul>
        <!--- End Sidemenu -->

        <div class="clearfix"></div>
    </div>
</div>
<!-- ========== Left Sidebar End ========== -->
