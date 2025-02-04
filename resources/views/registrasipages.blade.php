@extends('layouts.main')
@section('container')

<div class="pagetitle">
    <h1>Registrasi</h1>
    <nav>
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
            <li class="breadcrumb-item active">Resgistrasi</li>
        </ol>
    </nav>
</div><!-- End Page Title -->

<section class="section dashboard">
    <div class="row">

        <!-- Left side columns -->
        <div class="col-lg-12">
            <div class="row">
                <div class="card">
                    @if (session()->has('success'))
                    <div class="alert alert-success p-2" role="alert">
                        {{ session('success') }}
                    </div>
                    @endif

                    @if (session()->has('error'))
                    <div class="alert alert-danger p-2" role="alert">
                        {{ session('error') }}
                    </div>
                    @endif
                    <div class="card-body">
                   
                        <div class="row">
                            <!-- Sales Card -->
                            <div class="col-xxl-4 col-md-6 mt-5">
                                <div class="card info-card sales-card">

                                    <div class="card-body">
                                        <h5 class="card-title">Registrasi <span></span></h5>
                                        <a href="{{ route('registrasi-perusahaan') }}">
                                        <div class="d-flex align-items-center">
                                            <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                                <i class="bi bi-person"></i>
                                            </div>
                                            <div class="ps-3">
                                                <h6>Perusahaan</h6>
                                            </div>
                                        </div>
                                        </a>
                                    </div>

                                </div>
                            </div><!-- End Sales Card -->
                            <!-- Sales Card -->
                            <div class="col-xxl-4 col-md-6 mt-5">
                                <div class="card info-card sales-card">

                                    <div class="card-body">
                                        <h5 class="card-title">Registrasi <span></span></h5>
                                        <a href="{{ route('registrasi-pemeriksaan-by-paket') }}">
                                        <div class="d-flex align-items-center">
                                            <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                                <i class="bi bi-person"></i>
                                            </div>
                                            <div class="ps-3">
                                                <h6>Paket</h6>
                                            </div>
                                        </div>
                                        </a>
                                    </div>

                                </div>
                            </div><!-- End Sales Card -->
                            <!-- Sales Card -->
                            <div class="col-xxl-4 col-md-6 mt-5">
                                <div class="card info-card sales-card">

                                    <div class="card-body">
                                        <h5 class="card-title">Registrasi <span></span></h5>
                                        <a href="{{ route('registrasi-pemeriksaan') }}">
                                        <div class="d-flex align-items-center">
                                            <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                                <i class="bi bi-person"></i>
                                            </div>
                                            <div class="ps-3">
                                                <h6>Custom</h6>
                                            </div>
                                        </div>
                                        </a>
                                    </div>

                                </div>
                            </div><!-- End Sales Card -->


                        </div>

                    </div>
                </div>
            </div>
        </div><!-- End Left side columns -->

    </div>
</section>


@endsection
 