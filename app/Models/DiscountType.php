<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DiscountType extends Model
{
    protected $fillable = [
        'name',
        'description',
    ];
    public function vouchers()
    {
        return $this->hasMany(Voucher::class);
    }
}

