<html>

<head>
    <meta charset="UTF-8" http-equiv="Content-Type" content="text/html" />
    <title>Cetak Hasil Pemeriksaan</title>
    <style>
        @page {
            size: tabloid; /* Pastikan ukuran halaman tabloid */
            margin: 0; /* Hapus margin default halaman */

        }

        body {

            margin: 0; /* Hapus margin body */
            padding-left: 5%; /* Hapus padding body */
            padding-right: 5%; /* Hapus padding body */
        }

        table {
            width: 95%; /* Gunakan hampir seluruh lebar halaman */
            margin: 0 auto; /* Pusatkan tabel */
            border: 0.3px solid;
            border-collapse: collapse;
        }

        td {
            text-align: left;
            width: auto; /* Biarkan lebar kolom tabel otomatis */
            padding: 0.5rem;
            border: 1px solid;
        }

        .detail td,
        .detail th {
            padding: 0.5rem;
            border: 1px solid;
            width: 45%;
        }

        @media print {
            html, body {
                height: 100%; /* Pastikan tinggi penuh digunakan */
            }

            table {
                page-break-inside: auto; /* Hindari pemisahan tabel */
            }

            tr {
                page-break-inside: avoid; /* Hindari pemisahan baris tabel */
            }

            .page-break {
                page-break-before: always; /* Pisahkan halaman untuk elemen tertentu */
            }
        }

        .page-break {
            page-break-before: always; /* Tambahkan halaman baru */
        }
    </style>

</head>

<body>

{{-- Set variabel halaman global --}}
@php
    $currentPage = 1;
@endphp

{{-- ini awal bagian pemeriksaan fisik --}}
@php
    $dataPemeriksaanFisik = $dataPemeriksaan->keterangan->filter(function($item) {
        return $item->mcu && $item->mcu->nama_mcu == 'FISIK';
    });
@endphp

@if ($dataPemeriksaanFisik->isNotEmpty())
    @php
        $dataChunks = $dataPemeriksaanFisik->chunk(25); // Bagi data menjadi potongan kecil
    @endphp

    @foreach ($dataChunks as $index => $chunk)
        {{-- Tambahkan pemisah halaman setelah halaman pertama --}}
        @if ($index > 0)
            <div class="page-break"></div>
        @endif

        {{-- Awal kop surat --}}
        <div style="display: flex; justify-content: space-between; align-items: center; margin-top: 20px;">
            <!-- Logo di kiri -->
            <img src="{{ asset('img/logo/cilab.PNG') }}" alt="Logo Cilab" style="width: 200px; height: auto; margin-top: 20px; margin-bottom: 10px; margin-left: 5%;">

            <!-- Informasi halaman di kanan -->
            <div id="page-dua" style="text-align: right; margin-right: 5%;">
                Halaman Ke {{ $currentPage }} dari {{ $dataChunks->count() * count($dataPemeriksaanFisik->chunk(25)) }}
            </div>
        </div>

        <table style="margin-top: 20px">
            <tr>
                <td colspan="4" style="text-align: center; background-color: #7f8988; color: rgb(0, 0, 0);">
                    <b>HASIL PEMERIKSAAN FISIK</b>
                </td>
            </tr>
            <tr>
                <td>Perusahaan</td>
                <td>{{ $dataPemeriksaan->pasiens->nama }}</td>
                <td>Nama</td>
                <td>{{ $dataPemeriksaan->pasiens->nama }}</td>
            </tr>
            <tr>
                <td>NIK</td>
                <td>{{ $dataPemeriksaan->pasiens->no_identitas }}</td>
                <td>Tanggal Lahir</td>
                <td>{{ $dataPemeriksaan->pasiens->tanggal_lahir }}</td>
            </tr>
            <tr>
                <td>Tanggal MCU</td>
                <td>{{ $dataPemeriksaan->created_at }}</td>
                <td>No. MCU</td>
                <td>{{ $dataPemeriksaan->id }}</td>
            </tr>
        </table>
        {{-- Akhir kop surat --}}

        <br>

        {{-- Tabel Pemeriksaan --}}
        <table class="detail" style="border: none;">
            <thead>
                <tr>
                    <th style="background-color: #7f8988; color: rgb(0, 0, 0); width: 30%;">Pemeriksaan</th>
                    <th style="background-color: #7f8988; color: rgb(0, 0, 0); width: 70%;">Hasil</th>
                </tr>
            </thead>
            <tbody>
                @php
                    $currentBidang = null;
                    $currentMetode = null;
                @endphp
                @foreach ($chunk as $value)
                @if ($value->mcu && $value->mcu->nama_mcu == 'FISIK')
                    <tr>
                        <td style="border: none; width: 30%;">
                            @if ($value->bidang && $value->bidang->name !== $currentBidang)
                                @php $currentBidang = $value->bidang->name; @endphp
                                @if ($value->metode && $value->metode->name)
                                    <strong>{{ $currentBidang }}</strong>
                                @else
                                    {{ $currentBidang }}
                                @endif
                                <br>
                            @endif
                            @if ($value->metode && $value->metode->name !== $currentMetode)
                                @php $currentMetode = $value->metode->name; @endphp
                                @if ($value->parameter && $value->parameter->parameter)
                                    <strong>{{ $currentMetode }}</strong>
                                @else
                                    {{ $currentMetode }}
                                @endif
                                <span style="display: block; margin-top: 0;"></span>
                                @if ($value->parameter && $value->parameter->parameter)
                                    <span>&emsp;{{ $value->parameter->parameter }}</span>
                                @endif
                            @elseif ($value->parameter && $value->parameter->parameter)
                                <span>&emsp;{{ $value->parameter->parameter }}</span>
                            @endif
                        </td>
                        <td style="width: 70%; text-align: center; border-top: 1px solid #000; border-bottom: 1px solid #000; border-left: none; border-right: none;">{{ $value->hasil }}</td>
                    </tr>
                @endif
            @endforeach
            </tbody>
        </table>

        {{-- Update nomor halaman --}}
        @php
            $currentPage++;
        @endphp
    @endforeach
@endif

{{-- Halaman berikutnya --}}
<div class="page-break"></div> <!-- Tambahkan pemisah halaman di sini -->

