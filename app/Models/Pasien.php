<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pasien extends Model
{
    use HasFactory;
    protected $fillable = [
        'nama',
        'tanggal_lahir',
        'jenis_identitas',
        'jenis_kelamin',
        'no_identitas',
        'no_telp',
        'bpjs',
        'alamat',
        'gambar_pasiens',
        'perusahaan_id',
    ];


    public function perusahaan()
    {
        return $this->belongsTo(Perusahaan::class, 'perusahaan_id');
    }
}