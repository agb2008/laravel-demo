@extends('layout')

@section('content')

<div id="wrapper" style="margin: 45px auto 20px;">
    <div id="page" class="container">
        <h1 class="heading has-text-weight-bold is-size-4">New Article</h1>

        <form method="POST" action="/articles">
            @csrf

            <div class="field">
                <label for="title" class="label">Title</label>
            </div>

            <div class="control">
                <input
                    type="text"
                    class="input @error('title') is-danger @enderror"
                    name="title"
                    id="title"
                    value="{{ old('title') }}"
                >
                @error('title')
                    <p class="help is-danger">{{ $errors->first('title') }}</p>
                @enderror
            </div>

            <div class="field">
                <label for="excerpt" class="label">Excerpt</label>
            </div>
            <div class="control">
                <textarea
                    name="excerpt"
                    id="excerpt"
                    class="textarea @error('excerpt') is-danger @enderror"
                >{{ old('excerpt') }}</textarea>
                @error('excerpt')
                    <p class="help is-danger">{{ $errors->first('excerpt') }}</p>
                @enderror
            </div>

            <div class="field">
                <label for="body" class="label">Body</label>
            </div>
            <div class="control">
                <textarea
                    name="body"
                    id="body"
                    class="textarea @error('body') is-danger @enderror"
                >{{ old('body') }}</textarea>
                @error('excerpt')
                    <p class="help is-danger">{{ $errors->first('body') }}</p>
                @enderror
            </div>

            <div class="field is-grouped">
                <div class="control" style="margin-top: 10px;">
                    <button class="button is-link" type="submit">Submit</button>
                </div>
            </div>

        </form>
    </div>
</div>

@endsection