{{-- ini awal bagian pemeriksaan LABORATORIUM / PATOLOGI --}}
@php
    $dataPemeriksaanLabPatologi = $dataPemeriksaan->keterangan->filter(function($item) {
        return $item->mcu && $item->mcu->nama_mcu == 'LABORATORIUM / PATOLOGI';
    });
@endphp

@if ($dataPemeriksaanLabPatologi->isNotEmpty())
    @php
        $dataChunks = $dataPemeriksaanLabPatologi->chunk(25); // Bagi data menjadi potongan kecil
    @endphp

    @foreach ($dataChunks as $index => $chunk)
        {{-- Tambahkan pemisah halaman setelah halaman pertama --}}
        @if ($index > 0)
            <div class="page-break"></div>
        @endif

        {{-- Awal kop surat --}}
        <div style="display: flex; justify-content: space-between; align-items: center; margin-top: 20px;">
            <!-- Logo di kiri -->
            <img src="{{ asset('img/logo/cilab.PNG') }}" alt="Logo Cilab" style="width: 200px; height: auto; margin-top: 20px; margin-bottom: 10px; margin-left: 5%;">

            <!-- Informasi halaman di kanan -->
            <div id="page-dua" style="text-align: right; margin-right: 5%;">
                Halaman Ke {{ $currentPage }} dari {{ $dataChunks->count() * count($dataPemeriksaanLabPatologi->chunk(25)) }}
            </div>
        </div>

        <table style="margin-top: 20px">
            <tr>
                <td colspan="4" style="text-align: center; background-color: #7f8988; color: rgb(0, 0, 0);">
                    <b>HASIL PEMERIKSAAN LABORATORIUM / PATOLOGI</b>
                </td>
            </tr>
            <tr>
                <td>Perusahaan</td>
                <td>{{ $dataPemeriksaan->pasiens->nama }}</td>
                <td>Nama</td>
                <td>{{ $dataPemeriksaan->pasiens->nama }}</td>
            </tr>
            <tr>
                <td>NIK</td>
                <td>{{ $dataPemeriksaan->pasiens->no_identitas }}</td>
                <td>Tanggal Lahir</td>
                <td>{{ $dataPemeriksaan->pasiens->tanggal_lahir }}</td>
            </tr>
            <tr>
                <td>Tanggal MCU</td>
                <td>{{ $dataPemeriksaan->created_at }}</td>
                <td>No. MCU</td>
                <td>{{ $dataPemeriksaan->id }}</td>
            </tr>
        </table>
        {{-- Akhir kop surat --}}

        <br>

        {{-- Tabel Pemeriksaan --}}
        <table class="detail" style="border: none;">
            <thead>
                <tr>
                    <th style="background-color: #7f8988; color: rgb(0, 0, 0); width: 30%;">Pemeriksaan</th>
                    <th style="background-color: #7f8988; color: rgb(0, 0, 0); width: 20%;">Hasil</th>
                    <th style="background-color: #7f8988; color: rgb(0, 0, 0); width: 30%;">Nilai Normal</th>
                    <th style="background-color: #7f8988; color: rgb(0, 0, 0); width: 20%;">Satuan</th>
                </tr>
            </thead>
            <tbody>
                @php
                    $currentBidang = null;
                    $currentMetode = null;
                @endphp
                @foreach ($chunk as $value)
                    @if ($value->mcu && $value->mcu->nama_mcu == 'LABORATORIUM / PATOLOGI')
                        <tr>
                            <td style="border: none; width: 30%;">
                                @if ($value->bidang && $value->bidang->name !== $currentBidang)
                                    @php $currentBidang = $value->bidang->name; @endphp
                                    @if ($value->metode && $value->metode->name)
                                        <strong>{{ $currentBidang }}</strong>
                                    @else
                                        {{ $currentBidang }}
                                    @endif
                                    <br>
                                @endif
                                @if ($value->metode && $value->metode->name !== $currentMetode)
                                    @php $currentMetode = $value->metode->name; @endphp
                                    @if ($value->parameter && $value->parameter->parameter)
                                        <strong>{{ $currentMetode }}</strong>
                                    @else
                                        {{ $currentMetode }}
                                    @endif
                                    <span style="display: block; margin-top: 0;"></span>
                                    @if ($value->parameter && $value->parameter->parameter)
                                        <span>&emsp;{{ $value->parameter->parameter }}</span>
                                    @endif
                                @elseif ($value->parameter && $value->parameter->parameter)
                                    <span>&emsp;{{ $value->parameter->parameter }}</span>
                                @endif
                            </td>
                            <td style="text-align: center; border-left: none; border-right: none; border-top: none; width: 20%;">
                                {{ $value->hasil }}
                            </td>
                            <td style="text-align: center; border-left: none; border-right: none; border-top: none; width: 30%;">
                                @if ($value->bidang && $value->bidang->name === $currentBidang)
                                    {{ $value->bidang->nilai_normal }}

                                @endif

                                @if  ($value->metode && $value->metode->name === $currentMetode)
                                    {{ $value->metode->nilai_normal }}

                                @endif

                                @if ($value->parameter && $value->parameter->parameter)
                                    {{ $value->parameter->nilai_rujukan }}
                                @endif
                            </td>
                            <td style="text-align: center; border-left: none; border-right: none; border-top: none; width: 20%;">
                                {{-- Tampilkan satuan berdasarkan elemen yang ditampilkan --}}
                                @if ($value->bidang && $value->bidang->name === $currentBidang)
                                    {{ $value->bidang->satuan }}

                                @endif

                                @if  ($value->metode && $value->metode->name === $currentMetode)
                                    {{ $value->metode->satuan }}

                                @endif

                                @if ($value->parameter && $value->parameter->parameter)
                                    {{ $value->parameter->satuan }}
                                @endif
                            </td>
                        </tr>
                    @endif
                @endforeach
            </tbody>
        </table>

        {{-- Update nomor halaman --}}
        @php
            $currentPage++;
        @endphp
    @endforeach
@endif

