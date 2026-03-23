function redirectToProduct(url) {
    window.location.href = url;
}
$(document).ready(function() {

	$('#scrollToDog').click(function() {
		 $('html, body').scrollTop($('#popular-dog-products').offset().top);	  
	});
	$('#scrollToCat').click(function() {
		 $('html, body').scrollTop($('#popular-cat-products').offset().top);	  
	});
});


// script for banner slider
var slideIndex = 0;
  showSlides();

  function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("dot");
    for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";  
    }
    slideIndex++;
    if (slideIndex > slides.length) {slideIndex = 1}    
    for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" dotactive", "");
    }
    slides[slideIndex-1].style.display = "block";  
    dots[slideIndex-1].className += " dotactive";
    setTimeout(showSlides, 2500); // Change image every 2 seconds
  }

// script for Advertise banner slider
var slidebannerIndex = 0;
  showbannerSlides();

  function showbannerSlides() {
    var a;
    var Adslides = document.getElementsByClassName("myAdSlides");
    var Addots = document.getElementsByClassName("dotAd");
    for (i = 0; i < Adslides.length; i++) {
      Adslides[i].style.display = "none";  
    }
    slidebannerIndex++;
    if (slidebannerIndex > Adslides.length) {slidebannerIndex = 1}    
    for (i = 0; i < Addots.length; i++) {
      Addots[i].className = Addots[i].className.replace("dotAdactive", "");
    }
    Adslides[slidebannerIndex-1].style.display = "block";  
    Addots[slidebannerIndex-1].className += " dotAdactive";
    setTimeout(showbannerSlides, 2500); 
  }



////================Fetch Google Reviews =====@#
 $(document).ready(function () {
    // Second Form Submission
    $('#subscribeForm').submit(function (e) {
        e.preventDefault();
        var captchaResponse = grecaptcha.getResponse();
              
        $('.subscribe_btn').html('<i class="fas fa-spinner fa-spin"></i> Processing...').attr('disabled', true);
        $.ajax({
            url: subscribeFormUrl,
            method: 'POST',
            data: $(this).serialize(),
            success: function (response) {
                $("#subscribe_success_msg").html("Form submitted successfully!");
                $("#subscribeForm")[0].reset();
                // grecaptcha.reset();
                $('.subscribe_btn').html('SUBMIT').attr('disabled', false);
            },
            error: function (xhr) {
                var errors = xhr.responseJSON.errors;
                $.each(errors, function (key, value) {
                    alert(value);
                });
                $('.subscribe_btn').html('SUBMIT').attr('disabled', false);
            }
        });
    });


   $('.input_f').on('keyup', function() {
        var phoneNumber = $('#phone_number').val();
        var errorMessage = $('#phone_error');
        var submitButton = $('.subscribe_input');
        if (phoneNumber.length !== 10) {            
            errorMessage.text('Phone number must be 10 digits long.');
            submitButton.prop('disabled', true);
            return false;
        } else {
            errorMessage.text('');
            submitButton.prop('disabled', false);
            return true;
        }
    });



    // First Form Submission
    $('#subscribeForm2').submit(function (e) {
        e.preventDefault();
        var captchaResponse = grecaptcha.getResponse();
        if (captchaResponse.length == 0) { 
            $("#recaptcha_error").text("Please complete the CAPTCHA.").css("color", "red");
            hasError = true;
            return false;
        }  

        var phoneNumber = $('#phone_number').val();
        var errorMessage = $('#phone_error');

        if (phoneNumber.length !== 10) {
            errorMessage.text('Phone number must be 10 digits long.');
            event.preventDefault();
        } else {
            errorMessage.text('');
        }
        $('.subscribe_input').html('<i class="fas fa-spinner fa-spin"></i> Processing...').attr('disabled', true);
        $.ajax({
            url: subscribeFormUrl,
            method: 'POST',
            data: $(this).serialize(),
            success: function (response) {
                $("#subscribe_success_msg2").html("Form submitted successfully!");
                $("#subscribeForm2")[0].reset();
                grecaptcha.reset();
                $('.subscribe_input').html('SUBMIT').attr('disabled', false);
                $("#recaptcha_error").hide();
            },
            error: function (xhr) {
                var errors = xhr.responseJSON.errors;
                $.each(errors, function (key, value) {
                    alert(value);
                });
                $('.subscribe_input').html('SUBMIT').attr('disabled', false);
            }
        });
    });
});


  $(document).ready(function () {
    $('#pet_flight_Form').submit(function (e) {
        e.preventDefault();
        $('.get_quotebtn').html('Processing...').attr('disabled', true);
        $.ajax({
            url: petFlightFormUrl,
            method: 'POST',
            data: $(this).serialize(),
            success: function (response) {
                // Handle success
                // console.log(response);
                $("#success_msg").html("Form Submit successfully!");
                
                $("#pet_flight_Form")[0].reset();
                $('.get_quotebtn').html('Get a Quote').attr('disabled', false);
                
            },
            error: function (xhr) {
                // Handle errors
                var errors = xhr.responseJSON.errors;
                $.each(errors, function (key, value) {
                    alert(value);
                });
                $('.get_quotebtn').html('Get a Quote').attr('disabled', false);
            }
        });
    });
});
 ///  Google reviews  ======    ////
 
