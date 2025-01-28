@extends('layouts.app')

@section('title', 'Contact-Us')

@section('content')

<div class="container">
    <h1>Contact Us</h1>

    <!-- Success message after form submission -->
    @if(session('success'))
        <div class="alert alert-success">
            {{ session('success') }}
        </div>
    @endif

    <form action="{{ route('contact.submit') }}" method="POST">
        @csrf
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css" rel="stylesheet">
        <div class="container">
            <div class="contact__wrapper shadow-lg mt-n9">
                <div class="row no-gutters">
                    <div class="col-lg-5 contact-info__wrapper gradient-brand-color p-5 order-lg-2">
                        <h3 class="color--white mb-5">Get in Touch</h3>

                        <ul class="contact-info__list list-style--none position-relative z-index-101">
                            <li class="mb-4 d-flex align-items-start">
                                <span class="position-relative pr-3"><i class="fas fa-envelope"></i></span> fuerteecom@gmail.com
                            </li>
                            <li class="mb-4 d-flex align-items-start">
                                <span class="position-relative pr-3"><i class="fas fa-phone"></i></span> (012)-3456-789
                            </li>
                            <li class="mb-4 d-flex align-items-start">
                                <span class="position-relative pr-3"><i class="fas fa-map-marker-alt"></i></span> 405 - The Spire,
                                <br>150 Feet Ring Rd,
                                <br>Rajkot, Gujarat 360007
                            </li>
                        </ul>
                    </div>

                    <div class="col-lg-7 contact-form__wrapper p-5 order-lg-1">
                        <form action="#" class="contact-form form-validate" novalidate="novalidate">
                            <div class="row">
                                <div class="col-sm-6 mb-3">
                                    <div class="form-group">
                                        <label class="required-field" for="firstName">First Name</label>
                                        <input type="text" class="form-control" id="name" name="name" placeholder="Wendy" required>
                                        @error('name')<div class="alert alert-danger">{{ $message }}</div>@enderror
                                    </div>
                                </div>

                                <div class="col-sm-6 mb-3">
                                    <div class="form-group">
                                        <label for="lastName">Last Name</label>
                                        <input type="text" class="form-control" id="lastname" name="lastname" placeholder="Appleseed" required>
                                        @error('lastname')<div class="alert alert-danger">{{ $message }}</div>@enderror
                                    </div>
                                </div>

                                <div class="col-sm-6 mb-3">
                                    <div class="form-group">
                                        <label class="required-field" for="email">Email</label>
                                        <input type="email" class="form-control" id="email" name="email" placeholder="wendy.apple@seed.com" required>
                                    </div>
                                </div>

                                <div class="col-sm-6 mb-3">
                                    <div class="form-group">
                                        <label for="phone">Phone Number</label>
                                        <input type="tel" class="form-control" id="phone" name="phone" placeholder="(021)-454-545" required>
                                        @error('phone')<div class="alert alert-danger">{{ $message }}</div>@enderror
                                    </div>
                                </div>

                                <div class="col-sm-12 mb-3">
                                    <div class="form-group">
                                        <label class="required-field" for="message">How can we help?</label>
                                        <textarea class="form-control" id="message" name="message" rows="4" placeholder="Hi there, I would like to....." required></textarea>
                                        @error('message')<div class="alert alert-danger">{{ $message }}</div>@enderror
                                    </div>
                                </div>

                                <div class="col-sm-12 mb-3">
                                    <button type="submit" name="submit" class="btn btn-primary">Submit</button>
                                </div>

                            </div>
                        </form>
                    </div>
                    <!-- End Contact Form Wrapper -->

                </div>
            </div>
        </div>
@endsection
