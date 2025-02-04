<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\Mcu;
use App\Models\BidangPemeriksaan;
use App\Models\MetodePemeriksaan;
use App\Models\ParameterPemeriksaan;
use Illuminate\Http\Request;

class DynamicRegistrasiPaketPemeriksaan extends Component
{
    public $input = [];
    public $keterangan = [];
    public $i = 0;
    public $mcuId;
    public $bidangId;
    public $metodeId;
    public $parameterId;
    public $selectedRows = [];
    public $selectAll = false;

    protected $listeners = ['updateSelect'];
    public $totalHarga = 0;

    public function updatedInput()
    {
        $this->totalHarga = collect($this->input)->sum('harga');
        // Simpan total harga ke session
    session()->put('total_harga_paket', $this->totalHarga);

    // Ambil kembali total harga dari session untuk memastikan tidak 0
    $this->totalHarga = session('total_harga_paket', 0);
    }
    
    
public function updatedSelectAll($value)
{
    if ($value) {
        $this->selectedRows = array_keys($this->input);
    } else {
        $this->selectedRows = [];
    }
}

public function removeSingle($key)
{
    // Hapus data dari input dan keterangan
    unset($this->input[$key]);
    unset($this->keterangan[$key]);

    // Reindex array untuk menghindari indeks kosong
    $this->input = array_values($this->input);
    $this->keterangan = array_values($this->keterangan);

    // Update sesi dengan data terbaru
    session()->put('requestKeterangan', $this->input);
    session()->put('keterangan', $this->keterangan);
    $this->updatedInput(); // Hitung ulang total harga
}


public function removeSelected()
{
    // Hapus data berdasarkan key yang dipilih
    foreach ($this->selectedRows as $key) {
        unset($this->input[$key]);
        unset($this->keterangan[$key]);
    }

    // Reindex array untuk menghindari indeks kosong
    $this->input = array_values($this->input);
    $this->keterangan = array_values($this->keterangan);

    // Reset properti terkait
    $this->selectedRows = [];
    $this->selectAll = false;

    // Update sesi dengan data terbaru
    session()->put('requestKeterangan', $this->input);
    session()->put('keterangan', $this->keterangan);
    $this->updatedInput(); // Hitung ulang total harga
}

    // Fungsi untuk menangani perubahan pada bidang, metode, dan parameter
    public function updateSelect($model, $value)
    {
        $this->$model = $value;

        // Reset nilai lainnya jika salah satu dipilih
        // if ($model === 'metodeId' && $value) {
        //     $this->parameterId = null; // Reset parameter
        // } elseif ($model === 'parameterId' && $value) {
        //     $this->metodeId = null; // Reset metode
        // }
        // Reset nilai lainnya berdasarkan seleksi
        if ($model === 'mcuId') {
            $this->resetSelection(['bidangId', 'metodeId', 'parameterId']);
        } elseif ($model === 'bidangId') {
            $this->resetSelection(['metodeId', 'parameterId']);
        } elseif ($model === 'metodeId') {
            $this->resetSelection(['parameterId']);
        }
    }

