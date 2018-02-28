@extends('layouts.app')

@section('content')
<div class="login-clean">
    <form method="POST" action="{{ route('password.email') }}">
        {{ csrf_field() }}
        <h2 class="sr-only">Reset Password</h2>
        @if (session('status'))
            <div class="alert alert-success">
                {{ session('status') }}
            </div>
        @endif
        <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
            <label for="email" class="col-md-12 control-label">E-Mail Address</label>

            <div class="col-md-12">
                <input id="email" type="email" class="form-control" name="email" value="{{ old('email') }}" required>

                @if ($errors->has('email'))
                    <span class="help-block">
                        <strong>{{ $errors->first('email') }}</strong>
                    </span>
                @endif
            </div>
        </div>
        <div class="form-group">
            <button class="btn btn-primary btn-block" type="submit">Send Password Reset Link</button>
        </div>
    </form>
</div>
@endsection
