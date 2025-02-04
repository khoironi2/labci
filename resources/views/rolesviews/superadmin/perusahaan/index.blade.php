@extends('layouts.main')
@section('container')
    <div class="pagetitle">
        <h1>Data Perusahaan</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.html">Super Admin</a></li>
                <li class="breadcrumb-item active">Data Perusahaan</li>
            </ol>
        </nav>
    </div><!-- End Page Title -->

    <section class="section dashboard">
        <div class="row">

            <!-- Left side columns -->
            <div class="col-lg-12">
                <div class="row">
                    <div class="card">
                        <div class="card-body p-3">

                            @if (session()->has('success'))
                                <div class="alert alert-success" role="alert">
                                    {{ session('success') }}
                                </div>
                            @endif

                            <div class="row">
                                <div class="col py-3">
                                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                        Tambah Perusahaan
                                      </button>
                                </div>

                                <div class="col">
                                    <form class="py-3" action="{{ route('list-perusahaan') }}" method="GET">
                                        <div class="row justify-content-end">
                                            <div class="col-md-3">
                                                <input type="text" name="search" class="form-control" placeholder="Cari Perusahaan" required />
                                            </div>
                                            <div class="col-md-3">
                                                <button class="btn btn-primary" type="submit">Search</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>

                            <!-- Card -->
                            <div class="row p-3">

                                <table id="myTable" class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>Perusahaan</th>
                                            <th>Jabatan</th>
                                            <th>Alamat</th>
                                            <th>Kota</th>
                                            <th>No HP</th>
                                            <th>Email</th>
                                            <th>Marketing</th>
                                            <th>Aksi</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($perusahaan as $index => $per)
                                        <tr>
                                            <td>{{ $index + 1 }}</td>
                                            <td>{{ $per->nama_perusahaan }}</td>
                                            <td>{{ $per->jabatan }}</td>
                                            <td>{{ $per->alamat }}</td>
                                            <td>{{ $per->kota }}</td>
                                            <td>{{ $per->no_hp }}</td>
                                            <td>{{ $per->email }}</td>
                                            <td>{{ $per->marketingUser->nama_lengkap ?? 'N/A' }}</td>
                                            <td>
                                                <div class="container">
                                                    <div class="row">
                                                        <div class="col px-1 py-2">
                                                            <!-- Tombol Edit dengan data-bs-target yang unik -->
                                                            <a href="#" data-bs-toggle="modal" data-bs-target="#editModal{{ $per->id }}" class="btn btn-warning">
                                                                <i class="bi bi-pencil text-white"></i>
                                                            </a>
                                                        </div>
                                                        <div class="col px-1 py-2">
                                                            <form action="{{ route('list-perusahaan.destroy', $per->id) }}" method="POST">
                                                                @csrf
                                                                @method('DELETE')
                                                                <button class="btn btn-danger"
                                                                    onclick="return confirm('Apakah Anda yakin ingin menghapus Perusahaan ini?')">
                                                                    <i class="bi bi-trash3"></i>
                                                                </button>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>

                                        <!-- Modal Edit dengan ID unik -->
                                        <div class="modal fade" id="editModal{{ $per->id }}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <form action="{{ route('list-perusahaan.update', $per->id) }}" method="POST">
                                                            @csrf
                                                            @method('PUT')
                                                            <!-- Input fields here -->
                                                            <div class="modal-body">
                                                                <div class="mb-3">
                                                                    <label for="nama_perusahaan" class="form-label">Nama Perusahaan</label>
                                                                    <input type="text" class="form-control" id="nama_perusahaan" name="nama_perusahaan" value="{{ $per->nama_perusahaan }}" required>
                                                                </div>
                                                                <div class="mb-3">
                                                                    <label for="contact_person" class="form-label">Contact Person</label>
                                                                    <input type="text" class="form-control" id="contact_person" name="contact_person" value="{{ $per->contact_person }}" required>
                                                                </div>
                                                                <div class="mb-3">
                                                                    <label for="jabatan" class="form-label">Jabatan</label>
                                                                    <input type="text" class="form-control" id="jabatan" name="jabatan" value="{{ $per->jabatan }}" required>
                                                                </div>
                                                                <div class="mb-3">
                                                                    <label for="alamat" class="form-label">Alamat</label>
                                                                    <input type="text" class="form-control" id="alamat" name="alamat" value="{{ $per->alamat }}" required>
                                                                </div>
                                                                <div class="mb-3">
                                                                    <label for="kota" class="form-label">Kota</label>
                                                                    <input type="text" class="form-control" id="kota" name="kota" value="{{ $per->kota }}" required>
                                                                </div>
                                                                <div class="mb-3">
                                                                    <label for="no_hp" class="form-label">No HP</label>
                                                                    <input type="text" class="form-control" id="no_hp" name="no_hp" value="{{ $per->no_hp }}" required>
                                                                </div>
                                                                <div class="mb-3">
                                                                    <label for="email" class="form-label">Email </label>
                                                                    <input type="email" class="form-control" id="email" name="email" value="{{ $per->email }}">
                                                                </div>
                                                                <div class="mb-3">
                                                                    <label for="marketing" class="form-label">Marketing</label>
                                                                    <select class="form-select" id="marketing" name="marketing" required style="color: black">
                                                                        <option  disabled>Pilih Marketing</option>
                                                                        <option selected value="{{ $per->marketing }}">{{ $per->marketingUser->nama_lengkap }}</option>
                                                                        @foreach ($users as $user)
                                                                            <option style="color: black" value="{{ $user->id }}">{{ $user->nama_lengkap }}</option>
                                                                        @endforeach
                                                                    </select>
                                                                </div>
                                                                <!-- Tambahkan input lainnya sesuai kebutuhan -->
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Batal</button>
                                                                <button type="submit" class="btn btn-primary">Simpan</button>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    @endforeach

                                    </tbody>
                                </table>

                                <!-- Pagination -->
                                {{-- {!! $perusahaan->links() !!} --}}
                            </div>
                            <!-- End card -->
                        </div>
                    </div>
                </div>
            </div><!-- End Left side columns -->

            <!-- Button trigger modal -->


  <!-- Modal -->
  <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          {{-- <h1 class="modal-title fs-5" id="exampleModalLabel">Modal title</h1> --}}
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
            <form action="{{ route('store-perusahaan') }}" method="POST">
                @csrf
                <div class="modal-body">
                    <div class="mb-3">
                        <label for="nama_perusahaan" class="form-label">Nama Perusahaan</label>
                        <input type="text" class="form-control" id="nama_perusahaan" name="nama_perusahaan" required>
                    </div>
                    <div class="mb-3">
                        <label for="contact_person" class="form-label">Contact Person</label>
                        <input type="text" class="form-control" id="contact_person" name="contact_person" required>
                    </div>
                    <div class="mb-3">
                        <label for="jabatan" class="form-label">Jabatan</label>
                        <input type="text" class="form-control" id="jabatan" name="jabatan" required>
                    </div>
                    <div class="mb-3">
                        <label for="alamat" class="form-label">Alamat</label>
                        <input type="text" class="form-control" id="alamat" name="alamat" required>
                    </div>
                    <div class="mb-3">
                        <label for="kota" class="form-label">Kota</label>
                        <input type="text" class="form-control" id="kota" name="kota" required>
                    </div>
                    <div class="mb-3">
                        <label for="no_hp" class="form-label">No HP</label>
                        <input type="text" class="form-control" id="no_hp" name="no_hp" required>
                    </div>
                    <div class="mb-3">
                        <label for="email" class="form-label">Email <span style="color: red">*Digunakan untuk login</span></label>
                        <input type="email" class="form-control" id="email" name="email" >
                    </div>
                    <div class="mb-3">
                        <label for="email" class="form-label">Password <span style="color: red">*Default</span></label>
                        <input type="text" readonly class="form-control" value="stakeholdercilab" >
                    </div>
                    {{-- <div class="mb-3">
                        <label for="marketing" class="form-label">Marketing</label>
                        <select class="form-select" id="marketing" name="marketing" required>
                            <option selected disabled>Pilih Marketing</option>
                            @foreach ($users as $user)
                                <option value="{{ $user->id }}">{{ $user->nama_lengkap }}</option>
                            @endforeach
                        </select>
                    </div> --}}
                </div>


        </div>
        <div class="modal-footer">
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Batal</button>
                <button type="submit" class="btn btn-primary">Simpan</button>
            </div>
        </form>
        </div>
      </div>
    </div>
  </div>





        </div>
    </section>
@endsection
