<aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">



        @if (auth()->user()->roles->name == 'Super Admin' || auth()->user()->roles->name == 'Super Admin')
        <li class="nav-item">
            <a class="nav-link " href="{{ route('dashboard') }}">
                <i class="bi bi-grid"></i>
                <span>Dashboard</span>
            </a>
        </li><!-- End Dashboard Nav -->
        <li class="nav-item">
            <a class="nav-link " href="{{ route('riwayat-pemeriksaan') }}">
                <i class="bi bi-grid"></i>
                <span>Riwayat Pemeriksaan</span>
            </a>
        </li><!-- End Dashboard Nav -->
        <hr>
        <li class="nav-heading">Super Admin Pages</li>

            <li class="nav-item">
                <a class="nav-link " href="{{ route('list-user') }}">
                    <i class="bi bi-grid"></i>
                    <span>Data Petugas / User</span>
                </a>
            </li><!-- End Dashboard Nav -->
            <li class="nav-item">
                <a class="nav-link " href="{{ route('list-perusahaan') }}">
                    <i class="bi bi-grid"></i>
                    <span>Data Perusahaan</span>
                </a>
            </li><!-- End Dashboard Nav -->
            <li class="nav-item">
                <a class="nav-link " href="{{ route('list-paket') }}">
                    <i class="bi bi-grid"></i>
                    <span>Data Paket</span>
                </a>
            </li><!-- End Dashboard Nav -->
            <li class="nav-item">
                <a class="nav-link " href="{{ route('list-detailpaket') }}">
                    <i class="bi bi-grid"></i>
                    <span>Detail Paket</span>
                </a>
            </li><!-- End Dashboard Nav -->
            {{-- <li class="nav-item">
                <a class="nav-link " href="{{ route('registrasi-paket-pemeriksaan') }}">
                    <i class="bi bi-grid"></i>
                    <span>Registrasi Paket Perusahaan</span>
                </a>
            </li><!-- End Dashboard Nav --> --}}
            <li class="nav-item">
                <a class="nav-link " href="{{ route('dokter') }}">
                    <i class="bi bi-grid"></i>
                    <span>Data Dokter</span>
                </a>
            </li><!-- End Dashboard Nav -->
            <li class="nav-item">
                <a class="nav-link " href="{{ route('list-mcu') }}">
                    <i class="bi bi-grid"></i>
                    <span>Data MCU</span>
                </a>
            </li><!-- End Dashboard Nav -->
            <li class="nav-item">
                <a class="nav-link " href="{{ route('list-bidang') }}">
                    <i class="bi bi-grid"></i>
                    <span>Data Bidang</span>
                </a>
            </li><!-- End Dashboard Nav -->
            <li class="nav-item">
                <a class="nav-link " href="{{ route('list-metode') }}">
                    <i class="bi bi-grid"></i>
                    <span>Data Pemeriksaan</span>
                </a>
            </li><!-- End Dashboard Nav -->
            <li class="nav-item">
                <a class="nav-link " href="{{ route('list-parameter') }}">
                    <i class="bi bi-grid"></i>
                    <span>Data Parameter </span>
                </a>
            </li><!-- End Dashboard Nav -->
            <li class="nav-heading">Setting Pages</li>
            <li class="nav-item">
                <a class="nav-link " href="{{ route('settings') }}">
                    <i class="bi bi-grid"></i>
                    <span>Settings</span>
                </a>
            </li>
        @endif


        @if(auth()->user()->roles->name == 'Administrasi' || auth()->user()->roles->name == 'Super Admin')
        <li class="nav-item">
            <a class="nav-link " href="{{ route('dashboard') }}">
                <i class="bi bi-grid"></i>
                <span>Dashboard</span>
            </a>
        </li><!-- End Dashboard Nav -->
        <li class="nav-item">
            <a class="nav-link " href="{{ route('riwayat-pemeriksaan') }}">
                <i class="bi bi-grid"></i>
                <span>Riwayat Pemeriksaan</span>
            </a>
        </li><!-- End Dashboard Nav -->
        <hr>
        <li class="nav-heading">Registrasi Pages</li>

        <li class="nav-item">
            <a class="nav-link " href="{{ route('registrasipages') }}">
                <i class="bi bi-grid"></i>
                <span>Registrasi</span>
            </a>
        </li><!-- End Dashboard Nav -->

        <li class="nav-item">
            <a class="nav-link " href="{{ route('list-antrean-pemeriksaan') }}">
                <i class="bi bi-grid"></i>
                <span>Antrean</span>
            </a>
        </li>

        <li class="nav-heading">Administrasi Pages</li>
        <li class="nav-item">
            <a class="nav-link " href="{{ route('dokter') }}">
                <i class="bi bi-grid"></i>
                <span>Data Dokter</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link " href="{{ route('list-pasien') }}">
                <i class="bi bi-grid"></i>
                <span>Data Pasien</span>
            </a>
        </li><!-- End Dashboard Nav -->
        <!-- End Dashboard Nav -->

        <li class="nav-heading">Paket Pages</li>
        <li class="nav-item">
            <a class="nav-link " href="{{ route('list-paket') }}">
                <i class="bi bi-grid"></i>
                <span>Data Paket</span>
            </a>
        </li><!-- End Dashboard Nav -->
        <li class="nav-item">
            <a class="nav-link " href="{{ route('list-perusahaan') }}">
                <i class="bi bi-grid"></i>
                <span>Data Perusahaan</span>
            </a>
        </li>
        @endif

        @if(auth()->user()->roles->name == 'Poli' || auth()->user()->roles->name == 'Super Admin')
        <li class="nav-item">
            <a class="nav-link " href="{{ route('dashboard') }}">
                <i class="bi bi-grid"></i>
                <span>Dashboard</span>
            </a>
        </li><!-- End Dashboard Nav -->
        <li class="nav-item">
            <a class="nav-link " href="{{ route('riwayat-pemeriksaan') }}">
                <i class="bi bi-grid"></i>
                <span>Riwayat Pemeriksaan</span>
            </a>
        </li><!-- End Dashboard Nav -->
        <hr>
        <li class="nav-heading">Poli Pages</li>


        <li class="nav-item">
            <a class="nav-link " href="{{ route('review-pemeriksaan') }}">
                <i class="bi bi-grid"></i>
                <span>Review Pemeriksaan</span>
            </a>
        </li><!-- End Dashboard Nav -->
        <li class="nav-item">
            <a class="nav-link " href="{{ route('hasil-pemeriksaan') }}">
                <i class="bi bi-grid"></i>
                <span>Hasil Pemeriksaan</span>
            </a>
        </li>

        <li class="nav-heading">Setting Pages</li>
        <li class="nav-item">
            <a class="nav-link " href="{{ route('settings') }}">
                <i class="bi bi-grid"></i>
                <span>Settings</span>
            </a>
        </li>

        @endif


        @if(auth()->user()->roles->name == 'Laborat' || auth()->user()->roles->name == 'Super Admin')
        <li class="nav-item">
            <a class="nav-link " href="{{ route('dashboard') }}">
                <i class="bi bi-grid"></i>
                <span>Dashboard</span>
            </a>
        </li><!-- End Dashboard Nav -->
        <li class="nav-item">
            <a class="nav-link " href="{{ route('riwayat-pemeriksaan') }}">
                <i class="bi bi-grid"></i>
                <span>Riwayat Pemeriksaan</span>
            </a>
        </li><!-- End Dashboard Nav -->
        <hr>
        <li class="nav-heading">Kasir Pages</li>

        <li class="nav-item">
            <a class="nav-link " href="{{ route('list-antrean-pemeriksaan') }}">
                <i class="bi bi-grid"></i>
                <span>Antrean Pemeriksaan</span>
            </a>
        </li><!-- End Dashboard Nav -->
        @endif

        @if(auth()->user()->roles->name == 'Perusahaan')
        <li class="nav-item">
            <a class="nav-link " href="{{ route('dashboard-perusahaan') }}">
                <i class="bi bi-grid"></i>
                <span>Dashboard</span>
            </a>
        </li><!-- End Dashboard Nav -->
        <li class="nav-item">
            <a class="nav-link " href="{{ route('riwayat-pemeriksaan-perusahaan') }}">
                <i class="bi bi-grid"></i>
                <span>Riwayat Pemeriksaan</span>
            </a>
        </li>
        <li class="nav-heading">Perusahaan Pages</li>

        <li class="nav-item">
            <a class="nav-link " href="{{ route('hasil-pemeriksaan-perusahaan') }}">
                <i class="bi bi-grid"></i>
                <span>Hasil Pemeriksaan</span>
            </a>
        </li><!-- End Dashboard Nav -->
        @endif


    </ul>

</aside>
