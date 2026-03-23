function submitForm() {
      // Validate the form
      if (validateForm()) {
        var captchaResponse = grecaptcha.getResponse();
        // If validation succeeds, submit the form via AJAX
        $('#submit_donate_form').html('<i class="fas fa-spinner fa-spin"></i> Processing...').attr('disabled', true);
        $.ajax({
          url: saveDonateFormUrl, // Change this to your backend script URL
          type: 'POST',
          headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
          },
          data: $('#donateFormSubmit').serialize(),
          success: function(response){
            $.toast({
                    heading: 'Success',
                    text: "Form Submit successfully!",
                    position: 'top-right',
                    icon: 'success'
                }) 
            $('#submit_donate_form').html('Submit').attr('disabled', false);   
            // Reset the CAPTCHA
            grecaptcha.reset();         
            $("#donateFormSubmit")[0].reset();
          },
          error: function(xhr, status, error){
            // Handle error
            $('#submit_donate_form').html('Submit').attr('disabled', false);
            console.error(xhr.responseText);
          }
        });
      }
    }


  $(document).ready(function() {
    $('.scrollToForm').click(function() {
      $('html, body').scrollTop($('#donate_form').offset().top);    
    });
  });

    function validateForm() {
      // Reset error messages
      $(".error-message").text("");
      let hasError = false;

      // Validation for Name of Owner
      const donateName = $("#donate_name").val().trim();
      if (donateName === "") {
        $("#donate_name_error").text("Name is required").css("color", "red");
        hasError = true;
      } else if (!/^[a-zA-Z ]+$/.test(donateName)) {
        $("#donate_name_error").text("Name must contain only letters").css("color", "red");
        hasError = true;
      }


      // Validation for Pet Age
      const donateAge = $("#donate_age").val().trim();
      const ageRegex = /^\d+$/; // Regular expression to match only numbers

      if (donateAge === "") {
          $("#donate_age_error").text("Pet age is required").css("color", "red");
          hasError = true;
      } else if (!ageRegex.test(donateAge)) {
          $("#donate_age_error").text("Invalid pet age. Please enter a valid number.").css("color", "red");
          hasError = true;
      } else {
          $("#donate_age_error").text(""); // Clear any previous error message
      }

      // Validation for Phone Number
      const phoneNumber = $("#phone_number").val().trim();
      if (phoneNumber === "") {
        $("#phone_number_error").text("Phone number is required").css("color", "red");
        hasError = true;
      } else if (!/^\d{10}$/.test(phoneNumber)) {
        $("#phone_number_error").text("Invalid phone number").css("color", "red");
        hasError = true;
      }     


      // Validation for Origin
      const city = $("#donate_city").val().trim();
      if (city === "") {
        $("#donate_city_error").text("City is required").css("color", "red");
        hasError = true;
      }

      // Validation for Destination
      const service = $("#donate_service").val().trim();
      if (service === "") {
        $("#donate_service_error").text("Service is required").css("color", "red");
        hasError = true;
      }

      var response = grecaptcha.getResponse();
      if (response.length == 0) {
          $("#recaptcha_error").text("Please complete the CAPTCHA.").css("color", "red");
          hasError = true;
      }

      // If there are errors, prevent form submission
      return !hasError; // Return true if no errors
    }

    // Event listener for form submission
    $('#donateFormSubmit').on('submit', function(e) {
      e.preventDefault(); // Prevent default form submission behavior
      submitForm(); // Call the submitForm function to handle form submission
    });
    //script for accordian
    const items = document.querySelectorAll(".accordion button");

    function toggleAccordion() {
      const itemToggle = this.getAttribute('aria-expanded');

      for (i = 0; i < items.length; i++) {
        items[i].setAttribute('aria-expanded', 'false');
      }

      if (itemToggle == 'false') {
        this.setAttribute('aria-expanded', 'true');
      }
    }

    items.forEach(item => item.addEventListener('click', toggleAccordion));
 