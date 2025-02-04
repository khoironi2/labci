@extends('layouts.main')
@section('container')
    <div class="pagetitle">
        <h1>Data Pemeriksaan</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#">Super Admin</a></li>
                <li class="breadcrumb-item active">Data Pemeriksaan</li>
            </ol>
        </nav>
    </div><!-- End Page Title -->
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
    <section class="section dashboard">
        <div class="row">
            <!-- Left side columns -->
            <div class="col-lg-8">
                <div class="row">
                    <div class="card">
                        <div class="card-body p-3">
                            @if (session()->has('success'))
                                <div class="alert alert-success" role="alert">
                                    {{ session('success') }}
                                </div>
                            @endif

                            <!-- Button trigger modal -->
                            <div class="py-3">
                                <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#createModal">
                                    <i class="bi bi-plus"> Tambah Pemeriksaan</i>
                                </button>
                            </div>

                            <!-- Table -->
                            <div class="row p-3 y ">
                                <table id="myTable" class="table table-striped ">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>Bidang</th>
                                            <th>Parameter</th>
                                            <th>Pemeriksaan</th>
                                            <th>Nilai Normal</th>
                                            <th>Satuan</th>
                                            <th>Harga</th>
                                            <th>Aksi</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($dataMetode as $index => $data)
                                            <tr>
                                                <td>{{ $index + 1 }}</td>
                                                <td>{{ $data->bidang->name ?? 'N/A' }}</td>
                                                <td>
                                                    <button class="btn btn-sm btn-success" data-bs-toggle="modal" data-bs-target="#parameter{{ $data->id }}">
                                                        <i class="bi bi-database-fill-check">Cek</i>
                                                    </button>
                                                </td>
                                                <td>{{ $data->name }}</td>
                                                <td>{{ $data->nilai_normal }}</td>
                                                <td>{{ $data->satuan }}</td>
                                                <td>{{ 'Rp ' . number_format($data->harga, 0, ',', '.') }}</td>
                                                <td>
                                                    <div class="d-flex">
                                                        <!-- Edit Button -->
                                                        <button class="btn btn-warning me-2" data-bs-toggle="modal"
                                                                data-bs-target="#editModal-{{ $data->id }}">
                                                            <i class="bi bi-pencil text-white">Perbarui</i>
                                                        </button>
                                                        <!-- Delete Button -->
                                                        <form action="{{ route('list-metode.destroy', $data->id) }}" method="POST">
                                                            @csrf
                                                            @method('DELETE')
                                                            <button class="btn btn-danger"
                                                                onclick="return confirm('Apakah Anda yakin ingin menghapus metode ini?')">
                                                                <i class="bi bi-trash2"> Hapus</i>
                                                            </button>
                                                        </form>
                                                    </div>
                                                </td>
                                            </tr>


                                            <!-- parameter Modal -->
                                            <div class="modal fade" id="parameter{{ $data->id }}" tabindex="-1" aria-labelledby="parameterModalLabel" aria-hidden="true">
                                                <div class="modal-dialog">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title" id="parameterModalLabel">List Parameter Pemeriksaan {{ $data->name }}</h5>
                                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                        </div>

                                                        <div class="modal-body">
                                                            @if($data->parameter && $data->parameter->isNotEmpty())
                                                            @foreach ($data->parameter as $index => $parameters)
                                                                <p style="background-color: {{ ($index % 2 == 0) ? '#d4edda' : 'transparent' }}; margin-bottom: 5px; padding: 3px 0;">
                                                                    {{ $index + 1 }}. {{ $parameters->parameter }}
                                                                </p>
                                                                @endforeach
                                                            @else
                                                                <p>No parameters available for this mesassthod.</p>
                                                            @endif
                                                        </div>


                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Tutup</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <!-- Edit Modal -->
                                            <div class="modal fade" id="editModal-{{ $data->id }}" tabindex="-1" aria-labelledby="editModalLabel" aria-hidden="true">
                                                <div class="modal-dialog">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title" id="editModalLabel">Edit Pemeriksaan</h5>
                                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                        </div>
                                                        <form action="{{ route('list-metode.update', $data->id) }}" method="POST">
                                                            @csrf
                                                            @method('PUT')
                                                            <div class="modal-body">
                                                                <div class="mb-3">
                                                                    <label for="name" class="form-label">Pemeriksaan</label>
                                                                    <input type="text" class="form-control" id="name" name="name" value="{{ $data->name }}" required>
                                                                </div>
                                                                <div class="mb-3">
                                                                    <label for="id_bidang" class="form-label">Bidang</label>
                                                                    <select class="form-select" id="id_bidang" name="id_bidang" required>
                                                                        @foreach ($dataBidang as $bidang)
                                                                            <option value="{{ $bidang->id }}" {{ $data->id_bidang == $bidang->id ? 'selected' : '' }}>
                                                                                {{ $bidang->name }} - {{ $bidang->mcu->nama_mcu ?? 'N/A' }}
                                                                            </option>
                                                                        @endforeach
                                                                    </select>
                                                                </div>

                                                                <div class="mb-3">
                                                                    <label for="harga" class="form-label">Harga</label>
                                                                    <input type="text" class="form-control" id="harga" name="harga" value="{{ $data->harga }}" >
                                                                </div>

                                                                <div class="mb-3">
                                                                    <label for="nilai_normal" class="form-label">Nilai Normal</label>
                                                                    <input type="text" class="form-control" id="nilai_normal" name="nilai_normal" value="{{ $data->nilai_normal }}" >
                                                                </div>

                                                                <div class="mb-3">
                                                                    <label for="satuan" class="form-label">Satuan</label>
                                                                    <input type="text" class="form-control" id="satuan" name="satuan" value="{{ $data->satuan }}" >
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

                            <!-- Create Modal -->
                            <div class="modal fade" id="createModal" tabindex="-1" aria-labelledby="createModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="createModalLabel">Tambah Pemeriksaan</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                        </div>
                                        <form action="{{ route('store-metode') }}" method="POST">
                                            @csrf
                                            <div class="modal-body">
                                                <div class="mb-3">
                                                    <label for="name" class="form-label">Pemeriksaan</label>
                                                    <input type="text" class="form-control" id="name" name="name" required>
                                                </div>
                                                <label for="id_bidang" class="form-label">Bidang</label>
                                                <div class="mb-3">
                                                    <select class="form-select" id="mySelect2" name="id_bidang" required>
                                                        @foreach ($dataBidang as $bidang)
                                                            <option value="{{ $bidang->id }}">{{ $bidang->name }} - {{ $bidang->mcu->nama_mcu ?? 'N/A' }}</option>
                                                        @endforeach
                                                    </select>
                                                </div>
                                                <div class="mb-3">
                                                    <label for="harga" class="form-label">Harga</label>
                                                    <input type="text" class="form-control" id="harga" name="harga" >
                                                </div>

                                                <div class="mb-3">
                                                    <label for="nilai_normal" class="form-label">Nilai Normal</label>
                                                    <input type="text" class="form-control" id="nilai_normal" name="nilai_normal" >
                                                </div>

                                                <div class="mb-3">
                                                    <label for="satuan" class="form-label">Satuan</label>
                                                    <input type="text" class="form-control" id="satuan" name="satuan" >
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
                            <!-- End Modals -->

                        </div>
                    </div>
                </div>
            </div><!-- End Left side columns -->
        </div>


        <script>
            $('#mySelect2').select2({
             dropdownParent: $('#createModal')
           });

         </script>
    </section>
@endsection