// review js

// $(".slick-slider").slick({
//   slidesToShow: 3,
//   infinite: false,
//   slidesToScroll: 1,
//   autoplay: true,
//   autoplaySpeed: 2000

// });

  $(document).ready(function() {

    // Initialize Slick Slider
        $('.review_section').slick({
            slidesToShow: 3,
            slidesToScroll: 1,
            autoplay: true,
            autoplaySpeed: 2000,
            dots: true,
            responsive: [
                {
                    breakpoint: 1024,
                    settings: {
                        slidesToShow: 2,
                        slidesToScroll: 1,
                        infinite: true,
                        dots: true
                    }
                },
                {
                    breakpoint: 600,
                    settings: {
                        slidesToShow: 1,
                        slidesToScroll: 1
                    }
                }
            ]
        });
    // Fetch Google reviews using AJAX
    // setTimeout(function() {
    //     $.ajax({
    //         url: getGoogleReviewsUrl, // Route to fetch reviews from Laravel backend
    //         type: "GET",
    //         success: function(response) {
    //             // Handle successful response
    //             if (response.success) {
    //                 Iterate through reviews and append them to the review section
    //                 response.reviews.forEach(function(review) {
    //                     var reviewHtml = `
    //                         <div class="element element-1">
    //                             <div class="review_content">                                                               
    //                                 <img class="client_img mx-auto d-block" src="${review.profile_photo_url}" alt="img" loading="lazy">
    //                                 <span class="d-flex justify-content-center">
    //                                     <p class="fw-bold custom_name">${review.author_name}</p>
    //                                     <i class="fa fa-check py-1 mx-1 custom_check" aria-hidden="true"></i>
    //                                 </span>
    //                                 <div class="rating d-flex justify-content-center text-warning">
    //                                     ${starRating(review.rating)}
    //                                 </div>
    //                                 <span><p class="d-flex justify-content-center custom_name">${review.relative_time_description}</p></span>
    //                                 <p class="text-center comments_txt">${review.text.substring(0, 50)}</p>         
    //                                 <a target="_blank" class="text-decoration-none text-secondary d-flex justify-content-center read_btn" href="${ review.author_url }">Read more</a>
    //                             </div>
    //                         </div>
    //                     `;
    //                     $('.review_section').append(reviewHtml);
    //                 });

                    
    //             } else {
    //                 console.error("Failed to fetch reviews.");
    //             }
    //         },
    //         error: function(xhr, status, error) {
    //             console.error("AJAX request failed:", error);
    //         }
    //     });
    // }, 1000);
});


function starRating(rating) {
    // Your implementation to generate star ratings based on the rating value
    // This function should return HTML representing the star ratings
    // For example:
    var starsHtml = '';
    for (var i = 0; i < rating; i++) {
        starsHtml += '<i class="fa fa-star"></i>';
    }
    return starsHtml;
}