<div class="page-break"></div> <!-- Tambahkan pemisah halaman di sini -->
{{-- ini awal bagian pemeriksaan EKG --}}
@php
    $dataPemeriksaanEKG = $dataPemeriksaan->keterangan->filter(function($item) {
        return $item->mcu && $item->mcu->nama_mcu == 'EKG';
    });
@endphp

@if ($dataPemeriksaanEKG->isNotEmpty())
    @php
        $dataChunks = $dataPemeriksaanEKG->chunk(25); // Bagi data menjadi potongan kecil
    @endphp

    @foreach ($dataChunks as $index => $chunk)
        {{-- Tambahkan pemisah halaman setelah halaman pertama --}}
        @if ($index > 0)
            <div class="page-break"></div>
        @endif

        {{-- Awal kop surat --}}
        <div style="display: flex; justify-content: space-between; align-items: center; margin-top: 20px;">
            <!-- Logo di kiri -->
            <img src="{{ asset('img/logo/cilab.PNG') }}" alt="Logo Cilab" style="width: 200px; height: auto; margin-top: 20px; margin-bottom: 10px; margin-left: 5%;">

            <!-- Informasi halaman di kanan -->
            <div id="page-dua" style="text-align: right; margin-right: 5%;">
                Halaman Ke {{ $currentPage }} dari {{ $dataChunks->count() * count($dataPemeriksaanEKG->chunk(25)) }}
            </div>
        </div>

        <table style="margin-top: 20px">
            <tr>
                <td colspan="4" style="text-align: center; background-color: #7f8988; color: rgb(0, 0, 0);">
                    <b>HASIL PEMERIKSAAN EKG</b>
                </td>
            </tr>
            <tr>
                <td>Perusahaan</td>
                <td>{{ $dataPemeriksaan->pasiens->nama }}</td>
                <td>Nama</td>
                <td>{{ $dataPemeriksaan->pasiens->nama }}</td>
            </tr>
            <tr>
                <td>NIK</td>
                <td>{{ $dataPemeriksaan->pasiens->no_identitas }}</td>
                <td>Tanggal Lahir</td>
                <td>{{ $dataPemeriksaan->pasiens->tanggal_lahir }}</td>
            </tr>
            <tr>
                <td>Tanggal MCU</td>
                <td>{{ $dataPemeriksaan->created_at }}</td>
                <td>No. MCU</td>
                <td>{{ $dataPemeriksaan->id }}</td>
            </tr>
        </table>
        {{-- Akhir kop surat --}}

        <br>

        {{-- Tabel Pemeriksaan --}}
        <table class="detail" style="border: none;">
            <thead>
                <tr>
                    <th style="text-align: left; border-left: none; border-right: none; border-top: none; border-bottom: none; width: 15%;">Catatan :</th>
                    <th style="text-align: left; border-left: none; border-right: none; border-top: none; border-bottom: none; width: 85%;"></th>

                </tr>
            </thead>
            <tbody>
                @php
                    $currentBidang = null;
                    $currentMetode = null;
                @endphp
                @foreach ($chunk as $value)
                    @if ($value->mcu && $value->mcu->nama_mcu == 'EKG')
                        <tr>
                            <td style="border: none; width: 15%;">
                                @if ($value->bidang && $value->bidang->name !== $currentBidang)
                                    @php $currentBidang = $value->bidang->name; @endphp
                                    @if ($value->metode && $value->metode->name)
                                        <strong>{{ $currentBidang }}</strong>
                                    @else
                                        {{ $currentBidang }}
                                    @endif
                                    <br>
                                @endif
                                @if ($value->metode && $value->metode->name !== $currentMetode)
                                    @php $currentMetode = $value->metode->name; @endphp
                                    @if ($value->parameter && $value->parameter->parameter)
                                        <strong>{{ $currentMetode }}</strong>
                                    @else
                                        {{ $currentMetode }}
                                    @endif
                                    <span style="display: block; margin-top: 0;"></span>
                                    @if ($value->parameter && $value->parameter->parameter)
                                        <span>&emsp;{{ $value->parameter->parameter }}</span>
                                    @endif
                                @elseif ($value->parameter && $value->parameter->parameter)
                                    <span>&emsp;{{ $value->parameter->parameter }}</span>
                                @endif
                            </td>
                            <td style="text-align: left; border-left: none; border-right: none; border-top: none; border-bottom: none; width: 85%;">
                                : {{ $value->hasil }}
                            </td>

                        </tr>
                    @endif
                @endforeach
            </tbody>
        </table>

        <table class="table" style="border: none; margin-top: 10%; ">
            <thead>
                <tr>

                    <th style="text-align: left">Kesimpulan :</th>
                </tr>
            </thead>
            <tbody >
                @php
                    $filteredData = $dataKesimpulanPemeriksaan->filter(function ($kesimpulan) {
                        return $kesimpulan->mcu->nama_mcu === 'EKG';
                    });
                @endphp

                @if ($filteredData->isEmpty())
                    <tr>
                        <td style="border: none;" class="text-center">Tidak ada data kesimpulan pemeriksaan</td>
                    </tr>
                @else
                    @foreach ($filteredData as $index => $kesimpulan)
                        <tr>

                            <td style="border: none; text-align: left">{{ $kesimpulan->kesimpulan ?? 'N/A' }}</td>
                        </tr>
                    @endforeach
                @endif
            </tbody>
        </table>

        <br>
        <table class="table" style="border: none; margin-right:10%; text-align: center;">

            <tbody >
                @php
                    $filteredData = $dataKesimpulanPemeriksaan->filter(function ($kesimpulan) {
                        return $kesimpulan->mcu->nama_mcu === 'EKG';
                    });
                @endphp

                @if ($filteredData->isEmpty())
                    <tr>
                        <td colspan="6" class="text-center" style="border: none;">Tidak ada data kesimpulan pemeriksaan</td>
                    </tr>
                @else
                    @foreach ($filteredData as $index => $kesimpulan)
                        <tr>
                            <td style="width: 60%; border: none;"></td>
                            <td style="border: none; text-align: center;">Cilgeon, {{ $dataPemeriksaan->created_at->translatedFormat(' d  F  Y') }}</td>
                        </tr>
                        <tr>
                            <td style="width: 60%; border: none;"></td>
                            <td style="border: none; text-align: center;">
                                <img src="/{{ $kesimpulan->dokterPemeriksa->ttd_dokter ?? 'N/A' }}" alt="" height="100">
                            </td>
                        </tr>
                        <tr>
                            <td style="border: none;"></td>
                            <td style="border: none; text-align: center; text-decoration: underline;">{{ $kesimpulan->dokterPemeriksa->gelardepan ?? 'N/A' }} {{ $kesimpulan->dokterPemeriksa->nama_lengkap ?? 'N/A' }} {{ $kesimpulan->dokterPemeriksa->gelarbelakang ?? 'N/A' }}</td>
                        </tr>
                        <tr>
                            <td style="border: none;"></td>
                            <td style="border: none; text-align: center;">Dokter Pemeriksa</td>
                        </tr>
                    @endforeach
                @endif
            </tbody>
        </table>


        <div class="page-break"></div> <!-- Tambahkan pemisah halaman di sini -->
        {{-- Update nomor halaman --}}
        @php
            $currentPage++;
        @endphp
    @endforeach
