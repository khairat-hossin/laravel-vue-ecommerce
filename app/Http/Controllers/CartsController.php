<?php

namespace App\Http\Controllers;

use App\Models\Cart;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CartsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Check out from cart
     * for payment
     * 
     */
    public function checkout(){

        // dd("hello");
        return view('pages.checkout');
    }

    public function getItems(){

        $cartItems= Cart::with('product')->where('user_id', 1)->get();
        $finaldata=[];
        $amount=0;
        if(isset($cartItems)){
            foreach ($cartItems as $item) {
                $name='';
                foreach($item->product as $productItem){
                    if($item->product_id == $productItem->id){
                        $name = $productItem->name;
                    }
                }

                $finaldata[$item->id]['id']= $item->id;
                $finaldata[$item->id]['name']= $name;
                $finaldata[$item->id]['quantity']= $item->quantity;
                $finaldata[$item->id]['price']= $item->price;
                $finaldata[$item->id]['total']= $item->price*$item->quantity;
                $amount+=($item->price*$item->quantity);
                $finaldata['totalAmount']= $amount;
            }

            

            
        }
        return response()->json($finaldata);
    }



    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        if ($request->has('product_id')) {
            //get product data
            $product = Product::where('id', $request->get('product_id'))->first();

            // check if this product is already in cart
            $findExistingProduct = Cart::where('product_id', $request->get('product_id'))->pluck('id');

            // if not in cart then insert new item
            if ($findExistingProduct->isEmpty()) {
                $cart = Cart::create([
                    'product_id' => $product->id,
                    'quantity'   => 1,
                    'price'      => $product->sale_price,
                    'user_id'    => Auth::user()->id,
                ]);
            }
            // else update
            else {
                $cart = Cart::where('id', $findExistingProduct)->increment('quantity');
            }

        }

        $userItems = Cart::where('user_id', Auth::user()->id)->sum('quantity');
  
        return [
            'message' => 'Cart Updated',
            'items'   => $userItems,
        ];
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
