<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Keterangan extends Model
{
    use HasFactory;

    protected $fillable = [
        'pemeriksaan_id',
        'id_mcu',
        'bidang_id',
        'parameter_id',
        'metode_id',
        'hasil',
        'kesan',
        'catatan',
        'paket_id',
    ];


    public function paket(){
        return $this->hasOne(Paket::class,'id','paket_id');
    }
    public function mcu()
    {
        return $this->hasOne(Mcu::class, 'id', 'id_mcu');
    }
    public function bidang()
    {
        return $this->hasOne(BidangPemeriksaan::class, 'id', 'bidang_id');
    }
    public function parameter()
    {
        return $this->hasOne(ParameterPemeriksaan::class, 'id', 'parameter_id');
    }
    public function metode()
    {
        return $this->hasOne(MetodePemeriksaan::class, 'id', 'metode_id');
    }
    public function pemeriksaan()
    {
        return $this->belongsTo(Pemeriksaan::class, 'pemeriksaan_id','id');
    }

}
