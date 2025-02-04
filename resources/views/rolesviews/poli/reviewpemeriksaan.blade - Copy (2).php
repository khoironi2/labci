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
                                <div class="col-md-6">
                                    <h5>Data Pasien</h5>
                                    <hr>
                                </div>

                                <div class="col-md-6">
                                    <h5>Data Dokter</h5>
                                    <hr>
                                </div>
                            </div>

                            <form class="row g-3" method="post" action="{{ route('review-pemeriksaan.update', ['review_pemeriksaan' => $dataPemeriksaan->id]) }}" >
                                @csrf
                                @method('PUT')
                                <div class="col-md-3">

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
                                <div class="col-md-3">

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
                                    <div class="py-2">
                                        <label for="user_id" class="form-label">Id Dokter</label>

                                        <input type="text" disabled value="{{ auth()->user()->id }}"
                                            class="form-control"
                                            id="user_id" >
                                    </div>


                                    {{-- nama parameter --}}

                                    <div class="py-2">
                                        <label for="nama" class="form-label">Nama</label>
                                        <input type="text" disabled value="{{ auth()->user()->nama_lengkap }}"
                                            class="form-control"
                                            id="namadokter" >

                                    </div>

                                    {{-- end nama parameter --}}

                                    <div class="py-2">
                                        <label for="no_telp_dokter" class="form-label">No telp</label>
                                        <input type="text" disabled value="{{ auth()->user()->no_telp }}"
                                            class="form-control"
                                            id="no_telp_dokter" >

                                    </div>

                                </div>

                                <h5 class="pt-3">Data Pemeriksaan</h5>
                                <hr>
                                <div class="col-12">
                                    <button type="submit" name="submit_action" value="permanent" class="btn btn-primary">Simpan Permanen</button>
                                    <button type="submit" name="submit_action" value="draft" class="btn btn-secondary">Simpan Draft</button>
                                </div>
                                <table id="myTable" class="table table-striped border-primary table-hover table-bordered">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>PEMERIKSAAN</th>
                                            <th>Nilai Normal / Rujukan</th>
                                            <th>Satuan</th>
                                            <th>Hasil</th>
                                        </tr>
                                    </thead>

                                    <tbody>
                                        @php
                                            $currentMCU = null; // Variabel untuk melacak MCU yang terakhir ditampilkan
                                            $currentBidang = null; // Variabel untuk melacak BIDANG yang terakhir ditampilkan
                                            $currentMetode = null; // Variabel untuk melacak METODE yang terakhir ditampilkan
                                        @endphp
                                        @foreach($dataKeterangan as $key => $keterangan)
                                        <tr>
                                            <td>{{ $key + 1 }}</td>
                                            <td>
                                                {{-- MCU --}}
                                                @if(isset($keterangan->mcu) && $currentMCU !== $keterangan->mcu->nama_mcu)
                                                    @php
                                                        $currentMCU = $keterangan->mcu->nama_mcu;
                                                        $currentBidang = null; // Reset BIDANG saat MCU berubah
                                                        $currentMetode = null; // Reset METODE saat MCU berubah
                                                    @endphp
                                                    <strong>MCU: {{ $currentMCU }}</strong>
                                                @endif

                                                {{-- BIDANG --}}
                                                @if(isset($keterangan->bidang) && $currentBidang !== $keterangan->bidang->name)
                                                    @php
                                                        $currentBidang = $keterangan->bidang->name;
                                                        $currentMetode = null; // Reset METODE saat BIDANG berubah
                                                    @endphp
                                                    <ul>
                                                        <li><strong> {{ $currentBidang }}</strong></li>
                                                    </ul>
                                                @endif

                                                {{-- METODE --}}
                                                @if(isset($keterangan->metode) && $currentMetode !== $keterangan->metode->name)
                                                    @php
                                                        $currentMetode = $keterangan->metode->name;
                                                    @endphp
                                                    <ul>
                                                        <li><strong> {{ $currentMetode }}</strong></li>
                                                    </ul>
                                                @endif

                                                {{-- PARAMETER --}}
                                                @if(isset($keterangan->parameter))
                                                <ul>
                                                    <li> {{ $keterangan->parameter->parameter }}</li>
                                                </ul>
                                                @endif
                                            </td>

                                            <td>
                                                @if(isset($keterangan->bidang))
                                                    {{ $keterangan->bidang->nilai_normal }}
                                                @endif
                                                @if(isset($keterangan->metode))
                                                    {{ $keterangan->metode->nilai_normal }}
                                                @endif
                                                @if(isset($keterangan->parameter))
                                                    {{ $keterangan->parameter->nilai_rujukan }}
                                                @endif
                                            </td>
                                            <td>
                                                @if(isset($keterangan->bidang))
                                                    {{ $keterangan->bidang->satuan }}
                                                @endif
                                                @if(isset($keterangan->metode))
                                                    {{ $keterangan->metode->satuan }}
                                                @endif
                                                @if(isset($keterangan->parameter))
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
