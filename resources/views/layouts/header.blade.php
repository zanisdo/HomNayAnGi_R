<nav class="navbar navbar-expand-lg navbar-light bg-light" aria-label="Eighth navbar example">
    <div class="container">
        <a class="navbar-brand" href="{{ route('home') }}">HOME</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExample07"
            aria-controls="navbarsExample07" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarsExample07">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="dropdown07" data-bs-toggle="dropdown"
                        aria-expanded="false">Categories</a>
                    <ul class="dropdown-menu" aria-labelledby="dropdown07">
                        <li><a class="dropdown-item" href="#">Action</a></li>
                        <li><a class="dropdown-item" href="#">Another action</a></li>
                        <li><a class="dropdown-item" href="#">Something else here</a></li>
                    </ul>
                </li>
            </ul>
            <form>
                <input class="form-control" type="text" placeholder="Search for food" aria-label="Search">
            </form>
            @guest
            <div>
                <a href="{{ route('login') }}" class="btn">Sign in</a>
                <a href="{{ route('registration') }}" class="btn btn-outline-warning">Sign up</a>
            </div>
            @else
            <ul class="navbar-nav mb-2 mb-lg-0">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="dropdown07" data-bs-toggle="dropdown"
                        aria-expanded="false">{{ Auth::User()->name }}</a>
                    <ul class="dropdown-menu" aria-labelledby="dropdown07">
                        <li><a class="dropdown-item" href="{{ route('settings') }}">My Account</a></li>
                        <li><a class="dropdown-item" href="{{ route('food') }}">All food</a></li>
                        <li><a class="dropdown-item" href="{{ route('favorite') }}">My Favorites</a></li>
                        <li><a class="dropdown-item" href="{{ route('filter') }}">Filter Food</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="{{ route('logout') }}">Sign out</a></li>
                    </ul>
                </li>
            </ul>
            @endguest
        </div>
    </div>
</nav>
