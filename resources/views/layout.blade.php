<!DOCTYPE html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>LARAVEL-DEMO</title>
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.1/css/bulma.min.css">
    <link href="/css/stylesheet.css" rel="stylesheet"/>
    <link href="/css/fonts.css" rel="stylesheet"/>
    <script async type="text/javascript" src="js/bulma.js"></script>
    @yield('head')
</head>
<body>
<nav class="navbar is-light is-fixed-top nav-set" role="navigation" aria-label="main navigation">
    <div class="navbar-brand">
        <a class="navbar-item" href="/">
            <img src="/images/laravel-demo.png" width="112" height="28">
        </a>

        <a role="button" class="navbar-burger" aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
            <span aria-hidden="true"></span>
            <span aria-hidden="true"></span>
            <span aria-hidden="true"></span>
        </a>
    </div>

    <div id="navbarBasicExample" class="navbar-menu">
        <div class="navbar-start">
            <a class="navbar-item {{ Request::path() === '/' ? 'current_page_item' : ''}}" href="/home" accesskey="1" title="">Homepage</a>
            <a class="navbar-item {{ Request::path() === 'clients' ? 'current_page_item' : ''}}" href="#" accesskey="2" title="">Our client</a>
            <a class="navbar-item {{ Request::path() === 'about' ? 'current_page_item' : ''}}" href="/about" accesskey="3" title="">About us</a>
            <a class="navbar-item {{ Request::path() === 'articles' ? 'current_page_item' : ''}}" href="/articles" accesskey="4" title="">Articles</a>
            <div class="navbar-item has-dropdown is-hoverable">
                <a class="navbar-link">More</a>
                <div class="navbar-dropdown">
                    <a class="navbar-item">Contact us</a>
                    <a class="navbar-item">Jobs</a>
                    <a class="navbar-item">Map</a>
                    <hr class="navbar-divider">
                    <a class="navbar-item">Report an issue</a>
                </div>
            </div>
        </div>

        <div class="navbar-end">
            @if (Auth::guest())
            <div class="navbar-item">
                <div class="buttons">
                    <a class="button is-primary" href="{{ route('register') }}"><strong>Register</strong></a>
                    <a class="button is-light" href="{{ route('login') }}">Log in</a>
                </div>
            </div>
            @else
                <div class="navbar-item has-dropdown is-hoverable">
                    <a class="navbar-link" href="#">{{ Auth::user()->name }}</a>
                    <div class="navbar-dropdown">
                        <a class="navbar-item" href="{{ route('logout') }}"
                           onclick="event.preventDefault();document.getElementById('logout-form').submit();">
                        Logout
                        </a>
                        <form id="logout-form" action="{{ route('logout') }}" method="POST"
                              style="display: none;">
                            {{ csrf_field() }}
                        </form>
                    </div>
                </div>
            @endif
        </div>
    </div>
</nav>
@yield('header')

@yield('content')

        <!-- Scripts -->
        <script src="{{ asset('js/app.js') }}"></script>
</body>
<footer class="footer is-light">
    <div id="copyright" class="content has-text-centered">
        <p>&copy; Алексей Богданов | Курс: GeekBrains, "Laravel. Глубокое погружение" | Февраль 2021 г.</p>
    </div>
</footer>
</html>


