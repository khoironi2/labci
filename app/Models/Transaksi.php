<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Transaksi extends Model
{
    use HasFactory;

    protected $table = 'transaksi'; // Nama tabel

    protected $primaryKey = 'id'; // Primary key

    protected $fillable = [
        'pemeriksaan_id',
        'paket_id',
        'pasien_id',
    ];

    // Relasi ke tabel Pemeriksaan
    public function pemeriksaan()
    {
        return $this->belongsTo(Pemeriksaan::class, 'pemeriksaan_id');
    }

    // Relasi ke tabel Paket
    public function paket()
    {
        return $this->belongsTo(Paket::class, 'paket_id');
    }

    // Relasi ke tabel Pasien
    public function pasien()
    {
        return $this->belongsTo(Pasien::class, 'pasien_id');
    }
}