    // Mounting data dari session
    public function mount(Request $request)
    {
        if ($request->session()->has('requestKeterangan')) {
            $this->input = $request->session()->get('requestKeterangan');
        }

        if ($request->session()->has('keterangan')) {
            $this->keterangan = array_filter($request->session()->get('keterangan'));
        }
        $this->updatedInput(); // Hitung ulang total harga
    }



public function add($i)
{
    $this->i = $i++;

    // Validasi bahwa minimal salah satu harus dipilih
    if (!$this->mcuId && !$this->bidangId && !$this->metodeId && !$this->parameterId) {
        session()->flash('errorForm', 'Pemeriksaan gagal ditambahkan. Silakan pilih MCU, Bidang, Metode, Parameter, atau kombinasi dari keduanya.');
        return;
    }

    // Jika MCU dipilih
    if ($this->mcuId) {
        $bidangs = BidangPemeriksaan::where('id_mcu', $this->mcuId)->get();

        if ($bidangs->isNotEmpty()) {
            foreach ($bidangs as $bidang) {
                if ($this->bidangId && $bidang->id != $this->bidangId) {
                    continue; // Lanjutkan ke bidang berikutnya jika tidak cocok
                }

                $metodes = MetodePemeriksaan::where('id_bidang', $bidang->id)->get();

                if ($metodes->isNotEmpty()) {
                    foreach ($metodes as $metode) {
                        if ($this->metodeId && $metode->id != $this->metodeId) {
                            continue; // Lanjutkan ke metode berikutnya jika tidak cocok
                        }

                        $parameters = ParameterPemeriksaan::where('metode_id', $metode->id)->get();

                        if ($parameters->isNotEmpty()) {
                            foreach ($parameters as $parameter) {
                                if ($this->parameterId && $parameter->id != $this->parameterId) {
                                    continue; // Lanjutkan ke parameter berikutnya jika tidak cocok
                                }

                                // Tambahkan parameter terkait
                                array_push($this->input, [
                                    'mcu' => $bidang->mcu->nama_mcu ?? '-',
                                    'bidang' => $bidang->name ?? '-',
                                    'metode' => $metode->name ?? '-',
                                    'parameter' => $parameter->parameter,
                                    'harga' => $parameter->harga,
                                ]);

                                // Tambahkan keterangan
                                array_push($this->keterangan, [
                                    'mcu_id' => $this->mcuId,
                                    'bidang_id' => $bidang->id,
                                    'metode_id' => $metode->id,
                                    'parameter_id' => $parameter->id,
                                ]);
                            }
                        } else {
                            // Tambahkan metode tanpa parameter
                            array_push($this->input, [
                                'mcu' => $bidang->mcu->nama_mcu ?? '-',
                                'bidang' => $bidang->name ?? '-',
                                'metode' => $metode->name,
                                'parameter' => null,
                                'harga' => $metode->harga,
                            ]);

                            // Tambahkan keterangan
                            array_push($this->keterangan, [
                                'mcu_id' => $this->mcuId,
                                'bidang_id' => $bidang->id,
                                'metode_id' => $metode->id,
                                'parameter_id' => null,
                            ]);
                        }
                    }
                } else {
                    // Tambahkan bidang tanpa metode
                    array_push($this->input, [
                        'mcu' => $bidang->mcu->nama_mcu ?? '-',
                        'bidang' => $bidang->name,
                        'metode' => null,
                        'parameter' => null,
                        'harga' => $bidang->harga,
                    ]);

                    // Tambahkan keterangan
                    array_push($this->keterangan, [
                        'mcu_id' => $this->mcuId,
                        'bidang_id' => $bidang->id,
                        'metode_id' => null,
                        'parameter_id' => null,
                    ]);
                }
            }
        } else {
            // Jika tidak ada bidang terkait, tambahkan hanya MCU
            $mcu = Mcu::find($this->mcuId);
            array_push($this->input, [
                'mcu' => $mcu->nama_mcu ?? '-',
                'bidang' => null,
                'metode' => null,
                'parameter' => null,
                'harga' => null,
            ]);

            // Tambahkan keterangan
            array_push($this->keterangan, [
                'mcu_id' => $this->mcuId,
                'bidang_id' => null,
                'metode_id' => null,
                'parameter_id' => null,
            ]);
        }
    }

    // Simpan data ke session
    session()->put('requestKeterangan', $this->input);
    session()->put('keterangan', $this->keterangan);
    $this->updatedInput(); // Hitung ulang total harga
}




// Fungsi untuk mereset pilihan
private function resetSelection()
{
    $this->mcuId = null;
    $this->bidangId = null;
    $this->metodeId = null;
    $this->parameterId = null;
}




    // Fungsi untuk menghapus pemeriksaan
    public function remove($key)
    {
        unset($this->input[$key]);
        unset($this->keterangan[$key]);

        session()->put('requestKeterangan', $this->input);
        session()->put('keterangan', $this->keterangan);
    }


    public function getMetodeByBidang()
    {
        return $this->bidangId
            ? MetodePemeriksaan::where('id_bidang', $this->bidangId)->get()
            : [];
    }

    // Fungsi untuk memfilter parameter berdasarkan metode
    public function getParameterByMetode()
    {
        return $this->metodeId
            ? ParameterPemeriksaan::where('metode_id', $this->metodeId)->get()
            : [];
    }

    public function render()
    {
        // Ambil data bidang
        $datamcu = Mcu::all();
        // $databidang = BidangPemeriksaan::all();
        $databidang = $this->mcuId
        ? BidangPemeriksaan::where('id_mcu', $this->mcuId)->get()
        : [];


        $datametode = $this->getMetodeByBidang();
        $dataparameter = $this->getParameterByMetode();

        return view('livewire.dynamic-registrasi-paket-pemeriksaan', [
            'datamcu' => $datamcu,
            'databidang' => $databidang,
            'datametode' => $datametode,
            'dataparameter' => $dataparameter,
        ]);
    }


}
