@extends('layouts.app')

@section('title', 'About-Us')

@section('content')


<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
<section class="py-3 py-md-5">
    <div class="container">
      <div class="row gy-3 gy-md-4 gy-lg-0 align-items-lg-center">
        <div class="col-12 col-lg-6 col-xl-5">
          <img class="img-fluid rounded" loading="lazy" src="./uploads/about.jpg" alt="About 1">
        </div>
        <div class="col-12 col-lg-6 col-xl-7">
          <div class="row justify-content-xl-center">
            <div class="col-12 col-xl-11">
              <h2 class="mb-3">Who Are We?</h2>
              <p class="lead fs-4 text-secondary mb-3">We help people to build incredible brands and superior products. Our perspective is to furnish outstanding captivating services.</p>
              <p class="mb-5">We are a fast-growing company, but we have never lost sight of our core values. We believe in collaboration, innovation, and customer satisfaction. We are always looking for new ways to improve our products and services.</p>
              <div class="row gy-4 gy-md-0 gx-xxl-5X">
                <div class="col-12 col-md-6">
                  <div class="d-flex">
                    <div class="me-4 text-primary">
                        <i class="bi bi-gear-fill" style="font-size: 32px;color:blue"></i>
                    </div>
                    <div>
                      <h2 class="h4 mb-3">Versatile Brand</h2>
                      <p class="text-secondary mb-0">We are crafting a digital method that subsists life across all mediums.</p>
                    </div>
                  </div>
                </div>
                <div class="col-12 col-md-6">
                  <div class="d-flex">
                    <div class="me-4 text-primary">
                        <i class="bi bi-fire" style="font-size: 32px;color:blue"></i>
                    </div>
                    <div>
                      <h2 class="h4 mb-3">Digital Agency</h2>
                      <p class="text-secondary mb-0">We believe in innovation by merging primary with elaborate ideas.</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

@endsection
