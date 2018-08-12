'use strict';

var GS = GS || {};

GS.ValidationForm = function (options) {

    var $submitBtn = $(options.submitButtonID);
    var $form = $(options.formID);
    var $requiredFields = $(options.formID + ' [required]');
    var $errorChecking = $(options.formID + ' ' + options.errorMessageDIV);
    var checkBoxClassName = options.checkBoxClassName || 'cbcheck';
    var radioBtnClassName = options.radioBtnClassName || 'radiocheck';
    var formActionURL = options.formActionURL;
    var googleAnalyticsCode = options.googleAnalyticsCode || null;

    console.log(googleAnalyticsCode);

    var successMessage = {
        title: options.successMessage.title || 'Success',
        copy: options.successMessage.copy || 'Your message has been received',
    };
    var processingMessage = {
        title: options.processingMessage.title || 'Processing',
        copy: options.processingMessage.copy || 'Please wait.',
    };

    var init = function () {
        bindValidationEvents();
    };

    var bindValidationEvents = function () {
        $submitBtn.on('click', submitForm);
    };

    var submitForm = function (event) {
        event.preventDefault();

        if (validate()) {
            // Set the height of the interest list
            var iheight = $form.outerHeight();
            $form.css('height', iheight + 'px');

            // Processing
            $form.fadeOut(1000, function () {
                $(this).empty();
                $(this).html(buildProcessingMessage());
                $(this).fadeIn();
            });

            $('html,body').animate({
                    scrollTop: $form.offset().top
                },
                1000,
                function () {
                    var pheight = $('#process').outerHeight();
                    $form.animate({
                        height: pheight
                    }, 1000);
                }
            );

            var dataString = $form.serialize();
            console.log(dataString);

            postForm(dataString);
        }
    };

    var validate = function () {
        $('.required-highlight').removeClass('required-highlight');

        // j is the check number
        var j = 0;

        // checkbox check
        var cbCheck = $(
            options.formID + ' input[class=' + checkBoxClassName + ']:checked'
        ).length;

        // radio button check
        var radioCheck = $(
            options.formID + ' input[class=' + radioBtnClassName + ']:checked'
        ).length;

        // Loop Over each required field.
        // Returns false if field is not valid
        // Will only show main error once and then highlght
        // the rest of the required fields
        $requiredFields.each(function (index, field) {
            var $field = $(field);
            if (!checkField($field, cbCheck, radioCheck)) {
                if (j === 0) {
                    console.log('error');
                    showError();
                    j++;
                }
                $field.addClass('required-highlight');
            }
        });
        // Send the form
        if (j === 0) {
            console.log('passed, send form');
            return true;
        }
    };

    var checkField = function ($field, cbCheck, radioCheck) {
        var fieldValue = $.trim($field.val());

        // Text
        if ($field.is('input:text') && !fieldValue) {
            return false;
        }

        // Number
        if ($field.attr('type') === 'number' && !fieldValue) {
            return false;
        } else if ($field.attr('type') === 'email' && !isEmail(fieldValue)) {
            // Email
            return false;
        } else if ($field.is('input:radio')) {
            // Radio
            if (radioCheck === 0 && $field.is(':not(:checked)')) {
                return false;
            } else {
                return true;
            }
        } else if ($field.is('input:checkbox')) {
            // Checkboxes
            if ($field.is(':not(:checked)') && cbCheck === 0) {
                return false;
            } else {
                return true;
            }
        } else if ($field.is('select') && !fieldValue) {
            // Select
            return false;
        } else if (true) {
            return true;
        }
    };

    var showError = function () {
        $errorChecking.slideDown(500);
        $('html,body').animate({
            scrollTop: $form.offset().top - 50
        }, 1000);
    };

    var postForm = function (dataString) {
        console.log('postForm');
        $.ajax({
            type: 'POST',
            url: formActionURL,
            data: dataString,
            success: function () {
                $form.fadeOut(function () {
                    $(this).empty();
                    $(this).html(buildSuccessMessage());
                    $form[0].reset();
                    $form.fadeIn();
                    if (googleAnalyticsCode !== null) {
                        ga(
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
        return pattern.test(email);
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