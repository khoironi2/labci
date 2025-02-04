@extends('layouts.main')
@section('container')
<style>
    ul {
        list-style-type: none; /* Menghilangkan bullet points */
        padding: 0; /* Menghapus padding bawaan */
        margin: 0; /* Menghapus margin bawaan */
    }
    li {
        margin-left: 20px; /* Menambahkan indentasi pada setiap level */
    }
</style>

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
            @include('partials.notif')
            <!-- Left side columns -->
            <div class="col-lg-12">
                <div class="row">
                    <div class="card">
                        <div class="card-body p-3">

                            <div class="row">
                                <div class="col-md-12">
                                    <h5>Data Pasien</h5>
                                    <hr>
                                </div>

                                {{-- <div class="col-md-6">
                                    <h5>Data Dokter</h5>
                                    <hr>
                                </div> --}}
                            </div>

                            <form class="row g-3" method="post" action="{{ route('review-pemeriksaan.update', ['review_pemeriksaan' => $dataPemeriksaan->id]) }}" >
                                @csrf
                                @method('PUT')
                                <div class="col-md-6">

                                    <div class="py-2">
                                        <label for="nama" class="form-label">Nama</label>
                                        <input type="text" disabled value="{{ $dataPemeriksaan->pasiens->nama }}"
                                            class="form-control"
                                            id="nama" >
                                    </div>


                                    <div class="py-2">
                                        <label for="jenis_kelamin" class="form-label">Jenis Kelamin</label>
                                        <input type="text" disabled readonly value="{{ $dataPemeriksaan->pasiens->jenis_kelamin }}"
                                            class="form-control"
                                            id="jenis_kelamin">
                                    </div>


                                    <div class="py-2">
                                        <label for="bpjs" class="form-label">BPJS</label>
                                        <input type="text" disabled readonly value="{{ $dataPemeriksaan->pasiens->bpjs }}"
                                            class="form-control"
                                            id="bpjs" >
                                    </div>


                                </div>
                                <div class="col-md6">

                                    <div class="py-2">
                                        <label for="jenis_identitas" class="form-label">Jenis Kartu Identitas</label>
                                        <input type="text" disabled readonly value="{{ $dataPemeriksaan->pasiens->jenis_identitas }}"
                                            class="form-control"
                                            id="jenis_identitas">
                                    </div>

                                    <div class="py-2">
                                        <label for="no_identitas" class="form-label">Nomer Identitas</label>
                                        <input type="text" disabled readonly value="{{ $dataPemeriksaan->pasiens->no_identitas }}"
                                            class="form-control"
                                            id="no_identitas">
                                    </div>
                                </div>

                                <div class="col-md-3">
                                    {{-- <div class="py-2">
                                        <label for="user_id" class="form-label">Id Dokter</label>

                                        <input type="text" disabled value="{{ auth()->user()->id }}"
                                            class="form-control"
                                            id="user_id" >
                                    </div> --}}


                                    {{-- nama parameter --}}

                                    {{-- <div class="py-2">
                                        <label for="nama" class="form-label">Nama</label>
                                        <input type="text" disabled value="{{ auth()->user()->nama_lengkap }}"
                                            class="form-control"
                                            id="namadokter" >

                                    </div> --}}

                                    {{-- end nama parameter --}}

                                    {{-- <div class="py-2">
                                        <label for="no_telp_dokter" class="form-label">No telp</label>
                                        <input type="text" disabled value="{{ auth()->user()->no_telp }}"
                                            class="form-control"
                                            id="no_telp_dokter" >

                                    </div> --}}

                                </div>

                                <h5 class="pt-3">Data Pemeriksaan</h5>
                                <hr>
                                <div class="col-12" style="position: fixed; top: 10px; right: 10px; background-color: transparent; z-index: 1000; padding: 10px; display: flex; justify-content: flex-end; margin-top: 5%;">
                                    <button type="submit" name="submit_action" value="permanent" class="btn btn-danger mx-4">Simpan Permanen</button>
                                    <button type="submit" name="submit_action" value="draft" class="btn btn-secondary">Simpan Draft</button>
                                </div>







                                <table id="myTable" class="table table-striped border-primary table-hover table-bordered">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>MCU</th>
                                            <th>Bidang</th>
                                            <th>Metode</th>
                                            <th>Parameter</th>
                                            <th>Nilai Normal / Rujukan</th>
                                            <th>Satuan</th>
                                            <th>Hasil</th>
                                        </tr>
                                    </thead>

                                    <tbody>
                                        @php
                                            $currentMCU = null; // Variabel untuk melacak MCU yang sudah ditampilkan
                                            $currentBidang = null; // Variabel untuk melacak Bidang yang sudah ditampilkan
                                            $currentMetode = null; // Variabel untuk melacak Metode yang sudah ditampilkan
                                        @endphp

                                        @foreach($dataKeterangan as $key => $keterangan)
                                        <tr>
                                            <td>{{ $key + 1 }}</td>
                                            <td>
                                                @if($currentMCU !== ($keterangan->mcu->nama_mcu ?? 'N/A'))
                                                    @php
                                                        $currentMCU = $keterangan->mcu->nama_mcu ?? 'N/A';
                                                        $currentBidang = null; // Reset bidang ketika MCU berubah
                                                        $currentMetode = null; // Reset metode ketika MCU berubah
                                                    @endphp
                                                     {{ $currentMCU }}
                                                @else
                                                    <!-- Jika MCU sama, jangan tampilkan -->
                                                @endif
                                            </td>
                                            <td>
                                                @if($currentBidang !== ($keterangan->bidang->name ?? 'N/A'))
                                                    @php
                                                        $currentBidang = $keterangan->bidang->name ?? 'N/A';
                                                        $currentMetode = null; // Reset metode ketika Bidang berubah
                                                    @endphp
                                                     {{ $currentBidang }}
                                                @else
                                                    <!-- Jika Bidang sama, jangan tampilkan -->
                                                @endif
                                            </td>
                                            <td>
                                                @if($currentMetode !== ($keterangan->metode->name ?? 'N/A'))
                                                    @php
                                                        $currentMetode = $keterangan->metode->name ?? '';
                                                    @endphp
                                                     {{ $currentMetode }}
                                                @else
                                                    <!-- Jika Metode sama, jangan tampilkan -->
                                                @endif
                                            </td>
                                            <td> {{ $keterangan->parameter->parameter ?? '' }}</td>
                                            <td>
                                                @if($keterangan->bidang)
                                                    {{ $keterangan->bidang->nilai_normal }}
                                                @endif
                                                @if($keterangan->metode)
                                                    {{ $keterangan->metode->nilai_normal }}
                                                @endif
                                                @if($keterangan->parameter)
                                                    {{ $keterangan->parameter->nilai_rujukan }}
                                                @endif
                                            </td>
                                            <td>
                                                @if($keterangan->bidang)
                                                    {{ $keterangan->bidang->satuan }}
                                                @endif
                                                @if($keterangan->metode)
                                                    {{ $keterangan->metode->satuan }}
                                                @endif
                                                @if($keterangan->parameter)
                                                    {{ $keterangan->parameter->satuan }}
                                                @endif
                                            </td>
                                            <td>
                                                <input type="text" value="{{ $keterangan->hasil ?? 'N/A' }}" name="hasil[{{ $keterangan->id }}]" class="form-control" id="hasil">
                                            </td>
                                        </tr>
                                        @endforeach
                                    </tbody>
                                </table>













                            </form>

                            <!-- end card -->
                        </div>
                    </div>
                </div>
            </div><!-- End Left side columns -->

        </div>
    </section>
@endsection
