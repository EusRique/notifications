<?php

namespace App\Http\Controllers\Posts;

use Illuminate\Http\Request;
use App\Models\Post;
use App\Http\Controllers\Controller;

class PostController extends Controller
{
    public function index(Post $post)
    {
        $posts = $post->paginate();

        return view('posts.index', compact('posts'));
    }
}
