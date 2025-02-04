@extends('layouts.main')

@section('container')
    <div class="pagetitle">
        <h1>Data Dokter</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#">Super Admin</a></li>
                <li class="breadcrumb-item active">Data Dokter</li>
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

                        <button type="button" class="btn btn-primary my-3" data-bs-toggle="modal" data-bs-target="#addModal">
                            Tambah Dokter
                        </button>

                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Nama</th>
                                    <th>Jenis Kelamin</th>
                                    <th>Kategori</th>
                                    <th>No HP</th>
                                    <th>Marketing</th>
                                    <th>Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($dokters as $index => $dokter)
                                    <tr>
                                        <td>{{ $index + 1 }}</td>
                                        <td>{{ $dokter->gelardepan . ' ' . $dokter->nama_lengkap . ' ' . $dokter->gelarbelakang }}</td>
                                        <td>{{ $dokter->jenis_kelamin }}</td>
                                        <td>{{ $dokter->kategori }}</td>
                                        <td>{{ $dokter->no_hp }}</td>
                                        <td>{{ $dokter->marketingUser->nama_lengkap ?? 'N/A' }}</td>
                                        <td>
                                            <button class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#editModal{{ $dokter->id }}">Edit</button>
                                            <form action="{{ route('dokter.destroy', $dokter->id) }}" method="POST" style="display:inline-block;">
                                                @csrf
                                                @method('DELETE')
                                                <button class="btn btn-danger" onclick="return confirm('Yakin ingin menghapus?')">Hapus</button>
                                            </form>
                                        </td>
                                    </tr>

                                    <!-- Edit Modal -->
                                    <div class="modal fade" id="editModal{{ $dokter->id }}" tabindex="-1">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title">Edit Data Dokter</h5>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                                </div>
                                                <form action="{{ route('dokter.update', $dokter->id) }}" method="POST" enctype="multipart/form-data">
                                                    @csrf
                                                    @method('PUT')
                                                    <div class="modal-body">
                                                        <div class="mb-3">
                                                            <label for="gelardepan" class="form-label">Gelar Depan</label>
                                                            <input type="text" id="gelardepan" name="gelardepan" value="{{ $dokter->gelardepan }}" class="form-control" placeholder="Gelar Depan" required>
                                                        </div>

                                                        <div class="mb-3">
                                                            <label for="nama_lengkap" class="form-label">Nama Lengkap</label>
                                                            <input type="text" id="nama_lengkap" name="nama_lengkap" value="{{ $dokter->nama_lengkap }}" class="form-control" placeholder="Nama Lengkap" required>
                                                        </div>

                                                        <div class="mb-3">
                                                            <label for="gelarbelakang" class="form-label">Gelar Belakang</label>
                                                            <input type="text" id="gelarbelakang" name="gelarbelakang" value="{{ $dokter->gelarbelakang }}" class="form-control" placeholder="Gelar Belakang">
                                                        </div>

                                                        <div class="mb-3">
                                                            <label for="kategori" class="form-label">Kategori</label>
                                                            <select id="kategori" name="kategori" class="form-control" required>
                                                                <option value="Dokter" {{ $dokter->kategori == 'Dokter' ? 'selected' : '' }}>Dokter</option>
                                                                <option value="Rekanan" {{ $dokter->kategori == 'Rekanan' ? 'selected' : '' }}>Rekanan</option>
                                                            </select>
                                                        </div>

                                                        <div class="mb-3">
                                                            <label for="tanggal_lahir" class="form-label">Tanggal Lahir</label>
                                                            <input type="date" id="tanggal_lahir" name="tanggal_lahir" value="{{ $dokter->tanggal_lahir }}" class="form-control" required>
                                                        </div>

                                                        <div class="mb-3">
                                                            <label for="jenis_kelamin" class="form-label">Jenis Kelamin</label>
                                                            <select id="jenis_kelamin" name="jenis_kelamin" class="form-control" required>
                                                                <option value="Laki-Laki" {{ $dokter->jenis_kelamin == 'Laki-Laki' ? 'selected' : '' }}>Laki-Laki</option>
                                                                <option value="Perempuan" {{ $dokter->jenis_kelamin == 'Perempuan' ? 'selected' : '' }}>Perempuan</option>
                                                            </select>
                                                        </div>

                                                        <div class="mb-3">
                                                            <label for="alamat" class="form-label">Alamat</label>
                                                            <input type="text" id="alamat" name="alamat" value="{{ $dokter->alamat }}" class="form-control" placeholder="Alamat" required>
                                                        </div>

                                                        <div class="mb-3">
                                                            <label for="kota" class="form-label">Kota</label>
                                                            <input type="text" id="kota" name="kota" value="{{ $dokter->kota }}" class="form-control" placeholder="Kota" required>
                                                        </div>

                                                        <div class="mb-3">
                                                            <label for="no_hp" class="form-label">No HP</label>
                                                            <input type="text" id="no_hp" name="no_hp" value="{{ $dokter->no_hp }}" class="form-control" placeholder="No HP" required>
                                                        </div>

                                                        <div class="mb-3">
                                                            <label for="reward" class="form-label">Reward</label>
                                                            <input type="text" id="reward" name="reward" value="{{ $dokter->reward }}" class="form-control" placeholder="Reward">
                                                        </div>

                                                        {{-- <div class="mb-3">
                                                            <label for="marketing" class="form-label">Marketing ID</label>
                                                            <select class="form-select" id="marketing" name="marketing" required>
                                                                <option selected value="{{ $dokter->marketing }}">{{ $dokter->marketingUser->nama_lengkap }}</option>
                                                                <option  disabled>Pilih Marketing</option>
                                                                @foreach ($users as $user)
                                                                    <option value="{{ $user->id }}">{{ $user->nama_lengkap }}</option>
                                                                @endforeach
                                                            </select>
                                                        </div> --}}

                                                        <div class="mb-3">
                                                            <label for="bank" class="form-label">Bank</label>
                                                            <select id="bank" name="bank" class="form-control" required>
                                                                <option selected value="{{ $dokter->bank }}">{{ $dokter->bank }}</option>
                                                                <option value="" disabled >Pilih Bank</option>
                                                                <option value="Mandiri">Mandiri</option>
                                                                <option value="BRI">BRI</option>
                                                            </select>
                                                        </div>

                                                        <div class="mb-3">
                                                            <label for="no_rek" class="form-label">No Rekening</label>
                                                            <input type="text" id="no_rek" name="no_rek" value="{{ $dokter->no_rek }}" class="form-control" placeholder="No Rekening" required>
                                                        </div>
                                                        <div class="mb-3">
                                                            <label for="ttd_dokter" class="form-label">Tanda Tangan</label>
                                                            <input type="file" id="ttd_dokter" name="ttd_dokter" class="form-control" placeholder="No Rekening">
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

                        <!-- Add Modal -->
                        <div class="modal fade" id="addModal" tabindex="-1">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title">Tambah Data Dokter</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                    </div>
                                    <form action="{{ route('store-dokter') }}" method="POST">
                                        @csrf
                                        <div class="modal-body">
                                            <div class="mb-3">
                                                <label for="gelardepan" class="form-label">Gelar Depan</label>
                                                <input type="text" id="gelardepan" name="gelardepan" class="form-control" placeholder="Gelar Depan" required>
                                            </div>

                                            <div class="mb-3">
                                                <label for="nama_lengkap" class="form-label">Nama Lengkap</label>
                                                <input type="text" id="nama_lengkap" name="nama_lengkap" class="form-control" placeholder="Nama Lengkap" required>
                                            </div>

                                            <div class="mb-3">
                                                <label for="gelarbelakang" class="form-label">Gelar Belakang</label>
                                                <input type="text" id="gelarbelakang" name="gelarbelakang" class="form-control" placeholder="Gelar Belakang">
                                            </div>

                                            <div class="mb-3">
                                                <label for="kategori" class="form-label">Kategori</label>
                                                <select id="kategori" name="kategori" class="form-control" required>
                                                    <option value="" disabled selected>Pilih Kategori</option>
                                                    <option value="Dokter">Dokter</option>
                                                    <option value="Rekanan">Rekanan</option>
                                                </select>
                                            </div>

                                            <div class="mb-3">
                                                <label for="tanggal_lahir" class="form-label">Tanggal Lahir</label>
                                                <input type="date" id="tanggal_lahir" name="tanggal_lahir" class="form-control" required>
                                            </div>

                                            <div class="mb-3">
                                                <label for="jenis_kelamin" class="form-label">Jenis Kelamin</label>
                                                <select id="jenis_kelamin" name="jenis_kelamin" class="form-control" required>
                                                    <option value="" disabled selected>Pilih Jenis Kelamin</option>
                                                    <option value="Laki-Laki">Laki-Laki</option>
                                                    <option value="Perempuan">Perempuan</option>
                                                </select>
                                            </div>

                                            <div class="mb-3">
                                                <label for="alamat" class="form-label">Alamat</label>
                                                <input type="text" id="alamat" name="alamat" class="form-control" placeholder="Alamat" required>
                                            </div>

                                            <div class="mb-3">
                                                <label for="kota" class="form-label">Kota</label>
                                                <input type="text" id="kota" name="kota" class="form-control" placeholder="Kota" required>
                                            </div>

                                            <div class="mb-3">
                                                <label for="no_hp" class="form-label">No HP</label>
                                                <input type="text" id="no_hp" name="no_hp" class="form-control" placeholder="No HP" required>
                                            </div>

                                            <div class="mb-3">
                                                <label for="reward" class="form-label">Reward</label>
                                                <input type="text" id="reward" name="reward" class="form-control" placeholder="Reward">
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

                                            <div class="mb-3">
                                                <label for="bank" class="form-label">Bank</label>
                                                <select id="bank" name="bank" class="form-control" required>
                                                    <option value="" disabled selected>Pilih Bank</option>
                                                    <option value="Mandiri">Mandiri</option>
                                                    <option value="BRI">BRI</option>
                                                </select>
                                            </div>

                                            <div class="mb-3">
                                                <label for="no_rek" class="form-label">No Rekening</label>
                                                <input type="text" id="no_rek" name="no_rek" class="form-control" placeholder="No Rekening" required>
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

                        {{-- {{ $dokters->links() }} --}}
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
