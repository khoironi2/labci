@extends('layouts.main')
@section('container')
    <div class="pagetitle">
        <h1>Review Pemeriksaan</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.html">Poli</a></li>
                <li class="breadcrumb-item active">Review Pemeriksaan</li>
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

                            @if (session()->has('success'))
                                <div class="alert alert-success" role="alert">
                                    {{ session('success') }}
                                </div>
                            @endif

                            <!-- card -->
                            <div class="row p-3 border border-primary ">

                                <table id="myTable" class="table table-striped border-primary table-hover table-bordered">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            {{-- <th>Id</th> --}}
                                            <th></th>
                                            {{-- <th>Harga</th> --}}
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
                                                <td>{{ $dataPemeriksaan->firstitem() + $key }}</td>
                                                {{-- <td>{{ $pemeriksaan->id }}</td> --}}
                                                <td>
                                                    <img src="https://api.qrserver.com/v1/create-qr-code/?data={{ $pemeriksaan->id }}&size=100x100" alt="" height="100">
                                                </td>
                                                {{-- <td>{{ 'Rp ' . number_format($pemeriksaan->total_harga, 0, ',', '.') }}</td> --}}
                                                <td>{{ $pemeriksaan->pasiens->nama }}</td>
                                                {{-- <td>{{ $pemeriksaan->dokter->nama_lengkap ?? 'N/A' }}</td> --}}
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
                                                        <a class="dropdown-item" href="{{ route('review-pemeriksaan.edit', ['review_pemeriksaan' => $pemeriksaan->id]) }}">Proses pemeriksaan</a>
                                                    </li>

                                                    <li>
                                                        <form
                                                        action="{{ route('review-pemeriksaan.destroy', ['review_pemeriksaan' => $pemeriksaan->id]) }}"
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
