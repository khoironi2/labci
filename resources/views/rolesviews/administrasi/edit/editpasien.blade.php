@extends('layouts.main')
@section('container')
<div class="pagetitle">
    <h1>Perbaharui data Pasien</h1>
    <nav>
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="index.html">Administrasi</a></li>
            <li class="breadcrumb-item active">Perbaharui data Pasien</li>
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
                        <!-- card -->

                        <form class="row g-3" method="post" enctype="multipart/form-data" action="{{ route('list-pasien.update',['list_pasien' => $pasien->id]) }}">
                            @csrf
                            @method('put')
                            <div class="col-md-3">
                                <div class="py-2">
                                    <label for="nama" class="form-label">Nama</label>
                                    <input type="text" value="{{ $pasien->nama }}"
                                    class="form-control 
                                    @error('nama') 
                                    is-invalid
                                    @enderror
                                    "
                                    id="nama" name="nama">
                                    @error('nama')
                                    <div class="col-12">
                                        <label class="form-check-label invalid-feedback">
                                            {{ $message }}
                                        </label>
                                    </div>
                                    @enderror
                                </div>

                                <div class="py-2">
                                    <label for="tanggal_lahir" class="form-label">Tanggal Lahir</label>
                                    <input type="text" value="{{ $pasien->tanggal_lahir }}"
                                    class="form-control datepicker
                                    @error('tanggal_lahir') 
                                    is-invalid
                                    @enderror
                                    "
                                    id="tanggal_lahir" name="tanggal_lahir">

                                    @error('tanggal_lahir')
                                    <div class="col-12">
                                        <label class="form-check-label invalid-feedback">
                                            {{ $message }}
                                        </label>
                                    </div>
                                    @enderror
                                </div>

                                <div class="py-2">
                                    <label for="jenis_kelamin" class="form-label">Jenis Kelamin</label>

                                    <select id="jenis_kelamin" class="form-select" name="jenis_kelamin">
                                        <option value="L" {{ $pasien->jenis_kelamin == 'L' ? 'selected' : '' }}>Laki-Laki</option>
                                        <option value="P" {{ $pasien->jenis_kelamin == 'P' ? 'selected' : '' }}>Perempuan</option>
                                    </select>

                                    @error('jenis_kelamin')
                                    <label class="form-check-label invalid-feedback">
                                        {{ $message }}
                                    </label>
                                    @enderror
                                </div>

                                <div class="py-2">
                                    <label for="no_telp" class="form-label">No telepon</label>
                                    <input type="number" value="{{ $pasien->no_telp }}"
                                    class="form-control 
                                    @error('no_telp') 
                                    is-invalid
                                    @enderror
                                    "
                                    id="no_telp" name="no_telp">

                                    @error('no_telp')
                                    <label class="form-check-label invalid-feedback">
                                        {{ $message }}
                                    </label>
                                    @enderror
                                </div>

                                <div class="py-2">
                                    <label for="bpjs" class="form-label">BPJS</label>
                                    <input type="text" value="{{ $pasien->bpjs }}"
                                    class="form-control 
                                    @error('bpjs') 
                                    is-invalid
                                    @enderror
                                    "
                                    id="bpjs" name="bpjs">

                                    @error('bpjs')
                                    <label class="form-check-label invalid-feedback">
                                        {{ $message }}
                                    </label>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="py-2">
                                    <label for="jenis_identitas" class="form-label">Jenis Kartu Identitas</label>

                                    <select id="jenis_identitas" class="form-select" name="jenis_identitas">
                                        <option value="NO_IDENTITY" {{ $pasien->jenis_identitas == 'NO_IDENTITY' ? 'selected' : '' }}>Tanpa Identitas</option>
                                        <option value="KTP" {{ $pasien->jenis_identitas == 'KTP' ? 'selected' : '' }}>KTP</option>
                                        <option value="SIM" {{ $pasien->jenis_identitas == 'SIM' ? 'selected' : '' }}>SIM</option>
                                        <option value="PASSPORT" {{ $pasien->jenis_identitas == 'PASSPORT' ? 'selected' : '' }}>PASSPORT</option>
                                    </select>

                                    @error('jenis_identitas')
                                    <label class="form-check-label invalid-feedback">
                                        {{ $message }}
                                    </label>
                                    @enderror
                                </div>

                                <div class="py-2">
                                    <label for="no_identitas" class="form-label">Nomer Identitas</label>
                                    <input type="number" value="{{ $pasien->no_identitas }}"
                                    class="form-control 
                                    @error('bpjs') 
                                    is-invalid
                                    @enderror
                                    "
                                    id="no_identitas" name="no_identitas">

                                    @error('no_identitas')
                                    <label class="form-check-label invalid-feedback">
                                        {{ $message }}
                                    </label>
                                    @enderror
                                </div>

                                <div class="py-2">
                                    <label for="alamat" class="form-label">Alamat</label>
                                    <textarea type="text"
                                    class="form-control 
                                    @error('alamat') 
                                    is-invalid
                                    @enderror
                                    "
                                    id="alamat" name="alamat">{{ $pasien->alamat }}</textarea>

                                    @error('alamat')
                                    <label class="form-check-label invalid-feedback">
                                        {{ $message }}
                                    </label>
                                    @enderror
                                </div>

                                <div class="py-2">
                                    <label for="perusahaan" class="form-label">Pilih Perusahaan</label>
                                    <select class="form-select" id="perusahaan" name="perusahaan_id">
                                        <option selected value="{{ $pasien->perusahaan_id }}">{{ $pasien->perusahaan->nama_perusahaan ?? 'Perorangan' }}</option>
                                        <option disabled>Pilih Perusahaan</option>
                                        @foreach ($dataperusahaan as $perusahaan)
                                            <option value="{{ $perusahaan->id }}">{{ $perusahaan->nama_perusahaan }}</option>
                                        @endforeach
                                    </select>
                                
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="col-md-3">
                                    <div class="py-2">
                                        <label for="gambar_pasiens" class="form-label">Gambar Pasien</label>
                                        {{-- <input type="text" hidden name="gambar_pasiens" value="{{ $pasien->gambar_pasiens }}"> --}}

                                        <input type="hidden" id="gambar_pasiens" name="gambar_pasiens" value="{{ $pasien->gambar_pasiens }}">
                                        <video id="video" class="w-100 rounded"></video>
                                        <canvas id="canvas" style="display: none;"></canvas>
                                        <button type="button" id="start-camera" class="btn btn-success mt-2">Buka Kamera</button>
                                        <button type="button" id="capture" class="btn btn-primary mt-2">Ambil Gambar</button>
                                        <img id="photo" src="/{{ $pasien->gambar_pasiens }}" class="img-fluid mt-2 rounded" alt="{{ $pasien->gambar_pasiens }}">
                                    </div>
                                </div>
                                
                            </div>
                            

                            <div class="col-12">
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </div><!-- End Left side columns -->

    </div>
