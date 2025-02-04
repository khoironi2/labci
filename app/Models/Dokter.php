<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Dokter extends Model
{
    use HasFactory;
    protected $table = 'dokter';

    protected $fillable = [
        'gelardepan', 'nama_lengkap', 'gelarbelakang', 'kategori',
        'tanggal_lahir', 'jenis_kelamin', 'alamat', 'kota',
        'no_hp', 'reward', 'marketing', 'bank', 'no_rek', 'ttd_dokter'
    ];

    public function marketingUser()
    {
        return $this->belongsTo(User::class, 'marketing');
    }
}
