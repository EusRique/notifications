<?php

namespace App\Http\Controllers\Posts;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class CommentController extends Controller
{
    public function store(Request $request)
    {
        $comment = $request->user()->commets()->create($request->all());
        
        return redirect()
                    ->route('posts.show', $comment->post_id)
                    ->withSuccess('Comentário realizado com sucesso!!!');
    }
}
