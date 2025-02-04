@extends('layouts.main')
@section('container')
    <div class="pagetitle">
        <h1>Perbaharui data settings</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#">Profile</a></li>
                <li class="breadcrumb-item active">Perbaharui data pengguna</li>
            </ol>
        </nav>
    </div><!-- End Page Title -->

    <section class="section dashboard">
        <div class="row">

            <!-- Left side columns -->
            <div class="col-lg-12">
                <div class="row">
                    <div class="card">
                        <div class="card-body p-3">

                            <form class="row g-3" method="post" action="{{ route('update-settings', ['setting' => $setting->id]) }}">
                                @csrf
                                @method('put')
                            
                                <div class="col-md-3">
                            
                                    {{-- Warna Satu --}}
                                    <div class="py-2">
                                        <label for="warna_satu" class="form-label">Warna Satu</label>
                                        <input type="color" value="{{ old('warna_satu', $setting->warna_satu) }}" 
                                               class="form-control @error('warna_satu') is-invalid @enderror" 
                                               id="warna_satu" name="warna_satu">
                                        @error('warna_satu')
                                            <label class="form-check-label invalid-feedback">{{ $message }}</label>
                                        @enderror
                                    </div>
                                    
                            
                                    {{-- PPN --}}
                                    <div class="py-2">
                                        <label for="ppn" class="form-label">PPN</label>
                                        <input type="text" value="{{ old('ppn', $setting->ppn) }}" 
                                               class="form-control @error('ppn') is-invalid @enderror" id="ppn" name="ppn">
                                        @error('ppn')
                                            <label class="form-check-label invalid-feedback">{{ $message }}</label>
                                        @enderror
                                    </div>
                            
                                    {{-- PPH --}}
                                    <div class="py-2">
                                        <label for="pph" class="form-label">PPH</label>
                                        <input type="text" value="{{ old('pph', $setting->pph) }}" 
                                               class="form-control @error('pph') is-invalid @enderror" id="pph" name="pph">
                                        @error('pph')
                                            <label class="form-check-label invalid-feedback">{{ $message }}</label>
                                        @enderror
                                    </div>
                            
                                </div>
                            
                                <div class="col-md-3">
                                    {{-- No changes to these sections for the setting update --}}
                                </div>
                            
                                <div class="col-12">
                                    <button type="submit" class="btn btn-primary">Update Settings</button>
                                </div>
                            </form>
                            

                            <!-- end card -->
                        </div>
                    </div>
                </div>
            </div><!-- End Left side columns -->

        </div>
    </section>
@endsection
