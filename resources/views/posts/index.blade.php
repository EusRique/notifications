@extends('layouts.app')

@section('content')

<h1>Listagem dos Posts</h1>

@forelse ($posts as $post)
    <a href="{{ route('posts.show', $post) }} ">
    {{ $post->title }}
    </a>
    <hr>
@empty
<p>Não existem posts cadastrados!!!</p>
@endforelse

{!! $posts->links() !!}

@endsection