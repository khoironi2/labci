<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class KesimpulanPemeriksaan extends Model
{
    use HasFactory;

    protected $table = 'kesimpulan_pemeriksaan';

    protected $fillable = [
        'id_pemeriksaan',
        'id_mcu',
        'catatan_hasil',
        'kesimpulan',
        'saran',
        'kesan',
        'validasi_oleh',
        'dokter_penanggung_jawab',
        'dokter_pemeriksa',
        'gambar_hasil',
    ];

    // Relasi ke model Pemeriksaan
    public function pemeriksaan()
    {
        return $this->belongsTo(Pemeriksaan::class, 'id_pemeriksaan', 'id');
    }

    // Relasi ke model MCU (Medical Check-Up)
    public function mcu()
    {
        return $this->belongsTo(Mcu::class, 'id_mcu', 'id');
    }

    // Relasi ke model Dokter untuk penanggung jawab
    public function dokterPenanggungJawab()
    {
        return $this->hasOne(Dokter::class, 'id', 'dokter_penanggung_jawab');
    }

    // Relasi ke model Dokter untuk pemeriksa
    public function dokterPemeriksa()
    {
        return $this->hasOne(Dokter::class, 'id', 'dokter_pemeriksa');
    }

    // Relasi ke model User untuk validasi
    public function validator()
    {
        return $this->belongsTo(User::class, 'validasi_oleh', 'id');
    }
}