@endif

{{-- ini awal bagian Lampiran pemeriksaan EKG --}}
@if ($dataPemeriksaanEKG->isNotEmpty())
    @php
        $dataChunks = $dataPemeriksaanEKG->chunk(25); // Bagi data menjadi potongan kecil
    @endphp

    @foreach ($dataChunks as $index => $chunk)
        {{-- Tambahkan pemisah halaman setelah halaman pertama --}}
        @if ($index > 0)
            <div class="page-break"></div>
        @endif

        {{-- Awal kop surat --}}
        <div style="display: flex; justify-content: space-between; align-items: center; margin-top: 20px;">
            <!-- Logo di kiri -->
            <img src="{{ asset('img/logo/cilab.PNG') }}" alt="Logo Cilab" style="width: 200px; height: auto; margin-top: 20px; margin-bottom: 10px; margin-left: 5%;">

            <!-- Informasi halaman di kanan -->
            <div id="page-dua" style="text-align: right; margin-right: 5%;">
                Halaman Ke {{ $currentPage }} dari {{ $dataChunks->count() * count($dataPemeriksaanEKG->chunk(25)) }}
            </div>
        </div>

        <br>
        @php
        $filteredData = $dataKesimpulanPemeriksaan->filter(function ($kesimpulan) {
            return $kesimpulan->mcu->nama_mcu === 'EKG';
        });
        @endphp

        @if ($filteredData->isEmpty())
            <span>Tidak ada file pendukung</span>
        @else
            @foreach ($filteredData as $index => $kesimpulan)
                <img src="/{{ $kesimpulan->gambar_hasil ?? 'N/A' }}" alt="gambar_hasil" style="width: 100%; margin-top:5%;">
            @endforeach
        @endif

        {{-- Update nomor halaman --}}
        @php
            $currentPage++;
        @endphp
    @endforeach
@endif
{{-- ini akhir bagian Lampiran pemeriksaan EKG --}}


<div class="page-break"></div> <!-- Tambahkan pemisah halaman di sini -->
{{-- ini awal bagian pemeriksaan AUDIOMETRI --}}

@php
    $dataPemeriksaanAudiometri = $dataPemeriksaan->keterangan->filter(function($item) {
        return $item->mcu && $item->mcu->nama_mcu == 'AUDIOMETRI';
    });
@endphp

