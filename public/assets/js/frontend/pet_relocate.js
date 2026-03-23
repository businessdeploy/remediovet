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


$(document).ready(function() {
  $('.scrollToQuote').click(function() {
     $('html, body').scrollTop($('#submit-quote-to-form').offset().top);    
  });
 
});

//slick slider for reviews
$('.quotes').slick({
  dots: true,
  infinite: true,
  autoplay: true,
  autoplaySpeed: 1000,
  speed: 800,
  slidesToShow: 1,
  adaptiveHeight: true
});

/// ////===================Validate Relocate quote form =======================================/////
    
    function submitForm() {
      // Validate the form
      if (validateForm()) {
        
        $('#submit_quote_btn_1').html('<i class="fas fa-spinner fa-spin"></i> Processing...').attr('disabled', true);
        // If validation succeeds, submit the form via AJAX
        $.ajax({
          url: saveRelocateFormUrl, // Change this to your backend script URL
          type: 'POST',
          headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
          },
          data: $('#saveRelocateForm').serialize(),
          success: function(response){
            $.toast({
                    heading: 'Success',
                    text: "Form Submit successfully",
                    position: 'top-right',
                    icon: 'success'
                })    
            $('#submit_quote_btn_1').html('Submit').attr('disabled', false);           
            $("#saveRelocateForm")[0].reset();
          },
          error: function(xhr, status, error){
            // Handle error
            console.error(xhr.responseText);
            $('#submit_quote_btn_1').html('Submit').attr('disabled', false);
          }
        });
      }
    }

    function validateForm() {
      // Reset error messages
      $(".error-message").text("");
      let hasError = false;

      // Validation for Name of Owner
      const ownerName = $("#owner_name").val().trim();
      if (ownerName === "") {
        $("#owner_name_error").text("Name is required").css("color", "red");
        hasError = true;
      } else if (!/^[a-zA-Z ]+$/.test(ownerName)) {
        $("#owner_name_error").text("Name must contain only letters").css("color", "red");
        hasError = true;
      }

      // Validation for Email
      const email = $("#email").val().trim();
      if (email === "") {
        $("#email_error").text("Email is required").css("color", "red");
        hasError = true;
      } else if (!/\S+@\S+\.\S+/.test(email)) {
        $("#email_error").text("Invalid email format").css("color", "red");
        hasError = true;
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

      // Validation for Pet Type
      const petType = $("#pet_type").val();
      if (petType === "") {
        $("#pet_type_error").text("Pet type is required").css("color", "red");
        hasError = true;
      }

      // Validation for Pet Name
      const petName = $("#pet_name").val().trim();
      if (petName === "") {
        $("#pet_name_error").text("Pet name is required").css("color", "red");
        hasError = true;
      }

      // Validation for Pet Breed
      const petBreed = $("#pet_breed").val().trim();
      if (petBreed === "") {
        $("#pet_breed_error").text("Pet breed is required").css("color", "red");
        hasError = true;
      }

      // Validation for Pet Age
      const petAge = $("#pet_age").val().trim();
      if (petAge === "") {
        $("#pet_age_error").text("Pet age is required").css("color", "red");
        hasError = true;
      } else if (isNaN(petAge)) {
        $("#pet_age_error").text("Invalid pet age").css("color", "red");
        hasError = true;
      }

      // Validation for Pet Gender
      const petGender = $("#pet_gender").val();
      if (petGender === "") {
        $("#pet_gender_error").text("Pet gender is required").css("color", "red");
        hasError = true;
      }

      // Validation for Origin
      const origin = $("#origin").val().trim();
      if (origin === "") {
        $("#origin_error").text("Origin is required").css("color", "red");
        hasError = true;
      }

      // Validation for Destination
      const destination = $("#destination").val().trim();
      if (destination === "") {
        $("#destination_error").text("Destination is required").css("color", "red");
        hasError = true;
      }

      // If there are errors, prevent form submission
      return !hasError; // Return true if no errors
    }

    // Event listener for form submission
    $('#saveRelocateForm').on('submit', function(e) {
      e.preventDefault(); // Prevent default form submission behavior
      submitForm(); // Call the submitForm function to handle form submission
    });


///===============Form Second ===========////

     $('#saveRelocateForm2').on('submit', function(e) {
      e.preventDefault(); // Prevent default form submission behavior
      submitForm2(); // Call the submitForm function to handle form submission
    });
    
    function validateForm2() {
      // Reset error messages
      $(".error-message").text("");
      let hasError = false;

      // Validation for Name of Owner
      const ownerName = $("#owner_name2").val().trim();
      if (ownerName === "") {
        $("#owner_name_error2").text("Name is required").css("color", "red");
        hasError = true;
      } else if (!/^[a-zA-Z ]+$/.test(ownerName)) {
        $("#owner_name_error2").text("Name must contain only letters").css("color", "red");
        hasError = true;
      }

      // Validation for Email
      const email = $("#email2").val().trim();
      if (email === "") {
        $("#email_error2").text("Email is required").css("color", "red");
        hasError = true;
      } else if (!/\S+@\S+\.\S+/.test(email)) {
        $("#email_error2").text("Invalid email format").css("color", "red");
        hasError = true;
      }

      // Validation for Phone Number
      const phoneNumber = $("#phone_number2").val().trim();
      if (phoneNumber === "") {
        $("#phone_number_error2").text("Phone number is required").css("color", "red");
        hasError = true;
      } else if (!/^\d{10}$/.test(phoneNumber)) {
        $("#phone_number_error2").text("Invalid phone number").css("color", "red");
        hasError = true;
      }

      // Validation for Pet Type
      const petType = $("#pet_type2").val();
      if (petType === "") {
        $("#pet_type_error2").text("Pet type is required").css("color", "red");
        hasError = true;
      }

      // Validation for Pet Name
      const petName = $("#pet_name2").val().trim();
      if (petName === "") {
        $("#pet_name_error2").text("Pet name is required").css("color", "red");
        hasError = true;
      }

      // Validation for Pet Breed
      const petBreed = $("#pet_breed2").val().trim();
      if (petBreed === "") {
        $("#pet_breed_error2").text("Pet breed is required").css("color", "red");
        hasError = true;
      }

      // Validation for Pet Age
      const petAge = $("#pet_age2").val().trim();
      if (petAge === "") {
        $("#pet_age_error2").text("Pet age is required").css("color", "red");
        hasError = true;
      } else if (isNaN(petAge)) {
        $("#pet_age_error2").text("Invalid pet age").css("color", "red");
        hasError = true;
      }

      // Validation for Pet Gender
      const petGender = $("#pet_gender2").val();
      if (petGender === "") {
        $("#pet_gender_error2").text("Pet gender is required").css("color", "red");
        hasError = true;
      }

      // Validation for Origin
      const origin = $("#origin2").val().trim();
      if (origin === "") {
        $("#origin_error2").text("Origin is required").css("color", "red");
        hasError = true;
      }

      // Validation for Destination
      const destination = $("#destination2").val().trim();
      if (destination === "") {
        $("#destination_error2").text("Destination is required").css("color", "red");
        hasError = true;
      }

      // If there are errors, prevent form submission
      return !hasError; // Return true if no errors
    }



  
     function submitForm2() {
      // Validate the form
      if (validateForm2()) {
        $('#submit_quote_btn_2').html('<i class="fas fa-spinner fa-spin"></i> Processing...').attr('disabled', true);
        // If validation succeeds, submit the form via AJAX
        $.ajax({
          url: saveRelocateFormUrl, // Change this to your backend script URL
          type: 'POST',
          headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
          },
          data: $('#saveRelocateForm2').serialize(),
          success: function(response){
            $.toast({
                    heading: 'Success',
                    text: "Form Submit successfully",
                    position: 'top-right',
                    icon: 'success'
                }) 
            $('#submit_quote_btn_2').html('Submit').attr('disabled', false);           
            $("#quote_2_success_msg").html("Form Submit successfully!");                
            $("#saveRelocateForm2")[0].reset();
          },
          error: function(xhr, status, error){
            // Handle error
            $('#submit_quote_btn_2').html('Submit').attr('disabled', false);           
            console.error(xhr.responseText);
          }
        });
      }
    }



function redirect(url) {
    window.location.href = url;
}