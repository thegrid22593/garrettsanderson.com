'use strict';

var GS = GS || {};

GS = (function () {
  var init = function () {
    $ (document).ready (function () {
      GS.bindGlobalEvents ();
      GS.initScrollReveal ();
    });
  };

  var bindGlobalEvents = function () {
    var $menuToggle = $ ('.menu-bars');
    $menuToggle.on ('click', GS.openMenu);
    $ (window).scroll (checkScroll);
  };

  var openMenu = function () {
    var $menu = $ ('.side-menu');
    if (!$menu.hasClass ('open')) {
      $menu.addClass ('open');
    } else {
      $menu.removeClass ('open');
    }
  };

  var checkScroll = function (event) {
    if ($ (window).scrollTop () >= 1) {
      $ ('.main-nav').addClass ('scrolled');
    } else {
      $ ('.main-nav').removeClass ('scrolled');
    }
  };

  var initScrollReveal = function () {
    var fade = {
      distance: '0',
      duration: 1000,
      delay: 0,
      opacity: 0,
      scale: 0.9,
      easing: 'cubic-bezier(0.6, 0.2, 0.1, 1)',
      container: window.document.documentElement,
      mobile: true,
      reset: false,
      useDelay: 'always',
      viewFactor: 0.2,
    };

    var fromLeft = {
      origin: 'left',
      distance: '50px',
      duration: 500,
      delay: 0,
      opacity: 0,
      scale: 1,
      easing: 'cubic-bezier(0.6, 0.2, 0.1, 1)',
      container: window.document.documentElement,
      mobile: true,
      reset: false,
      useDelay: 'always',
      viewFactor: 0.2,
    };

    var fromBottom = {
      origin: 'bottom',
      distance: '75px',
      duration: 750,
      delay: 0,
      opacity: 0,
      scale: 0.9,
      easing: 'cubic-bezier(0.6, 0.2, 0.1, 1)',
      container: window.document.documentElement,
      mobile: true,
      reset: false,
      useDelay: 'always',
      viewFactor: 0.2,
    };

    var fromTopSlow = {
      origin: 'top',
      distance: '25px',
      duration: 1000,
      delay: 500,
      opacity: 0,
      scale: 1,
      easing: 'cubic-bezier(0.6, 0.2, 0.1, 1)',
      container: window.document.documentElement,
      mobile: true,
      reset: false,
      useDelay: 'always',
      viewFactor: 0.2,
    };

    window.sr = ScrollReveal ();
    sr.reveal ('.fade', fade);
    sr.reveal ('.from-left', fromLeft);
    sr.reveal ('.from-bottom', fromBottom);
    sr.reveal ('.from-top-slow', fromTopSlow);
  };

  return {
    init: init,
    bindGlobalEvents: bindGlobalEvents,
    initScrollReveal: initScrollReveal,
  };
}) ();

GS.init ();
