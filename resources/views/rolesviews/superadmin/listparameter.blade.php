@extends('layouts.main')
@section('container')
<div class="pagetitle">
    <h1>Data Parameter Pemeriksaan</h1>
    <nav>
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="index.html">Super Admin</a></li>
            <li class="breadcrumb-item active">Data Parameter Pemeriksaan</li>
        </ol>
    </nav>
</div>
<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
<section class="section dashboard">
    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body p-3">
                    @if (session()->has('success'))
                        <div class="alert alert-success" role="alert">
                            {{ session('success') }}
                        </div>
                    @endif

                    <div class="py-3">
                        <button class="btn btn-success" data-bs-toggle="modal" data-bs-target="#myModal">
                            <i class="bi bi-plus"> Tambah Parameter</i>
                        </button>
                    </div>

                    <!-- Table -->
                    <div class="row p-3 border border-primary">
                        <table id="myTable" class="table table-striped border-primary table-hover table-bordered">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Metode</th>
                                    <th>Parameter</th>
                                    <th>Nilai Normal</th>
                                    <th>Satuan</th>
                                    <th>Harga</th>
                                    {{-- <th>Harga</th> --}}
                                    <th>Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($dataParameter as $index => $data)
                                    <tr>
                                        <td>{{ $index + 1 }}</td>
                                        <td>
                                            {{-- {{ $metode->bidang->mcu->nama_mcu ?? 'N/A' }} -
                                            {{ $metode->bidang->name ?? 'N/A' }} - --}}
                                            {{ $data->metode->name ?? 'N/A' }}
                                        </td>
                                        <td>{{ $data->parameter }}</td>
                                        <td>{{ $data->nilai_rujukan }}</td>
                                        <td>{{ $data->satuan }}</td>
                                        <td>{{ 'Rp ' . number_format($data->harga, 0, ',', '.') }}</td>
                                        <td>
                                            <button class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#myModal{{ $data->id }}">
                                                <i class="bi bi-pencil text-white"></i>
                                            </button>

                                            <form action="{{ route('list-parameter.destroy', ['list_parameter' => $data->id]) }}" method="POST" class="d-inline">
                                                @csrf
                                                @method('DELETE')
                                                <button class="btn btn-danger" onclick="return confirm('Apakah Anda yakin ingin menghapus bidang ini?')">
                                                    <i class="bi bi-trash3"></i>
                                                </button>
                                            </form>
                                        </td>
                                    </tr>

                                    <!-- Edit Parameter Modal -->


                                    <div class="modal fade" id="myModal{{ $data->id }}" tabindex="-1" aria-labelledby="editParameterModalLabel" aria-hidden="true">
                                        <div class="modal-dialog modal-md">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="editParameterModalLabel">Edit Parameter</h5>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                </div>
                                                <form action="{{ route('list-parameter.update', ['list_parameter' => $data->id]) }}" method="POST">
                                                    @csrf
                                                    @method('PUT')
                                                    <div class="modal-body">
                                                        <!-- Fields for editing parameter -->
                                                        <div class="mb-3">
                                                            <label for="metode_id" class="form-label">Pemeriksaan</label>
                                                            <select class="form-select" id="metode_id" name="metode_id" required>
                                                                <option value="{{ $data->metode_id }}" selected >{{ $data->metode->name }}</option>
                                                                <option value="" disabled >Pilih Pemeriksaan</option>
                                                                @foreach($dataMetode as $metode)
                                                                    <option value="{{ $metode->id }}">{{ $metode->name }}</option>
                                                                @endforeach
                                                            </select>
                                                        </div>
                                                        <div class="mb-3">
                                                            <label for="parameter" class="form-label">Parameter</label>
                                                            <input type="text" class="form-control" id="parameter" name="parameter" value="{{ $data->parameter }}" required>
                                                        </div>
                                                        <div class="mb-3">
                                                            <label for="nilai_rujukan" class="form-label">Nilai Normal</label>
                                                            <input type="text" class="form-control" id="nilai_rujukan" name="nilai_rujukan" value="{{ $data->nilai_rujukan }}" required>
                                                        </div>
                                                        <div class="mb-3">
                                                            <label for="satuan" class="form-label">Satuan</label>
                                                            <input type="text" class="form-control" id="satuan" name="satuan" value="{{ $data->satuan }}" >
                                                        </div>
                                                        <div class="mb-3">
                                                            <label for="harga" class="form-label">Harga</label>
                                                            <input type="number" class="form-control" id="harga" name="harga" value="{{ $data->harga }}" >
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
                    <style>
                        .select2-container {
                            width: 100% !important;
                        }
                    </style>

                    <!-- Add Parameter Modal -->

                    <div class="modal fade" id="myModal" tabindex="-1" aria-labelledby="addParameterModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-md">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="addParameterModalLabel">Tambah Parameter Baru</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <form action="{{ route('list-parameter.store') }}" method="POST">
                                    @csrf
                                    <div class="modal-body">
                                        <!-- Fields for adding parameter -->

                                        <div class="mb-3">
                                            <label for="metode_id" class="form-label">Pemeriksaan</label>
                                            <select class="form-select " id="mySelect2" name="metode_id" required>
                                                <option value="" disabled selected>Pilih Pemeriksaan</option>
                                                @foreach($dataMetode as $metode)
                                                    <option value="{{ $metode->id }}">
                                                        {{ $metode->bidang->mcu->nama_mcu ?? 'N/A' }} -
                                                        {{ $metode->bidang->name ?? 'N/A' }} -
                                                        {{ $metode->name }}</option>
                                                @endforeach
                                            </select>


                                        </div>
                                        <div class="mb-3">
                                            <label for="parameter" class="form-label">Parameter</label>
                                            <input type="text" class="form-control" id="parameter" name="parameter" required>
                                        </div>
                                        <div class="mb-3">
                                            <label for="nilai_rujukan" class="form-label">Nilai Normal</label>
                                            <input type="text" class="form-control" id="nilai_rujukan" name="nilai_rujukan" required>
                                        </div>
                                        <div class="mb-3">
                                            <label for="satuan" class="form-label">Satuan</label>
                                            <input type="text" class="form-control" id="satuan" name="satuan" >
                                        </div>
                                        <div class="mb-3">
                                            <label for="harga" class="form-label">Harga</label>
                                            <input type="text" class="form-control" id="harga" name="harga" >
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Batal</button>
                                        <button type="submit" class="btn btn-primary">Tambah Parameter</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>



                </div>
            </div>
        </div>
    </div>
<!-- Tambahkan CSS dan JavaScript Choices.js -->




<script>
   $('#mySelect2').select2({
    dropdownParent: $('#myModal')
  });

</script>

</section>
@endsection
