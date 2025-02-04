@extends('layouts.main')

@section('container')
    <div class="pagetitle">
        <h1>Data Bidang</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#">Super Admin</a></li>
                <li class="breadcrumb-item active">Data Bidang</li>
            </ol>
        </nav>
    </div><!-- End Page Title -->

    <section class="section dashboard">
        <div class="row">
            <div class="col-lg-8">
                <div class="card">
                    <div class="card-body p-3">
                        @if (session()->has('success'))
                            <div class="alert alert-success" role="alert">
                                {{ session('success') }}
                            </div>
                        @endif

                        <div class="py-3">
                            <button class="btn btn-success" data-bs-toggle="modal" data-bs-target="#addBidangModal">
                                <i class="bi bi-plus"> Tambah Bidang</i>
                            </button>
                        </div>

                        <div class="row p-3 ">
                            <table id="myTable" class="table table-striped ">
                                <thead>
                                    <tr>
                                        <th>id</th>
                                        <th>Bidang</th>
                                        <th>Nilai Normal</th>
                                        <th>Harga</th>
                                        <th>MCU</th>
                                        <th>Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($dataBidang as $index => $bidang)
                                        <tr>
                                            <td>{{ $index + 1 }}</td>
                                            <td>{{ $bidang->name }}</td>
                                            <td>{{ $bidang->nilai_normal }}</td>
                                            <td>{{ $bidang->harga }}</td>
                                            <td>{{ $bidang->mcu ? $bidang->mcu->nama_mcu : 'N/A' }}</td>

                                            <td>
                                                <button class="btn btn-warning" data-bs-toggle="modal"
                                                        data-bs-target="#editBidangModal{{ $bidang->id }}">
                                                    <i class="bi bi-pencil text-white"> Perbaharui Data</i>
                                                </button>

                                                <form action="{{ route('list-bidang.destroy', ['list_bidang' => $bidang->id]) }}" method="POST" style="display:inline-block;">
                                                    @csrf
                                                    @method('DELETE')
                                                    <button class="btn btn-danger" onclick="return confirm('Apakah Anda yakin ingin menghapus bidang ini?')">
                                                        <i class="bi bi-trash2"> Hapus Data</i>
                                                    </button>
                                                </form>
                                            </td>
                                        </tr>

                                        <!-- Edit Bidang Modal -->
                                        <div class="modal fade" id="editBidangModal{{ $bidang->id }}" tabindex="-1" aria-labelledby="editBidangLabel{{ $bidang->id }}" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="editBidangLabel{{ $bidang->id }}">Edit Bidang</h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                    </div>
                                                    <form action="{{ route('list-bidang.update', ['list_bidang' => $bidang->id]) }}" method="POST">
                                                        @csrf
                                                        @method('PUT')
                                                        <div class="modal-body">
                                                            <div class="mb-3">
                                                                <label for="name" class="form-label">Nama Bidang</label>
                                                                <input type="text" class="form-control" id="name" name="name" value="{{ $bidang->name }}" required>
                                                            </div>
                                                            <div class="mb-3">
                                                                <label for="id_mcu" class="form-label">MCU</label>
                                                                <select class="form-select" id="id_mcu" name="id_mcu" required>
                                                                    <option value="">Pilih MCU</option>
                                                                    @foreach ($dataMcu as $mcu)
                                                                        <option value="{{ $mcu->id }}" {{ $mcu->id == $bidang->id_mcu ? 'selected' : '' }}>
                                                                            {{ $mcu->nama_mcu }}
                                                                        </option>
                                                                    @endforeach
                                                                </select>
                                                            </div>
                                                            <div class="mb-3">
                                                                <label for="harga" class="form-label">Harga</label>
                                                                <input type="text" class="form-control" id="harga" name="harga" value="{{ $bidang->harga }}" >
                                                            </div>
                                                            <div class="mb-3">
                                                                <label for="nilai_normal" class="form-label">Nilai Normal</label>
                                                                <input type="text" class="form-control" id="nilai_normal" name="nilai_normal" value="{{ $bidang->nilai_normal }}" >
                                                            </div>
                                                            <div class="mb-3">
                                                                <label for="satuan" class="form-label">Satuan</label>
                                                                <input type="text" class="form-control" id="satuan" name="satuan" value="{{ $bidang->satuan }}" >
                                                            </div>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Batal</button>
                                                            <button type="submit" class="btn btn-primary">Simpan Perubahan</button>
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
        </div>
    </section>

    <!-- Add Bidang Modal -->
    <div class="modal fade" id="addBidangModal" tabindex="-1" aria-labelledby="addBidangLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="addBidangLabel">Tambah Bidang</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <form action="{{ route('store-bidang') }}" method="POST">
                    @csrf
                    <div class="modal-body">
                        <div class="mb-3">
                            <label for="name" class="form-label">Nama Bidang</label>
                            <input type="text" class="form-control" id="name" name="name" required>
                        </div>
                        <div class="mb-3">
                            <label for="id_mcu" class="form-label">MCU</label>
                            <select class="form-select" id="id_mcu" name="id_mcu" required>
                                <option value="">Pilih MCU</option>
                                @foreach ($dataMcu as $mcu)
                                    <option value="{{ $mcu->id }}">{{ $mcu->nama_mcu }}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="mb-3">
                            <label for="harga" class="form-label">Harga</label>
                            <input type="text" class="form-control" id="harga" name="harga"  >
                        </div>
                        <div class="mb-3">
                            <label for="nilai_normal" class="form-label">Nilai Normal</label>
                            <input type="text" class="form-control" id="nilai_normal" name="nilai_normal"  >
                        </div>
                        <div class="mb-3">
                            <label for="satuan" class="form-label">Satuan</label>
                            <input type="text" class="form-control" id="satuan" name="satuan"  >
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Batal</button>
                        <button type="submit" class="btn btn-primary">Simpan</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

@endsection
