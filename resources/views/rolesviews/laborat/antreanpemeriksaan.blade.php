@extends('layouts.main')
@section('container')
    <div class="pagetitle">
        <h1>Antrean Pemeriksaan</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                <li class="breadcrumb-item active">Antrean Pemeriksaan</li>
            </ol>
        </nav>
    </div><!-- End Page Title -->

    <section class="section dashboard">
        <div class="row">

            <!-- Left side columns -->
            <div class="col-lg-12">
                <div class="row">
                    <div class="card">
                        <div class="card-body p-3">

                            @if(session('berhasil'))
                            <div class="alert alert-danger">
                                {{ session('berhasil') }}
                            </div>
                            @endif
                    @if(session('success'))
                    <div class="alert alert-success">
                        {{ session('success') }}
                    </div>

                    <!-- Loading Bar -->
                    <div id="loading-container" style="width: 100%; height: 5px; background-color: #ddd; display: block;">
                        <div id="loading-bar" style="height: 100%; width: 0%; background-color: #4caf50;"></div>
                    </div>

                    <script>
                        var loadingBar = document.getElementById('loading-bar');
                        var loadingContainer = document.getElementById('loading-container');
                        var progress = 0;
                        
                        // Menjalankan interval untuk mengupdate loading bar
                        var interval = setInterval(function() {
                            if (progress >= 100) {
                                clearInterval(interval); // Hentikan interval setelah 100%
                            } else {
                                progress += 1;
                                loadingBar.style.width = progress + '%';
                            }
                        }, 70); // Interval untuk update setiap 70ms, sehingga progress bar mencapai 100% dalam 7 detik

                        // Set timeout untuk redirect setelah 7 detik
                        setTimeout(function() {
                            // Mengambil ID pemeriksaan dari session dan redirect ke cetak-nota
                            window.location.href = "{{ route('list-antrean-pemeriksaan') }}";
                        }, 5000); // 7000 ms = 7 detik
                    </script>
                    @endif



                            <!-- card -->
                            <div class="row p-3 border border-primary ">

                                <table id="myTable" class="table table-striped border-primary table-hover table-bordered">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th></th>
                                            <th>Nama Pasien</th>
                                            {{-- <th>Dokter</th> --}}
                                            <th>Waktu</th>
                                            <th>Proses</th>
                                            <th>Aksi</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($dataPemeriksaan as $key => $pemeriksaan)
                                            <tr>
                                                {{-- <td>{{ $dataPemeriksaan->firstitem() + $key }}</td> --}}
                                                <td>{{ $pemeriksaan->id }}</td>
                                                <td>
                                                    <img src="https://api.qrserver.com/v1/create-qr-code/?data={{ $pemeriksaan->id }}&size=100x100" alt="" height="100">
                                                </td>
                                                <td>{{ $pemeriksaan->pasiens->nama }}</td>
                                                {{-- <td>{{ $pemeriksaan->user->nama_lengkap ?? 'N/A' }}</td> --}}
                                                <td>{{ $pemeriksaan->created_at->diffForHumans() }}</t d>
                                                    @if ($pemeriksaan->status->id == 1)
                                                <td class="bg-primary text-white">
                                                    {{ $pemeriksaan->status->name }}
                                                </td>
                                            @elseif ($pemeriksaan->status->id == 2)
                                                <td class="bg-warning text-white">
                                                    {{ $pemeriksaan->status->name }}
                                                </td>
                                            @elseif ($pemeriksaan->status->id == 3)
                                                <td class="bg-success text-white">
                                                    {{ $pemeriksaan->status->name }}
                                                </td>
                                            @elseif ($pemeriksaan->status->id == 5)
                                                <td class="bg-secondary text-white">
                                                    {{ $pemeriksaan->status->name }}
                                                </td>
                                            @else
                                                <td class="bg-danger text-white">
                                                    {{ $pemeriksaan->status->name }}
                                                </td>
                                        @endif
                                        <td>
                                            <div class="dropdown">
                                                <a class="btn btn-secondary dropdown-toggle" href="#" role="button"
                                                    id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
                                                    Opsi
                                                </a>

                                                <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                                    <li>
                                                        {{-- <a class="dropdown-item" href="{{ route('cetak-nota', ['id' => $pemeriksaan->id]) }}">Cetak Nota </a> --}}
                                                        <form
                                                        action="{{ route('antrean-pemeriksaan.update', ['antrean_pemeriksaan' => $pemeriksaan->id]) }}"
                                                        method="POST">
                                                        @csrf
                                                        @method('PUT')

                                                        <button class="dropdown-item"
                                                            onclick="return confirm('Apakah Anda yakin ingin mengkonfirmasi pembayaran pemeriksaan ini?')">
                                                            Konfirmasi Pembayaran
                                                        </button>
                                                        </form>
                                                    </li>
                                                    <li>
                                                        <a class="dropdown-item" href="{{ route('cetak-nota', ['id' => $pemeriksaan->id]) }}">Cetak Nota</a>
                                                    </li>
                                                   
                                                    <li>
                                                        <form
                                                        action="{{ route('antrean-pemeriksaan.destroy', ['antrean_pemeriksaan' => $pemeriksaan->id]) }}"
                                                        method="POST">
                                                        @csrf
                                                        @method('DELETE')

                                                        <button class="dropdown-item"
                                                            onclick="return confirm('Apakah Anda yakin ingin menghapus bidang ini?')">
                                                            Batalkan pemeriksaan
                                                        </button>
                                                        </form>
                                                    </li>

                                                </ul>
                                            </div>
                                        </td>
                                        </tr>
                                        @endforeach



                                    </tbody>

                                </table>

                                <div class="p-3">
                                    {!! $dataPemeriksaan->render() !!}
                                </div>


                            </div>

                            <!-- end card -->
                        </div>
                    </div>
                </div>
            </div><!-- End Left side columns -->

        </div>
    </section>
@endsection
