<?php

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

Route::get('/', function () {
	$transport_type = App\TransportationType::all();
	$cities = App\City::all();
	$blogs = App\Posts::all();
	// $transport_type = App\TransportationType::all();
    return view('welcome', compact('transport_type', 'cities','blogs'));
});

Route::get('/search', 'HomeController@search');

Route::get('/ticket', function(){
	return view('ticket');
});

Route::get('/downloadPDF/{id}/{name}','ProductController@downloadPDF');
Route::get('/test/{id}/{name}', 'ProductController@test');

// Veritrans
Route::post('/vtweb', 'VtwebController@vtweb')->middleware('auth');

Route::get('/vtdirect', 'VtdirectController@vtdirect');
Route::post('/vtdirect', 'VtdirectController@checkout_process');

Route::get('/vt_transaction', 'TransactionController@transaction');
Route::post('/vt_transaction', 'TransactionController@transaction_process');

Route::post('/vt_notif', 'VtwebController@notification');

Route::get('/snap', 'SnapController@snap');
Route::get('/snaptoken', 'SnapController@token');
Route::post('/snapfinish', 'SnapController@finish');

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