@if ($dataPemeriksaanAudiometri->isNotEmpty())
    @php
        $dataChunks = $dataPemeriksaanAudiometri->chunk(25); // Bagi data menjadi potongan kecil
    @endphp

    @foreach ($dataChunks as $index => $chunk)
        {{-- Tambahkan pemisah halaman setelah halaman pertama --}}
        @if ($index > 0)
            <div class="page-break"></div>
        @endif

        {{-- Awal kop surat --}}
        <div style="display: flex; justify-content: space-between; align-items: center; margin-top: 20px;">
            <!-- Logo di kiri -->
            <img src="{{ asset('img/logo/cilab.PNG') }}" alt="Logo Cilab" style="width: 200px; height: auto; margin-top: 20px; margin-bottom: 10px; margin-left: 5%;">

            <!-- Informasi halaman di kanan -->
            <div id="page-dua" style="text-align: right; margin-right: 5%;">
                Halaman Ke {{ $currentPage }} dari {{ $dataChunks->count() * count($dataPemeriksaanAudiometri->chunk(25)) }}
            </div>
        </div>

        <table style="margin-top: 20px">
            <tr>
                <td colspan="4" style="text-align: center; background-color: #7f8988; color: rgb(0, 0, 0);">
                    <b>HASIL PEMERIKSAAN AUDIOMETRI</b>
                </td>
            </tr>
            <tr>
                <td>Perusahaan</td>
                <td>{{ $dataPemeriksaan->pasiens->nama }}</td>
                <td>Nama</td>
                <td>{{ $dataPemeriksaan->pasiens->nama }}</td>
            </tr>
            <tr>
                <td>NIK</td>
                <td>{{ $dataPemeriksaan->pasiens->no_identitas }}</td>
                <td>Tanggal Lahir</td>
                <td>{{ $dataPemeriksaan->pasiens->tanggal_lahir }}</td>
            </tr>
            <tr>
                <td>Tanggal MCU</td>
                <td>{{ $dataPemeriksaan->created_at }}</td>
                <td>No. MCU</td>
                <td>{{ $dataPemeriksaan->id }}</td>
            </tr>
        </table>
        {{-- Akhir kop surat --}}

        <br>

        {{-- Tabel Pemeriksaan --}}
        <table class="detail" style="border: none;">
            <thead>
                <tr>
                    <th colspan="2" style="text-align: left; border-left: none; border-right: none; border-top: none; border-bottom: none; ">Catatan :</th>

                </tr>
            </thead>
            <tbody>
                @php
                    $currentBidang = null;
                    $currentMetode = null;
                @endphp
                @foreach ($chunk as $value)
                    @if ($value->mcu && $value->mcu->nama_mcu == 'AUDIOMETRI')
                        <tr>
                            <td style="border: none; width: 1%;">
                                @if ($value->bidang && $value->bidang->name !== $currentBidang)
                                    @php $currentBidang = $value->bidang->name; @endphp
                                    @if ($value->metode && $value->metode->name)
                                        <strong>{{ $currentBidang }}</strong>
                                    @else
                                        {{ $currentBidang }}
                                    @endif
                                    <br>
                                @endif
                                @if ($value->metode && $value->metode->name !== $currentMetode)
                                    @php $currentMetode = $value->metode->name; @endphp
                                    @if ($value->parameter && $value->parameter->parameter)
                                        <strong>{{ $currentMetode }}</strong>
                                    @else
                                        {{ $currentMetode }}
                                    @endif
                                    <span style="display: block; margin-top: 0;"></span>
                                    @if ($value->parameter && $value->parameter->parameter)
                                        <span>&emsp;{{ $value->parameter->parameter }}</span>
                                    @endif
                                @elseif ($value->parameter && $value->parameter->parameter)
                                    <span>&emsp;{{ $value->parameter->parameter }}</span>
                                @endif
                            </td>
                            <td style="text-align: left; border-left: none; border-right: none; border-top: none; border-bottom: none; width: 99%;">
                                : {{ $value->hasil }}
                            </td>

                        </tr>
                    @endif
                @endforeach
            </tbody>
        </table>

        @php
        $filteredData = $dataKesimpulanPemeriksaan->filter(function ($kesimpulan) {
            return $kesimpulan->mcu->nama_mcu === 'AUDIOMETRI';
        });
        @endphp

        @if ($filteredData->isEmpty())
            <span>Tidak ada file pendukung</span>
        @else
            @foreach ($filteredData as $index => $kesimpulan)
                <div style="text-align: center">
                    <img src="/{{ $kesimpulan->gambar_hasil ?? 'N/A' }}" alt="gambar_hasil" style="width: 60%; margin-top:5%;">
                </div>
            @endforeach
        @endif


        <br>

        <table class="table" style="border: none; margin-top: 10%; ">
            <thead>
                <tr>

                    <th style="text-align: left">Kesimpulan :</th>
                </tr>
            </thead>
            <tbody >
                @php
                    $filteredData = $dataKesimpulanPemeriksaan->filter(function ($kesimpulan) {
                        return $kesimpulan->mcu->nama_mcu === 'AUDIOMETRI';
                    });
                @endphp

                @if ($filteredData->isEmpty())
                    <tr>
                        <td style="border: none;" class="text-center">Tidak ada data kesimpulan pemeriksaan</td>
                    </tr>
                @else
                    @foreach ($filteredData as $index => $kesimpulan)
                        <tr>

                            <td style="border: none; text-align: left">{{ $kesimpulan->kesimpulan ?? 'N/A' }}</td>
                        </tr>
                    @endforeach
                @endif
            </tbody>
        </table>

        <br>
        <table class="table" style="border: none; margin-right:10%; text-align: center;">

            <tbody >
                @php
                    $filteredData = $dataKesimpulanPemeriksaan->filter(function ($kesimpulan) {
                        return $kesimpulan->mcu->nama_mcu === 'AUDIOMETRI';
                    });
                @endphp

                @if ($filteredData->isEmpty())
                    <tr>
                        <td colspan="6" class="text-center" style="border: none;">Tidak ada data kesimpulan pemeriksaan</td>
                    </tr>
                @else
                    @foreach ($filteredData as $index => $kesimpulan)
                        <tr>
                            <td style="width: 60%; border: none;"></td>
                            <td style="border: none; text-align: center;">Cilgeon, {{ $dataPemeriksaan->created_at->translatedFormat(' d  F  Y') }}</td>
                        </tr>
                        <tr>
                            <td style="width: 60%; border: none;"></td>
                            <td style="border: none; text-align: center;">
                                <img src="/{{ $kesimpulan->dokterPemeriksa->ttd_dokter ?? 'N/A' }}" alt="" height="100">
                            </td>
                        </tr>
                        <tr>
                            <td style="border: none;"></td>
                            <td style="border: none; text-align: center; text-decoration: underline;">{{ $kesimpulan->dokterPemeriksa->gelardepan ?? 'N/A' }} {{ $kesimpulan->dokterPemeriksa->nama_lengkap ?? 'N/A' }} {{ $kesimpulan->dokterPemeriksa->gelarbelakang ?? 'N/A' }}</td>
                        </tr>
                        <tr>
                            <td style="border: none;"></td>
                            <td style="border: none; text-align: center;">Dokter Pemeriksa</td>
                        </tr>
                    @endforeach
                @endif
            </tbody>
        </table>

        {{-- Update nomor halaman --}}
        @php
            $currentPage++;
        @endphp
    @endforeach
@endif

<div class="page-break"></div> <!-- Tambahkan pemisah halaman di sini -->

{{-- ini awal bagian pemeriksaan SPIROMETRI --}}
@php
    $dataPemeriksaanSpirometri = $dataPemeriksaan->keterangan->filter(function($item) {
        return $item->mcu && $item->mcu->nama_mcu == 'SPIROMETRI';
    });
@endphp

