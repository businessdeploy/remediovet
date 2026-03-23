$(document).ready(function () {
    $('#contactForm').submit(function (e) {
        e.preventDefault();
        let hasError = false;
        $(".error-message").text("");
        // Check if reCAPTCHA is completed
        var captchaResponse = grecaptcha.getResponse();
        if (captchaResponse.length == 0) {
            
            
            $("#recaptcha_error").text("Please complete the CAPTCHA.").css("color", "red");
          hasError = true;
          return false;
        }

        // Form validation
        var formValid = true;
        $('#contactForm .form_input').each(function() {
            if (!$(this).val()) {
                formValid = false;
                $(this).addClass('is-invalid'); // Add the 'is-invalid' class to mark the field as invalid
                return false; // break the loop
            } else {
                $(this).removeClass('is-invalid'); // Remove the 'is-invalid' class if the field is valid
            }
        });

        if (!formValid) {
            return false;
        }

        $.ajax({
            url: submitContactUrl,
            method: 'POST',
            data: $(this).serialize(),
            success: function (response) {
                // Handle success
                console.log(response);
                $("#success_msg").html("Message sent successfully!");
                $("#contactForm")[0].reset();
                grecaptcha.reset(); // Reset the reCAPTCHA
            },
            error: function (xhr) {
                // Handle errors
                var errors = xhr.responseJSON.errors;
                $.each(errors, function (key, value) {
                    alert(value);
                });
            }
        });
    });
});
