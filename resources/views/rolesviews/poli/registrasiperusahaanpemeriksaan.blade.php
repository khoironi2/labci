@extends('layouts.main')
@section('container')

    <div class="pagetitle">
        <h1>Registrasi Pemeriksaan Perusahaan</h1>
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


                            <form class="row g-3" method="post" action="{{ route('store-pemeriksaan-perusahaan') }}" >
                                @csrf

                                <div class="col-md-6">
                                    <h5>Pengirim</h5>
                                    <hr>
                                    <div class="py-2">
                                        <label for="pasien_id" class="form-label">Perusahaan</label>

                                        <select id="perusahaan_id" class="selectperusahaan form-select" name="perusahaan_id">
                                            <option selected disabled>cari perusahaan...</option>
                                            @foreach ($dataperusahaan as $data)
                                                <option value="{{ $data->id }}"> {{ $data->nama_perusahaan }}  </option>
                                            @endforeach
                                        </select>
                                    </div>
                                    {{-- nama parameter --}}
                                    <input type="text" disabled class="form-control" id="perusahaan_idd" name="perusahaan_id" hidden>
                                    <div class="py-2">
                                        <label for="kota" class="form-label">Kota</label>
                                        <input type="text" readonly class="form-control" id="kota" >

                                    </div>
                                    <div class="py-2">
                                        <label for="alamatperusahaan" class="form-label">Alamat</label>
                                        <textarea id="alamatperusahaan" class="form-control" readonly></textarea>
                                    </div>

                                    {{-- end nama parameter --}}


                                </div>

                                <div class="col-md-6">
                                    <h5>Customer</h5>
                                    <hr>
                                    {{-- <div class="py-2">
                                        <label for="pasien_id" class="form-label">Pasien</label>
                                        <select id="pasien_id" class="js-example-basic-single form-select" name="pasien_id">
                                            <option selected disabled>cari pasien...</option>
                                        </select>
                                    </div> --}}

                                    <div class="py-2">
                                        <label for="pasien_id" class="form-label">Pasien</label>
                                        <select id="pasien_id" class="js-example-basic-multiple form-select" name="pasien_id[]" multiple>
                                            {{-- <option selected disabled>cari pasien...</option> --}}
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
                                        <select id="metode" class="js-example-basic-multiple form-select" name="paket_id[]" multiple>
                                            {{-- <option disabled>cari paket...</option> --}}
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
                                            {{-- <div class="py-2">
                                                <label for="status_permohonan" class="form-label">Kategori</label>

                                                <select id="status_permohonan" class="form-select" name="status_permohonan">

                                                        <option >Pilih Kategori</option>
                                                        <option value="APS">Atas Permintaan Sendiri</option>
                                                        <option value="BPJS">BPJS</option>
                                                        <option value="RUJUKAN">RUJUKAN</option>
                                                        <option value="ASURANSI">Jaminan Asuransi</option>
                                                        <option value="JP">Jaminan Perusahaan</option>

                                                </select>
                                            </div> --}}
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
            // Inisialisasi select2
            $('.js-example-basic-multiple').select2();

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


<script>
    $(document).ready(function () {
    $('.selectperusahaan').select2();

    $('#perusahaan_id').on('select2:select', function () {
        const perusahaanId = $(this).val();

        // Fetch data perusahaan
        fetch(`/getDataPerusahaan/${perusahaanId}`)
            .then(response => response.json())
            .then(data => {
                $('#perusahaan_idd').val(data.id);
                $('#kota').val(data.kota);
                $('#alamatperusahaan').val(data.alamat);
            })
            .catch(error => console.error('Error:', error));

        // Fetch data pasien
        fetch(`/getPasienByPerusahaan/${perusahaanId}`)
            .then(response => response.json())
            .then(data => {
                const pasienSelect = $('#pasien_id');
                // pasienSelect.empty().append('<option selected disabled>cari pasien...</option>');
                data.forEach(pasien => {
                    pasienSelect.append(`<option value="${pasien.id}">ID: ${pasien.id} - ${pasien.nama}</option>`);
                });
                pasienSelect.trigger('change');
            })
            .catch(error => console.error('Error:', error));

       // Fetch data paket
        fetch(`/getPaketByPerusahaan/${perusahaanId}`)
            .then(response => response.json())
            .then(data => {
                const metodeSelect = $('#metode');
                metodeSelect.empty().append('<option disabled>Pilih Pakxxet</option>');
                data.forEach(paket => {
                    // metodeSelect.append(`<option value="${paket.id}">${paket.nama_paket} ${paket.total_harga} </option>`);
                    metodeSelect.append(`<option value="${paket.id}">${paket.nama_paket} ${new Intl.NumberFormat('id-ID', { style: 'currency', currency: 'IDR' }).format(paket.total_harga)}</option>`);

                });
                // metodeSelect.trigger('change');
            })
            .catch(error => console.error('Error:', error));
    });
});

</script>



@endsection
