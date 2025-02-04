<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MetodePemeriksaan extends Model
{
    use HasFactory;
    protected $fillable = [
        'name',
        'id_bidang',
        'harga',
        'nilai_normal',
        'satuan'
    ];

    public function user(){
        return $this->hasOne(User::class,'id','user_id');
    }
    public function bidang()
    {
        return $this->belongsTo(BidangPemeriksaan::class, 'id_bidang');
    }

    // Relasi ke ParameterPemeriksaan
    public function parameter()
    {
        return $this->hasMany(ParameterPemeriksaan::class, 'metode_id');
    }



}