@if ($dataPemeriksaanSpirometri->isNotEmpty())
    @php
        $dataChunks = $dataPemeriksaanSpirometri->chunk(25); // Bagi data menjadi potongan kecil
    @endphp

    @foreach ($dataChunks as $index => $chunk)
        {{-- Tambahkan pemisah halaman setelah halaman pertama --}}
        @if ($index > 0)
            <div class="page-break"></div>
        @endif

        {{-- Awal kop surat --}}
        <div style="display: flex; justify-content: space-between; align-items: center; margin-top: 20px;">
            <!-- Logo di kiri -->
            <img src="{{ asset('img/logo/cilab.PNG') }}" alt="Logo Cilab" style="width: 200px; height: auto; margin-top: 20px; margin-bottom: 10px; margin-left: 5%;">

            <!-- Informasi halaman di kanan -->
            <div id="page-dua" style="text-align: right; margin-right: 5%;">
                Halaman Ke {{ $currentPage }} dari {{ $dataChunks->count() * count($dataPemeriksaanSpirometri->chunk(25)) }}
            </div>
        </div>

        <table style="margin-top: 20px">
            <tr>
                <td colspan="4" style="text-align: center; background-color: #7f8988; color: rgb(0, 0, 0);">
                    <b>HASIL PEMERIKSAAN SPIROMETRI</b>
                </td>
            </tr>
            <tr>
                <td>Perusahaan</td>
                <td>{{ $dataPemeriksaan->pasiens->nama }}</td>
                <td>Nama</td>
                <td>{{ $dataPemeriksaan->pasiens->nama }}</td>
            </tr>
            <tr>
                <td>NIK</td>
                <td>{{ $dataPemeriksaan->pasiens->no_identitas }}</td>
                <td>Tanggal Lahir</td>
                <td>{{ $dataPemeriksaan->pasiens->tanggal_lahir }}</td>
            </tr>
            <tr>
                <td>Tanggal MCU</td>
                <td>{{ $dataPemeriksaan->created_at }}</td>
                <td>No. MCU</td>
                <td>{{ $dataPemeriksaan->id }}</td>
            </tr>
        </table>
        {{-- Akhir kop surat --}}

        <br>

        {{-- Tabel Pemeriksaan --}}
        <table class="detail" style="border: none;">
            <thead>
                <tr>
                    <th style="background-color: #7f8988; color: rgb(0, 0, 0); width: 30%;">Parameter</th>
                    <th style="background-color: #7f8988; color: rgb(0, 0, 0); width: 20%;">Pengukuran</th>
                    <th style="background-color: #7f8988; color: rgb(0, 0, 0); width: 30%;">Prediksi</th>
                    <th style="background-color: #7f8988; color: rgb(0, 0, 0); width: 20%;">% Prediksi</th>
                </tr>
            </thead>
            <tbody>
                @php
                    $currentBidang = null;
                    $currentMetode = null;
                @endphp
                @foreach ($chunk as $value)
                    @if ($value->mcu && $value->mcu->nama_mcu == 'SPIROMETRI')
                        <tr>
                            <td style=" width: 30%;">
                                @if ($value->bidang && $value->bidang->name !== $currentBidang)
                                    @php $currentBidang = $value->bidang->name; @endphp
                                    @if ($value->metode && $value->metode->name)
                                        <strong>{{ $currentBidang }}</strong>
                                    @else
                                        {{ $currentBidang }}
                                    @endif
                                    <br>
                                @endif
                                @if ($value->metode && $value->metode->name !== $currentMetode)
                                    @php $currentMetode = $value->metode->name; @endphp
                                    @if ($value->parameter && $value->parameter->parameter)
                                        <strong>{{ $currentMetode }}</strong>
                                    @else
                                        {{ $currentMetode }}
                                    @endif
                                    <span style="display: block; margin-top: 0;"></span>
                                    @if ($value->parameter && $value->parameter->parameter)
                                        <span>&emsp;{{ $value->parameter->parameter }}</span>
                                    @endif
                                @elseif ($value->parameter && $value->parameter->parameter)
                                    <span>&emsp;{{ $value->parameter->parameter }}</span>
                                @endif
                            </td>
                            <td style="text-align: center; width: 20%;">
                                {{ $value->hasil }}
                            </td>
                            <td style="text-align: center; width: 30%;">
                                {{ $value->bidang->nilai_normal }}
                            </td>
                            <td style="text-align: center; width: 20%;">
                                {{ number_format(($value->hasil / $value->bidang->nilai_normal) * 100, 2) }}
                            </td>

                        </tr>
                    @endif
                @endforeach
            </tbody>
        </table>
<br>
        <table class="table" style="border: none; ">
            <thead>
                <tr>

                    <th style="text-align: left">Kesimpulan :</th>
                </tr>
            </thead>
            <tbody >
                @php
                    $filteredData = $dataKesimpulanPemeriksaan->filter(function ($kesimpulan) {
                        return $kesimpulan->mcu->nama_mcu === 'SPIROMETRI';
                    });
                @endphp

                @if ($filteredData->isEmpty())
                    <tr>
                        <td style="border: none;" class="text-center">Tidak ada data kesimpulan pemeriksaan</td>
                    </tr>
                @else
                    @foreach ($filteredData as $index => $kesimpulan)
                        <tr>

                            <td style="border: none; text-align: left">{{ $kesimpulan->kesimpulan ?? 'N/A' }}</td>
                        </tr>
                    @endforeach
                @endif
            </tbody>
        </table>
<br>
        <table class="table" style="border: none; ">
            <thead>
                <tr>

                    <th style="text-align: left">Saran :</th>
                </tr>
            </thead>
            <tbody >
                @php
                    $filteredData = $dataKesimpulanPemeriksaan->filter(function ($kesimpulan) {
                        return $kesimpulan->mcu->nama_mcu === 'SPIROMETRI';
                    });
                @endphp

                @if ($filteredData->isEmpty())
                    <tr>
                        <td style="border: none;" class="text-center">Tidak ada data kesimpulan pemeriksaan</td>
                    </tr>
                @else
                    @foreach ($filteredData as $index => $kesimpulan)
                        <tr>

                            <td style="border: none; text-align: left">{{ $kesimpulan->saran ?? 'N/A' }}</td>
                        </tr>
                    @endforeach
                @endif
            </tbody>
        </table>

        <br>
        <table class="table" style="border: none; margin-right:10%; text-align: center;">

            <tbody >
                @php
                    $filteredData = $dataKesimpulanPemeriksaan->filter(function ($kesimpulan) {
                        return $kesimpulan->mcu->nama_mcu === 'SPIROMETRI';
                    });
                @endphp

                @if ($filteredData->isEmpty())
                    <tr>
                        <td colspan="6" class="text-center" style="border: none;">Tidak ada data kesimpulan pemeriksaan</td>
                    </tr>
                @else
                    @foreach ($filteredData as $index => $kesimpulan)
                        <tr>
                            <td style="width: 60%; border: none;"></td>
                            <td style="border: none; text-align: center;">Cilgeon, {{ $dataPemeriksaan->created_at->translatedFormat(' d  F  Y') }}</td>
                        </tr>
                        <tr>
                            <td style="width: 60%; border: none;"></td>
                            <td style="border: none; text-align: center;">
                                <img src="/{{ $kesimpulan->dokterPemeriksa->ttd_dokter ?? 'N/A' }}" alt="" height="100">
                            </td>
                        </tr>
                        <tr>
                            <td style="border: none;"></td>
                            <td style="border: none; text-align: center; text-decoration: underline;">{{ $kesimpulan->dokterPemeriksa->gelardepan ?? 'N/A' }} {{ $kesimpulan->dokterPemeriksa->nama_lengkap ?? 'N/A' }} {{ $kesimpulan->dokterPemeriksa->gelarbelakang ?? 'N/A' }}</td>
                        </tr>
                        <tr>
                            <td style="border: none;"></td>
                            <td style="border: none; text-align: center;">Dokter Pemeriksa</td>
                        </tr>
                    @endforeach
                @endif
            </tbody>
        </table>
        <div class="page-break"></div> <!-- Tambahkan pemisah halaman di sini -->
        {{-- Update nomor halaman --}}
        @php
            $currentPage++;
        @endphp
    @endforeach
