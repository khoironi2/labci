@extends('layouts.main')
@section('container')
    <div class="pagetitle">
        <h1>Registrasi Pemeriksaan</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.html">Poli</a></li>
                <li class="breadcrumb-item active">Registrasi Pemeriksaan</li>
            </ol>
        </nav>
    </div><!-- End Page Title -->

    <section class="section dashboard">
        <div class="row">

            <!-- Left side columns -->
            <div class="col-lg-12">
                <div class="row">
                    <div class="card">

                        @if (session()->has('success'))
                        <div class="alert alert-success p-2" role="alert">
                            {{ session('success') }}
                        </div>
                        @endif

                        @if (session()->has('error'))
                        <div class="alert alert-danger p-2" role="alert">
                            {{ session('error') }}
                        </div>
                        @endif

                        <div class="card-body p-3">

                            <div class="row">
                                <div class="col-md-6">
                                    <h5>Customer</h5>
                                    <hr>
                                </div>

                                <div class="col-md-6">
                                    <h5>Pengirim</h5>
                                    <hr>
                                </div>
                            </div>

                            <form class="row g-3" method="post" action="{{ route('store-pemeriksaan') }}" >
                                @csrf
                                <div class="col-md-6">
                                    <div class="py-2">
                                        <label for="pasien_id" class="form-label">Pasien</label>

                                        <select id="pasien_id" class="js-example-basic-single form-select" name="pasien_id[]">
                                            <option selected disabled>cari pasien...</option>
                                            @foreach ($datapasien as $data)
                                                <option value="{{ $data->id }}">ID : {{ $data->id }} - {{ $data->nama }}</option>
                                            @endforeach
                                        </select>



                                    </div>

                                    <div class="py-2">
                                        <label for="tanggal_lahir" class="form-label">Tanggal Lahir</label>
                                        <input type="text"  readonly
                                            class="form-control"
                                            id="tanggal_lahir">
                                    </div>


                                    <div class="py-2">
                                        <label for="alamat" class="form-label">Alamat</label>
                                        <textarea name="alamat" id="alamat" class="form-control" readonly></textarea>
                                    </div>


                                </div>


                                <div class="col-md-6">
                                    <div class="py-2">
                                        <label for="pasien_id" class="form-label">Dokter / Rekanan</label>

                                        <select id="dokter_id" class="selectdokter form-select" name="dokter_id">
                                            <option selected disabled>cari dokter...</option>
                                            @foreach ($datadokter as $data)
                                                <option value="{{ $data->id }}"> {{ $data->gelardepan }}  {{ $data->nama_lengkap }}  {{ $data->gelarbelakang }} | {{ $data->kategori }}</option>
                                            @endforeach
                                        </select>
                                    </div>



                                    {{-- nama parameter --}}
                                    <input type="text" disabled class="form-control" id="dokter_idd" name="dokter_id" hidden>
                                    <div class="py-2">
                                        <label for="kota" class="form-label">Kota</label>
                                        <input type="text" readonly
                                            class="form-control"
                                            id="kota" >

                                    </div>
                                    <div class="py-2">
                                        <label for="alamatdokter" class="form-label">Alamat</label>
                                        <textarea id="alamatdokter" class="form-control" readonly></textarea>
                                    </div>

                                    {{-- end nama parameter --}}


                                </div>
                                <div class="row py-5">
                                    <h5>Transaksi</h5>
                                    <hr>
                                        <div class="col-md-6">


                                            <div class="py-2">
                                                <label for="jenis_layanan" class="form-label">Jenis Layanan</label>
                                                <select id="jenis_layanan" class="form-select" name="jenis_layanan" required>

                                                        
                                                        <option value=">WALK-IN OFFICE">WALK-IN OFFICE</option>
                                                        <option value="REFRENCE SAMPLE">REFRENCE SAMPLE</option>
                                                        <option value="HOME CARE">HOME CARE</option>
                                                        <option value="MCU ONSITE">MCU ONSITE</option>

                                                </select>
                                            </div>
                                            <div class="py-2">
                                                <label for="rekomendasi" class="form-label">Rekomendasi</label>
                                                <select id="rekomendasi" class="form-select" name="rekomendasi" required>

                                                       
                                                        <option value=">WALK-IN OFFICE">WALK-IN OFFICE</option>
                                                        <option value="REFRENCE SAMPLE">REFRENCE SAMPLE</option>
                                                        <option value="HOME CARE">HOME CARE</option>
                                                        <option value="MCU ONSITE">MCU ONSITE</option>

                                                </select>
                                            </div>




                                        </div>

                                        <div class="col-md-6">
                                            <div class="py-2">
                                                <label for="status_permohonan" class="form-label">Kategori</label>

                                                <select id="status_permohonan" class="form-select" name="status_permohonan" required>
                                                        <option value="APS">Atas Permintaan Sendiri</option>
                                                        <option value="BPJS">BPJS</option>
                                                        <option value="RUJUKAN">RUJUKAN</option>
                                                        <option value="ASURANSI">Jaminan Asuransi</option>
                                                        <option value="JP">Jaminan Perusahaan</option>

                                                </select>
                                            </div>
                                            <div class="py-2">
                                                <label for="pengantaran_hasil" class="form-label">Pengantaran Hasil</label>

                                                <select id="pengantaran_hasil" class="form-select" name="pengantaran_hasil" required>

                                                        <option value="ambil_sendiri">Di ambil sendiri</option>
                                                        <option value="kerumah">Kerumah</option>
                                                        <option value="kedokter">Kedokter</option>

                                                </select>
                                            </div>
                                        </div>
                                </div>

                                {{-- <div class="row">
                                    <div class="col-md-3">
                                        <label for="diskon_persen" class="form-label">Diskon</label>
                                        <input type="text" name="diskon_persen" class="form-control" id="diskon_persen">
                                    </div>
    
                                    <div class="col-md-3">
                                        <label for="diskon_rupiah" class="form-label">Potongan Harga</label>
                                            <input type="text" name="diskon_rupiah" class="form-control" id="diskon_rupiah">
                                    </div>
                                </div> --}}

                                <div class="row">
                                    <div class="py-2">
                                        <label for="metode" class="form-label">Paket</label>
                                        <select id="metode" class="js-example-basic-multiple form-select" name="paket_id[]" multiple>
                                            {{-- <option disabled>cari paket...</option> --}}
                                        </select>
                                    </div>
                                </div>  

                                <h5 class="pt-3">Data Pemeriksaan</h5>
                                <hr>

                                <livewire:dynamic-registrasi-pemeriksaan/>


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

    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
    <script>
        $(document).ready(function() {
            // Inisialisasi select2
            $('.js-example-basic-single').select2();

            // Event ketika pilihan pada select2 berubah
            $('#pasien_id').on('select2:select', function (e) {
                // Ambil ID pasien yang dipilih
                const pasienId = $(this).val();

                // Lakukan fetch untuk mendapatkan data pasien berdasarkan ID yang dipilih
                fetch('/getDataPasien/' + pasienId)
                    .then(response => response.json())
                    .then(data => {
                        // Mengisi data pasien ke input field
                        $('#nama').val(data.nama);
                        $('#tanggal_lahir').val(data.tanggal_lahir);
                        $('#alamat').val(data.alamat);
                        $('#jenis_kelamin').val(data.jenis_kelamin);
                        $('#bpjs').val(data.bpjs);
                        $('#jenis_identitas').val(data.jenis_identitas);
                        $('#no_identitas').val(data.no_identitas);
                    });
            });
        });
    </script>

  <script>
    $(document).ready(function() {
        // Inisialisasi select2
        $('.selectdokter').select2();

        // Event ketika pilihan pada select2 berubah
        $('#dokter_id').on('select2:select', function (e) {
            // Ambil ID pasien yang dipilih
            const dokterID = $(this).val();

            // Lakukan fetch untuk mendapatkan data pasien berdasarkan ID yang dipilih
            fetch('/getDataDokter/' + dokterID)
                .then(response => response.json())
                .then(data => {
                    // Mengisi data pasien ke input field
                    $('#dokter_idd').val(data.id);
                    $('#gelardepan').val(data.gelardepan);
                    $('#nama_lengkap').val(data.nama_lengkap);
                    $('#gelarbelakang').val(data.gelarbelakang);
                    $('#kota').val(data.kota);
                    $('#alamatdokter').val(data.alamat);
                    $('#kategori').val(data.kategori);
                });
        });
    });
