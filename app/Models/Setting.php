<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Setting extends Model
{
    use HasFactory;

    // Nama tabel
    protected $table = 'setings';

    // Kolom yang dapat diisi
    protected $fillable = [
        'warna_satu',
        'ppn',
        'pph',
    ];

    // Kolom timestamps akan ditangani secara otomatis oleh Laravel
    public $timestamps = true;
}
