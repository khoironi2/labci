@extends('layouts.main')
@section('container')
<div class="pagetitle">
    <h1>Data Paket</h1>
    <nav>
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="index.html">Super Admin</a></li>
            <li class="breadcrumb-item active">Data Paket</li>
        </ol>
    </nav>
</div>

<section class="section dashboard">
    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body p-3">
                    @if (session()->has('success'))
                        <div class="alert alert-success">{{ session('success') }}</div>
                    @endif
                    @if (session()->has('error'))
                    <div class="alert alert-danger">{{ session('error') }}</div>
                @endif
                    <div class="row">
                        <div class="col py-3">
                            <a href="registrasi-paket-pemeriksaan" class="btn btn-primary">Tambah Paket</a>
                        </div>
                    </div>
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Detail</th>
                                <th>Nama Paket</th>
                                <th>Perusahaan</th>
                                <th>Marketing</th>
                                <th>Total Harga</th>
                                {{-- <th>Diskon Persen</th>
                                <th>Diskon Rupiah</th> --}}
                                <th>Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($pakets as $index => $paket)
                            <tr>
                                <td>{{ $index + 1 }}</td>
                                <td>
                                    <button class="btn btn-sm btn-success" data-bs-toggle="modal" data-bs-target="#detailpaket{{ $paket->id }}">
                                        <i class="bi bi-database-fill-check"></i>
                                    </button>
                                </td>
                                <td>{{ $paket->nama_paket }}</td>
                                <td>{{ $paket->perusahaan->nama_perusahaan ?? '-' }}</td>
                                <td>{{ $paket->marketingUser->nama_lengkap ?? 'N/A' }}</td>
                                <td>{{ 'Rp ' . number_format($paket->total_harga, 0, ',', '.') }}</td>
                                {{-- <td>{{ $paket->diskon_persen }}</td>
                                <td>{{ $paket->diskon_rupiah }}</td> --}}
                                <td>
                                    {{-- <a href="#" class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#editModal{{ $paket->id }}">Edit</a> --}}
                                    <form action="{{ route('list-paket.destroy', $paket->id) }}" method="POST" class="d-inline">
                                        @csrf
                                        @method('DELETE')
                                        <button class="btn btn-danger" onclick="return confirm('Yakin ingin menghapus?')">Hapus</button>
                                    </form>
                                </td>
                            </tr>

                            <div class="modal fade" id="detailpaket{{ $paket->id }}" tabindex="-1" aria-labelledby="detailpaketModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="detailpaketModalLabel">Paket Pemeriksaan {{ $paket->nama_paket }}</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">



                                            <ul style="list-style-type: none; padding-left: 0;">
                                                @php
                                                    $groupedData = $paket->detailpaket->groupBy('mcu.id');
                                                @endphp

                                                @foreach ($groupedData as $mcuId => $detailsByMcu)
                                                    <li>
                                                        <strong>MCU: {{ $detailsByMcu->first()->mcu->nama_mcu ?? 'N/A' }} </strong>
                                                        <ul style="list-style-type: none; padding-left: 15px;">
                                                            @php
                                                                $groupedByBidang = $detailsByMcu->groupBy('bidang.id');
                                                            @endphp
                                                            @foreach ($groupedByBidang as $bidangId => $detailsByBidang)
                                                                <li>
                                                                    <strong>{{ $detailsByBidang->first()->bidang->name ?? 'N/A' }} </strong>
                                                                    <ul style="list-style-type: none; padding-left: 15px;">
                                                                        @php
                                                                            $groupedByMetode = $detailsByBidang->groupBy('metode.id');
                                                                        @endphp
                                                                        @foreach ($groupedByMetode as $metodeId => $detailsByMetode)
                                                                            <li>
                                                                                <strong></strong> {{ $detailsByMetode->first()->metode->name ?? '' }}
                                                                                <ul style="list-style-type: none; padding-left: 15px;">
                                                                                    @foreach ($detailsByMetode as $detail)
                                                                                        <li>
                                                                                            {{ $detail->parameter->parameter ?? '' }}
                                                                                        </li>
                                                                                    @endforeach
                                                                                </ul>
                                                                            </li>
                                                                        @endforeach
                                                                    </ul>
                                                                </li>
                                                            @endforeach
                                                        </ul>
                                                    </li>
                                                @endforeach
                                            </ul>


                                        </div>

                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Tutup</button>

                                        </div>
                                    </div>
                                </div>
                            </div>



                            <div class="modal fade" id="addItem{{ $paket->id }}" tabindex="-1">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <form action="{{ route('store-detailpaket') }}" method="POST">
                                            @csrf
                                            <div class="modal-header">
                                                <h5 class="modal-title">Tambah Item</h5>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                            </div>
                                            <div class="modal-body">
                                                <div class="mb-3">
                                                    <label for="paket_id" class="form-label">Pilih Salah Satu Item dibawah</label>
                                                   <input type="text" name="paket_id" value="{{ $paket->id }}" hidden >
                                                </div>

                                                <div class="mb-3">
                                                    <label for="metode_id" class="form-label">Metode</label>
                                                    <select name="metode_id" id="metode_id" class="form-select">
                                                        <option value="" >Pilih Pemeriksaan</option>
                                                        @foreach ($metodes as $metode)
                                                        <option value="{{ $metode->id }}">{{ $metode->name }}</option>
                                                        @endforeach
                                                    </select>
                                                </div>

                                                <div class="mb-3">
                                                    <label for="parameter_id" class="form-label">Parameter</label>
                                                    <select name="parameter_id" id="parameter_id" class="form-select">
                                                        <option value="" >Pilih Parameter</option>
                                                        @foreach ($parameters as $parameter)
                                                            <option value="{{ $parameter->id }}">{{ $parameter->parameter }}</option>
                                                        @endforeach
                                                    </select>
                                                </div>



                                            </div>
                                            <div class="modal-footer">
                                                <button class="btn btn-secondary" type="button" data-bs-dismiss="modal">Batal</button>
                                                <button class="btn btn-primary" type="submit">Simpan</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>

                            <div class="modal fade" id="editModal{{ $paket->id }}" tabindex="-1">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <form action="{{ route('list-paket.update', $paket->id) }}" method="POST">
                                            @csrf
                                            @method('PUT')
                                            <div class="modal-header">
                                                <h5 class="modal-title">Edit Paket</h5>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                            </div>
                                            <div class="modal-body">
                                                                                              <!-- Nama Paket -->
                                                <div class="mb-3">
                                                    <label for="nama_paket" class="form-label">Nama Paket</label>
                                                    <input type="text" name="nama_paket" id="nama_paket" value="{{ $paket->nama_paket }}" class="form-control" required>
                                                </div>

                                                <!-- Perusahaan -->
                                                <div class="mb-3">
                                                    <label for="perusahaan_id" class="form-label">Perusahaan</label>
                                                    <select name="perusahaan_id" id="perusahaan_id" class="form-select" required>
                                                        <option value="{{ $paket->perusahaan_id }}" selected>
                                                            {{ $paket->perusahaan->nama_perusahaan ?? 'N/A' }}
                                                        </option>

                                                        <option value="" disabled>Pilih Perusahaan</option>
                                                        @foreach ($perusahaans as $perusahaan)
                                                            <option value="{{ $perusahaan->id }}">{{ $perusahaan->nama_perusahaan }}</option>
                                                        @endforeach
                                                    </select>
                                                </div>

                                                <!-- Marketing User -->
                                                <div class="mb-3">
                                                    <label for="marketing" class="form-label">Marketing User</label>
                                                    <select name="marketing" id="marketing" class="form-select" required>
                                                        <option value="{{ $paket->marketing }}" selected>{{ $paket->marketingUser->nama_lengkap ?? 'N/A' }}</option>
                                                        <option value="" disabled>Pilih Marketing</option>
                                                        @foreach ($users as $user)
                                                            <option value="{{ $user->id }}">{{ $user->name }}</option>
                                                        @endforeach
                                                    </select>
                                                </div>

                                                <!-- Harga -->
                                                <div class="mb-3">
                                                    <label for="total_harga" class="form-label">Harga</label>
                                                    <input type="number" name="total_harga" id="total_harga" class="form-control" >
                                                </div>


                                            </div>
                                            <div class="modal-footer">
                                                <button class="btn btn-secondary" type="button" data-bs-dismiss="modal">Batal</button>
                                                <button class="btn btn-primary" type="submit">Simpan</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>

                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>

<div class="modal fade" id="addModal" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="{{ route('store-paket') }}" method="POST">
                @csrf
                <div class="modal-header">
                    <h5 class="modal-title">Tambah Paket</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                </div>
                <div class="modal-body">
                    <!-- Nama Paket -->
                    <div class="mb-3">
                        <label for="nama_paket" class="form-label">Nama Paket</label>
                        <input type="text" name="nama_paket" id="nama_paket" class="form-control" placeholder="Masukkan Nama Paket" required>
                    </div>

                    <!-- Perusahaan -->
                    <div class="mb-3">
                        <label for="perusahaan_id" class="form-label">Perusahaan</label>
                        <select name="perusahaan_id" id="perusahaan_id" class="form-select" required>
                            <option value="" disabled selected>Pilih Perusahaan</option>
                            @foreach ($perusahaans as $perusahaan)
                                <option value="{{ $perusahaan->id }}">{{ $perusahaan->nama_perusahaan }}</option>
                            @endforeach
                        </select>
                    </div>

                    <!-- Marketing User -->
                    <div class="mb-3">
                        <label for="marketing" class="form-label">Marketing User</label>
                        <select name="marketing" id="marketing" class="form-select" required>
                            <option value="" disabled selected>Pilih Marketing</option>
                            @foreach ($users as $user)
                                <option value="{{ $user->id }}">{{ $user->nama_lengkap }}</option>
                            @endforeach
                        </select>
                    </div>




                </div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-bs-dismiss="modal">Batal</button>
                    <button class="btn btn-primary" type="submit">Simpan</button>
                </div>
            </form>
        </div>
    </div>
</div>



@endsection
