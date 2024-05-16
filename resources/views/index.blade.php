<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manhal Crafts</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css"
        integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css"
        integrity="sha512-sMXtMNL1zRzolHYKEujM2AqCLUR9F2C4/05cdbxjjLSRvMQIciEPCQZo++nk7go3BtSuK9kfa/s+a4f4i5pLkw=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"
        integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"
        integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
        integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="{{ asset('assets/style.css') }}">
    <link rel="stylesheet" href="https://cdn.rawgit.com/dimsemenov/Magnific-Popup/master/dist/magnific-popup.css">
    <script src="https://cdn.rawgit.com/dimsemenov/Magnific-Popup/master/dist/jquery.magnific-popup.js"></script>

    <!-- *************************************** -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous">
    </script>
    <!-- *********************************************** -->


</head>

<body>

    <!-- Topbar | Navbar Start -->
    <nav class="navbar navbar-expand-lg navbar-light bg-white">
        <div class="container-fluid my-4">
            <!-- Logo for Both Mobile and Desktop Start -->
            <a class="navbar-brand" href="#"><strong>{{ $contact->title }}</strong></a>
            <!-- Logo for Both Mobile and Desktop End -->

            <!-- Mobile Screen Menu Start -->
            <div class="d-block d-sm-block d-md-none d-lg-none d-xl-none">
                <button class="btn btn-dark" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight"
                    aria-controls="offcanvasRight"><i class="fa-solid fa-bars"></i></button>

                <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasRight"
                    aria-labelledby="offcanvasRightLabel">
                    <div class="offcanvas-header">
                        <h5 id="offcanvasRightLabel">Manhal Crafts</h5>
                        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas"
                            aria-label="Close"></button>
                    </div>
                    <div class="offcanvas-body">
                        <ul class="navbar-nav me-auto my-2" style="--bs-scroll-height: 100px;">
                            @foreach ($navigation as $link)
                                <li class="nav-item">
                                    <a class="nav-link active" aria-current="page"
                                        href="{{ $link->url }}">{{ $link->title }}</a>
                                </li>
                            @endforeach
                        </ul>$navigation
                    </div>
                </div>
            </div>
            <!-- Mobile Screen Menu End -->

            <!-- Desktop Screen Menu Start -->
            <div class="collapse navbar-collapse" id="navbarScroll">
                <ul class="navbar-nav mx-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
                    @foreach ($navigation as $link)
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page"
                                href="{{ $link->url }}">{{ $link->title }}</a>
                        </li>
                    @endforeach
                </ul>
                <form class="d-flex">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-dark" type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
                </form>
            </div>
            <!-- Desktop Screen Menu End -->
        </div>
    </nav>
    <!-- Topbar | Navbar End -->

    <!-- Social Media | Navbar Start -->
    <nav class="social">
        <ul>
            @foreach ($social_media as $social)
                <li class="{{ $social->tag }}"><a href="{{ $social->url }}">{{ $social->platform }} <i
                            style="font-size: 24px" class="{{ $social->icon }}"></i></a>
                </li>
            @endforeach
        </ul>
    </nav>
    <!-- Social Media | Navbar End -->


    <!-- Header Section Start -->
    <section>
        <div style="background: url('{{ asset($header->background_url) }}'); max-width: 100%;"
            class="responsive-image">
            <div class="row no-gutters justify-content-center align-items-center responsive-image">
                <div class="col-8">
                    <h2 class="text-center">
                        <span
                            style="background-color: #a18c7d; font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;"
                            class="my-5">{!! nl2br(e($header->title)) !!}</span>
                    </h2>
                </div>
            </div>
        </div>
    </section>
    <!-- Header Section End -->

    <!-- Main Content Start -->
    <div class="container">

        <!-- About Section Start -->
        <section class="py-5">
            <div class="row no-gutters justify-content-center align-items-center">
                <!-- About | Div-1 Start -->
                <div class="col-md-6">
                    <h4 class="text-end my-4"><strong>{{ $aboutDiv1->about_title }}</strong></h4>
                    <p class="text-end"><strong>{!! nl2br(e($aboutDiv1->about_content)) !!}</strong></p>
                    <img class="float-end" src="{{ asset($aboutDiv1->img_url) }}" height="350px"
                        style="max-width: 100%;" />
                </div>
                <!-- About | Div-1 End -->

                <!-- About | Div-2 Start -->
                <div class="col-md-6">
                    <video id="comp-jl0rroaz_video" class="K8MSra" crossorigin="anonymous"
                        aria-label="Product showcasing of Asixbd" playsinline="" preload="auto" muted=""
                        loop="" tabindex="-1" autoplay="" src="{{ $aboutDiv2->video_url }}"
                        style="height: 100%; width: 100%; object-fit: cover; object-position: center center; opacity: 1;">
                    </video>
                    <h4 class="my-4"><strong>{{ $aboutDiv2->about_title }}</strong></h4>
                    <p class="custom-justify"><strong>{!! nl2br(e($aboutDiv2->about_content)) !!}</strong></p>
                </div>
                <!-- About | Div-2 End -->
            </div>
        </section>
        <!-- About Section End -->

        <!-- Commitment Section Start -->
        <section class="py-5">
            <!-- Commitment | Header Start -->
            <div class="content">
                <h2 class="section-header">Our Commitment</h2>
                <div class="section-header-underline"></div>
            </div>
            <!-- Commitment | Header End -->

            <div class="row no-gutters justify-content-center align-items-center">
                <!-- Commitment | Div-1 Start -->
                <div class="col-md-6">
                    <h4 class="text-end my-4"><strong>{{ $commitment1->title }}</strong></h4>
                    <p class="text-end custom-justify">
                        <strong>{!! nl2br(e($commitment1->description)) !!}</strong>
                    </p>
                    @if ($commitment1->image_url)
                        <img src="{{ asset($commitment1->image_url) }}" height="250px" style="max-width: 100%;" />
                    @endif
                </div>
                <!-- Commitment | Div-1 End -->

                <!-- Commitment | Div-2 Start -->
                <div class="col-md-6">
                    @if ($commitment2->video_url)
                        <video class="K8MSra" crossorigin="anonymous" aria-label="Product showcasing of Asixbd"
                            playsinline="" preload="auto" muted="" loop="" tabindex="-1"
                            autoplay="" src="{{ asset($commitment2->video_url) }}"
                            style="height: 250px; width: 100%; object-fit: cover; object-position: center center; opacity: 1;">
                        </video>
                    @endif
                    <h4 class="my-4"><strong>{{ $commitment2->title }}</strong></h4>
                    <p class="">
                        <strong>{!! nl2br(e($commitment2->description)) !!}</strong>
                    </p>
                </div>
                <!-- Commitment | Div-2 End -->

                <!-- Commitment | Div-3 Start -->
                <div class="col-md-6">
                    <h4 class="text-end my-4"><strong>{{ $commitment3->title }}</strong></h4>
                    <p class="text-end custom-justify">
                        <strong>{!! nl2br(e($commitment3->description)) !!}</strong>
                    </p>
                    @if ($commitment3->image_url)
                        <img class="float-end" src="{{ asset($commitment3->image_url) }}" height="250px"
                            style="max-width: 100%;" />
                    @endif
                </div>
                <!-- Commitment | Div-3 End -->

                <!-- Commitment | Div-4 Start -->
                <div class="col-md-6">
                    @if ($commitment4->image_url)
                        <img src="{{ asset($commitment4->image_url) }}" height="250px" style="max-width: 100%;" />
                    @endif
                    <h4 class="my-4"><strong>{{ $commitment4->title }}</strong></h4>
                    <p class="">
                        <strong>{!! nl2br(e($commitment4->description)) !!}</strong>
                    </p>
                </div>
                <!-- Commitment | Div-4 End -->
            </div>
        </section>
        <!-- Commitment Section End -->


        <!-- Work Section Start -->
        <section class="py-5">
            <!-- Work | Header Start -->
            <div class="content">
                <h2 class="section-header">Latest Work & Activity</h2>
                <div class="section-header-underline"></div>
            </div>
            <!-- Work | Header End -->

            <div class="row">
                <!-- Work | Div-1 Start -->
                <div class="col-md-4 me mt-4 hover-shadow" style="position: relative;">
                    <img data-bs-toggle="modal" data-bs-target="#workModal1" src="{{ asset($work1->image_url) }}"
                        width="100%" height="250px" />
                    <div class="centered">
                        <p class="text-center hide-btn">{{ $work1->short_desc }}</p>
                    </div>



                    <!-- ==================== Modal ==================== -->
                    <div class="modal fade" id="workModal1" tabindex="-1" aria-labelledby="workModalLabel1"
                        aria-hidden="true">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="staticBackdropLabel">{{ $work1->modal_title }}</h5>
                                    <button type="button" class="btn" data-bs-dismiss="modal"
                                        aria-label="Close"><i class="fas fa-times-circle"></i></button>
                                </div>
                                <div class="modal-body">
                                    <div class="row">

                                        <div class="col-md-7">
                                            <img src="{{ asset($work1->modal_url) }}"
                                                width="100%" height="250px" />
                                        </div>

                                        <div class="col-md-5">

                                            <p style="text-align: justify;">
                                                {{ $work1->modal_content }}
                                            </p>

                                            <span class="px-3 fs-5"><a href="{{ $work1->facebook_url }}"><i class="{{ $work1->facebook_icon }}"></i></a></span>
                                            <span class="px-3 fs-5"><a href="{{ $work1->twitter_url }}"><i class="{{ $work1->twitter_icon }}"></i></a></span>
                                            <span class="px-3 fs-5"><a href="{{ $work1->instagram_url }}"><i class="{{ $work1->instagram_icon }}"></i></a></span>
                                        </div>


                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                    <!-- ==================== Modal Ended ==================== -->


                </div>
                <!-- Work | Div-1 End -->

                <!-- Work | Div-2 Start -->
                <div class="col-md-4 me mt-4 hover-shadow" style="position: relative;">
                    <video data-bs-toggle="modal" data-bs-target="#workModal2" src="{{ asset($work2->video_url) }}"
                        width="100%" height="250px" autoplay loop muted playsinline></video>
                    <div class="centered">
                        <p class="text-center hide-btn">{{ $work2->short_desc }}</p>
                    </div>

                    <!-- Modal -->
                    <div class="modal fade" id="workModal2" tabindex="-1" aria-labelledby="workModalLabel2"
                        aria-hidden="true">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="staticBackdropLabel">{{ $work3->modal_title }}</h5>
                                    <button type="button" class="btn" data-bs-dismiss="modal"
                                        aria-label="Close"><i class="fas fa-times-circle"></i></button>
                                </div>
                                <div class="modal-body">
                                    <div class="row">
                                        <div class="col-md-7">
                                            <video src="{{ asset($work2->modal_url) }}" width="100%"
                                                height="250px" autoplay loop muted playsinline></video>
                                        </div>
                                        <div class="col-md-5">
                                            <p style="text-align: justify;">{{ $work2->modal_content }}</p>

                                            <span class="px-3 fs-5"><a href="{{ $work2->facebook_url }}"><i class="{{ $work2->facebook_icon }}"></i></a></span>
                                            <span class="px-3 fs-5"><a href="{{ $work2->twitter_url }}"><i class="{{ $work2->twitter_icon }}"></i></a></span>
                                            <span class="px-3 fs-5"><a href="{{ $work2->instagram_url }}"><i class="{{ $work2->instagram_icon }}"></i></a></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> <!-- Modal Ended -->

                </div>
                <!-- Work | Div-2 End -->

                <!-- Work | Div-3 Start -->
                <div class="col-md-4 me mt-4 hover-shadow" style="position: relative;">
                    <img data-bs-toggle="modal" data-bs-target="#workModal3" src="{{ asset($work3->image_url) }}"
                        width="100%" height="250px" />
                    <div class="centered">
                        <p class="text-center hide-btn">{{ $work3->short_desc }}</p>
                    </div>



                    <!-- ==================== Modal ==================== -->
                    <div class="modal fade" id="workModal3" tabindex="-1" aria-labelledby="workModalLabel3"
                        aria-hidden="true">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="staticBackdropLabel">{{ $work3->modal_title }}</h5>
                                    <button type="button" class="btn" data-bs-dismiss="modal"
                                        aria-label="Close"><i class="fas fa-times-circle"></i></button>
                                </div>
                                <div class="modal-body">
                                    <div class="row">

                                        <div class="col-md-7">
                                            <img src="{{ asset($work3->modal_url) }}"
                                                width="100%" height="250px" />
                                        </div>

                                        <div class="col-md-5">

                                            <p style="text-align: justify;">
                                                {{ $work3->modal_content }}
                                            </p>

                                            <span class="px-3 fs-5"><a href="{{ $work3->facebook_url }}"><i class="{{ $work3->facebook_icon }}"></i></a></span>
                                            <span class="px-3 fs-5"><a href="{{ $work3->twitter_url }}"><i class="{{ $work3->twitter_icon }}"></i></a></span>
                                            <span class="px-3 fs-5"><a href="{{ $work3->instagram_url }}"><i class="{{ $work3->instagram_icon }}"></i></a></span>
                                        </div>


                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                    <!-- ==================== Modal Ended ==================== -->


                </div>
                <!-- Work | Div-3 End -->
            </div>
        </section>
        <!-- Work Section End -->



        <!-- Membership Section Start -->
        <section class="py-5 my-5">
            <!-- Membership | Header Start -->
            <div class="content">
                <h2 class="section-header">Membership</h2>
                <div class="section-header-underline"></div>
            </div>
            <!-- Membership | Header End -->

            <!-- Membership | Slide Carousel Start -->
            <div class="owl-carousel owl-theme py-5" id="membershipslider">
                @foreach ($memberships as $membership)
                    <div class="item"><img class="image-css" src="{{ asset($membership->url) }}" height="100px"
                            width="100px"></div>
                @endforeach
            </div>
            <!-- Membership | Slide Carousel End -->

        </section>
        <!-- Membership Section End -->

    </div>
    <!-- Main Content End -->

    <!-- Footer Section Start -->
    <footer class="bg-white py-5">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <h4><strong>{{ $contact->title }}</strong></h4>
                    <p class="custom-justify">{{ $contact->description }}</p>
                    <p>
                        <i class="fa-solid fa-phone-volume"></i> Phone: {{ $contact->phone }} <br>
                        <i class="fa-solid fa-envelope-open"></i> Email: {{ $contact->email }} <br>
                        <i class="fa-solid fa-map-location-dot"></i> Address: {{ $contact->address }}
                    </p>
                </div>

                <div class="col-md-4">
                    <ul class="navbar-nav">
                        @foreach ($navigation as $link)
                            <li class="nav-item"><a href="{{ $link->url }}"
                                    class="nav-link">{{ $link->title }}</a></li>
                        @endforeach
                    </ul>
                </div>

                <div class="col-md-4">
                    <h6><strong>Subscribe Us</strong></h6>
                    <p>To stay updated for our service, Subscribe Now</p>
                    <form action="{{ url('subscribe') }}" method="post">
                        @csrf
                        <div class="mb-3">
                            <label for="email" class="form-label">Email</label>
                            <input type="email" name="email" id="email" class="form-control"
                                placeholder="Your Email Here" aria-describedby="helpId" required />
                        </div>
                        <button type="submit" class="btn btn-dark">
                            Subscribe Now
                        </button>
                    </form>
                </div>
            </div>
        </div>
        </div>

        <div class="bg-dark text-white text-center py-2">
            Copyright © 2011 - {{ date('Y') }} {{ $contact->title }} | All Rights Reserved
        </div>
    </footer>
    <!-- Footer Section End -->








    <script src="https://player.vimeo.com/api/player.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/js/all.min.js"
        integrity="sha512-u3fPA7V8qQmhBPNT5quvaXVa1mnnLSXUep5PS1qo5NRzHwG19aHmNJnj1Q8hpA/nBWZtZD4r4AX6YOt5ynLN2g=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script>
        $('#mainslider').owlCarousel({
            loop: true,
            margin: 10,
            nav: false,
            dots: false,
            autoplay: true,
            autoplayTimeout: 3000,
            autoplayHoverPause: true,
            responsive: {
                0: {
                    items: 1
                },
                600: {
                    items: 1
                },
                1000: {
                    items: 1
                }
            }
        })
    </script>
    <script>
        $('#membershipslider').owlCarousel({
            loop: true,
            margin: 150,
            nav: false,
            dots: false,
            autoplay: true,
            autoplayTimeout: 3000,
            autoplayHoverPause: true,
            responsive: {
                0: {
                    items: 1
                },
                600: {
                    items: 3
                },
                1000: {
                    items: 5
                }
            }
        })
    </script>
    <script>
        $(document).ready(function() {
            $('.video-gallery').magnificPopup({
                delegate: 'a',
                type: 'iframe',
                gallery: {
                    enabled: true
                }
            });
        });
    </script>
</body>

</html>
