// require('./bootstrap');
// require('~magnific-popup');
import axios from 'axios';
let app_url = 'http://alicafe.local/alicafe-voyger/public';
(function($) {
    "use strict";



    // Back to top button
    $(window).scroll(function() {
        if ($(this).scrollTop() > 100) {
            $('.back-to-top').fadeIn('slow');
        } else {
            $('.back-to-top').fadeOut('slow');
        }
    });
    $('.back-to-top').click(function() {
        $('html, body').animate({
            scrollTop: 0
        }, 1500, 'easeInOutExpo');
        return false;
    });

    // Header scroll class
    $(window).on('scroll', function() {
        if ($(this).scrollTop() > 70) {
            $('#header').addClass('header-scrolled');
        } else {
            $('#header').removeClass('header-scrolled');
        }
    });



    // Smooth scroll for the navigation and links with .scrollto classes
    var scrolltoOffset = $('#header').outerHeight() - 1;
    $(document).on('click', '.main-nav a, .mobile-nav a, .scrollto', function(e) {
        if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') && location.hostname == this.hostname) {
            var target = $(this.hash);
            if (target.length) {
                e.preventDefault();

                var scrollto = target.offset().top - scrolltoOffset;

                if ($(this).attr("href") == '#header') {
                    scrollto = 0;
                }

                $('html, body').animate({
                    scrollTop: scrollto
                }, 1500, 'easeInOutExpo');

                if ($(this).parents('.main-nav, .mobile-nav').length) {
                    $('.main-nav .active, .mobile-nav .active').removeClass('active');
                    $(this).closest('li').addClass('active');
                }

                if ($('body').hasClass('mobile-nav-active')) {
                    $('body').removeClass('mobile-nav-active');
                    $('.mobile-nav-toggle i').toggleClass('fa-times fa-bars');
                    $('.mobile-nav-overly').fadeOut(3000);
                }
                return false;
            }
        }
    });

    // Activate smooth scroll on page load with hash links in the url
    $(document).ready(function() {
        if (window.location.hash) {
            var initial_nav = window.location.hash;
            if ($(initial_nav).length) {
                var scrollto = $(initial_nav).offset().top - scrolltoOffset;
                $('html, body').animate({
                    scrollTop: scrollto
                }, 1500, 'easeInOutExpo');
            }
        }
    });
    // Mobile Navigation
    if ($('.main-nav').length) {
        var $mobile_nav = $('#header .main-nav').clone().prop({
            class: 'mobile-nav d-lg-none'
        });
        $('body').append($mobile_nav);
        // $('body').prepend('<button type="button" class="mobile-nav-toggle d-lg-none"><i class="fa fa-bars"></i></button>');
        $('body').append('<div class="mobile-nav-overly"></div>');

        $(document).on('click', '.mobile-nav-toggle', function(e) {
            $('body').toggleClass('mobile-nav-active');
            $('.mobile-nav-toggle i').toggleClass('fa-times fa-bars');
            $('.mobile-nav-overly').toggle();
        });

        $(document).on('click', '.mobile-nav .drop-down > a', function(e) {
            e.preventDefault();
            $(this).next().slideToggle(300);
            $(this).parent().toggleClass('active');
        });

        $(document).click(function(e) {
            var container = $(".mobile-nav, .mobile-nav-toggle");
            if (!container.is(e.target) && container.has(e.target).length === 0) {
                if ($('body').hasClass('mobile-nav-active')) {
                    $('body').removeClass('mobile-nav-active');
                    $('.mobile-nav-toggle i').toggleClass('fa-times fa-bars');
                    $('.mobile-nav-overly').fadeOut();
                }
            }
        });
    } else if ($(".mobile-nav, .mobile-nav-toggle").length) {
        $(".mobile-nav, .mobile-nav-toggle").hide();
    }
    $('.owl-carousel-3').owlCarousel({
        loop: true,
        margin: 50,
        nav: true,
        dots: false,
        autoHeight: true,
        responsive: {
            0: {
                items: 3
            },
            600: {
                items: 2
            },
            1000: {
                items: 3
            }
        }
    });
    $('.providers').owlCarousel({
        loop: true,
        nav: true,
        margin: 10,
        dots: false,
        autoHeight: true,
        responsive: {
            0: {
                items: 3
            },
            600: {
                items: 2
            },
            1000: {
                items: 5
            }
        }
    });
    $('.owl-carousel-4').owlCarousel({
        loop: true,
        margin: 10,
        nav: false,
        responsive: {
            0: {
                items: 1
            },
            600: {
                items: 2
            },
            1000: {
                items: 4
            },
            1500: {
                items: 5
            }
        }
    });
    var tabsTrigger = $('#cat-content').isotope({
        itemSelector: '.children',
        layoutMode: 'masonry'
    });

    $('#owl-carousel-3 a').on('click', function(e) {
        e.preventDefault();
        $(this).addClass('filter-active').siblings().removeClass('filter-active');

        tabsTrigger.isotope({
            filter: $(this).data('filter')
        });
    });
    // jQuery counterUp (used in Whu Us section)
    $('[data-toggle="counter-up"]').counterUp({
        delay: 5,
        time: 1000

    });
    $('.dropdown-toggle').on('click', function(e) {
        e.preventDefault();
        $(this).toggleClass('active').next('.drop-down-menu').toggleClass('active');
    });
    $(document).on('click', e => {
        var targett = $(e.target).closest('.dropdown-toggle').length;
        var targett2 = $(e.target).closest('.drop-down-menu').length;
        if ((!e.target.matches('.dropdown-toggle')) && targett == 0 && targett2 == 0) {
            $('.drop-down-menu').removeClass('active');
            $('.dropdown-toggle').removeClass('active');
        }
    });
    // Init AOS
    function aos_init() {
        AOS.init({
            duration: 1000,
            once: true
        });
    }
    $(window).on('load', function() {
        aos_init();
    });





    $(function() {
        $('.fade-toggle-menu').children('.content').slideUp();
        $('.toggle-icon').on('click', function() {
            $(this).toggleClass('active');
            if ($(this).hasClass('active')) {
                $(this).parent().parent().next('.content').slideDown();
                $(this).parent().parent().parent().siblings().find('.content').slideUp();
                $(this).children('i').addClass('fa-chevron-up').removeClass('fa-chevron-down');
                $(this).parent().parent().parent().siblings().find('.toggle-icon').removeClass('active')
                $(this).parent().parent().parent().siblings().find('.toggle-icon').children('i').removeClass('fa-chevron-up').addClass('fa-chevron-down')

            } else {
                $(this).children('i').addClass('fa-chevron-down').removeClass('fa-chevron-up');
                $(this).parent().parent().next('.content').slideUp();
            }
        });

    });
    $(document).on("click", function(event) {
        var $trigger = $(".drop-down-download");
        if ($trigger !== event.target && !$trigger.has(event.target).length) {
            $(".drop-down-menu").removeClass('show');
        }
    });
    $(function() {

        // Show hide popover
        $(".drop-down-download").on('click', function(e) {
            e.preventDefault();
            if ($(this).next('.drop-down-menu').hasClass('show')) {
                $(this).next('.drop-down-menu').removeClass('show')
            } else {
                $(this).next('.drop-down-menu').addClass('show')
            }
        });
    });
    $(function() {
        $('.point-details-ul li').on('click', function() {
            $(this).toggleClass('active').siblings().removeClass('active');
            if ($(window).width() < 960) {
                $(this).find('.content').addClass('content-right').removeClass('content');
            } else {
                $(this).find('.content-right').removeClass('content-right').addClass('content');
            }
        });

    });
    (function() {
        var proto = $.circleProgress.defaults,
            originalDrawEmptyArc = proto.drawEmptyArc;

        proto.emptyThickness = 5; // just a default value; 
        // you may override it on init

        // overriding original method
        proto.drawEmptyArc = function(v) {
            var oldGetThickness = this.getThickness,
                oldThickness = this.getThickness(),
                emptyThickness = this.emptyThickness || _oldThickness.call(this),
                oldRadius = this.radius,
                delta = (oldThickness - emptyThickness) / 2;

            this.getThickness = function() {
                return emptyThickness;
            };

            this.radius = oldRadius - delta;
            this.ctx.save();
            this.ctx.translate(delta, delta);

            originalDrawEmptyArc.call(this, v);

            this.ctx.restore();
            this.getThickness = oldGetThickness;
            this.radius = oldRadius;
        };
    });

    $(function($) {
        function animateElements() {
            $('.counter-box').each(function() {
                var elementPos = $(this).offset().top;
                var topOfWindow = $(window).scrollTop();
                var percent = $(this).find('.circle').attr('data-percent');
                var percentage = parseInt(percent, 10) / parseInt(100, 10);
                var animate = $(this).data('animate');
                if (elementPos < topOfWindow + $(window).height() - 30 && !animate) {
                    $(this).data('animate', true);
                    $(this).find('.circle').circleProgress({
                        emptyThickness: 2, // new attribute
                        value: 1,
                        size: 100,
                        thickness: 7,
                        duraion: 2000,
                        fill: {
                            gradient: ['#47f', ['#bc4', .7, ],
                                ['rgba(255, 255, 255, 0)', 1]
                            ],
                            gradientAngle: Math.PI * .9
                        },
                        animation: {
                            duration: 2000
                        }
                    });
                }
            });
        }
        animateElements();
        $(window).on('scroll', animateElements)

        function skewOnScroll() {
            $('.animated-skew').each(function() {
                var elementPos = $(this).offset().top;
                var topOfWindow = $(window).scrollTop();
                if (elementPos < topOfWindow + $(window).height() - 30) {
                    $(this).addClass('skew').css('transition', '1s');
                }
            });
        }
        skewOnScroll();
        $(window).on('scroll', skewOnScroll)
    });


    let product_prev = document.getElementById('exzoom');
    if (product_prev) {
        $(product_prev).exzoom({
            // thumbnail nav options
            "navWidth": 60,
            "navHeight": 60,
            "navItemNum": 5,
            "navItemMargin": 7,
            "navBorder": 0,
            // autoplay
            "autoPlay": false,
            // autoplay interval in milliseconds
            "autoPlayTimeout": 2000
        });
    }



    $(document).on('click', '.product_sample', function(e) {
        e.preventDefault();
        $(this).magnificPopup({
            delegate: 'a', // child items selector, by clicking on it popup will open
            type: 'image'
                // other options
        });
        $(this).parent().toggleClass('active').siblings().removeClass('active')
    });
    $(document).on('click', e => {
        var targett = $(e.target).closest('.product_sample').length;
        if ((!e.target.matches('.product_sample')) && targett == 0) {
            $('.product_sample').parent().removeClass('active');
        }
    })
    $('.parent-container').magnificPopup({
        delegate: 'a', // child items selector, by clicking on it popup will open
        type: 'image',
        gallery: {
            // options for gallery
            enabled: true
        },
        // other options
    });

    var answers = document.querySelectorAll('.question a');
    $(answers).each(function() {
        $(this).on('click', function(e) {
            if ($(this).attr('href') == '#' || $(this).attr('href') == '') { e.preventDefault(); }
            $(this).closest('.question').find(".answer-area").append('<div class="col-12 text-center border border-secondary p-1">' + $(e.target).parent().find('p').html() + '</div>');
            $(this).closest('.question').find('.core').slideUp(function() { $(this).parents('.question').next('.question').slideDown() });
            $('.btn-darkorange').next().addClass('btn-darkorange').removeClass('btn-outline-darkrange');
        })
    })
})(jQuery);
$(window).on('load', function() {
    function fix_height(id) {
        $(id).each(function() {
            var newsOwlHeight = $('#' + this + ' .owl-stage-outer').height();
            $('#' + this).find('.item>.row:first-child').height(newsOwlHeight * .8);
        })
    }
    var arr = ['featured', 'other-products'];
    fix_height(arr)
});