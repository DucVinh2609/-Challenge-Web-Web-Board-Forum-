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
Route::get('/',[
		'as'=>'index',
		'uses'=>'ControllerTopic@getTopics'
	]);
Route::get('topic/{id}',[
	'as'=>'gettopicid',
	'uses'=>'ControllerTopic@getTopicsID'
]);

Route::get('/topic', function () {
    return view('topic');
});
Route::get('/new_topic',[
		'as'=>'new_topic',
		'uses'=>'ControllerTopic@getnewTopics'
	]);
Route::post('/new_topic',[
	'as'=>'postaddtopic',
	'uses'=>'ControllerTopic@postAddTopic'
]);

Route::post('/topic/{id}',[
	'as'=>'postaddreply',
	'uses'=>'ControllerTopic@postAddReply'
]);
Route::get('reply/{id}',[
	'middleware' => 'cors',
	'as'=>'getreplyAPIaccordingID',
	'uses'=>'ControllerTopic@getReplyAPIaccordingID'
]);
