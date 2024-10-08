<footer class="main">
    <section class="newsletter p-30 text-white wow fadeIn animated">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-7 mb-md-3 mb-lg-0">
                    <div class="row align-items-center">
                        <div class="col flex-horizontal-center">
                            <img class="icon-email"
                                src="{{ asset('frontend/assets/imgs/theme/icons/icon-email.svg') }}"
                                alt="">
                            <h4 class="font-size-20 mb-0 ml-3">{{ __('frontend.Sign up to Newsletter') }}</h4>
                        </div>
                        <div class="col my-4 my-md-0 des">
                            <h5 class="font-size-15 ml-4 mb-0">{{ __('frontend.and receive coupon for first shopping') }}</strong></h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-5">
                    <!-- Subscribe Form -->
                    <form class="form-subcriber d-flex wow fadeIn animated">
                        <input type="email" class="form-control bg-white font-small"
                            placeholder="Enter your email">
                        <button class="btn bg-dark text-white" type="submit">{{ __('frontend.Subscribe') }}</button>
                    </form>
                    <!-- End Subscribe Form -->
                </div>
            </div>
        </div>
    </section>
    <section class="section-padding footer-mid">
        <div class="container pt-15 pb-20">
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="widget-about font-md mb-md-5 mb-lg-0">
                        <div class="logo logo-width-1 wow fadeIn animated">
                            <a href="index.html">Golden Era</a>
                        </div>
                        <h5 class="mt-20 mb-10 fw-600 text-grey-4 wow fadeIn animated">{{ __('frontend.Contact') }}</h5>
                        <p class="wow fadeIn animated">
                            <strong>{{ __('frontend.Address') }}: </strong>123 Tran Duy Hung Road, Ha noi, Viet Nam
                        </p>
                        <p class="wow fadeIn animated">
                            <strong>{{ __('frontend.Phone') }}: </strong>+01 2222 222 /(+84) 01 2345 6789
                        </p>
                        <p class="wow fadeIn animated">
                            <strong>{{ __('frontend.Hours') }}: </strong>8:00 - 21:00, Mon - Sat
                        </p>
                        <h5 class="mb-10 mt-30 fw-600 text-grey-4 wow fadeIn animated">{{ __('frontend.Follow Us') }}</h5>
                        <div class="mobile-social-icon wow fadeIn animated mb-sm-5 mb-md-0">
                            <a href="#"><img
                                    src="{{ asset('frontend/assets/imgs/theme/icons/icon-facebook.svg') }}"
                                    alt=""></a>
                            <a href="#"><img
                                    src="{{ asset('frontend/assets/imgs/theme/icons/icon-twitter.svg') }}"
                                    alt=""></a>
                            <a href="#"><img
                                    src="{{ asset('frontend/assets/imgs/theme/icons/icon-instagram.svg') }}"
                                    alt=""></a>
                            <a href="#"><img
                                    src="{{ asset('frontend/assets/imgs/theme/icons/icon-pinterest.svg') }}"
                                    alt=""></a>
                            <a href="#"><img
                                    src="{{ asset('frontend/assets/imgs/theme/icons/icon-youtube.svg') }}"
                                    alt=""></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 col-md-3">
                    <h5 class="widget-title wow fadeIn animated">{{ __('frontend.About') }}</h5>
                    <ul class="footer-list wow fadeIn animated mb-sm-5 mb-md-0">
                        <li><a href="#">{{ __('frontend.About Us') }}</a></li>
                        <li><a href="#">{{ __('frontend.Delivery Information') }}</a></li>
                        <li><a href="#">{{ __('frontend.Privacy Policy') }}</a></li>
                        <li><a href="#">{{ __('frontend.Terms & Conditions') }}</li>
                        <li><a href="#">{{ __('frontend.Contact Us') }}</a></li>
                        <li><a href="#">{{ __('frontend.Support Center') }}</a></li>
                    </ul>
                </div>
                <div class="col-lg-2  col-md-3">
                    <h5 class="widget-title wow fadeIn animated">{{ __('frontend.My Account') }}</h5>
                    <ul class="footer-list wow fadeIn animated">
                        <li><a href="/login">{{ __('frontend.Sign In') }}</a></li>
                        <li><a href="/cart">{{ __('frontend.View Cart') }}</a></li>
                        <li><a href="#">{{ __('frontend.My Wishlist') }}</a></li>
                        <li><a href="{{route('order.track')}}">{{ __('frontend.Track My Order') }}</a></li>
                        <li><a href="#">{{ __('frontend.Help') }}</a></li>
                        <li><a href="#">{{ __('frontend.Order') }}</a></li>
                    </ul>
                </div>
                <div class="col-lg-4">
                    <h5 class="widget-title wow fadeIn animated">{{ __('frontend.Install App') }}</h5>
                    <div class="row">
                        <div class="col-md-8 col-lg-12">
                            <p class="wow fadeIn animated">{{ __('frontend.From App Store or Google Play') }}</p>
                            <div class="download-app wow fadeIn animated">
                                <a href="#" class="hover-up mb-sm-4 mb-lg-0"><img class="active"
                                        src="{{ asset('frontend/assets/imgs/theme/app-store.jpg') }}"
                                        alt=""></a>
                                <a href="#" class="hover-up"><img
                                        src="{{ asset('frontend/assets/imgs/theme/google-play.jpg') }}"
                                        alt=""></a>
                            </div>
                        </div>
                        <div class="col-md-4 col-lg-12 mt-md-3 mt-lg-0">
                            <p class="mb-20 wow fadeIn animated">{{ __('frontend.Secured Payment Gateways') }}</p>
                            <img class="wow fadeIn animated"
                                src="{{ asset('frontend/assets/imgs/theme/payment-method.png') }}"
                                alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div class="container pb-20 wow fadeIn animated">
        <div class="row">
            <div class="col-12 mb-20">
                <div class="footer-bottom"></div>
            </div>
            <div class="col-lg-6">
                <p class="float-md-left font-sm text-muted mb-0">&copy; 2023, <strong
                        class="text-brand">Hung Phan</strong> - Evara Ecommerce </p>
            </div>
            <div class="col-lg-6">
                <p class="text-lg-end text-start font-sm text-muted mb-0">
                    Designed by <a href="http://cherishos.com/" target="_blank">cherishos.com</a>. All rights
                    reserved
                </p>
            </div>
        </div>
    </div>
</footer>
