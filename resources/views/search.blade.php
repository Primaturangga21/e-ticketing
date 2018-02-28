@extends('layout.app')

@section('content')
<div class="projects-clean" style="background-color: #F9F9F9;">
    <div class="container">
        <ul class="list-group">
          <li class="list-group-item" style="margin-top: 20px;">
            <div class="row">
                <div class="col-md-6">
                    <i class="icon-circle-arrow-right green"></i>
                    <strong class="origin-station">Gambir</strong>
                    <em>ke</em>
                    <strong class="destination-station">Bandung</strong> - 
                    <span id="date">20 Februari 2018</span>, 
                    <span class="num-adult-label">1</span> Dewasa, 
                    <span class="num-infant-label">0</span> Bayi
                </div>
                <div class="col-md-6">
                    <div class="pull-right text-right change-button change-date-oneway">
                        <a href="{{ url('/') }}" class="btn btn-primary btn-sm mr-10 fs-13 text-center" style="color: #fff; background-color: rgb(2,159,226);"><i class="fa fa-arrow-circle-down"></i> Ganti Pencarian</a>
                    </div>
                </div>
            </div>
          </li>
        </ul>
        <div class="table-responsive">
            <table id="example" class="table table-hover" style="margin-top: 20px; margin-bottom: 20px;">
                <thead class="thead-light">
                    <tr>
                        <th scope="col" class="text-center">Kereta</th>
                        <th scope="col" class="text-center">Berangkat</th>
                        <th scope="col" class="text-center">Tiba</th>
                        <th scope="col" class="text-center">Harga Tiket</th>
                        <th scope="col" class="text-center"></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><div class="py-3"><span class="text-center d-block text-uppercase">ARGO PARAHYANGAN 22</span><i class="text-center d-block">Ekonomi (C)</i></div>
                        </td>
                        <td><div class="py-3"><span class="text-center d-block">08:45 WIB</span><i class="text-center d-block">Gambir</i></div>
                        </td>
                        <td><div class="py-3"><span class="text-center d-block">12:01 WIB</span><i class="text-center d-block">Bandung</i></div>
                        </td>
                        <td>
                            <div class="py-3">
                                <span class="text-center d-block">Rp80.000</span>
                                <a href="#" class="text-center d-block" data-toggle="tooltip" data-placement="bottom" style="font-size: 12px;">
                                    <span>Lihat Rincian <i class="fa fa-arrow-circle-down"></i></span>
                                </a>
                                <div class="tooltip bs-tooltip-top" role="tooltip">
                                    <div class="arrow"></div>
                                    <div class="tooltip-inner">
                                        Hello
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="py-3 px-2">
                                <form method="post" action="/vtweb">
                                    {{ csrf_field() }}
                                    <input type="hidden" name="tipe" value="kereta">
                                    <input type="hidden" name="from" value="Gambir">
                                    <input type="hidden" name="to" value="Bandung">
                                    <input type="hidden" name="departue" value="02/08/2018">
                                    <input type="hidden" name="return" value="05/08/2018">
                                    <input type="hidden" name="price1" value="80000">
                                    <input type="hidden" name="price2" value="80000">
                                    <input type="submit" class="btn btn-primary float-right w-100" style="background-color: rgb(2,159,226)" name="payment" value="Pesan Tiket">
                                </form>
                            </div>
                        </td>
                    </tr>
                <tr>
                        <td><div class="py-3"><span class="text-center d-block text-uppercase">ARGO PARAHYANGAN 22</span><i class="text-center d-block">Ekonomi (C)</i></div>
                        </td>
                        <td><div class="py-3"><span class="text-center d-block">08:45 WIB</span><i class="text-center d-block">Gambir</i></div>
                        </td>
                        <td><div class="py-3"><span class="text-center d-block">12:01 WIB</span><i class="text-center d-block">Bandung</i></div>
                        </td>
                        <td>
                            <div class="py-3">
                                <span class="text-center d-block">Rp80.000</span>
                                <a href="#" class="text-center d-block" data-toggle="tooltip" data-placement="bottom" style="font-size: 12px;">
                                    <span>Lihat Rincian <i class="fa fa-arrow-circle-down"></i></span>
                                </a>
                                <div class="tooltip bs-tooltip-top" role="tooltip">
                                    <div class="arrow"></div>
                                    <div class="tooltip-inner">
                                        Hello
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="py-3 px-2">
                                <form method="post" action="/vtweb">
                                    {{ csrf_field() }}
                                    <input type="hidden" name="tipe" value="kereta">
                                    <input type="hidden" name="from" value="Gambir">
                                    <input type="hidden" name="to" value="Bandung">
                                    <input type="hidden" name="departue" value="02/08/2018">
                                    <input type="hidden" name="return" value="">
                                    <input type="hidden" name="price1" value="80000">
                                    <input type="hidden" name="price2" value="">
                                    <input type="submit" class="btn btn-primary float-right w-100" style="background-color: rgb(2,159,226)" name="payment" value="Pesan Tiket">
                                </form>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td><div class="py-3"><span class="text-center d-block text-uppercase">ARGO PARAHYANGAN 22</span><i class="text-center d-block">Ekonomi (C)</i></div>
                        </td>
                        <td><div class="py-3"><span class="text-center d-block">08:45 WIB</span><i class="text-center d-block">Gambir</i></div>
                        </td>
                        <td><div class="py-3"><span class="text-center d-block">12:01 WIB</span><i class="text-center d-block">Bandung</i></div>
                        </td>
                        <td>
                            <div class="py-3">
                                <span class="text-center d-block">Rp80.000</span>
                                <a href="#" class="text-center d-block" data-toggle="tooltip" data-placement="bottom" style="font-size: 12px;">
                                    <span>Lihat Rincian <i class="fa fa-arrow-circle-down"></i></span>
                                </a>
                                <div class="tooltip bs-tooltip-top" role="tooltip">
                                    <div class="arrow"></div>
                                    <div class="tooltip-inner">
                                        Hello
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="py-3 px-2">
                                <form method="post">
                                    <input type="hidden" name="tipe">
                                </form>
                                <button class="btn btn-primary float-right w-100" style="background-color: rgb(2,159,226);">Pesan Tiket</button>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td><div class="py-3"><span class="text-center d-block text-uppercase">ARGO PARAHYANGAN 22</span><i class="text-center d-block">Ekonomi (C)</i></div>
                        </td>
                        <td><div class="py-3"><span class="text-center d-block">08:45 WIB</span><i class="text-center d-block">Gambir</i></div>
                        </td>
                        <td><div class="py-3"><span class="text-center d-block">12:01 WIB</span><i class="text-center d-block">Bandung</i></div>
                        </td>
                        <td>
                            <div class="py-3">
                                <span class="text-center d-block">Rp80.000</span>
                                <a href="#" class="text-center d-block" data-toggle="tooltip" data-placement="bottom" style="font-size: 12px;">
                                    <span>Lihat Rincian <i class="fa fa-arrow-circle-down"></i></span>
                                </a>
                                <div class="tooltip bs-tooltip-top" role="tooltip">
                                    <div class="arrow"></div>
                                    <div class="tooltip-inner">
                                        Hello
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="py-3 px-2">
                                <form method="post">
                                    <input type="hidden" name="tipe">
                                </form>
                                <button class="btn btn-primary float-right w-100" style="background-color: rgb(2,159,226);">Pesan Tiket</button>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td><div class="py-3"><span class="text-center d-block text-uppercase">ARGO PARAHYANGAN 22</span><i class="text-center d-block">Ekonomi (C)</i></div>
                        </td>
                        <td><div class="py-3"><span class="text-center d-block">08:45 WIB</span><i class="text-center d-block">Gambir</i></div>
                        </td>
                        <td><div class="py-3"><span class="text-center d-block">12:01 WIB</span><i class="text-center d-block">Bandung</i></div>
                        </td>
                        <td>
                            <div class="py-3">
                                <span class="text-center d-block">Rp80.000</span>
                                <a href="#" class="text-center d-block" data-toggle="tooltip" data-placement="bottom" style="font-size: 12px;">
                                    <span>Lihat Rincian <i class="fa fa-arrow-circle-down"></i></span>
                                </a>
                                <div class="tooltip bs-tooltip-top" role="tooltip">
                                    <div class="arrow"></div>
                                    <div class="tooltip-inner">
                                        Hello
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="py-3 px-2">
                                <form method="post">
                                    <input type="hidden" name="tipe">
                                </form>
                                <button class="btn btn-primary float-right w-100" style="background-color: rgb(2,159,226);">Pesan Tiket</button>
                            </div>
                        </td>
                    </tr>
              </tbody>
            </table>
        </div>
    </div>
</div>
@endsection