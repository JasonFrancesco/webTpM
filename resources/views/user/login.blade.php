@extends('app')
@section('content')

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Your Page Title</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
</head>

<body style="background-image: url('img/background2.jpg');">
    <div class="panel">
        <div class="logo">
            <img src="img/logo.png" alt="Logo">
            <h1>Hackathon</h1>
            <h3>Please enter your details</h3>
        </div>
        <div class="button">
            <div class="row">
                <div class="col-md-6">
                    @if (session('success'))
                    <p class="alert alert-success">{{ session('success') }}</p>
                    @endif
                    @if ($errors->any())
                    @foreach ($errors->all() as $err)
                    <p class="alert alert-danger">{{ $err }}</p>
                    @endforeach
                    @endif
                    <form action="{{ route('login.action') }}" method="POST">
                        <div class="form-container">
                            <label for="nama">Nama Team</label>
                            <input type="text" class="nama" value="{{ old('username') }}">
                        </div>

                        <br>
                        <div class="form-container">
                            <label for="password">Password</label>
                            <div class="password-container">
                                <input type="password" id="id_password" class="password">
                                <i class="far fa-eye" id="togglePassword"></i>
                                <br>
                                <a href="{{ old('password') }}">Forgot password?</a>
                            </div>
                        </div>
                        <div class="form-container">
                            <button class="login">Log In</button>
                            <div class="footer">
                                <span style="margin-top: 120px;">Don’t have an account? </span><a href="{{ old('register') }}">Register Here</a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    @endsection
    <script src="script.js"></script>
</body>
</html>


{{-- Kodingan dari tutor YT}
{{-- @extends('app')
@section('content')
<div class="row">
    <div class="col-md-6">
        @if(session('success'))
        <p class="alert alert-success">{{ session('success') }}</p>
        @endif
        @if($errors->any())
        @foreach($errors->all() as $err)
        <p class="alert alert-danger">{{ $err }}</p>
        @endforeach
        @endif
        <form action="{{ route('login.action') }}" method="POST">
            @csrf
            <div class="mb-3">
                <label>Username <span class="text-danger">*</span></label>
                <input class="form-control" type="username" name="username" value="{{ old('username') }}" />
            </div>
            <div class="mb-3">
                <label>Password <span class="text-danger">*</span></label>
                <input class="form-control" type="password" name="password" />
            </div>
            <div class="mb-3">
                <button class="btn btn-primary">Login</button>
                <a class="btn btn-danger" href="{{ route('home') }}">Back</a>
            </div>
        </form>
    </div>
</div>
@endsection --}}

{{--Kodingan dari FE}
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Your Page Title</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
</head>
<body style="background-image: url('images/background2.jpg');">
    <div class="panel">
        <div class="logo">
            <img src="images/logo.png" alt="Logo">
            <h1>Hackathon</h1>
            <h3>Please enter your details</h3>
        </div>
        <div class="button">
            <form action="">
                <div class="form-container">
                    <label for="nama">Nama Team</label>
                    <input type="text" class="nama">
                </div>

                <br>
                <div class="form-container">
                    <label for="password">Password</label>
                    <div class="password-container">
                        <input type="password" id="id_password" class="password">
                        <i class="far fa-eye" id="togglePassword"></i>
                        <br>
                        <a href="#">Forgot password?</a>
                    </div>
                </div>
                <div class="form-container">
                    <button class="login">Log In</button>
                    <div class="footer">
                        <span style="margin-top: 120px;">Don’t have an account? </span><a href="#">Register Here</a>
                    </div>

                </div>
            </form>
        </div>
    </div>
    <script src="script.js"></script>
</body>
</html>
