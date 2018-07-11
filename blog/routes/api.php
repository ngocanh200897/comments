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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
//ko login luon cho le, day la cho dieu huong route  api, nó gióng nhnhweb.php ấy, khác ở chỗcweb gọi controller trả về object
//api gọi controller trả và json
// Route::get('/comment', 'CommentController@ViewComment');
Route::get('comments','CommentController@loadComment');
Route::post('comments/save','CommentController@saveComment');
Route::put('comments/edit/{id}','CommentController@editComment');
Route::delete('comments/delete/{id}','CommentController@deleteComment');