</section>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.min.js"></script>
<link rel="stylesheet" href="https://code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
<script>
    $(function() {
        $(".datepicker").datepicker({
            dateFormat: "yy-mm-dd"
        });
    });
</script>

<script>
    const video = document.getElementById('video');
    const canvas = document.getElementById('canvas');
    const photo = document.getElementById('photo');
    const gambarPasienInput = document.getElementById('gambar_pasiens');
    const startCamera = document.getElementById('start-camera');
    const captureButton = document.getElementById('capture');
    let stream = null;

    // Buka Kamera
    startCamera.addEventListener('click', async () => {
        stream = await navigator.mediaDevices.getUserMedia({ video: true });
        video.srcObject = stream;
        video.play();
    });

    // Ambil Gambar
    captureButton.addEventListener('click', () => {
        const context = canvas.getContext('2d');
        canvas.width = video.videoWidth;
        canvas.height = video.videoHeight;
        context.drawImage(video, 0, 0, canvas.width, canvas.height);
        const dataURL = canvas.toDataURL('image/png');
        photo.src = dataURL;
        gambarPasienInput.value = dataURL;
    });
</script>

<script>
    document.addEventListener('DOMContentLoaded', () => {
        const jenisIdentitas = document.getElementById('jenis_identitas');
        const noIdentitasInput = document.getElementById('no_identitas').parentElement;

        // Fungsi untuk mengatur visibilitas input no_identitas
        function toggleNoIdentitas() {
            if (jenisIdentitas.value === 'NO_IDENTITY') {
                noIdentitasInput.style.display = 'none'; // Sembunyikan input
            } else {
                noIdentitasInput.style.display = ''; // Tampilkan input
            }
        }

        // Panggil fungsi saat halaman dimuat
        toggleNoIdentitas();

        // Panggil fungsi saat jenisIdentitas diubah
        jenisIdentitas.addEventListener('change', toggleNoIdentitas);
    });
</script>

@endsection
