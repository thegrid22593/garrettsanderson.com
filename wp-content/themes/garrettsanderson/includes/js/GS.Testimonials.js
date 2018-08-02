'use strict';

var GS = GS || {};

GS.Testimonails = (function () {
  var slideCount = 0;
  var testimonials = $ ('.testimonial');

  var init = function () {
    bindTestimonialEvents ();

    testimonials.each (function (i, testimonial) {
      if (i === 0) {
        $ (testimonial).addClass ('show');
      }
    });

    // initSlider();
  };

  var bindTestimonialEvents = function () {
    $ ('.btn.next').on ('click', nextSlide);
    $ ('.btn.prev').on ('click', previousSlide);
  };

  var initSlider = function () {
    // $('.testimonials').slick({
    //     infinite: true,
    //     slidesToShow: 1,
    //     slidesToScroll: 1
    // });
  };

  var nextSlide = function () {
    testimonials.each (function (i, testimonial) {
      if ($ (testimonial).hasClass ('show')) {
        var index = i + 1;
        if (index > testimonials.length - 1) {
          index = 0;
        }
        $ (testimonial).removeClass ('show');
        console.log ('test', testimonials[0]);
        $ (testimonials[index]).addClass ('show');
        return false;
      }
    });
  };

  var previousSlide = function () {
    testimonials.each (function (i, testimonial) {
      if ($ (testimonial).hasClass ('show')) {
        var index = i - 1;
        console.log (index);
        if (index === -1) {
          index = testimonials.length - 1;
          console.log (index);
        }
        $ (testimonial).removeClass ('show');
        $ (testimonials[index]).addClass ('show');
        return false;
      }
    });
  };

  return {
    init: init,
    bindTestimonialEvents: bindTestimonialEvents,
    nextSlide: nextSlide,
  };
}) ();

GS.Testimonails.init ();
