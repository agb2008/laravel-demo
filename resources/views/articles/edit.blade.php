@extends('layout')

{{--@section('head')--}}
{{--    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.1/css/bulma.min.css">--}}
{{--@endsection--}}

@section('content')

    <div id="wrapper"  style="margin: 45px auto 20px;">
        <div id="page" class="container">
            <h1 class="heading has-text-weight-bold is-size-4">Update Article</h1>

            <form method="POST" action="/articles/{{ $article->id }}">
                @csrf
                @method('PUT')

                <div class="field">
                    <label for="title" class="label">Title</label>
                </div>

                <div class="control">
                    <input type="text" class="input" name="title" id="title" value="{{ $article->title }}">
                </div>

                <div class="field">
                    <label for="excerpt" class="label">Excerpt</label>
                </div>
                <div class="control">
                    <textarea name="excerpt" id="excerpt" class="textarea">{{ $article->excerpt }}</textarea>
                </div>

                <div class="field">
                    <label for="body" class="label">Body</label>
                </div>
                <div class="control">
                    <textarea name="body" id="body" class="textarea">{{ $article->body }}</textarea>
                </div>

                <div class="field is-grouped">
                    <div class="control"  style="margin-top: 10px;">
                        <button class="button is-link" type="submit">Submit</button>
                    </div>
                </div>

            </form>
        </div>
    </div>


@endsection
