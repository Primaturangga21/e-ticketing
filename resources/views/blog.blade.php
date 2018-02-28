@extends('layout.app')

@section('content')
<div data-bs-parallax-bg="true" style="height:300px;background-image:url(https://unsplash.it/1800/900?image=1051);background-position:center;background-size:cover;"></div>
<div class="projects-clean">
    <div class="container">
        <div class="intro">
            <h2 class="text-center">Blog </h2>
        </div>
        <div class="row projects">
            <div class="col-sm-6 col-lg-4 item"><img class="img-fluid" src="assets/img/desk.jpg">
                <h3 class="name">Project Name</h3>
                <p class="description">Aenean tortor est, vulputate quis leo in, vehicula rhoncus lacus. Praesent aliquam in tellus eu gravida. Aliquam varius finibus est, interdum justo suscipit id.</p>
            </div>
            <div class="col-sm-6 col-lg-4 item"><img class="img-fluid" src="assets/img/building.jpg">
                <h3 class="name">Project Name</h3>
                <p class="description">Aenean tortor est, vulputate quis leo in, vehicula rhoncus lacus. Praesent aliquam in tellus eu gravida. Aliquam varius finibus est, interdum justo suscipit id.</p>
            </div>
            <div class="col-sm-6 col-lg-4 item"><img class="img-fluid" src="assets/img/loft.jpg">
                <h3 class="name">Project Name</h3>
                <p class="description">Aenean tortor est, vulputate quis leo in, vehicula rhoncus lacus. Praesent aliquam in tellus eu gravida. Aliquam varius finibus est, interdum justo suscipit id.</p>
            </div>
            <div class="col-sm-6 col-lg-4 item"><img class="img-fluid" src="assets/img/minibus.jpeg">
                <h3 class="name">Project Name</h3>
                <p class="description">Aenean tortor est, vulputate quis leo in, vehicula rhoncus lacus. Praesent aliquam in tellus eu gravida. Aliquam varius finibus est, interdum justo suscipit id.</p>
            </div>
        </div>
    </div>
</div>
@endsection