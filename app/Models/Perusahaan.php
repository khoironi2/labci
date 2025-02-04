<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Perusahaan extends Model
{
    use HasFactory;
    protected $table = 'perusahaan';

    protected $fillable = [
        'nama_perusahaan',
        'contact_person',
        'jabatan',
        'alamat',
        'kota',
        'no_hp',
        'email',
        'password',
        'marketing',
    ];

    // Relasi dengan model User
    public function marketingUser()
    {
        return $this->belongsTo(User::class, 'marketing');
    }
}
