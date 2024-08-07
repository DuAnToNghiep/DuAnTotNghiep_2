<!DOCTYPE HTML>
<html lang="en">


<!-- Mirrored from wp.alithemes.com/html/evara/evara-backend/page-account-register.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 01 Aug 2021 15:33:33 GMT -->

<head>
    <meta charset="utf-8">
    <title>Evara Dashboard</title>
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta property="og:title" content="">
    <meta property="og:type" content="">
    <meta property="og:url" content="">
    <meta property="og:image" content="">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="{{ asset('backend/assets/imgs/theme/favicon.svg') }}">
    <!-- Template CSS -->
    <link href="{{ asset('backend/assets/css/main.css') }}" rel="stylesheet" type="text/css" />
</head>

<body>
    <main>
        <section class="content-main mt-80 mb-80">
            <div class="card mx-auto card-login">
                <div class="card-body">
                    <h4 class="card-title mb-4">Create an Account</h4>
                    <form action="{{ route('auth.register.store') }}" method="post">
                        @csrf
                        <div class="mb-3">
                            <label class="form-label">Name</label>
                            <input class="form-control @error('name') is-invalid @enderror" placeholder="Your name"
                                type="text" name="name">
                            @error('name')
                                <span class="error invalid-feedback">{{ $message }}</span>
                            @enderror
                        </div> <!-- form-group// -->
                        <div class="mb-3">
                            <label class="form-label">Email</label>
                            <input class="form-control @error('email') is-invalid @enderror" placeholder="Your email"
                                name="email" type="text">
                            @error('email')
                                <span class="error invalid-feedback">{{ $message }}</span>
                            @enderror
                        </div> <!-- form-group// -->
                        <div class="mb-3">
                            <label class="form-label">Password</label>
                            <input type="password" name="password"
                                class="form-control @error('password') is-invalid @enderror" placeholder="Password">
                            @error('password')
                            <span class="error invalid-feedback">{{ $message }}</span>
                            @enderror
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Comfirm Password</label>
                            <input type="password" name="password_confirmation"
                                class="form-control @error('password_confirmation') is-invalid @enderror"
                                placeholder="Retype password">
                            @error('password_confirmation')
                            <span class="error invalid-feedback">{{ $message }}</span>
                            @enderror
                        </div>
                        <div class="mb-3">
                            <p class="small text-center text-muted">By signing up, you confirm that you’ve read and
                                accepted our User Notice and Privacy Policy.</p>
                        </div> <!-- form-group  .// -->
                        <div class="mb-4">
                            <button type="submit" class="btn btn-primary w-100"> Login </button>
                        </div> <!-- form-group// -->
                    </form>
                    <p class="text-center small text-muted mb-15">or sign up with</p>
                    <p class="text-center mb-2">Already have an account? <a href="{{ route('auth.login') }}">Sign in
                            now</a></p>
                </div>
            </div>
        </section>
        <footer class="main-footer text-center">
            <p class="font-xs">
                <script>
                    document.write(new Date().getFullYear())
                </script> ©, Evara - HTML Ecommerce Template .
            </p>
            <p class="font-xs mb-30">All rights reserved</p>
        </footer>
    </main>
    <script src="{{ asset('backend/assets/js/vendors/jquery-3.6.0.min.js') }}"></script>
    <script src="{{ asset('backend/assets/js/vendors/bootstrap.bundle.min.js') }}"></script>
    <script src="{{ asset('backend/assets/js/vendors/jquery.fullscreen.min.js') }}"></script>
    <!-- Main Script -->
    <script src="{{ asset('backend/assets/js/main.js') }}" type="text/javascript"></script>
</body>


<!-- Mirrored from wp.alithemes.com/html/evara/evara-backend/page-account-register.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 01 Aug 2021 15:33:33 GMT -->

</html>
