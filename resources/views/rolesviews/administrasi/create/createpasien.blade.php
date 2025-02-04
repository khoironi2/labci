@extends('layouts.main')
@section('container')
<div class="pagetitle">
    <h1>Registrasi Pasien</h1>
    <nav>
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="index.html">Administrasi</a></li>
            <li class="breadcrumb-item active">Registrasi Pasien</li>
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

                        {{-- 'nama',
                        'tanggal_lahir',
                        'jenis_identitas',
                        'jenis_kelamin',
                        'no_identitas',
                        'no_telp',
                        'bpjs',
                        'alamat' --}}


                        <form class="row g-3" method="post" action="{{ route('list-pasien.store') }}">
                            @csrf
                            <div class="col-md-3">
                                {{-- nama parameter --}}
                                <div class="py-2">
                                    <label for="nama" class="form-label">Nama</label>
                                    <input type="text"
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

                                {{-- end nama parameter --}}
                                {{-- nilai rujukan --}}


                                <div class="py-2">
                                    <label for="tanggal_lahir" class="form-label">Tanggal Lahir</label>
                                    <input type="date"  class="form-control "  id="tanggal_lahir" name="tanggal_lahir">
                                </div>

                                <div class="py-2">
                                    <label for="jenis_kelamin" class="form-label">Jenis Kelamin</label>

                                    <select id="jenis_kelamin" class="form-select" name="jenis_kelamin">
                                        <option value="L">Laki-Laki</option>
                                        <option value="P">Perempuan</option>
                                        
                                    </select>

                                    @error('jenis_kelamin')
                                    <label class="form-check-label invalid-feedback">
                                        {{ $message }}
                                    </label>
                                    @enderror
                                </div>


                                {{-- end jenis kelamin  --}}
                                {{-- nomer telp  --}}

                                <div class="py-2">
                                    <label for="no_telp" class="form-label">No telepon</label>
                                    <input type="number"
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
                                {{-- end nomer telp  --}}

                                {{-- nomer telp  --}}

                                <div class="py-2">
                                    <label for="bpjs" class="form-label">BPJS</label>
                                    <input type="text" value="-"
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
                                {{-- end nomer telp  --}}


                            </div>
                            <div class="col-md-3">


                                {{-- jenis kelamin --}}
                                <div class="py-2">
                                    <label for="jenis_identitas" class="form-label">Jenis Kartu Identitas</label>

                                    <select id="jenis_identitas" class="form-select" name="jenis_identitas">
                                        <option>Pilih Identitas</option>
                                        <option value="NO_IDENTITY">Tanpa Identitas</option>
                                        <option value="KTP">KTP</option>
                                        <option value="SIM">SIM</option>
                                        <option value="PASSPORT">PASSPORT</option>
                                    </select>

                                    @error('jenis_identitas')
                                    <label class="form-check-label invalid-feedback">
                                        {{ $message }}
                                    </label>
                                    @enderror
                                </div>
                                {{-- end jenis kelamin --}}

                                <div class="py-2">
                                    <label for="no_identitas" class="form-label">Nomer Identitas</label>
                                    <input type="number"
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
                                {{-- end nomer identitas  --}}

                                <div class="py-2">
                                    <label for="alamat" class="form-label">Alamat</label>
                                    <textarea type="text"
                                    class="form-control 
                                    @error('alamat') 
                                    is-invalid
                                    @enderror
                                    "
                                    id="alamat" name="alamat"></textarea>


                                    @error('alamat')
                                    <label class="form-check-label invalid-feedback">
                                        {{ $message }}
                                    </label>
                                    @enderror
                                </div>
                                {{-- end nomer identitas  --}}
                                <div class="py-2">
                                    <label for="perusahaan" class="form-label">Pilih Perusahaan</label>
                                    <select
                                        class="form-select 
                                        @error('perusahaan_id') 
                                        is-invalid
                                        @enderror
                                        "
                                        id="perusahaan" name="perusahaan_id">
                                        <option selected disabled>Pilih Perusahaan</option>
                                        <option value="">Perorangan</option>
                                        @foreach ($dataperusahaan as $perusahaan)
                                            <option value="{{ $perusahaan->id }}">{{ $perusahaan->nama_perusahaan }}</option>
                                        @endforeach
                                    </select>
                                
                                    @error('perusahaan_id')
                                    <label class="form-check-label invalid-feedback">
                                        {{ $message }}
                                    </label>
                                    @enderror
                                </div>
                                
                            </div>
                            <div class="col-md-6">
                                <div class="col-md-3">
                                    <!-- Input Gambar -->
                                    <div class="py-2">
                                        <label for="gambar_pasiens" class="form-label">Foto Pasiens</label>
                                        <div class="mb-2">
                                            <video id="camera-stream" autoplay playsinline style="width: 100%; max-height: 300px; border: 1px solid #ccc;"></video>
                                            <canvas id="camera-capture" style="display: none;"></canvas>
                                        </div>
                                        <button type="button" id="take-photo" class="btn btn-secondary">Capture Photo</button>
                                        <input type="hidden" id="gambar_pasiens" name="gambar_pasiens">
                                        <img id="photo-preview" src="" alt="Preview" style="display: none; margin-top: 10px; max-width: 100%; border: 1px solid #ccc;" />
                                        @error('gambar_pasiens')
                                            <label class="form-check-label invalid-feedback">
                                                {{ $message }}
                                            </label>
                                        @enderror
                                    </div>
                                    
                                </div>
                            </div>


                            <div class="col-12">
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </div>
                        </form>

                        <!-- end card -->
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
    document.addEventListener('DOMContentLoaded', () => {
        const video = document.getElementById('camera-stream');
        const canvas = document.getElementById('camera-capture');
        const takePhotoButton = document.getElementById('take-photo');
        const photoInput = document.getElementById('gambar_pasiens');
        const photoPreview = document.getElementById('photo-preview');
        const constraints = { video: true };
    
        // Memulai kamera
        navigator.mediaDevices.getUserMedia(constraints)
            .then((stream) => {
                video.srcObject = stream;
            })
            .catch((error) => {
                console.error("Kamera tidak dapat diakses:", error);
            });
    
        // Menangkap gambar
        takePhotoButton.addEventListener('click', () => {
            const context = canvas.getContext('2d');
            canvas.width = video.videoWidth;
            canvas.height = video.videoHeight;
            context.drawImage(video, 0, 0, canvas.width, canvas.height);
    
            // Konversi ke base64
            const imageData = canvas.toDataURL('image/png');
            photoInput.value = imageData; // Simpan base64 ke input hidden
            photoPreview.src = imageData; // Tampilkan preview
            photoPreview.style.display = 'block';
        });
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
