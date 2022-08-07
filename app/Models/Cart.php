<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Cart extends Model
{
    use HasFactory;

    public $table = 'carts';

    protected $fillable=[
        'product_id',
        'user_id',
        'quantity',
        'price',
        'create_at',
        'updated_at'
    ];

    /**
     * Relationships with product
     */
    public function product(){
        return $this->hasMany(Product::class, 'id', 'product_id');
    }
}
