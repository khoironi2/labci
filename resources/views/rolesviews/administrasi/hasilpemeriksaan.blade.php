@extends('layouts.main')
@section('container')
    <div class="pagetitle">
        <h1>Hasil Pemeriksaan</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                <li class="breadcrumb-item active">Hasil Pemeriksaan</li>
            </ol>
        </nav>
    </div><!-- End Page Title -->
    @include('partials.notif')

    <section class="section dashboard">
        <div class="row">

            <!-- Left side columns -->
            <div class="col-lg-12">
                <div class="row">
                    <div class="card">
                        <div class="card-body p-3">
                            <!-- card -->
                            <div class="row p-3 border border-primary ">

                                <table id="myTable" class="table table-striped border-primary table-hover table-bordered">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            {{-- <th>id</th> --}}
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
                                        @foreach($dataPemeriksaan as $key => $pemeriksaan)
                                        <tr>
                                            <td>{{ $key+1 }}</td>
                                            {{-- <td>{{ $pemeriksaan->id }}</td> --}}
                                            <td>
                                                <img src="https://api.qrserver.com/v1/create-qr-code/?data={{ $pemeriksaan->id }}&size=100x100" alt="" height="100">
                                            </td>

                                            {{-- <td>{{ 'Rp ' . number_format($pemeriksaan->total_harga, 0, ',', '.') }}</td> --}}
                                            <td>{{ $pemeriksaan->pasiens->nama }}</td>
                                            {{-- <td>{{ $pemeriksaan->dokter->nama_lengkap ?? 'N/A' }}</td> --}}
                                            <td>{{ $pemeriksaan->created_at->diffForHumans() }}</t   d>
                                            @if (($pemeriksaan->status->id)==1)
                                            <td class="bg-primary text-white">
                                                {{ $pemeriksaan->status->name }}
                                            </td>
                                            @elseif (($pemeriksaan->status->id)==2)
                                            <td class="bg-warning text-white">
                                                {{ $pemeriksaan->status->name }}
                                            </td>
                                            @elseif (($pemeriksaan->status->id)==3)
                                            <td class="bg-info text-white">
                                                {{ $pemeriksaan->status->name }}
                                            </td>
                                            @elseif (($pemeriksaan->status->id)==6)
                                            <td class="bg-success text-white">
                                                {{ $pemeriksaan->status->name }}
                                            </td>
                                            @else
                                            <td class="bg-danger text-white">
                                                {{ $pemeriksaan->status->name }}
                                            </td>
                                            @endif
                                            <td><div class="dropdown">
                                                <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
                                                  Opsi
                                                </a>
                                            <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                                @if(($pemeriksaan->status->id)==2)
                                                <li>
                                                    <a class="dropdown-item" href="{{ route('review-pemeriksaan.editkesimpulanpemeriksaan', ['review_pemeriksaan' => $pemeriksaan->id]) }}">Input Saran pemeriksaan</a>
                                                </li>
                                                <li>
                                                    <form
                                                        action="{{ route('hasil-pemeriksaan.destroy', $pemeriksaan->id) }}"
                                                        method="POST">
                                                        @csrf
                                                        @method('DELETE')

                                                        <button class="dropdown-item"
                                                            onclick="return confirm('Apakah Anda yakin ingin menghapus bidang ini?')">
                                                            Batalkan pemeriksaan
                                                        </button>
                                                        </form>
                                                  </li>
                                                @elseif(($pemeriksaan->status->id)==3)
                                                <li>
                                                    <a class="dropdown-item" href="{{ route('review-pemeriksaan.editkesimpulanmcu', ['review_pemeriksaan' => $pemeriksaan->id]) }}">Input kesimpulan MCU</a>
                                                </li>
                                                <li>
                                                    <a class="dropdown-item" href="{{ route('review-pemeriksaan.editkesimpulanpemeriksaan', ['review_pemeriksaan' => $pemeriksaan->id]) }}">Input Saran pemeriksaan</a>
                                                </li>
                                                @elseif(($pemeriksaan->status->id)==6)
                                                <li><a class="dropdown-item" href="{{ route('cetak-hasil', ['id' => $pemeriksaan->id]) }}">Cetak Hasil</a></li>
                                                <li><a class="dropdown-item" href="{{ route('cetak-hasil-using-photo', ['id' => $pemeriksaan->id]) }}">Cetak Hasil Using Photo</a></li>
                                                @else

                                                @endif                                            
                                                    

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
