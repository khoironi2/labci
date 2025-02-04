<?php
namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\BidangPemeriksaan;
use App\Models\MetodePemeriksaan;
use App\Models\ParameterPemeriksaan;
use App\Models\Paket;
use Illuminate\Http\Request;

class DynamicRegistrasiPerusahaan extends Component
{
    public $input = [];
    public $keterangan = [];
    public $datapaket = []; // Properti untuk menyimpan data paket terkait perusahaan
    public $perusahaanId;   // Properti untuk menyimpan ID perusahaan yang dipilih
    public $i = 0;
    public $metodeId;
    public $parameterId;

    // protected $listeners = ['updateSelect'];

    protected $listeners = ['updateSelect', 'updatePaketData'];

    public function updateSelect($model, $value)
    {
        $this->$model = $value;
        // Reset nilai lainnya jika salah satu dipilih
        if ($model === 'metodeId' && $value) {
            $this->parameterId = null; // Reset parameter
        } elseif ($model === 'parameterId' && $value) {
            $this->metodeId = null; // Reset metode
        }
    }

    public function updatePaketData($perusahaanId)
    {
        $this->perusahaanId = $perusahaanId;

        // Ambil data paket berdasarkan perusahaan yang dipilih
        $this->datapaket = Paket::where('perusahaan_id', $perusahaanId)->get()->toArray();
    }



    public function mount(Request $request)
    {
        if ($request->session()->has('requestKeterangan')) {
            $this->input = $request->session()->get('requestKeterangan');
        }
    }

public function add($i)
{
    $this->i = $i++;

    // Validasi jika paket tidak dipilih
    if (!$this->metodeId) {
        session()->flash('errorForm', 'Silakan pilih paket terlebih dahulu.');
        return;
    }

    // Ambil data paket beserta detail_paket
    $paket = Paket::with('detailpaket.metode', 'detailpaket.parameter')->find($this->metodeId);

    if (!$paket) {
        session()->flash('errorForm', 'Paket tidak ditemukan.');
        return;
    }

    // Iterasi data detail_paket untuk menambahkan parameter
    foreach ($paket->detailpaket as $detail) {
        // Tambahkan parameter yang berelasi dengan metode
        if ($detail->metode) {
            $parameters = ParameterPemeriksaan::where('metode_id', $detail->metode->id)->get();

            foreach ($parameters as $parameter) {
                array_push($this->input, [
                    'metode' => $detail->metode->name,
                    'parameter' => $parameter->parameter,
                    'harga' => $parameter->harga,
                ]);

                array_push($this->keterangan, [
                    'metode_id' => $detail->metode->id,
                    'parameter_id' => $parameter->id,
                ]);
            }
        }

        // Tambahkan parameter langsung dari parameter_id di detail_paket
        if ($detail->parameter) {
            array_push($this->input, [
                'metode' => null, // Parameter langsung tanpa metode
                'parameter' => $detail->parameter->parameter,
                'harga' => $detail->parameter->harga,
            ]);

            array_push($this->keterangan, [
                'metode_id' => null,
                'parameter_id' => $detail->parameter->id,
            ]);
        }
    }

    // Simpan data ke session
    session()->put('requestKeterangan', $this->input);
    session()->put('keterangan', $this->keterangan);
}





    public function remove($key)
    {
        unset($this->input[$key]);
        unset($this->keterangan[$key]);

        session()->put('requestKeterangan', $this->input);
        session()->put('keterangan', $this->keterangan);
    }

    public function render()
    {
        $databidang = BidangPemeriksaan::all();
        $datametode = MetodePemeriksaan::all();
        $dataparameter = ParameterPemeriksaan::all();
        $datapaket = Paket::all();

        return view('livewire.dynamic-registrasi-perusahaan', [
            'databidang' => $databidang,
            'datametode' => $datametode,
            'dataparameter' => $dataparameter,
            'datapaket' => $datapaket,
        ]);
    }






}
