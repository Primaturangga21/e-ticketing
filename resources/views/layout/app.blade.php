<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>{{ setting('site.title') }}</title>
    <!-- favicon -->
    <link rel="shortcut icon" type="image" href="{{ setting('site.logo') }}">

    <!-- Styles -->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="{{ asset('assets/bootstrap/css/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/fonts/font-awesome.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/fonts/ionicons.min.css') }}">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Bitter:400,700">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lora">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.8.2/css/lightbox.min.css">
    <link rel="stylesheet" href="{{ asset('assets/css/styles.min.css') }}">
    <link rel="stylesheet" href="{{ asset('css/styles.min.css') }}">
</head>

<body>
    <div></div>
    <div>
        <nav class="navbar navbar-light navbar-expand-md navigation-clean-button">
            <div class="container"><a class="navbar-brand" href="{{ url('/') }}">{{ setting('site.title') }}</a><button class="navbar-toggler" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse"
                    id="navcol-1">
                    <ul class="nav navbar-nav mr-auto">
                        <?= menu('Front', 'layout/nav'); ?>
                    </ul>
                    <span class="navbar-text actions">
                        @guest
                            <a href="{{ url('login') }}" class="login">Log In</a>
                            <a class="btn btn-light action-button" role="button" href="{{ url('register') }}" style="background-color:rgb(2,159,226);">Sign Up</a>
                        @else
                            <li class="dropdown" style="list-style-type: none;">
                                <a class="dropdown-toggle btn btn-light action-button" data-toggle="dropdown" role="button" aria-expanded="false" aria-haspopup="true" style="background-color:rgb(2,159,226);">{{ Auth::user()->name }}</a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <a href="{{ url('admin/logout') }}" class="btn" 
                                            onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                            Logout
                                        </a>

                                        <form id="logout-form" action="{{ url('admin/logout') }}" method="POST" style="display: none;">
                                            {{ csrf_field() }}
                                        </form>
                                    </li>
                                </ul>
                            </li>
                        @endguest
                    </span>
                </div>
            </div>
        </nav>
    </div>
    @yield('content')
    <div class="footer-dark">
        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-md-3 item">
                        <h3>Services</h3>
                        <ul>
                            <li><a href="#">Web design</a></li>
                            <li><a href="#">Development</a></li>
                            <li><a href="#">Hosting</a></li>
                        </ul>
                    </div>
                    <div class="col-sm-6 col-md-3 item">
                        <h3>About</h3>
                        <ul>
                            <li><a href="#">Company</a></li>
                            <li><a href="#">Team</a></li>
                            <li><a href="#">Careers</a></li>
                        </ul>
                    </div>
                    <div class="col-md-6 item text">
                        <h3>Company Name</h3>
                        <p>Praesent sed lobortis mi. Suspendisse vel placerat ligula. Vivamus ac sem lacus. Ut vehicula rhoncus elementum. Etiam quis tristique lectus. Aliquam in arcu eget velit pulvinar dictum vel in justo.</p>
                    </div>
                    <div class="col item social"><a href="#"><i class="icon ion-social-facebook"></i></a><a href="#"><i class="icon ion-social-twitter"></i></a><a href="#"><i class="icon ion-social-snapchat"></i></a><a href="#"><i class="icon ion-social-instagram"></i></a></div>
                </div>
                <p class="copyright">Company Name © 2017</p>
            </div>
        </footer>
    </div>
    <div></div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="{{ asset('js/popper.min.js') }}"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.8.2/js/lightbox.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
    <script src="assets/js/script.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            $("#formCheck-1").change(function(){
                if ($(this).is(":checked")) {
                    $("#returnID").show();
                    $("#returnID").prop("disabled", false);
                }else{
                    $("#returnID").hide();
                    $("#returnID").prop("disabled", true);
                }
            });
            $('#example').DataTable({
                "paging" : false,
                "searching" : false,
                "info" : false
            });
            $(function () {
                $('[data-toggle="tooltip"]').tooltip()
            });
        });
    </script>
</body>

</html>