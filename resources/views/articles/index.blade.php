@extends('layout')

@section('content')
    <section class="column is-two-thirds ld-top" style="margin-top: 80px;">
        @foreach($articles as $article)
        <article class="notification">
            <h1 class="title is-4"><a style="text-decoration: none;" href="{{ $article->path() }}">{{ $article->title }}</a></h1>
            <p class="subtitle is-6"><img src="/images/banner.jpg" alt="" class="image image-full" />
                {!! $article->excerpt !!}
            </p>
        </article>
        @endforeach
    </section>
@endsection
