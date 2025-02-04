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
        <h1>KESIMPULAN MEDICAL CHECK UP</h1>
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

                                <div class="row">
                                    <div class="col-md-6">

                                        <div class="py-2">
                                            <label for="nama" class="form-label">Nama</label>
                                            <input type="text" disabled value="{{ $dataPemeriksaan->pasiens->nama }}"
                                                class="form-control"
                                                id="nama" >
                                        </div>

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

                                    <div class="col-md-6">
                                        <div class="py-2">
                                            <label for="jenis_kelamin" class="form-label">Jenis Kelamin</label>
                                            <input type="text" disabled readonly value="{{ $dataPemeriksaan->pasiens->jenis_kelamin }}"
                                                class="form-control"
                                                id="jenis_kelamin">
                                        </div>
                                        <div class="py-2">
                                            <label for="jenis_kelamin" class="form-label">Tanggal Lahir</label>
                                            <input type="text" disabled readonly value="{{ $dataPemeriksaan->pasiens->tanggal_lahir }}"
                                                class="form-control"
                                                id="jenis_kelamin">
                                        </div>


                                        <div class="py-2">
                                            <label for="bpjs" class="form-label">Permohonan</label>
                                            <input type="text" disabled readonly value="{{ $dataPemeriksaan->status_permohonan }}"
                                                class="form-control"
                                                id="bpjs" >
                                        </div>
                                    </div>
                                </div>


                            </div>







                                <h5 class="pt-3">Data Pemeriksaan</h5>
                                <hr>
                                <table id="myTable" class="table table-striped border-primary table-hover table-bordered">
                                    <thead>
                                        <tr>
                                            <th>MCU</th>
                                            <th>Ceklist Kesimpulan Pemeriksaan</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @php
                                            // Filter untuk memastikan hanya satu MCU berdasarkan ID
                                            $uniqueMcu = $dataKeterangan->unique(function ($keterangan) {
                                                return $keterangan->mcu->id ?? null;
                                            });
                                        @endphp
                                        @foreach($uniqueMcu as $key => $keterangan)
                                            @php
                                                // Cari kesimpulan_pemeriksaan yang cocok dengan id_mcu
                                                $kesimpulan = $dataKesimpulanPemeriksaan->firstWhere('id_mcu', $keterangan->mcu->id ?? null);
                                            @endphp
                                            <tr>
                                                <td>{{ $keterangan->mcu->nama_mcu ?? 'N/A' }} ID: {{ $keterangan->mcu->id ?? 'N/A' }}</td>
                                                <td>
                                                    @if($kesimpulan)
                                                        {{ $kesimpulan->kesimpulan ?? 'Tidak ada kesimpulan' }}
                                                    @else
                                                        Tidak ada data kesimpulan
                                                    @endif
                                                </td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>


                            @if ($dataKesimpulanmcu)
    <!-- Form untuk edit kesimpulan MCU -->
                            <form action="{{ route('review-pemeriksaan.update-kesimpulanmcu', ['review_pemeriksaan' => $dataPemeriksaan->id]) }}" method="POST">
                                @csrf
                                @method('PUT')

                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="py-2">
                                            <input type="text" name="id_pemeriksaan" hidden value="{{ $dataPemeriksaan->id }}" class="form-control" id="id_pemeriksaan" >
                                            <label for="kesimpulan" class="form-label">Kesimpulan</label>
                                            <textarea name="kesimpulan" id="kesimpulanu" rows="2" class="form-control" required>{{ $dataKesimpulanmcu->kesimpulan ?? '' }}</textarea>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="py-2">
                                            <label for="saran" class="form-label">Saran</label>
                                            <textarea name="saran" id="saranu" rows="2" class="form-control" required>{{ $dataKesimpulanmcu->saran ?? '' }}</textarea>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="py-2">
                                            <label for="penilaian" class="form-label">Penilaian</label>
                                            <input type="text" name="penilaian" id="penilaian" class="form-control" value="{{ $dataKesimpulanmcu->penilaian ?? '' }}">
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="py-2">
                                            <label for="catatan" class="form-label">Catatan</label>
                                            <input type="text" name="catatan" id="catatan" class="form-control" value="{{ $dataKesimpulanmcu->catatan ?? '' }}">
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    {{-- <div class="col-md-6">
                                        <div class="py-2">
                                            <label for="validasi_oleh" class="form-label">Validator</label>
                                            <select class="form-select" name="validasi_oleh" required>
                                                <option value="{{ $dataKesimpulanmcu->validator->id }}">{{ $dataKesimpulanmcu->validator->nama_lengkap }}</option>
                                                <option>Pilih Validator</option>
                                                @foreach ($dataUser as $data)
                                                    <option value="{{ $data->id }}">{{ $data->nama_lengkap }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div> --}}

                                    <div class="col-md-6">
                                        <div class="py-2">
                                            <label for="dokter_pemeriksa" class="form-label">Dokter Pemeriksa</label>
                                            <select class="form-select" name="dokter_pemeriksa" required>
                                                <option value="{{ $dataKesimpulanmcu->dokterPemeriksa->id }}">{{ $dataKesimpulanmcu->dokterPemeriksa->gelardepan }} {{ $dataKesimpulanmcu->dokterPemeriksa->nama_lengkap }} {{ $dataKesimpulanmcu->dokterPemeriksa->gelarbelakang }}</option>
                                                <option>Pilih Dokter Pemeriksa</option>
                                                @foreach ($datadokter as $data)
                                                    <option value="{{ $data->id }}">{{ $data->gelardepan }} {{ $data->nama_lengkap }} {{ $data->gelarbelakang }} | {{ $data->kategori }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-12">
                                    <button type="submit" class="btn btn-success mx-4">Update</button>
                                </div>
                            </form>
                        @else
                            <!-- Form untuk membuat kesimpulan MCU baru -->
                            <form class="row g-3" method="POST" action="{{ route('review-pemeriksaan.store-kesimpulanmcu') }}" enctype="multipart/form-data">
                                @csrf

                                <div class="col-md-6">
                                    <div class="py-2">
                                        <input type="text" name="id_pemeriksaan" hidden value="{{ $dataPemeriksaan->id }}" class="form-control" id="id_pemeriksaan">
                                        <label for="kesimpulan" class="form-label">Kesimpulan</label>
                                        <textarea name="kesimpulan" id="kesimpulan" rows="2" class="form-control" required></textarea>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="py-2">
                                        <label for="saran" class="form-label">Saran</label>
                                        <textarea name="saran" id="saran" rows="2" class="form-control" required></textarea>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="py-2">
                                        <label for="penilaian" class="form-label">Penilaian</label>
                                        <input type="text" name="penilaian" id="penilaian" class="form-control">
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="py-2">
                                        <label for="catatan" class="form-label">Catatan</label>
                                        <input type="text" name="catatan" id="catatan" class="form-control">
                                    </div>
                                </div>

                                {{-- <div class="col-md-6">
                                    <div class="py-2">
                                        <label for="validasi_oleh" class="form-label">Validator</label>
                                        <select class="form-select" name="validasi_oleh" required>
                                            <option>Pilih Validator</option>
                                            @foreach ($dataUser as $data)
                                                <option value="{{ $data->id }}">{{ $data->nama_lengkap }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div> --}}

                                <div class="col-md-6">
                                    <div class="py-2">
                                        <label for="dokter_pemeriksa" class="form-label">Dokter</label>
                                        <select class="form-select" name="dokter_pemeriksa" required>
                                            <option>Pilih Dokter</option>
                                            @foreach ($datadokter as $data)
                                                <option value="{{ $data->id }}">{{ $data->gelardepan }} {{ $data->nama_lengkap }} {{ $data->gelarbelakang }} | {{ $data->kategori }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>

                                <div class="col-md-12">
                                    <button type="submit" class="btn btn-danger mx-4">Simpan</button>
                                </div>
                            </form>
                        @endif


                            <!-- end card -->
                        </div>
                    </div>
                </div>
            </div><!-- End Left side columns -->

        </div>
    </section>

    <script src="https://cdn.ckeditor.com/4.20.0/standard/ckeditor.js"></script>


    <script>
        CKEDITOR.replace('kesimpulan'); // Untuk textarea dengan ID 'kesimpulan'
        CKEDITOR.replace('saran'); // Untuk textarea dengan ID 'saran'
        CKEDITOR.replace('kesimpulanu'); // Untuk textarea dengan ID 'kesimpulan'
        CKEDITOR.replace('saranu'); // Untuk textarea dengan ID 'saran'
    </script>




@endsection
