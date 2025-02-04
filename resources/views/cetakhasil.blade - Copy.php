<html>

<head>
    <meta charset="UTF-8" http-equiv="Content-Type" content="text/html" />
    <title>Cetak Hasil Pemeriksaan</title>
    <style>
        @page {
            margin: 0px;
        }

        body {
            margin: 0px;
        }

        table {
            width: 70%;
            margin: auto;
            border: 1px solid;
            border-collapse: collapse;
        }

        td {
            text-align: left;
            width: 25%;
            padding: .5rem;
            border: 1px solid;
        }

        .detail td,
        .detail th {
            padding: .5rem;
            border: 1px solid;
            width: 45%;
        }
    </style>
</head>

<body>
    <h3 style="text-align: center">
        Cetak Hasil <br />
        Web Klinik
    </h3>
    <div style="width: 70%;margin:auto">
        <h3>Tanggal : {{ $dataPemeriksaan->created_at->translatedFormat('l, d / F / Y') }}</h3>
    </div>
    <table>
        <tr>
            <td colspan="2">
                <b>Pasien</b>
            </td>
            <td colspan="2">
                <b>Dokter</b>
            </td>
        </tr>
        <tr>
            <td>Nama Lengkap</td>
            <td>{{ $dataPemeriksaan->pasiens->nama }}</td>
            <td>Nama Dokter</td>
            <td>{{ $dataPemeriksaan->dokter->nama_lengkap }}</td>
        </tr>
        <tr>
            <td>No. Telp.</td>
            <td>{{ $dataPemeriksaan->pasiens->no_telp }}</td>
            <td>No. Telp</td>
            <td>{{ $dataPemeriksaan->dokter->no_telp }}</td>
        </tr>
        <tr>
            <td>Jenis Kelamin</td>
            <td>{{ $dataPemeriksaan->pasiens->jenis_kelamin }}</td>
            <td colspan="2"></td>
        </tr>
        <tr>
            <td>Jenis Identitas</td>
            <td>{{ $dataPemeriksaan->pasiens->jenis_identitas }}</td>

        </tr>
        <tr>
            <td>No. Identitas</td>
            <td>{{ $dataPemeriksaan->pasiens->no_identitas }}</td>

        </tr>
        <tr>
            <td>BPJS</td>
            <td>{{ $dataPemeriksaan->pasiens->bpjs }}</td>
            <td colspan="2" style="border:0;"></td>
        </tr>
        <tr>
            <td>Alamat</td>
            <td>{{ $dataPemeriksaan->pasiens->alamat }}</td>
            <td colspan="2" style="border:0;"></td>
        </tr>
    </table>
<hr>
{{-- ini halaman selanjtnya --}}
@foreach ($dataPemeriksaan->keterangan as $value)
    <table>
        <tr>
            <td colspan="4" style="text-align: center;">
                <b>HASIL PEMERIKSAAN {{ $value->mcu->nama_mcu ?? 'N/A' }}</b>
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
@endforeach

    <div style="width: 70%;margin:auto">
        <h3>Detail Pemeriksaan :</h3>
    </div>
    <?php $total = 0 ?>
    <table class="detail">
        <thead>
            <tr>
                <th style="width: 2rem;">No.</th>
                <th>MCU</th>
                <th>Bidang</th>
                <th>Metode</th>
                <th>Parameter</th>
                <th>Hasil Pemeriksaan</th>
                <th>Kesan Pemeriksaan</th>
                <th>Catatan Pemeriksaan</th>
            </tr>
        </thead>

        <tbody>
            @foreach ($dataPemeriksaan->keterangan as $value)
                <tr>
                    <td style="width: 2rem;">{{ $loop->iteration }}</td>
                    <td>{{ $value->mcu->nama_mcu ?? 'N/A' }}</td>
                    <td>{{ $value->bidang->name ?? 'N/A' }}</td>
                    <td>{{ $value->metode->name ?? 'N/A' }}</td>
                    <td>{{ $value->parameter->parameter ?? 'N/A' }}</td>
                    <td>{{ $value->hasil }}</td>
                    <td>{{ $value->kesan }}</td>
                    <td>{{ $value->catatan ?? 'N/A' }}</td>
                </tr>
            @endforeach
        </tbody>


    </table>
</body>

</html>
