<hr>

@if (auth()->check())
    @if (session('success'))
        <div class="alert alert-success">
            {{ session('success') }}
        </div>
    @endif
    
    <form action="{{ route('comment.store') }}" method="post" class="form">
        {{ csrf_field() }}
        <input type="hidden" name="post_id" value="{{ $post->id }}">
        <div class="form-group">
            <input type="text" name="title" placeholder="Título" class="form-control">
        </div>
        <div class="form-group">
            <textarea name="body" cols="30" rows="5" placeholder="Comentário" class="form-control"></textarea>
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-primary">Enviar</button>
        </div>
    </form>
@else
<p>Faça login para deixar seu comentário. <a href="{{ route('login') }}">Login</a></p>
@endif