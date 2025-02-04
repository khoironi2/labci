<?php

namespace App\Models;

use App\Models\Pasien;
use App\Models\Dokter;
use App\Models\Status;
use App\Models\Keterangan;
use Illuminate\Foundation\Auth\User;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Pemeriksaan extends Model
{
    use HasFactory;
    protected $fillable = [
        'dokter_id',
        'pasien_id',
        'status_permohonan',
        'jenis_layanan',
        'pengantaran_hasil',
        'rekomendasi',
        'status_id',
        'total_harga',
        'paket_id',
    ];


    public function paket(){
        return $this->hasOne(Paket::class,'id','paket_id');
    }

    public function dokter(){
        return $this->hasOne(Dokter::class,'id','dokter_id');
    }

    public function pasiens(){
        return $this->hasOne(Pasien::class,'id','pasien_id');
    }

    public function keterangan(){
        return $this->hasMany(Keterangan::class,'pemeriksaan_id','id');
    }

    public function status(){
        return $this->hasOne(Status::class,'id','status_id');
    }


}
