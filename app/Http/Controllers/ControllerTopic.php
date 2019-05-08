<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller as Controller;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Validator;
use Illuminate\Http\Request;
use App\topic;
use App\reply;
use App\category;
use App\users;
use App\Http\Requests\TopicRequest;
use App\Http\Requests\ReplyRequest;


class ControllerTopic extends Controller
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    

    public function getTopics(){
        $topic = topic::all();
        $category = category::all();
        $users = users::all();
        $countreply=reply::count();
      return view('index',['topic' => $topic,'countreply' => $countreply,'category' => $category,'users' => $users]);
    }
    public function getnewTopics(){
       
        $category = category::all();
        $users = users::all();
        
      return view('new_topic',['category' => $category,'users' => $users]);
    }
    public function getTopicsID($id){
        $data=topic::find($id);
        $reply = topic::find($id)->reply;
        $category = category::all();
        $users = users::all();
        $parent=topic::select('id','title','id_category','description','date_post','id_user')->get()->toArray();
        return view('topic',compact('data','reply','category','users','parent','id'));
    }
    public function getReplyAPIaccordingID($id){
        $reply = topic::find($id)->reply;
      return $reply;
    }
    public function postAddTopic(TopicRequest $req){
        $topic=new topic;
        $topic->title=$req->title;
        $topic->id_category=$req->category;
        $topic->description=$req->description;
        
        $topic->save();
        return redirect()->action('ControllerTopic@getTopics')->with(['flash_level'=>'success','flash_message'=>'Success !! Complete add Topic']);
    }
    public function postAddReply(ReplyRequest $req,$id){
        $reply=new reply;
        $reply->message=$req->reply;
        $reply->id_topic=$id;
        
        $reply->save();
        return back();
    }
}
