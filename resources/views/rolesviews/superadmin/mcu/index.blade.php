@extends('layouts.main')

@section('container')
    <div class="pagetitle">
        <h1>Data MCU</h1>
    </div>

    <section class="section dashboard">
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body p-3">
                        @if (session()->has('success'))
                            <div class="alert alert-success">{{ session('success') }}</div>
                        @endif

                        <button type="button" class="btn btn-primary mb-3" data-bs-toggle="modal" data-bs-target="#addModal">
                            Tambah Data MCU
                        </button>

                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Nama MCU</th>
                                    <th>Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($mcuData as $index => $mcu)
                                    <tr>
                                        <td>{{ $index + 1 }}</td>
                                        <td>{{ $mcu->nama_mcu }}</td>
                                        <td>
                                            <button class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#editModal{{ $mcu->id }}">Edit</button>
                                            <form action="{{ route('list-mcu.destroy', $mcu->id) }}" method="POST" style="display: inline-block;">
                                                @csrf
                                                @method('DELETE')
                                                <button class="btn btn-danger" onclick="return confirm('Hapus data ini?')">Hapus</button>
                                            </form>
                                        </td>
                                    </tr>

                                    <!-- Edit Modal -->
                                    <div class="modal fade" id="editModal{{ $mcu->id }}" tabindex="-1">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title">Edit MCU</h5>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                                </div>
                                                <form action="{{ route('list-mcu.update', $mcu->id) }}" method="POST">
                                                    @csrf
                                                    @method('PUT')
                                                    <div class="modal-body">
                                                        <div class="mb-3">
                                                            <label for="nama_mcu" class="form-label">Nama MCU</label>
                                                            <input type="text" class="form-control" name="nama_mcu" value="{{ $mcu->nama_mcu }}" required>
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
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

        <!-- Add Modal -->
        <div class="modal fade" id="addModal" tabindex="-1">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Tambah Data MCU</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                    </div>
                    <form action="{{ route('store-mcu') }}" method="POST">
                        @csrf
                        <div class="modal-body">
                            <div class="mb-3">
                                <label for="nama_mcu" class="form-label">Nama MCU</label>
                                <input type="text" class="form-control" name="nama_mcu" required>
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
    </section>
@endsection
