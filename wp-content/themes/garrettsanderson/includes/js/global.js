// Load any google fonts
// (function() {
//     var link = document.createElement('link');
//     link.rel = "stylesheet";
//     link.href = "//fonts.googleapis.com/css?family=Sorts+Mill+Goudy";
//     document.querySelector("head").appendChild(link);
// })();

/*******************
SLICKNAV
*******************/

$ (function () {
  $ ('#headerbottom').slicknav ();
});

/*******************
PARALLAX
*******************/

function parallax () {
  var winWidth = $ (window).width ();
  if (winWidth > 768) {
    var scrolled = $ (window).scrollTop ();
    $ ('.parallax').css ('margin-top', -(scrolled * 0.20) + 'px');
    $ ('.parallax-bg').css (
      'background-position',
      'center -' + scrolled * 0.25 + 'px'
    );
    $ ('.parallax-left').css ('margin-left', '-' + scrolled * 0.25 + 'px');
    $ ('.parallax-left h1').css ('margin-left', scrolled * 0.25 + 'px');
    $ ('.parallax-right').css ('margin-left', scrolled * 0.25 + 'px');
    $ ('.parallax-right h1').css ('margin-left', '-' + scrolled * 0.25 + 'px');
    // for parallax-right add to .slide >>> width: calc(100% + 225px); left: -225px!important;
  } else {
    $ ('.parallax').css ('margin-top', 0);
    $ ('.parallax-bg').css ('background-position', 'center');
    $ ('.parallax-left').css ('margin-left', 0);
    $ ('.parallax-left h1').css ('margin-left', 0);
    $ ('.parallax-right').css ('margin-left', '0');
    $ ('.parallax-right').css ('left', '0');
  }
}

/*******************
SCROLL
*******************/

function goToByScroll (id) {
  $ ('html,body').animate ({scrollTop: $ ('#' + id).offset ().top - 79}, 1000);
}

$ ('a.scrollto').click (function (event) {
  event.preventDefault ();
  id = $ (this).attr ('href').replace (new RegExp ('#', 'g'), '');
  goToByScroll (id);
});

checkScroll = function () {
  var snipeHeight = $ ('#headertop').height ();
  if ($ (this).scrollTop () > snipeHeight) {
    $ ('#main-nav').addClass ('gosmall');
  } else {
    $ ('.gosmall').removeClass ('gosmall');
  }
  if ($ (this).scrollTop () > 1000) {
    $ ('#uplink:hidden').stop (true, true).fadeIn ('slow');
  } else {
    $ ('#uplink').stop (true, true).fadeOut ('slow');
  }
};

/*******************
SCROLL REVEAL OBJECTS
*******************/
var fadeSlow = {
  origin: 'bottom',
  distance: '0',
  duration: 2000,
  delay: 300,
  rotate: {x: 0, y: 0, z: 0},
  opacity: 0,
  scale: 1,
  easing: 'ease-out',
  mobile: false,
  reset: false,
  useDelay: 'always',
  viewFactor: 0.1,
  viewOffset: {top: 0, right: 0, bottom: 0, left: 0},
  afterReveal: function (domEl) {},
  afterReset: function (domEl) {},
};

var fromright = {
  origin: 'right',
  distance: '50px',
  duration: 1000,
  delay: 200,
  rotate: {x: 0, y: 0, z: 0},
  opacity: 0,
  scale: 1,
  easing: 'ease-out',
  mobile: false,
  reset: false,
  useDelay: 'always',
  viewFactor: 0.1,
  viewOffset: {top: 0, right: 0, bottom: 0, left: 0},
  afterReveal: function (domEl) {},
  afterReset: function (domEl) {},
};

var fromleft = {
  origin: 'left',
  distance: '50px',
  duration: 1000,
  delay: 200,
  rotate: {x: 0, y: 0, z: 0},
  opacity: 0,
  scale: 1,
  easing: 'ease-out',
  mobile: false,
  reset: false,
  useDelay: 'always',
  viewFactor: 0.1,
  viewOffset: {top: 0, right: 0, bottom: 0, left: 0},
  afterReveal: function (domEl) {},
  afterReset: function (domEl) {},
};

