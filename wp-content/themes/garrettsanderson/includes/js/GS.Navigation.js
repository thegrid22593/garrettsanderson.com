'use strict';

var GS = GS || {};

GS.Navigation = (function () {

    var $menuToggle = $('.mobile-nav-toggle i');
    var $menuClose = $('.close-mobile-nav i');

    var init = function () {
        $(document).ready(function () {
            bindNavigationEvents();
        });
    };

    var bindNavigationEvents = function () {
        $menuToggle.on('click', toggleMenu);
        $menuClose.on('click', toggleMenu);
    };

    var toggleMenu = function () {
        var $menu = $('.mobile-nav');
        if (!$menu.hasClass('active')) {
            $menu.addClass('active');
        } else {
            $menu.removeClass('active');
        }
    };

    return {
        init: init,
        bindNavigationEvents: bindNavigationEvents,
    };
})();

GS.Navigation.init();