</script>


<script>
    $(document).ready(function() {
        // Event untuk diskon persen
        $('#diskon_persen').on('input', function() {
            if ($(this).val().trim() !== '') {
                $('#diskon_rupiah').val('').prop('disabled', true); // Kosongkan dan nonaktifkan rupiah
            } else {
                $('#diskon_rupiah').prop('disabled', false); // Aktifkan kembali jika kosong
            }
        });
    
        // Event untuk diskon rupiah
        $('#diskon_rupiah').on('input', function() {
            if ($(this).val().trim() !== '') {
                $('#diskon_persen').val('').prop('disabled', true); // Kosongkan dan nonaktifkan persen
            } else {
                $('#diskon_persen').prop('disabled', false); // Aktifkan kembali jika kosong
            }
        });
    
        // Format input diskon persen dengan %
        $('#diskon_persen').on('input', function() {
            let value = $(this).val().replace('%', '').trim();
            if (value !== '') {
                $(this).val(value + '%');
            }
        });
    
        // Format input potongan harga ke Rupiah
        $('#diskon_rupiah').on('input', function() {
            let value = $(this).val().replace(/[^,\d]/g, ''); // Hanya angka
            $(this).val(formatRupiah(value));
        });
    
        // Fungsi format Rupiah
        function formatRupiah(angka) {
            return 'Rp ' + angka.replace(/\B(?=(\d{3})+(?!\d))/g, '.');
        }
    });
</script>

<script>
    $(document).ready(function () {
    // Aktifkan Select2 dengan multiple select
    $("#metode").select2({
            placeholder: "Cari paket...",
            allowClear: true
        });
        
    $.ajax({
        url: "/getPaket", // Sesuaikan dengan route yang diperbaiki
        type: "GET",
        dataType: "json",
        success: function (response) {
            let metodeSelect = $("#metode");

            // Kosongkan dulu select sebelum menambahkan data
            metodeSelect.empty();
            // metodeSelect.append('<option selected disabled>cari paket...</option>');

            // Loop data paket dan tambahkan ke select
            $.each(response, function (index, paket) {
                let hargaRupiah = new Intl.NumberFormat('id-ID', { 
                    style: 'currency', 
                    currency: 'IDR',
                    minimumFractionDigits: 0
                }).format(paket.total_harga);

                metodeSelect.append(`<option value="${paket.id}">${paket.nama_paket} - ${hargaRupiah}</option>`);
            });
        },
        error: function (xhr, status, error) {
            console.error("Error fetching data:", error);
        }
    });
});

</script>

@endsection
