@extends('layouts.main')
@section('container')

    <div class="pagetitle">
        <h1>Registrasi Pemeriksaan By Paket</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.html">Poli</a></li>
                <li class="breadcrumb-item active">Registrasi Pemeriksaan Perusahaan</li>
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


                            <form class="row g-3" method="post" action="{{ route('store-pemeriksaan-by-paket') }}" >
                                @csrf

                                <div class="col-md-6">
                                    <div class="py-2">
                                        <label for="pasien_id" class="form-label">Pasien</label>
                                    
                                        <select id="pasien_id" class="js-example-basic-multiple form-select" name="pasien_id[]" multiple>
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

                                
                                <div class="row">
                                    <div class="py-2">
                                        <label for="metode" class="form-label">Paket</label>
                                        <select id="metode" class="js-example-basic-single form-select" name="paket_id">
                                            <option selected disabled>cari paket...</option>
                                        </select>
                                    </div>
                                </div>



                                <div class="row py-5">
                                    <h5>Transaksi</h5>
                                    <hr>
                                        <div class="col-md-6">


                                            <div class="py-2">
                                                <label for="jenis_layanan" class="form-label">Jenis Layanan</label>
                                                <select id="jenis_layanan" class="form-select" name="jenis_layanan">

                                                        <option >Pilih Jenis Layanan</option>
                                                        <option value=">WALK-IN OFFICE">WALK-IN OFFICE</option>
                                                        <option value="REFRENCE SAMPLE">REFRENCE SAMPLE</option>
                                                        <option value="HOME CARE">HOME CARE</option>
                                                        <option value="MCU ONSITE">MCU ONSITE</option>

                                                </select>
                                            </div>
                                            <div class="py-2">
                                                <label for="rekomendasi" class="form-label">Rekomendasi</label>
                                                <select id="rekomendasi" class="form-select" name="rekomendasi">

                                                        <option >Pilih Rekomendasi</option>
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

                                                <select id="status_permohonan" class="form-select" name="status_permohonan">

                                                        <option >Pilih Kategori</option>
                                                        <option value="APS">Atas Permintaan Sendiri</option>
                                                        <option value="BPJS">BPJS</option>
                                                        <option value="RUJUKAN">RUJUKAN</option>
                                                        <option value="ASURANSI">Jaminan Asuransi</option>
                                                        <option value="JP">Jaminan Perusahaan</option>

                                                </select>
                                            </div>
                                            <div class="py-2">
                                                <label for="pengantaran_hasil" class="form-label">Pengantaran Hasil</label>

                                                <select id="pengantaran_hasil" class="form-select" name="pengantaran_hasil">

                                                        <option >Pilih Pengantaran</option>
                                                        <option value="ambil_sendiri">Di ambil sendiri</option>
                                                        <option value="kerumah">Kerumah</option>
                                                        <option value="kedokter">Kedokter</option>

                                                </select>
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

    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
   

    <script>
        $(document).ready(function() {
            // Inisialisasi select2 untuk multiple selection
            $('#pasien_id').select2({
                placeholder: "Cari pasien...",
                allowClear: true,
                multiple: true
            });
    
            // Event ketika pilihan pasien berubah
            $('#pasien_id').on('change', function () {
                const pasienIds = $(this).val(); // Array pasien yang dipilih
                
                if (pasienIds.length === 1) { // Ambil data jika hanya satu pasien dipilih
                    fetch('/getDataPasien/' + pasienIds[0])
                        .then(response => response.json())
                        .then(data => {
                            // Mengisi data pasien ke input field (hanya untuk satu pasien)
                            $('#nama').val(data.nama);
                            $('#tanggal_lahir').val(data.tanggal_lahir);
                            $('#alamat').val(data.alamat);
                            $('#jenis_kelamin').val(data.jenis_kelamin);
                            $('#bpjs').val(data.bpjs);
                            $('#jenis_identitas').val(data.jenis_identitas);
                            $('#no_identitas').val(data.no_identitas);
                        });
                } else {
                    // Kosongkan input jika lebih dari satu pasien dipilih
                    $('#nama').val('');
                    $('#tanggal_lahir').val('');
                    $('#alamat').val('');
                    $('#jenis_kelamin').val('');
                    $('#bpjs').val('');
                    $('#jenis_identitas').val('');
                    $('#no_identitas').val('');
                }
            });
        });
    </script>
    


<script>
    $(document).ready(function () {
    $.ajax({
        url: "/getPaket", // Sesuaikan dengan route yang diperbaiki
        type: "GET",
        dataType: "json",
        success: function (response) {
            let metodeSelect = $("#metode");

            // Kosongkan dulu select sebelum menambahkan data
            metodeSelect.empty();
            metodeSelect.append('<option selected disabled>cari paket...</option>');

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
