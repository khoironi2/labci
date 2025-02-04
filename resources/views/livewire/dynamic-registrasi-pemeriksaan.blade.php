<div>
    <div class="row">
        <div class="col-md-3 pb-5">
            <div>
                <label for="mcu" class="form-label">Pilih MCU</label>
                <select id="mcu" class="form-select" wire:model="mcuId">
                    <option disabled selected>Pilih MCU</option>
                    @foreach ($datamcu as $data)
                        <option value="{{ $data->id }}">{{ $data->nama_mcu }}</option>
                    @endforeach
                </select>
            </div>
        </div>
        <div class="col-md-3 pb-5">
            <div>
                <label for="bidang" class="form-label">Pilih Bidang</label>
                <select id="bidang" class="form-select" wire:model="bidangId">
                    <option disabled selected>Pilih Bidang</option>
                    @foreach ($databidang as $data)
                        <option value="{{ $data->id }}">{{ $data->name }}</option>
                    @endforeach
                </select>
            </div>
        </div>

        <div class="col-md-3 pb-5">
            <div>
                <label for="metode" class="form-label">Pilih Metode</label>
                <select id="metode" class="form-select metode" wire:model="metodeId">
                    <option disabled selected>Pilih Metode</option>
                    @foreach ($datametode as $data)
                        <option value="{{ $data->id }}">{{ $data->name }}</option>
                    @endforeach
                </select>
            </div>
        </div>

        <div class="col-md-3">
            <div>
                <label for="parameter" class="form-label">Pilih Parameter</label>
                <select id="parameter" class="form-select parameter" wire:model="parameterId">
                    <option disabled selected>Pilih Parameter</option>

                    @foreach ($dataparameter as $data)
                        <option value="{{ $data->id }}">{{ $data->parameter }}</option>
                    @endforeach
                </select>
            </div>
        </div>

        <div class="col-md-12 my-2">
            <div class="d-flex justify-content-between">
                <button wire:click="removeSelected" class="btn btn-danger" {{ empty($selectedRows) ? 'disabled' : '' }}>
                    Hapus yang Dipilih
                </button>

                <a wire:click="add({{ $i }})" id="buttonAddPemeriksaan" class="btn btn-success p-2">+ Tambah Pemeriksaan</a>
            </div>
        </div>

        <div class="d-flex justify-content-end">
            <h5>Total Harga: Rp. {{ number_format(session('total_harga_pemeriksaan', 0), 0, ',', '.') }}</h5>
            </div>
    </div>

    @if (session()->has('errorForm'))
        <div class="alert alert-danger p-2" role="alert">
            {{ session('errorForm') }}
        </div>
    @endif

    <table id="myTable" class="table table-striped border-primary table-hover table-bordered">
        <thead>
            <tr>
                <th>
                    <input type="checkbox" wire:model="selectAll" />
                </th>
                <th>id</th>
                <th>MCU</th>
                <th>Bidang</th>
                <th>Metode</th>
                <th>Parameter</th>
                <th>Harga</th>
                <th>Aksi</th>
            </tr>
        </thead>
        <tbody>
            @foreach($input as $key => $value)
                <tr>
                    <td>
                        <input type="checkbox" wire:model="selectedRows" value="{{ $key }}" />
                    </td>
                    <td>{{ $key+1 }}</td>
                    <td>{{ $value['mcu'] ?? '-' }}</td>
                    <td>{{ $value['bidang'] ?? '-' }}</td>
                    <td>{{ $value['metode'] ?? '-' }}</td>
                    <td>{{ $value['parameter'] ?? '-' }}</td>
                    <td>{{ $value['harga'] ?? 0 }}</td>
                    <td>
                        <button wire:click="removeSingle({{ $key }})" class="btn btn-danger">
                            <i class="bi bi-trash3"></i>
                        </button>
                        {{-- <button wire:click="remove({{ $key }})" class="btn btn-danger">
                            <i class="bi bi-trash3"></i>
                        </button> --}}
                    </td>
                </tr>
            @endforeach
        </tbody>

    </table>

</div>