var fromtop = {
  origin: 'top',
  distance: '50px',
  duration: 1000,
  delay: 200,
  rotate: {x: 0, y: 0, z: 0},
  opacity: 0,
  scale: 1,
  easing: 'ease-out',
  mobile: false,
  reset: true,
  useDelay: 'always',
  viewFactor: 0.1,
  viewOffset: {top: 0, right: 0, bottom: 0, left: 0},
  afterReveal: function (domEl) {},
  afterReset: function (domEl) {},
};

var frombottom = {
  origin: 'bottom',
  distance: '50px',
  duration: 1000,
  delay: 200,
  rotate: {x: 0, y: 0, z: 0},
  opacity: 0,
  scale: 1,
  easing: 'ease-out',
  mobile: false,
  reset: true,
  useDelay: 'always',
  viewFactor: 0.1,
  viewOffset: {top: 0, right: 0, bottom: 0, left: 0},
  afterReveal: function (domEl) {},
  afterReset: function (domEl) {},
};

var smalltobig = {
  origin: null,
  distance: '',
  duration: 500,
  delay: 200,
  rotate: {x: 0, y: 0, z: 0},
  opacity: 0,
  scale: 0.9,
  easing: 'ease-out',
  mobile: false,
  reset: true,
  useDelay: 'always',
  viewFactor: 0.1,
  viewOffset: {top: 0, right: 0, bottom: 0, left: 0},
  afterReveal: function (domEl) {},
  afterReset: function (domEl) {},
};

var bigtosmall = {
  origin: null,
  distance: '',
  duration: 500,
  delay: 200,
  rotate: {x: 0, y: 0, z: 0},
  opacity: 0,
  scale: 0.9,
  easing: 'ease-out',
  mobile: false,
  reset: true,
  useDelay: 'always',
  viewFactor: 0.1,
  viewOffset: {top: 0, right: 0, bottom: 0, left: 0},
  afterReveal: function (domEl) {},
  afterReset: function (domEl) {},
};

var fadeSequence = {
  origin: 'center',
  distance: '0',
  duration: 1000,
  delay: 0,
  opacity: 0,
  scale: 1,
  easing: 'ease-out',
  mobile: false,
  reset: false,
  viewFactor: 0.2,
};

$ (document).ready (function () {
  // Run Parallax if fullscreen if not on Iphone/IPad
  var deviceAgent = navigator.userAgent.toLowerCase ();
  var agentID = deviceAgent.match (/(iphone|ipod|ipad)/);

  checkScroll ();

  $ (window).scroll (function (e) {
    checkScroll ();
    if ($ (window).width () >= 768 && !agentID) {
      parallax ();
    } else {
    }
  });

  if ($ (window).width () >= 768 && !agentID) {
    // Call Scroll Reveal
    window.sr = ScrollReveal ();
    sr.reveal ('.fade-slow', fadeSlow);
    sr.reveal ('.from-bottom', frombottom);
    sr.reveal ('.from-left', fromleft);
    sr.reveal ('.from-right', fromright);
    sr.reveal ('.from-top', fromtop);
    sr.reveal ('.small-to-big', smalltobig);
    // Make sure you have the latest scroll reveal to use the sequence feature
    sr.reveal ('.fade-sequence-2', fadeSequence, 400);
    sr.reveal ('.fade-sequence-fast', fadeSequence, 150);
    sr.reveal ('.gallery-box', fadeSequence, 400);
  } else {
  }
}); // end doc ready

