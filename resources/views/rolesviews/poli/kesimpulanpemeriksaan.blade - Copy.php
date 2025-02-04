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
        <h1>Kesimpulan Pemeriksaahhn</h1>
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


                            </div>


                            

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


                                <h5 class="pt-3">Data Pemeriksaan</h5>
                                <hr>
                                <table id="myTable" class="table table-striped border-primary table-hover table-bordered">
                                    <thead>
                                        <tr>
                                            <th>MCU</th>
                                            <th>Ceklist Kesimpulan</th>
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
                                                <td>{{ $keterangan->mcu->nama_mcu ?? 'N/A' }} ID: {{ $keterangan->mcu->id ?? 'N/A' }} </td>
                                                <td>
                                                    @if($kesimpulan)
                                                        {{ $kesimpulan->kesimpulan ?? 'Tidak ada kesimpulan' }} dokter {{ $kesimpulan->dokterpemeriksa->id ?? 'Tidak ada' }} ID Kesimpulan Pemeriksaan : {{ $kesimpulan->id ?? 'Tidak ada' }}
                                                    @else
                                                        Tidak ada data kesimpulan
                                                    @endif
                                                </td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>

                        <form class="row g-3" method="post" action="{{ route('review-pemeriksaan.store') }}" enctype="multipart/form-data">
                            @csrf
                                <div class="col-md-12 my-4">
                                    <label for="jenis_identitas" class="form-label">Pemeriksaan MCU</label>
                                    <select class="form-select" name="id_mcu" id="id_mcu" aria-label="Default select example" required>
                                        <option selected ="pilih">Pilih MCU</option>
                                        @php
                                            // Filter untuk memastikan hanya satu MCU berdasarkan ID
                                            $uniqueMcu = $dataKeterangan->unique(function ($keterangan) {
                                                return $keterangan->mcu->id ?? null;
                                            });
                                        @endphp
                                         @foreach($uniqueMcu as $key => $keterangan)
                                         <option value="{{ $keterangan->mcu->id ?? 'N/A' }}">
                                             MCU: {{ $keterangan->mcu->nama_mcu ?? 'N/A' }} ID: {{ $keterangan->mcu->id ?? 'N/A' }}
                                         </option>
                                         @endforeach
                                      </select>
                                </div>



                                <div class="col-md-6">

                                    <input type="text" name="id_pemeriksaan" hidden value="{{ $dataPemeriksaan->id }}" class="form-control" id="id_pemeriksaan" >



                                    <div class="col-md-6">
                                        <div class="py-2">
                                            <label for="catatan_hasil" class="form-label">Catatan Hasil</label>
                                            <textarea name="catatan_hasil" id="catatan_hasil" rows="2" class="form-control"></textarea>
                                        </div>
                                    </div>
            
                                    <div class="col-md-6">
                                        <div class="py-2">
                                            <label for="kesimpulan" class="form-label">Kesimpulan</label>
                                            <textarea name="kesimpulan" id="kesimpulan" rows="2" class="form-control"></textarea>
                                        </div>
                                    </div>
            
                                    <div class="col-md-6">
                                        <div class="py-2">
                                            <label for="saran" class="form-label">Saran</label>
                                            <textarea name="saran" id="saran" rows="2" class="form-control"></textarea>
                                        </div>
                                    </div>
            
                                    <div class="col-md-6">
                                        <div class="py-2">
                                            <label for="kesan" class="form-label">Kesan</label>
                                            <textarea name="kesan" id="kesan" rows="2" class="form-control"></textarea>
                                        </div>
                                    </div>


                               

                                

                                
                                    <div class="col-md-4">
                                    <div class="py-2">
                                        <label for="dokter_pemeriksa" class="form-label">Dokter</label>
                                        <select class="form-select" name="dokter_pemeriksa" aria-label="Default select example">
                                            <option disabled>Pilih Dokter</option>
                                            @foreach ($datadokter as $data)
                                                <option value="{{ $data->id }}"> {{ $data->gelardepan }}  {{ $data->nama_lengkap }}  {{ $data->gelarbelakang }} | {{ $data->kategori }}</option>
                                            @endforeach
                                          </select>
                                    </div>
                                </div>

                                <div class="col-md-12">


                                    <div class="py-2">
                                        <label for="jenis_identitas" class="form-label">File Pendukung</label>
                                        <input type="file" name="gambar_hasil" class="form-control" id="gambar_hasil " >
                                    </div>

                                </div>

                                <div class="col-md-12">
                                    <button type="submit" class="btn btn-danger mx-4">Simpan</button>
                                </div>



                        </form>

                            <!-- end card -->
                        </div>
                    </div>
                </div>
            </div><!-- End Left side columns -->

        </div>
    </section>

    <script>
        document.addEventListener('DOMContentLoaded', function () {
            const mcuDropdown = document.getElementById('id_mcu');
            const catatanHasil = document.getElementById('catatan_hasil').parentElement;
            const kesimpulan = document.getElementById('kesimpulan').parentElement;
            const saran = document.getElementById('saran').parentElement;
            const kesan = document.getElementById('kesan').parentElement;
    
            function toggleInputs(selectedMcu) {
                // Reset visibility
                catatanHasil.style.display = 'block';
                kesimpulan.style.display = 'block';
                saran.style.display = 'block';
                kesan.style.display = 'block';
    
                // Apply rules
                switch (selectedMcu) {
                    case 'pilih':
                        catatanHasil.style.display = 'none';
                        kesimpulan.style.display = 'none';
                        saran.style.display = 'none';
                        kesan.style.display = 'none';
                        break;
                    case '1':
                        catatanHasil.style.display = 'none';
                        kesimpulan.style.display = 'none';
                        saran.style.display = 'none';
                        kesan.style.display = 'none';
                        break;
                   
                    case '2':
                        kesimpulan.style.display = 'none';
                        saran.style.display = 'none';
                        kesan.style.display = 'none';
                        break;
                    case '3':
                        saran.style.display = 'none';
                        kesan.style.display = 'none';
                        break;
                    case '4':
                        catatanHasil.style.display = 'none';
                        saran.style.display = 'none';
                        kesan.style.display = 'none';
                        break;
                    case '5':
                        catatanHasil.style.display = 'none';
                        kesan.style.display = 'none';
                        break;
                    case '6':
                        catatanHasil.style.display = 'none';
                        kesimpulan.style.display = 'none';
                        saran.style.display = 'none';
                        break;
                    default:
                        break;
                }
            }
    
            // Add event listener
            mcuDropdown.addEventListener('change', function () {
                toggleInputs(this.value);
            });
        });
    </script>

@endsection
