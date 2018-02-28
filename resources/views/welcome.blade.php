@extends('layout.app')

@section('content')
<div class="login-clean" style="background-image:url(&quot;assets/img/slider-1.jpg&quot;);background-position:center;background-size:cover;padding-top:0px;">
    <div class="row" style="padding-top:80px;">
        <div class="col">
            <div class="container">
                <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12 d-block">
                    <h2 class="text-center" style="color:rgb(225,225,225);">
                    	Find the best deals
                    </h2>
                    <h2 class="text-center" style="color:rgb(225,225,225); margin-bottom: 20px;">
                    	on every Order Ticket product you need!
                    </h2>
                    <form method="get" style="width:60%;max-width:100%;" action="/search">
                        <h2 class="sr-only">Login Form</h2>
                        <div class="form-row">
                            <div class="col-sm-12 col-md-12 col-lg-4 col-xl-4">
                                <div class="form-group">
                                    <label>Tipe Transportasi</label>
                                	<select class="form-control" style="border: 1px solid lightgrey; border-radius: 3px;" name="tipe">
                                		@foreach($transport_type as $type)
                                			<option value="{{ $type->id }}">{{ $type->description }}</option>
                                		@endforeach
                                	</select>
                                </div>
                            </div>
                            <div class="col-sm-12 col-md-12 col-lg-4 col-xl-4">
                                <div class="form-group">
                                    <label>Rute Awal</label>
                                    <select class="form-control" style="border: 1px solid lightgrey; border-radius: 3px;" name="from">
                                        @foreach($cities as $city)
                                            <option value="{{ $city->city }}">{{ $city->city }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="col-sm-12 col-md-12 col-lg-4 col-xl-4">
                                <div class="form-group">
                                    <label>Rute Tujuan</label>
                                    <select class="form-control" style="border: 1px solid lightgrey; border-radius: 3px;" name="to">
                                        @foreach($cities as $city)
                                            <option value="{{ $city->city }}">{{ $city->city }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6">
                                <div class="form-group">
                                    <label>keberangkatan</label>
                                    <input class="form-control" type="date" style="border: 1px solid lightgrey; border-radius: 3px;" name="departue">
                                </div>
                            </div>
                            <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6">
                                <div class="form-group">
                                    <label>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="formCheck-1" style="width: 20px; height: 20px;">
                                            <label class="form-check-label" for="formCheck-1" style="margin-left: 5px;">Pulang</label>
                                        </div>
                                    </label>
                                    <input id="returnID" class="form-control" type="date" style="border: 1px solid lightgrey; border-radius: 3px; display: none;" name="return" disabled="true">
                                </div>
                            </div>
                        </div>
                        <div class="form-group"><button class="btn btn-primary btn-block" type="submit" style="background-color:rgb(2,159,226);">Search</button></div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="photo-gallery"></div>
<div class="article-list">
    <div class="container">
        <div class="intro">
            <h2 class="text-center">Artikel Terbaru</h2>
        </div>
        <div class="row articles">
            @foreach($blogs as $blog)
                <div class="col-sm-6 col-md-4 item">
                    <a href="#">
                        <img class="img-fluid" src="{{Voyager::image($blog->thumbnail('medium'))}}">
                    </a>
                    <h3 class="name">{{ $blog->title }}</h3>
                    <p class="description">{!! str_limit(strip_tags($blog->body), 150) !!}</p>
                    <a href="#" class="action">
                        <i class="fa fa-arrow-circle-right"></i>
                    </a>
                </div>
            @endforeach
        </div>
    </div>
</div>
<div class="features-blue" style="background-color:#282d32;background-image:url(&quot;#282d32&quot;);">
    <div class="container" style="background-color:#282d32;">
        <div class="intro">
            <h2 class="text-center">Features</h2>
        </div>
        <div class="row features">
            <div class="col-sm-6 col-md-4 item"><i class="fa fa-map-marker icon"></i>
                <h3 class="name">Menjangkau Banyak Kawasan</h3>
                <p class="description">Pesan tiket kemana saja tanpa khawatir dengan kawasan yang diinginkan, dengan Order Ticket kemana pun bisa.</p>
            </div>
            <div class="col-sm-6 col-md-4 item"><i class="fa fa-clock-o icon"></i>
                <h3 class="name">Tiket Selalu Tersedia</h3>
                <p class="description">Jangan khawatir tidak kebagian tiket di stasiun yang diinginkan karena masih banyak stasiun alternative yang bisa di pergunakan.</p>
            </div>
            <div class="col-sm-6 col-md-4 item"><i class="fa fa-list-alt icon"></i>
                <h3 class="name">Cara Pesan Mudah</h3>
                <p class="description">Cara pemesanan Order Ticket sangat simple jadi sangat mudah di mengerti dan tanpa khawatir salah pengisian identitas dsb.</p>
            </div>
            <div class="col-sm-6 col-md-4 item"><i class="fa fa-leaf icon"></i>
                <h3 class="name">Hemat Energi</h3>
                <p class="description">Kenapa hemat energi? karena dengan Order Ticket kita bisa pesan tiket dimana pun dan kapanpun hanya menggunakan komputar ataupun smartphone</p>
            </div>
            <div class="col-sm-6 col-md-4 item"><i class="fa fa-plane icon"></i>
                <h3 class="name">Cepat & Amant</h3>
                <p class="description">Disini Kami juga menyediakan tiket transportasi kendaraan cepat sampai dan aman dengan harga yang relatif tidak terlalu mahal dari harga reguler</p>
            </div>
            <div class="col-sm-6 col-md-4 item"><i class="fa fa-phone icon"></i>
                <h3 class="name">Pelayanan</h3>
                <p class="description">Pelayanan kami cepat respon, jadi jangan khawatir ada kendala atau pertanyaan anda lama terjawab</p>
            </div>
        </div>
    </div>
</div>
<div class="testimonials-clean">
    <div class="container">
        <div class="intro">
            <h2 class="text-center">Testimoni</h2>
            <p class="text-center">Apa yang di katakan pelanggan-pelanggan kami selama ini??</p>
        </div>
        <div class="row people">
            <div class="col-md-6 col-lg-4 item">
                <div class="box">
                    <p class="description">Aenean tortor est, vulputate quis leo in, vehicula rhoncus lacus. Praesent aliquam in tellus eu gravida. Aliquam varius finibus est.</p>
                </div>
                <div class="author"><img class="rounded-circle" src="assets/img/1.jpg">
                    <h5 class="name">Ben Johnson</h5>
                    <p class="title">CEO of Company Inc.</p>
                </div>
            </div>
            <div class="col-md-6 col-lg-4 item">
                <div class="box">
                    <p class="description">Praesent aliquam in tellus eu gravida. Aliquam varius finibus est, et interdum justo suscipit id.</p>
                </div>
                <div class="author"><img class="rounded-circle" src="assets/img/3.jpg">
                    <h5 class="name">Carl Kent</h5>
                    <p class="title">Founder of Style Co.</p>
                </div>
            </div>
            <div class="col-md-6 col-lg-4 item">
                <div class="box">
                    <p class="description">Aliquam varius finibus est, et interdum justo suscipit. Vulputate quis leo in, vehicula rhoncus lacus. Praesent aliquam in tellus eu.</p>
                </div>
                <div class="author"><img class="rounded-circle" src="assets/img/2.jpg">
                    <h5 class="name">Emily Clark</h5>
                    <p class="title">Owner of Creative Ltd.</p>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection