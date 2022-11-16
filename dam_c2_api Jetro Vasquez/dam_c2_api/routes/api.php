<?php

use App\Http\Controllers\AutoController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('autos', [AutoController::class,'index']);
Route::post('autos', [AutoController::class,'store']);
Route::get('autos/{auto}', [AutoController::class,'show']);
Route::delete('autos/{auto}', [AutoController::class,'destroy']);