// Google Analytics Outbound Link Tracking
function _gaLt (event) {
  /* If GA is blocked or not loaded, or not main|middle|touch click then don't track */
  if (
    !ga.hasOwnProperty ('loaded') ||
    ga.loaded != true ||
    (event.which != 1 && event.which != 2)
  ) {
    return;
  }

  var el = event.srcElement || event.target;

  /* Loop up the DOM tree through parent elements if clicked element is not a link (eg: an image inside a link) */
  while (
    el &&
    (typeof el.tagName == 'undefined' ||
      el.tagName.toLowerCase () != 'a' ||
      !el.href)
  ) {
    el = el.parentNode;
  }

  /* if a link with valid href has been clicked */
  if (el && el.href) {
    var link = el.href;

    var gaCategory = el.dataset.category;
    var gaAction = el.dataset.action;
    var gaLabel = el.dataset.label;

    /* Only if it is an external link */
    if (link.indexOf (location.host) == -1 && !link.match (/^javascript\:/i)) {
      /* Is actual target set and not _(self|parent|top)? */
      var target = el.target && !el.target.match (/^_(self|parent|top)$/i)
        ? el.target
        : false;

      /* Assume a target if Ctrl|shift|meta-click */
      if (
        event.ctrlKey ||
        event.shiftKey ||
        event.metaKey ||
        event.which == 2
      ) {
        target = '_blank';
      }

      var hbrun = false; // tracker has not yet run

      /* HitCallback to open link in same window after tracker */
      var hitBack = function () {
        /* run once only */
        if (hbrun) return;
        hbrun = true;
        window.location.href = link;
      };

      if (target) {
        /* If target opens a new window then just track */
        ga (
          'send',
          'event',
          gaCategory,
          gaAction,
          gaLabel
          // document.location.pathname + document.location.search
        );
      } else {
        /* Prevent standard click, track then open */
        event.preventDefault
          ? event.preventDefault ()
          : (event.returnValue = !1);
        /* send event with callback */
        ga (
          'send',
          'event',
          gaCategory,
          gaAction,
          gaLabel
          // document.location.pathname + document.location.search, {
          //     "hitCallback": hitBack
          // }
        );

        /* Run hitCallback again if GA takes longer than 1 second */
        setTimeout (hitBack, 1000);
      }
    }
  }
}

var _w = window;
/* Use "click" if touchscreen device, else "mousedown" */
var _gaLtEvt = 'ontouchstart' in _w ? 'click' : 'mousedown';
/* Attach the event to all clicks in the document after page has loaded */
_w.addEventListener
  ? _w.addEventListener (
      'load',
      function () {
        document.body.addEventListener (_gaLtEvt, _gaLt, !1);
      },
      !1
    )
  : _w.attachEvent &&
      _w.attachEvent ('onload', function () {
        document.body.attachEvent ('on' + _gaLtEvt, _gaLt);
      });

