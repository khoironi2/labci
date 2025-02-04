<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Mcu extends Model
{
    use HasFactory;
    protected $table = 'mcu';
    protected $fillable = ['nama_mcu'];


    public function bidang()
    {
        return $this->belongsTo(BidangPemeriksaan::class, 'id_mcu');
    }

}
