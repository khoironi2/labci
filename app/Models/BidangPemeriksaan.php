<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BidangPemeriksaan extends Model
{
    use HasFactory;
    protected $fillable = [
        'name',
        'id_mcu',
        'harga',
        'nilai_normal',
        'satuan'
    ];
    // Define the relationship to MCU
    public function mcu()
    {
        return $this->belongsTo(Mcu::class, 'id_mcu');
    }
    // Tambahkan relasi ke MetodePemeriksaan
    public function metodePemeriksaans()
    {
        return $this->hasMany(MetodePemeriksaan::class, 'id_bidang');
    }
      // Relasi dengan MetodePemeriksaan
    public function metode()
    {
        return $this->hasMany(MetodePemeriksaan::class, 'id_bidang');
    }

}
