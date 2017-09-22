<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

/*Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
*/

Route::group(['middleware' => 'auth:api'], function(){

});


Route::get('index', 'API\UserController@index');
Route::post('login', 'API\UserController@login');
Route::post('register', 'API\UserController@register');
Route::get('new', 'API\UserController@new'); 
//Route::get('edit', 'API\UserController@edit');
Route::get('logar', 'API\UserController@logar');
Route::group(['middleware' => 'auth:api'], function(){
	Route::post('details', 'API\UserController@details');
});