var ValidationForm = function (options) {
  console.log (options);

  var $submitBtn = $ (options.submitButtonID);
  var $form = $ (options.formID);
  var $requiredFields = $ (options.formID + ' [required]');
  var $errorChecking = $ (options.formID + ' ' + options.errorMessageDIV);
  var checkBoxClassName = options.checkBoxClassName || 'cbcheck';
  var radioBtnClassName = options.radioBtnClassName || 'radiocheck';
  var formActionURL = options.formActionURL;
  var googleAnalyticsCode = options.googleAnalyticsCode || null;

  console.log (googleAnalyticsCode);

  var successMessage = {
    title: options.successMessage.title || 'Success',
    copy: options.successMessage.copy || 'Your message has been received',
  };
  var processingMessage = {
    title: options.processingMessage.title || 'Processing',
    copy: options.processingMessage.copy || 'Please wait.',
  };

  var init = function () {
    bindValidationEvents ();
  };

  var bindValidationEvents = function () {
    $submitBtn.on ('click', submitForm);
  };

  var submitForm = function (event) {
    event.preventDefault ();

    if (validate ()) {
      // Set the height of the interest list
      var iheight = $form.outerHeight ();
      $form.css ('height', iheight + 'px');

      // Processing
      $form.fadeOut (1000, function () {
        $ (this).empty ();
        $ (this).html (buildProcessingMessage ());
        $ (this).fadeIn ();
      });

      $ ('html,body').animate (
        {scrollTop: $form.offset ().top},
        1000,
        function () {
          var pheight = $ ('#process').outerHeight ();
          $form.animate ({height: pheight}, 1000);
        }
      );

      var dataString = $form.serialize ();
      console.log (dataString);

      postForm (dataString);
    }
  };

  var validate = function () {
    $ ('.required-highlight').removeClass ('required-highlight');

    // j is the check number
    var j = 0;

    // checkbox check
    var cbCheck = $ (
      options.formID + ' input[class=' + checkBoxClassName + ']:checked'
    ).length;

    // radio button check
    var radioCheck = $ (
      options.formID + ' input[class=' + radioBtnClassName + ']:checked'
    ).length;

    // Loop Over each required field.
    // Returns false if field is not valid
    // Will only show main error once and then highlght
    // the rest of the required fields
    $requiredFields.each (function (index, field) {
      var $field = $ (field);
      if (!checkField ($field, cbCheck, radioCheck)) {
        if (j === 0) {
          console.log ('error');
          showError ();
          j++;
        }
        $field.addClass ('required-highlight');
      }
    });
    // Send the form
    if (j === 0) {
      console.log ('passed, send form');
      return true;
    }
  };

  var checkField = function ($field, cbCheck, radioCheck) {
    var fieldValue = $.trim ($field.val ());

    // Text
    if ($field.is ('input:text') && !fieldValue) {
      return false;
    }

    // Number
    if ($field.attr ('type') === 'number' && !fieldValue) {
      return false;
    } else if ($field.attr ('type') === 'email' && !isEmail (fieldValue)) {
      // Email
      return false;
    } else if ($field.is ('input:radio')) {
      // Radio
      if (radioCheck === 0 && $field.is (':not(:checked)')) {
        return false;
      } else {
        return true;
      }
    } else if ($field.is ('input:checkbox')) {
      // Checkboxes
      if ($field.is (':not(:checked)') && cbCheck === 0) {
        return false;
      } else {
        return true;
      }
    } else if ($field.is ('select') && !fieldValue) {
      // Select
      return false;
    } else if (true) {
      return true;
    }
  };

  var showError = function () {
    $errorChecking.slideDown (500);
    $ ('html,body').animate ({scrollTop: $form.offset ().top - 50}, 1000);
  };

  var postForm = function (dataString) {
    console.log ('postForm');
    $.ajax ({
      type: 'POST',
      url: formActionURL,
      data: dataString,
      success: function () {
        $form.fadeOut (function () {
          $ (this).empty ();
          $ (this).html (buildSuccessMessage ());
          $form[0].reset ();
          $form.fadeIn ();
          if (googleAnalyticsCode !== null) {
            ga (
              'send',
              'event',
              googleAnalyticsCode.category,
              googleAnalyticsCode.action,
              googleAnalyticsCode.label
            );
          }
        });
      },
    });
  };

  var isEmail = function (email) {
    var pattern = /^([a-z\d!#$%&'*+\-\/=?^_`{|}~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]+(\.[a-z\d!#$%&'*+\-\/=?^_`{|}~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]+)*|"((([ \t]*\r\n)?[ \t]+)?([\x01-\x08\x0b\x0c\x0e-\x1f\x7f\x21\x23-\x5b\x5d-\x7e\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]|\\[\x01-\x09\x0b\x0c\x0d-\x7f\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))*(([ \t]*\r\n)?[ \t]+)?")@(([a-z\d\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]|[a-z\d\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF][a-z\d\-._~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]*[a-z\d\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])\.)+([a-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]|[a-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF][a-z\d\-._~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]*[a-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])\.?$/i;
    return pattern.test (email);
  };

  var buildProcessingMessage = function () {
    var processingMessageEl = '<div id="process">';
    processingMessageEl +=
      '<h4 class="twhite">' + processingMessage.title + '</h4>';
    processingMessageEl += '<p>' + processingMessage.title + '</p>';
    processingMessageEl += '</div>';
    return processingMessageEl;
  };

  var buildSuccessMessage = function () {
    var successMessageEl = '<div id="success">';
    successMessageEl += '<h4 class="twhite">' + successMessage.title + '</h4>';
    successMessageEl += '<p>' + successMessage.copy + '</p>';
    successMessageEl += '</div>';
    return successMessageEl;
  };

  return {
    init: init,
    bindValidationEvents: bindValidationEvents,
    submitForm: submitForm,
    validate: validate,
  };
};
