@extends('layouts.main')
@section('container')
    <div class="pagetitle">
        <h1>Registrasi Paket Pemeriksaan Perusahaan</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.html">Poli</a></li>
                <li class="breadcrumb-item active">Registrasi Paket Pemeriksaan Perusahaan</li>
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
                                <div class="col-md-12">
                                    <h5>Informasi Paket</h5>
                                    <hr>
                                </div>

                                
                            </div>

                            <form class="row g-3" method="post" action="{{ route('store-paket-pemeriksaan') }}" >
                                @csrf
                            <div class="row">
                                <!-- Switcher -->
    <div class="col-md-12">
        <div class="form-check form-switch py-2">
            <input class="form-check-input" type="checkbox" id="togglePerusahaan" checked>
            <label class="form-check-label" for="togglePerusahaan">Tampilkan Perusahaan</label>
        </div>
    </div>
                            <div class="perusahaan-section">

                            
                                <div class="col-md-4">
                                    <div class="py-2">
                                        <label for="pasien_id" class="form-label">Perusahaan</label>

                                        <select id="perusahaan_id" class="selectperusahaan form-select" name="perusahaan_id" required>
                                            <option>cari perusahaan...</option>
                                            @foreach ($dataperusahaan as $data)
                                                <option value="{{ $data->id }}"> {{ $data->nama_perusahaan }}  </option>
                                            @endforeach
                                        </select>
                                    </div>
                                    {{-- nama parameter --}}
                                    
                                </div>
                                <div class="col-md-4">
                                    <input type="text" readonly class="form-control" id="perusahaan_idd" name="perusahaan_id" hidden>
                                    <div class="py-2">
                                        <label for="kota" class="form-label">Kota</label>
                                        <input type="text" readonly class="form-control" id="kota" >
                                 
                                    </div>                               
                                </div>

                                <div class="col-md-4">
                                    <div class="py-2">
                                        <label for="alamatperusahaan" class="form-label">Alamat</label>
                                        <input type="text" readonly readonly class="form-control" id="alamatperusahaan" >
                                    </div>
                                </div>

                            </div>
                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="py-2">
                                        <label for="nama_paket" class="form-label">Nama Paket *Wajib Diisi</label>
                                        <input type="text" name="nama_paket" class="form-control" id="nama_paket" required>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <!-- Switcher -->
                                <div class="col-md-12">
                                    <div class="form-check form-switch py-2">
                                        <input class="form-check-input" type="checkbox" id="toggleDiskon">
                                        <label class="form-check-label" for="toggleDiskon">Set Harga Manual</label>
                                    </div>
                                </div>
                                <div class="col-md-3 harga-manual">
                                    <label for="harga_manual" class="form-label">Harga Manual</label>
                                    <input type="text" name="harga_manual" class="form-control" id="harga_manual">
                                </div>

                                <div class="col-md-3 diskon-fields">
                                    <label for="diskon_persen" class="form-label">Diskon</label>
                                    <input type="text" name="diskon_persen" class="form-control" id="diskon_persen">
                                </div>

                                <div class="col-md-3 diskon-fields">
                                    <label for="diskon_rupiah" class="form-label">Potongan Harga</label>
                                        <input type="text" name="diskon_rupiah" class="form-control" id="diskon_rupiah">
                                </div>
                            </div>


                             

                                <h5 class="pt-3">Data Pemeriksaan</h5>
                                <hr>

                                <livewire:dynamic-registrasi-paket-pemeriksaan/>


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
                pasienSelect.empty().append('<option selected disabled>cari pasien...</option>');
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
                    metodeSelect.append(`<option value="${paket.id}">${paket.nama_paket}</option>`);
                });
                // metodeSelect.trigger('change');
            })
            .catch(error => console.error('Error:', error));

    });
});

</script>



{{-- <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script> --}}
{{-- <script>
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
</script> --}}

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
    
        // Format input diskon_rupiah ke Rupiah
        $('#diskon_rupiah').on('input', function() {
            let value = $(this).val().replace(/[^,\d]/g, ''); // Hanya angka
            $(this).val(formatRupiah(value));
        });
    
        // Format input harga_manual ke Rupiah
        $('#harga_manual').on('input', function() {
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
    $(document).ready(function() {
        // Ketika switch diubah
        $('#togglePerusahaan').on('change', function() {
            if ($(this).is(':checked')) {
                $('.perusahaan-section').show(); // Tampilkan div perusahaan
            } else {
                $('.perusahaan-section').hide(); // Sembunyikan div perusahaan
            }
        });

        // Setel awal: jika switch mati, sembunyikan perusahaan
        if (!$('#togglePerusahaan').is(':checked')) {
            $('.perusahaan-section').hide();
        }
    });
</script>


<script>
    $(document).ready(function() {
        // Ketika switch diubah
        $('#toggleDiskon').on('change', function() {
            if ($(this).is(':checked')) {
                $('.diskon-fields').hide(); // Sembunyikan diskon persen & rupiah
                $('.harga-manual').show(); // Tampilkan harga manual
            } else {
                $('.diskon-fields').show(); // Tampilkan diskon persen & rupiah
                $('.harga-manual').hide(); // Sembunyikan harga manual
            }
        });

        // Setel awal: jika switch mati, sembunyikan harga_manual
        if (!$('#toggleDiskon').is(':checked')) {
            $('.harga-manual').hide();
        }
    });
</script>

@endsection
