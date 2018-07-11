<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Pagination\Paginator;
use App\User;
use App\Comment;

use Carbon\Carbon;

class CommentController extends Controller
{
    
    public function ViewComment()
    {
        // $comments = Comment::paginate(5);
        // return view("index")->with('comments',$comments);
        return view("index");
    }
    public function loadComment($page, $pagesize = 3)
    {
        // $comments = Comment::all();
        
        $comments = Comment::skip(($page-1)*$pagesize)->take($pagesize)->get();
        $totalRow = Comment::get()->count();
        $users = User::all();
        $usersArray = $users->toArray();
        $commentsArray = $comments->toArray();
       
        $data = [
            'status' => true,
            'commentsArray' => $commentsArray,
            'usersArray' => $usersArray,
            'totalRow' => $totalRow,
            
        ];
        //trả về 1 mảng json data gồm có 3 giá trị trên
        return response()->json($data, 200);
    }

    public function saveComment(Request $request)
    {
        $comment = Comment::create([
            'parent' => $request->parent,
            'created' => Carbon::now(),
            'modified' => Carbon::now(),
            'file_url' => $request->file_url,
            'content' => $request->content,
            'pings'=> $request->pings,
            'creator'=> $request->id,
            'fullname'=> $request->fullname,
            'profile_picture_url'=> $request->profile_picture_url,
            'upvote_count'=> $request->upvote_count,
            'created_by_current_user' => $request->has('created_by_current_user')? 1 : 0,

            //chac dung r :3
        ]);
        $data = [
            'status' => true,
            'comment' => $comment->toArray()
        ];
        return response()->json($data, 200);
    }

    public function editComment(Request $request,$id)
    {
        $cmt = Comment::find($id);
        $cmt->content = $request->content;
        $cmt->modified = Carbon::now();
        $cmt->pings = $request->pings;
        $cmt->upvote_count = $request->upvote_count;
        $cmt->save();
        $data = [
            'status' => true,
            'comment' => $cmt->toArray()
        ];
        return response()->json($data, 200);
    }

    public function deleteComment($id)
    {
        $cmt = Comment::find($id);
        $cmt->delete();
        $data = [
            'status' => true,
        ];

        return response()->json($data, 200);
    }

    
}