@endif

{{-- ini awal bagian Lampiran pemeriksaan Spirometri --}}
@if ($dataPemeriksaanSpirometri->isNotEmpty())
    @php
        $dataChunks = $dataPemeriksaanSpirometri->chunk(25); // Bagi data menjadi potongan kecil
    @endphp

    @foreach ($dataChunks as $index => $chunk)
        {{-- Tambahkan pemisah halaman setelah halaman pertama --}}
        @if ($index > 0)
            <div class="page-break"></div>
        @endif

        {{-- Awal kop surat --}}
        <div style="display: flex; justify-content: space-between; align-items: center; margin-top: 20px;">
            <!-- Logo di kiri -->
            <img src="{{ asset('img/logo/cilab.PNG') }}" alt="Logo Cilab" style="width: 200px; height: auto; margin-top: 20px; margin-bottom: 10px; margin-left: 5%;">

            <!-- Informasi halaman di kanan -->
            <div id="page-dua" style="text-align: right; margin-right: 5%;">
                Halaman Ke {{ $currentPage }} dari {{ $dataChunks->count() * count($dataPemeriksaanSpirometri->chunk(25)) }}
            </div>
        </div>

        <br>
        @php
        $filteredData = $dataKesimpulanPemeriksaan->filter(function ($kesimpulan) {
            return $kesimpulan->mcu->nama_mcu === 'SPIROMETRI';
        });
        @endphp

        @if ($filteredData->isEmpty())
            <span>Tidak ada file pendukung</span>
        @else
            @foreach ($filteredData as $index => $kesimpulan)
                <img src="/{{ $kesimpulan->gambar_hasil ?? 'N/A' }}" alt="gambar_hasil" style="width: 100%; margin-top:5%;">
            @endforeach
        @endif

        {{-- Update nomor halaman --}}
        @php
            $currentPage++;
        @endphp
    @endforeach
@endif
{{-- ini akhir bagian Lampiran pemeriksaan Spirometri --}}


<div class="page-break"></div> <!-- Tambahkan pemisah halaman di sini -->

{{-- ini awal bagian pemeriksaan RONTGEN THORAX --}}
@php
    $dataPemeriksaanRontgenThorax = $dataPemeriksaan->keterangan->filter(function($item) {
        return $item->mcu && $item->mcu->nama_mcu == 'RONTGEN THORAX';
    });
@endphp

