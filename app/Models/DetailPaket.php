<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DetailPaket extends Model
{
    use HasFactory;

    protected $table = 'detail_paket';

    protected $fillable = [
        'paket_id',
        'id_mcu',
        'bidang_id',
        'metode_id',
        'parameter_id',
    ];

    // Relasi ke tabel Paket
    public function paket()
    {
        return $this->belongsTo(Paket::class, 'paket_id');
    }
    public function mcu()
    {
        return $this->belongsTo(Mcu::class, 'id_mcu');
    }

    public function bidang()
    {
        return $this->belongsTo(BidangPemeriksaan::class, 'bidang_id');
    }

    // Relasi ke tabel Metode Pemeriksaan
    public function metode()
    {
        return $this->belongsTo(MetodePemeriksaan::class, 'metode_id');
    }

    // Relasi ke tabel Parameter Pemeriksaan
    public function parameter()
    {
        return $this->belongsTo(ParameterPemeriksaan::class, 'parameter_id');
    }
}
