<?php

use App\Http\Controllers\CartsController;
use App\Http\Controllers\ProductsController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', [ProductsController::class, 'index']);

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::post('/cart', [CartsController::class, 'store'])->name('cart');

Route::get('/checkout', [CartsController::class, 'checkout'])->name('checkout');
Route::get('/checkout/get/items', [CartsController::class, 'getItems'])->name('checkout.get.items');
Route::post('/process/user/payment', [CartsController::class, 'processPayment'])->name('process.user.payment');
