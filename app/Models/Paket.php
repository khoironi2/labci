<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Paket extends Model
{
    use HasFactory;

    protected $table = 'paket';

    protected $fillable = [
        'nama_paket',
        'perusahaan_id',
        'marketing',
        'total_harga',
        'diskon_persen',
        'diskon_rupiah',
    ];

    public function perusahaan()
    {
        return $this->belongsTo(Perusahaan::class, 'perusahaan_id');
    }

    public function marketingUser()
    {
        return $this->belongsTo(User::class, 'marketing');
    }
    public function detailpaket()
    {
        return $this->hasMany(DetailPaket::class, 'paket_id');
    }


        // Relasi ke tabel Parameter Pemeriksaan
        public function parameter()
        {
            return $this->belongsTo(ParameterPemeriksaan::class, 'parameter_id');
        }



}
