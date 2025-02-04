@extends('layouts.main')
@section('container')
<div class="pagetitle">
    <h1>Detail Paket</h1>
    <nav>
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="#">Dashboard</a></li>
            <li class="breadcrumb-item active">Detail Paket</li>
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

                    <div class="row">
                        <div class="col py-3">
                            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#addModal">
                                Tambah Detail Paket
                            </button>
                        </div>
                    </div>

                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Paket</th>
                                <th>Pemeriksaan</th>
                                <th>Parameter</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($detailPakets as $index => $detailPaket)
                                <tr>
                                    <td>{{ $index + 1 }}</td>
                                    <td>{{ $detailPaket->paket->nama_paket ?? 'N/A' }}</td>
                                    <td>{{ $detailPaket->metode->name ?? 'N/A' }}</td>
                                    <td>{{ $detailPaket->parameter->parameter ?? 'N/A' }}</td>
                                    <td>
                                        <button type="button" class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#editModal{{ $detailPaket->id }}">Edit</button>
                                        <form action="{{ route('list-detailpaket.destroy', $detailPaket->id) }}" method="POST" class="d-inline">
                                            @csrf
                                            @method('DELETE')
                                            <button class="btn btn-danger" onclick="return confirm('Yakin ingin menghapus?')">Hapus</button>
                                        </form>
                                    </td>
                                </tr>

                                <!-- Edit Modal -->
                                <div class="modal fade" id="editModal{{ $detailPaket->id }}" tabindex="-1">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <form action="{{ route('list-detailpaket.update', $detailPaket->id) }}" method="POST">
                                                @csrf
                                                @method('PUT')
                                                <div class="modal-header">
                                                    <h5 class="modal-title">Edit Detail Paket</h5>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="mb-3">
                                                        <label for="paket_id" class="form-label">Paket</label>
                                                        <select name="paket_id" id="paket_id" class="form-select">
                                                            @foreach ($pakets as $paket)
                                                                <option value="{{ $paket->id }}" {{ $detailPaket->paket_id == $paket->id ? 'selected' : '' }}>
                                                                    {{ $paket->nama_paket }}
                                                                </option>
                                                            @endforeach
                                                        </select>
                                                    </div>

                                                    <div class="mb-3">
                                                        <label for="metode_id" class="form-label">Metode</label>
                                                        <select name="metode_id" id="metode_id" class="form-select">
                                                            @foreach ($metodes as $metode)
                                                                <option value="{{ $metode->id }}" {{ $detailPaket->metode_id == $metode->id ? 'selected' : '' }}>
                                                                    {{ $metode->name }}
                                                                </option>
                                                            @endforeach
                                                        </select>
                                                    </div>

                                                    <div class="mb-3">
                                                        <label for="parameter_id" class="form-label">Parameter</label>
                                                        <select name="parameter_id" id="parameter_id" class="form-select">
                                                            @foreach ($parameters as $parameter)
                                                                <option value="{{ $parameter->id }}" {{ $detailPaket->parameter_id == $parameter->id ? 'selected' : '' }}>
                                                                    {{ $parameter->parameter }}
                                                                </option>
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
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Add Modal -->
<div class="modal fade" id="addModal" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="{{ route('store-detailpaket') }}" method="POST">
                @csrf
                <div class="modal-header">
                    <h5 class="modal-title">Tambah Detail Paket</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                </div>
                <div class="modal-body">
                    <div class="mb-3">
                        <label for="paket_id" class="form-label">Paket</label>
                        <select name="paket_id" id="paket_id" class="form-select">
                            <option value="" selected>Pilih Paket</option>
                            @foreach ($pakets as $paket)
                                <option value="{{ $paket->id }}">{{ $paket->nama_paket }}</option>
                            @endforeach
                        </select>
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
@endsection
