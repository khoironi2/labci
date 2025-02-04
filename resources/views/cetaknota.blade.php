<html>

<head>
    <meta charset="UTF-8" http-equiv="Content-Type" content="text/html" />
    <title>Nota Hasil Pemeriksaan</title>
    <style>
        @page {
            margin: 0px;
        }

        body {
            margin-left: 10%;
            margin-right: 10%;
        }

        table {
            width: 100%;
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
    
    <div style="display: flex; justify-content: space-between; align-items: center; margin-top: 20px;">
        <!-- Informasi halaman di kiri -->
        <h1 style="margin-left: 5%;">INVOICE</h1>
    
        <!-- Logo di kanan -->
        <img src="{{ asset('img/logo/cilab.PNG') }}" alt="Logo Cilab" style="width: 200px; height: auto; margin-top: 20px; margin-bottom: 10px; margin-right: 5%;">
    </div>
    <hr  style="height: 3px; background-color: rgb(47, 47, 47); border: none;">
    <table style="border: none;">
        
        <tr>
            <td style="border: none;">
                <b>KEPADA :</b> <br>
                {{ $dataPemeriksaan->pasiens->nama }}<br>
                {{ $dataPemeriksaan->pasiens->no_telp }}
            </td>
            <td style="border: none; vertical-align: top;">
                <div style="text-align: right;">
                    <b>TANGGAL :</b> <br>
                    {{ $dataPemeriksaan->created_at->translatedFormat('l, d F Y') }}
                </div>
            </td>
        </tr>
        <tr>
            <td style="border: none"></td>
            <td style="border: none; text-align:right;">
                <b>NO INVOICE</b> <br>
                {{ $dataPemeriksaan->id }}{{ $dataPemeriksaan->created_at->translatedFormat('dmy') }}
            </td>
        </tr>
    </table>
    
    
   
    
    <?php $totalHarga = 0; ?>
<table class="detail" style="border-collapse: collapse; border: none; width: 100%;">
    <thead>
        <tr style="font-weight: bold;">
            <th style="border: none; padding: 8px; text-align: left;">KETERANGAN</th>
            <th style="border: none; padding: 8px; text-align: left;">HARGA</th>
            <th style="border: none; padding: 8px; text-align: left;">JML</th>
            <th style="border: none; padding: 8px; text-align: left;">TOTAL</th>
        </tr>
    </thead>

    <tbody>
        @foreach ($datatransaksi as $transaksi)
            @php
                $paket = $transaksi->paket; // Ambil data paket dari transaksi
                $harga = $paket->total_harga ?? 0;
                $totalHarga += $harga; // Menambahkan harga ke total
            @endphp
            <tr style="background-color: #f0f0f0;">
                <td style="border: none; padding: 8px;">{{ $paket->nama_paket ?? 'N/A' }}</td>
                <td style="border: none; padding: 8px;">Rp. {{ number_format($harga, 2, ',', '.') }}</td>
                <td style="border: none; padding: 8px;">1</td>
                <td style="border: none; padding: 8px;">Rp. {{ number_format($harga, 2, ',', '.') }}</td>
            </tr>
        @endforeach
        
        {{-- Tampilkan data dari tabel keterangan --}}
        @php
        $mcuShown = [];
        $bidangShown = [];
        $metodeShown = [];
        $parameterShown = [];
        $hargaShown = []; // Array untuk mengecek apakah harga sudah ditampilkan
    @endphp
    
    @if($dataKeterangan->isEmpty())
    <p>Tidak ada keterangan</p> <!-- Menampilkan pesan jika data kosong -->
    @else
        @php
            $mcuShown = [];
            $bidangShown = [];
            $metodeShown = [];
            $parameterShown = [];
            $hargaShown = []; // Array untuk mengecek apakah harga sudah ditampilkan
        @endphp

        @foreach ($dataKeterangan as $keterangan)
            @php
                // Ambil data terkait
                $mcu = $keterangan->mcu->nama_mcu ?? 'N/A';
                $bidang = $keterangan->bidang->name ?? '';
                $metode = $keterangan->metode->name ?? '';
                $parameter = $keterangan->parameter->parameter ?? '';
                $harga = $keterangan->pemeriksaan->total_harga ?? 0; // Mengambil harga total pemeriksaan
            @endphp
        
            <tr style="background-color: #f0f0f0;">
                <td style="border: none; padding: 8px; background-color: #DCDCDCFF;">
                    <!-- Tampilkan MCU hanya sekali -->
                    @if (!in_array($mcu, $mcuShown))
                        {{ $mcu }}
                        @php $mcuShown[] = $mcu; @endphp
                    @endif
        
                    <!-- Tampilkan Bidang hanya sekali -->
                    @if (!in_array($bidang, $bidangShown))
                        @if (count($mcuShown) > 0) <br> @endif
                        {{ $bidang }}
                        @php $bidangShown[] = $bidang; @endphp
                    @endif
        
                    <!-- Tampilkan Metode hanya sekali -->
                    @if (!in_array($metode, $metodeShown))
                        @if (count($mcuShown) > 0 || count($bidangShown) > 0) <br> @endif
                       <strong> {{ $metode }}</strong><br>
                        @php $metodeShown[] = $metode; @endphp
                    @endif
        
                    <!-- Tampilkan Parameter hanya sekali -->
                    @if (!in_array($parameter, $parameterShown))
                        @if (count($mcuShown) > 0 || count($bidangShown) > 0 || count($metodeShown) > 0) @endif
                        {{ $parameter }}
                        @php $parameterShown[] = $parameter; @endphp
                    @endif
                </td>
        
                <td style="border: none; padding: 8px; background-color: #DCDCDCFF;"></td>
                
                <td style="border: none; padding: 8px; background-color: #DCDCDCFF;">1</td>
                <!-- Tampilkan harga hanya sekali untuk pemeriksaan -->
                @if (!in_array($harga, $hargaShown))
                    <td style="border: none; padding: 8px; background-color: #DCDCDCFF;">Rp. {{ number_format($harga, 2, ',', '.') }}</td>
                    @php $hargaShown[] = $harga; @endphp
                @else
                    <td style="border: none; padding: 8px; background-color: #DCDCDCFF;"></td> <!-- Kosongkan sel jika harga sudah ditampilkan -->
                @endif
            </tr>
        @endforeach
    @endif

    

        <!-- Baris total harga -->
        <tr style=" font-weight: bold;">
            <td colspan="3" style="border: none; padding: 8px; text-align: right;">Total Harga:</td>
            @php
                $totalsemua = array_sum($hargaShown) + $totalHarga;
            @endphp
            <td style="border: none; padding: 8px;">Rp. {{ number_format($totalsemua, 2, ',', '.') }}</td>
        </tr>
    </tbody>
</table>


    <table style="border: none; margin-top:5%">
        
        <tr>
            <td style="border: none;">
                <b style="margin-bottom: 1%">PEMBAYARAN :</b>
                <br>
                Nama : Cilab Medical Center<br>
                No. Rek : 77098749392 / Mandiri
            </td>
            <td style="border: none;">
                <div style="text-align: right;">
                    SUB TOTAL : Rp. {{ number_format($totalsemua, 2, ',', '.') }} <br>
                    @php
                    $pajak = ($totalsemua * $ppn) / 100
                    @endphp
                    PAJAK : Rp. {{ number_format($pajak, 2, ',', '.') }}  <br>
                    @php
                    $totalhargapluspajak = ($totalsemua + $pajak)
                    @endphp
                    <b>TOTAL : {{ number_format($totalhargapluspajak, 2, ',', '.') }}</b>
                </div>
            </td>
        </tr>
        
    </table>
    

</body>

</html>
