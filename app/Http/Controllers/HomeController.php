<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use Illuminate\Support\Facades\Input;

class HomeController extends Controller
{
    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('welcome');
    }

    public function search()
    {
        $data['tipe'] = Input::get('tipe', 'default tipe');
        $data['from'] = Input::get('from', 'default tipe');
        $data['to'] = Input::get('to', 'default tipe');
        $data['departue'] = Input::get('departue', 'default tipe');
        $data['return'] = Input::get('return', 'default tipe');

        return view('search');
    }
}