@if ($dataPemeriksaanRontgenThorax->isNotEmpty())
    @php
        $dataChunks = $dataPemeriksaanRontgenThorax->chunk(25); // Bagi data menjadi potongan kecil
    @endphp

    @foreach ($dataChunks as $index => $chunk)
        {{-- Tambahkan pemisah halaman setelah halaman pertama --}}
        @if ($index > 0)
            <div class="page-break"></div>
        @endif

        {{-- Awal kop surat --}}
        <div style="display: flex; justify-content: space-between; align-items: center; margin-top: 20px;">
            <!-- Logo di kiri -->
            <img src="{{ asset('img/logo/cilab.PNG') }}" alt="Logo Cilab" style="width: 200px; height: auto; margin-top: 20px; margin-bottom: 10px; margin-left: 5%;">

            <!-- Informasi halaman di kanan -->
            <div id="page-dua" style="text-align: right; margin-right: 5%;">
                Halaman Ke {{ $currentPage }} dari {{ $dataChunks->count() * count($dataPemeriksaanRontgenThorax->chunk(25)) }}
            </div>
        </div>

        <table style="margin-top: 20px">
            <tr>
                <td colspan="4" style="text-align: center; background-color: #7f8988; color: rgb(0, 0, 0);">
                    <b>HASIL PEMERIKSAAN RONTGEN THORAX</b>
                </td>
            </tr>
            <tr>
                <td>Perusahaan</td>
                <td>{{ $dataPemeriksaan->pasiens->nama }}</td>
                <td>Nama</td>
                <td>{{ $dataPemeriksaan->pasiens->nama }}</td>
            </tr>
            <tr>
                <td>NIK</td>
                <td>{{ $dataPemeriksaan->pasiens->no_identitas }}</td>
                <td>Tanggal Lahir</td>
                <td>{{ $dataPemeriksaan->pasiens->tanggal_lahir }}</td>
            </tr>
            <tr>
                <td>Tanggal MCU</td>
                <td>{{ $dataPemeriksaan->created_at }}</td>
                <td>No. MCU</td>
                <td>{{ $dataPemeriksaan->id }}</td>
            </tr>
        </table>
        {{-- Akhir kop surat --}}

        <br>

        {{-- Tabel Pemeriksaan --}}
        <table class="detail" style="border: none;">
            <thead>
                <tr>
                    <th colspan="2" style="text-align: left; border-left: none; border-right: none; border-top: none; border-bottom: none; ;">X FOTO THORAX PA EFECT </th>

                </tr>
            </thead>
            <tbody>
                @php
                    $currentBidang = null;
                    $currentMetode = null;
                @endphp
                @foreach ($chunk as $value)
                    @if ($value->mcu && $value->mcu->nama_mcu == 'RONTGEN THORAX')
                        <tr>
                            <td style="border: none; width: 5%;">
                                @if ($value->bidang && $value->bidang->name !== $currentBidang)
                                    @php $currentBidang = $value->bidang->name; @endphp
                                    @if ($value->metode && $value->metode->name)
                                        <strong>{{ $currentBidang }}</strong>
                                    @else
                                        {{ $currentBidang }}
                                    @endif
                                    <br>
                                @endif
                                @if ($value->metode && $value->metode->name !== $currentMetode)
                                    @php $currentMetode = $value->metode->name; @endphp
                                    @if ($value->parameter && $value->parameter->parameter)
                                        <strong>{{ $currentMetode }}</strong>
                                    @else
                                        {{ $currentMetode }}
                                    @endif
                                    <span style="display: block; margin-top: 0;"></span>
                                    @if ($value->parameter && $value->parameter->parameter)
                                        <span>&emsp;{{ $value->parameter->parameter }}</span>
                                    @endif
                                @elseif ($value->parameter && $value->parameter->parameter)
                                    <span>&emsp;{{ $value->parameter->parameter }}</span>
                                @endif
                            </td>
                            <td style="text-align: left; border-left: none; border-right: none; border-top: none; border-bottom: none; width: 85%;">
                                : {{ $value->hasil }}
                            </td>

                        </tr>
                    @endif
                @endforeach
            </tbody>
        </table>

        <br>
        <br>
        <table class="table" style="border: none; ">

            <tbody >
                @php
                    $filteredData = $dataKesimpulanPemeriksaan->filter(function ($kesimpulan) {
                        return $kesimpulan->mcu->nama_mcu === 'RONTGEN THORAX';
                    });
                @endphp

                @if ($filteredData->isEmpty())
                    <tr>
                        <td style="border: none;" class="text-center">Tidak ada data kesimpulan pemeriksaan</td>
                    </tr>
                @else
                    @foreach ($filteredData as $index => $kesimpulan)
                        <tr>

                            <td style="border: none; text-align: left"><b>Kesan :</b> {{ $kesimpulan->kesan ?? 'N/A' }}</td>
                        </tr>
                    @endforeach
                @endif
            </tbody>
        </table>

        <br>
        <br>
        <table class="table" style="border: none; margin-right:10%; text-align: center;">

            <tbody >
                @php
                    $filteredData = $dataKesimpulanPemeriksaan->filter(function ($kesimpulan) {
                        return $kesimpulan->mcu->nama_mcu === 'RONTGEN THORAX';
                    });
                @endphp

                @if ($filteredData->isEmpty())
                    <tr>
                        <td colspan="6" class="text-center" style="border: none;">Tidak ada data kesimpulan pemeriksaan</td>
                    </tr>
                @else
                    @foreach ($filteredData as $index => $kesimpulan)
                        <tr>
                            <td style="width: 60%; border: none;"></td>
                            <td style="border: none; text-align: center;">Cilgeon, {{ $dataPemeriksaan->created_at->translatedFormat(' d  F  Y') }}</td>
                        </tr>
                        <tr>
                            <td style="width: 60%; border: none;"></td>
                            <td style="border: none; text-align: center;">
                                <img src="/{{ $kesimpulan->dokterPemeriksa->ttd_dokter ?? 'N/A' }}" alt="" height="100">
                            </td>
                        </tr>
                        <tr>
                            <td style="border: none;"></td>
                            <td style="border: none; text-align: center; text-decoration: underline;">{{ $kesimpulan->dokterPemeriksa->gelardepan ?? 'N/A' }} {{ $kesimpulan->dokterPemeriksa->nama_lengkap ?? 'N/A' }} {{ $kesimpulan->dokterPemeriksa->gelarbelakang ?? 'N/A' }}</td>
                        </tr>
                        <tr>
                            <td style="border: none;"></td>
                            <td style="border: none; text-align: center;">Dokter Pemeriksa</td>
                        </tr>
                    @endforeach
                @endif
            </tbody>
        </table>
        <div class="page-break"></div> <!-- Tambahkan pemisah halaman di sini -->

        {{-- Update nomor halaman --}}
        @php
            $currentPage++;
        @endphp
    @endforeach
@endif
{{-- ini akhir bagian pemeriksaan RONTGEN THORAX --}}

{{-- ini awal bagian Lampiran pemeriksaan RONTGEN THORAX --}}
@if ($dataPemeriksaanRontgenThorax->isNotEmpty())
    @php
        $dataChunks = $dataPemeriksaanRontgenThorax->chunk(25); // Bagi data menjadi potongan kecil
    @endphp

    @foreach ($dataChunks as $index => $chunk)
        {{-- Tambahkan pemisah halaman setelah halaman pertama --}}
        @if ($index > 0)
            <div class="page-break"></div>
        @endif

        {{-- Awal kop surat --}}
        <div style="display: flex; justify-content: space-between; align-items: center; margin-top: 20px;">
            <!-- Logo di kiri -->
            <img src="{{ asset('img/logo/cilab.PNG') }}" alt="Logo Cilab" style="width: 200px; height: auto; margin-top: 20px; margin-bottom: 10px; margin-left: 5%;">

            <!-- Informasi halaman di kanan -->
            <div id="page-dua" style="text-align: right; margin-right: 5%;">
                Halaman Ke {{ $currentPage }} dari {{ $dataChunks->count() * count($dataPemeriksaanRontgenThorax->chunk(25)) }}
            </div>
        </div>

        <br>
        @php
        $filteredData = $dataKesimpulanPemeriksaan->filter(function ($kesimpulan) {
            return $kesimpulan->mcu->nama_mcu === 'RONTGEN THORAX';
        });
        @endphp

        @if ($filteredData->isEmpty())
            <span>Tidak ada file pendukung</span>
        @else
            @foreach ($filteredData as $index => $kesimpulan)
                <img src="/{{ $kesimpulan->gambar_hasil ?? 'N/A' }}" alt="gambar_hasil" style="width: 100%; margin-top:5%;">
            @endforeach
        @endif

        {{-- Update nomor halaman --}}
        @php
            $currentPage++;
        @endphp
    @endforeach
@endif
{{-- ini akhir bagian Lampiran pemeriksaan RONTGEN THORAX --}}


</body>
</html>
