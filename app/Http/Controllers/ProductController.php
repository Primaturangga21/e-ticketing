<?php

namespace App\Http\Controllers;
use App\Http\Requests;
use Illuminate\Http\Request;
use PDF;
class ProductController extends Controller
{
    public function downloadPDF($id, $name)
    {
        $products = $name::all();
        $pdf = PDF::loadView('pdf/'.$id, compact('products'));
        return $pdf->download($id);
    }
    public function test($id, $name)
    {
        $products = $name::all();
        return view('pdf/'.$id, compact('products'));
    }
}