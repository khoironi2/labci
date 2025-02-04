<div>
    <div class="row">



        <div class="col-md-3 pb-5">
            <div>
                <label for="metode" class="form-label">Pilih Paket</label>
                <select id="metode" class="form-select" wire:model="metodeId">
                    <option value="" disabled selected>Pilih Paket</option> <!-- Opsi Default -->
                </select>
            </div>
        </div>


        <div class="col-md-3 pt-4">
            <div>
                <a wire:click="add({{ $i }})" id="buttonAddPemeriksaan" class="btn btn-success p-2">+ Tambah Pemeriksaan</a>
            </div>
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
                <th>id</th>
                {{-- <th>Bidang</th> --}}
                <th>Metode</th>
                <th>Parameter</th>

                <th>Harga</th>
                <th>Aksi</th>
            </tr>
        </thead>
        <tbody>
            @foreach($input as $key => $value)
            <tr>
                <td>{{ $key+1 }}</td>
                {{-- <td>{{ $value['bidang'] }}</td> --}}
                <td>{{ $value['metode'] }}</td>
                <td>{{ $value['parameter'] }}</td>
                <td>{{ $value['harga'] }}</td>
                <td>

                    <button wire:click="remove({{ $key }})" class="btn btn-danger" onclick="return confirm('Apakah Anda yakin ingin menghapus pemeriksaan ini?')">
                        <i class="bi bi-trash3"></i>
                    </button>
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>

</div>

<script>

// document.addEventListener('livewire:load', function () {
//     function initSelect2(selector, model) {
//         $(selector).select2();

//         $(selector).on('change', function (e) {
//             let data = $(this).val();
//             Livewire.emit('updateSelect', model, data);
//         });
//     }



//     // Inisialisasi Select2 untuk metode dan parameter
//     initSelect2('#metode', 'metodeId');
//     initSelect2('#parameter', 'parameterId');

//     // Pastikan Select2 terinisialisasi ulang setelah Livewire render
//     Livewire.hook('message.processed', (message, component) => {
//         initSelect2('#metode', 'metodeId');
//         initSelect2('#parameter', 'parameterId');
//     });
// });

// document.addEventListener('livewire:load', function () {
//     function initSelect2(selector, model) {
//         $(selector).select2({
//             placeholder: 'Pilih Paket',
//             allowClear: true
//         });

//         $(selector).on('change', function (e) {
//             let data = $(this).val();
//             Livewire.emit('updateSelect', model, data);
//         });
//     }

//     initSelect2('#metode', 'metodeId');

//     Livewire.hook('message.processed', (message, component) => {
//         initSelect2('#metode', 'metodeId');
//     });
// });

</script>
