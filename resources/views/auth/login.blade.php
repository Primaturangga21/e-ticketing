@extends('layouts.app')

@section('content')
<div class="login-clean">
    <form method="POST" action="{{ route('login') }}">
        {{ csrf_field() }}
        <h2 class="sr-only">Login Form</h2>
        <div class="illustration"><i class="icon ion-ios-navigate"></i></div>
        <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
            <input id="email" class="form-control" type="email" name="email" placeholder="Email" value="{{ old('email') }}" required autofocus>
            @if ($errors->has('email'))
                <span class="help-block">
                    <strong>{{ $errors->first('email') }}</strong>
                </span>
            @endif
        </div>
        <div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">
            <input class="form-control" type="password" name="password" placeholder="Password" required>
            @if ($errors->has('password'))
                <span class="help-block">
                    <strong>{{ $errors->first('password') }}</strong>
                </span>
            @endif
        </div>
        <div class="form-group">
            <button class="btn btn-primary btn-block" type="submit">Log In</button>
        </div>
        <a href="{{ route('password.request') }}" class="forgot">Forgot your email or password?</a></form>
</div>
@endsection
