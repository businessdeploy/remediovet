// Billing address data
document.addEventListener('DOMContentLoaded', function() {
    const existingAddresses = document.querySelectorAll('.existing-address');
    existingAddresses.forEach(address => {
        address.addEventListener('change', function() {
            document.getElementById('fullName').value = this.dataset.fullName;
            document.getElementById('email').value = this.dataset.email;
            document.getElementById('phone').value = this.dataset.phone;
            document.getElementById('state').value = this.dataset.state;
            document.getElementById('city').value = this.dataset.city;
            document.getElementById('apartment').value = this.dataset.apartment;
        });
    });
});

//Is same billing address
document.addEventListener('DOMContentLoaded', function() {
    const existingAddresses = document.querySelectorAll('.existing-shipping-address');
    existingAddresses.forEach(address => {
        address.addEventListener('change', function() {
            document.getElementById('shipping_name').value = this.dataset.fullName;
            document.getElementById('shipping_email').value = this.dataset.email;
            document.getElementById('shipping_phone').value = this.dataset.phone;
            document.getElementById('shipping_state').value = this.dataset.state;
            document.getElementById('shipping_city').value = this.dataset.city;
            document.getElementById('shipping_apartment').value = this.dataset.apartment;
        });
    });
});

$(document).ready(function() {
    $('.existing-address').change(function() {
        // Remove is-invalid class and hide invalid-feedback for all input fields
        $('.billing-info-fields input').removeClass('is-invalid').siblings('.invalid-feedback').hide();
    });

    $('.existing-shipping-address').change(function() {
        // Remove is-invalid class and hide invalid-feedback for all input fields
        $('.shipping-info-fields input').removeClass('is-invalid').siblings('.invalid-feedback').hide();
    });

    // Function to toggle shipping info fields
    function toggleShippingInfoFields(checked) {
        var shippingFields = $('.shipping-info-fields input[type="text"], .shipping-info-fields input[type="email"], .shipping-info-fields input[type="tel"], .shipping-info-fields select');
        
        var buttonContinue = document.querySelector('.custom_continueshp_btn')
        if (checked) {
            buttonContinue.removeAttribute('disabled');
            shippingFields.each(function() {
                $(this).removeAttr('required');
                $(this).siblings('.invalid-feedback').hide();
            });
        } else {
            buttonContinue.setAttribute('disabled', 'disabled');
            shippingFields.each(function() {
                $(this).attr('required', 'required');
                $(this).siblings('.invalid-feedback').hide();
            });
        }
    }

    // Initial state of shipping fields
    toggleShippingInfoFields($('#is_shipping_address_same').prop('checked'));

    // Event listener for checkbox
    $('#is_shipping_address_same').change(function() {
        toggleShippingInfoFields(this.checked);
    });

    // Phone number validation
    $('#phone').on('input', function() {
        var phone = $(this).val();
        if (!phone.match(/^\d{10}$/)) {
            $(this).addClass('is-invalid');
            $(this).siblings('.invalid-feedback').text('10-digit phone number is required.').show();
        } else {
            $(this).removeClass('is-invalid');
            $(this).siblings('.invalid-feedback').hide();
        }
    });


    $('#shipping_phone').on('input', function() {
        var shipping_phone = $(this).val();
        if (!shipping_phone.match(/^\d{10}$/)) {
            $(this).addClass('is-invalid');
            $(this).siblings('.invalid-feedback').text('10-digit phone number is required.').show();
        } else {
            $(this).removeClass('is-invalid');
            $(this).siblings('.invalid-feedback').hide();
        }
    });

    $('#fullName').on('input', function() {
        var fullName = $(this).val();
        if(!fullName){
            $(this).addClass('is-invalid');
            $(this).siblings('.invalid-feedback').text('Full name is required').show();
        }else{
            $(this).removeClass('is-invalid');
            $(this).siblings('.invalid-feedback').hide(); 
        }
    });


    $('#state').on('input', function() {
        var fullName = $(this).val();
        if(!fullName){
            $(this).addClass('is-invalid');
            $(this).siblings('.invalid-feedback').text('State is required').show();
        }else{
            $(this).removeClass('is-invalid');
            $(this).siblings('.invalid-feedback').hide(); 
        }
    });

    $('#shipping_state').on('input', function() {
        var shipping_state = $(this).val();
        if(!shipping_state){
            $(this).addClass('is-invalid');
            $(this).siblings('.invalid-feedback').text('State is required').show();
        }else{
            $(this).removeClass('is-invalid');
            $(this).siblings('.invalid-feedback').hide(); 
        }
    });


    $('#city').on('input', function() {
        var city = $(this).val();
        if(!city){
            $(this).addClass('is-invalid');
            $(this).siblings('.invalid-feedback').text('City is required').show();
        }else{
            $(this).removeClass('is-invalid');
            $(this).siblings('.invalid-feedback').hide(); 
        }
    });

    $('#shipping_city').on('input', function() {
        var shipping_city = $(this).val();
        if(!shipping_city){
            $(this).addClass('is-invalid');
            $(this).siblings('.invalid-feedback').text('City is required').show();
        }else{
            $(this).removeClass('is-invalid');
            $(this).siblings('.invalid-feedback').hide(); 
        }
    });


    

    $('#shipping_name').on('input', function() {
        var shipping_name = $(this).val();
        if(!shipping_name){
            $(this).addClass('is-invalid');
            $(this).siblings('.invalid-feedback').text('Full name is required').show();
        }else{
            $(this).removeClass('is-invalid');
            $(this).siblings('.invalid-feedback').hide(); 
        }
    });

    $('#email').on('input', function() {
        var email = $(this).val();
        var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;

        if (!email) {
            $(this).addClass('is-invalid');
            $(this).siblings('.invalid-feedback').text('Email is required').show();
        } else if (!email.match(emailPattern)) {
            $(this).addClass('is-invalid');
            $(this).siblings('.invalid-feedback').text('Invalid email address').show();
        } else {
            $(this).removeClass('is-invalid');
            $(this).siblings('.invalid-feedback').hide();
        }
    });


    $('#shipping_email').on('input', function() {
        var shipping_email = $(this).val();
        var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;

        if (!shipping_email) {
            $(this).addClass('is-invalid');
            $(this).siblings('.invalid-feedback').text('Email is required').show();
        } else if (!shipping_email.match(emailPattern)) {
            $(this).addClass('is-invalid');
            $(this).siblings('.invalid-feedback').text('Invalid email address').show();
        } else {
            $(this).removeClass('is-invalid');
            $(this).siblings('.invalid-feedback').hide();
        }
    });


    $('#apartment').on('input', function() {
        var apartment = $(this).val();
        if(!apartment){
            $(this).addClass('is-invalid');
            $(this).siblings('.invalid-feedback').text('Apartment is required').show();
        }else{
            $(this).removeClass('is-invalid');
            $(this).siblings('.invalid-feedback').hide(); 
        }
    });

    $('#shipping_apartment').on('input', function() {
        var shipping_apartment = $(this).val();
        if(!shipping_apartment){
            $(this).addClass('is-invalid');
            $(this).siblings('.invalid-feedback').text('Shipping Apartment is required').show();
        }else{
            $(this).removeClass('is-invalid');
            $(this).siblings('.invalid-feedback').hide(); 
        }
    });

    $('.invalid-feedback').show();

    // Submit event to ensure validation
    $('#finalCheckout').on('submit', function(event) {
        var isShippingSame = $('#is_shipping_address_same').prop('checked');
        var shippingFields = $('.shipping-info-fields input[required]');
        var allFilled = true;

        if (!isShippingSame) {
            shippingFields.each(function() {
                if ($(this).val().trim() === '') {
                    $(this).addClass('is-invalid');
                    $(this).siblings('.invalid-feedback').text('This field is required.').show();
                    allFilled = false;
                } else {
                    $(this).removeClass('is-invalid');
                    $(this).siblings('.invalid-feedback').hide();
                }
            });

            if (!allFilled) {
                event.preventDefault();
                alert('Please fill out all required shipping fields.');
            }
        }
    });
});

function toggleShippingInfoFields(checked) {
        // Get all the shipping information fields
        var shippingInfoFields = document.querySelectorAll('.shipping-info-fields');
        // Loop through each field
        shippingInfoFields.forEach(function(field) {
            // If checkbox is checked, hide the field and remove required attribute
            if (checked) {             
                field.style.display = 'none';
                field.removeAttribute('required');
            } else { // If checkbox is unchecked, show the field and add required attribute
                field.style.display = 'block';
                field.setAttribute('required', 'required');
            }
        });
    }

$(document).ready(function(){
    $('#applyCoupons').on('submit', function(e) {
        e.preventDefault();
        var couponName=$('#couponName').val();
        if (couponName.trim() === '') {
            alert('Please enter a Coupon Code.'); // Show alert
            return; // Exit function
        }
        var csrfToken = $('meta[name="csrf-token"]').attr('content');
        $.ajax({
            url: applyCouponNameUrl,
            type: "POST",
            headers: {
                'X-CSRF-TOKEN': csrfToken
              },
            data: {
                couponName: couponName,            
            },
            success: function(response) {
               if(response.status == true){
                    $('.clear-input').removeClass('d-none');
                    location.reload(); 
               }else{
                    $('#show_coupon_error').text(response.message).css('color', 'white').show(); // Show error message in red
               }                
            },
            error: function(xhr) {
                
            },
            complete: function() {
                // Re-enable the submit button after AJAX request is complete
                $('#submit-review').prop('disabled', false);
            }
        });
    });


    $('.remove_applied_coupon').on('click', function(e) {
        e.preventDefault();
        $.ajax({
            url: removeApplyCouponNameUrl,
            type: "GET",            
            success: function(response) {
                location.reload();        
            },
            error: function(xhr) {
                
            },
            complete: function() {
                
            }
        });
    });


    $('input[name="paymentMethod"]').change(function() {
        var paymentMethod = $(this).val();
        updateFormAction(paymentMethod);
    });

    function updateFormAction(paymentMethod) {
        if (paymentMethod == 'cashFree') {
            $('#finalCheckout').attr('action', "https://remediovet.com/cash-free-checkout");
        } else {
            $('#finalCheckout').removeAttr('action');
            

            $('#finalCheckout').on('submit', function(e) {
                e.preventDefault();


                // Validate phone number
                var phoneRegex = /^\d{10}$/;
                var phone = $('#phone').val();
                if (!phoneRegex.test(phone)) {
                    $('#phone').addClass('is-invalid');
                    return; // Exit submission if phone is invalid
                } else {
                    $('#phone').removeClass('is-invalid');
                }


                $('.continueBtn').html('<i class="fas fa-spinner fa-spin"></i> Processing...').attr('disabled', true);
                
                var isShippingAddressSame = $('#is_shipping_address_same').is(':checked') ? '1' : '0';
                var formData = $('#finalCheckout').serialize() + '&is_shipping_address_same=' + isShippingAddressSame;
                $.ajax({
                    url: codCheckoutUrl,
                    type: 'POST',
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    data: formData,
                    success: function(response){
                        window.location.href = thankyouPageUrl;
                        //toastr.success(response.message)
                    },
                    error: function(xhr, status, error){
                        // Handle error
                        console.error(xhr.responseText);
                         $('.continueBtn').html('Continue to Shipping').attr('disabled', false);
                    }
                })
           })
        }
    }
 });

function selectCoupon(couponName){
        if (couponName.trim() === '') {
            alert('Please enter a Coupon Code.'); // Show alert
            return; // Exit function
        }
        var csrfToken = $('meta[name="csrf-token"]').attr('content');
        $.ajax({
            url: applyCouponNameUrl,
            type: "POST",
            headers: {
                'X-CSRF-TOKEN': csrfToken
              },
            data: {
                couponName: couponName,            
            },
            success: function(response) {
               if(response.status == true){
                    $('.clear-input').removeClass('d-none');
                    location.reload(); 
               }else{
                    $('#show_coupon_error').text(response.message).css('color', 'white').show(); // Show error message in red
               }                
            },
            error: function(xhr) {
                
            },
            complete: function() {
                // Re-enable the submit button after AJAX request is complete
                $('#submit-review').prop('disabled', false);
            }
        });
}

document.addEventListener('DOMContentLoaded', function() {
    const form = document.getElementById('finalCheckout');
    const fullNameInput = document.getElementById('fullName');
    const emailInput = document.getElementById('email');
    const phoneInput = document.getElementById('phone');
    const stateInput = document.getElementById('state');
    const cityInput = document.getElementById('city');
    const apartmentInput = document.getElementById('apartment');

    const shippingFullNameInput = document.getElementById('shipping_name');
    const shippingEmailInput = document.getElementById('shipping_email');
    const shippingPhoneInput = document.getElementById('shipping_phone');
    const shippingStateInput = document.getElementById('shipping_state');
    const shippingCityInput = document.getElementById('shipping_city');
    const shippingApartmentInput = document.getElementById('shipping_apartment');

    const continueButton = document.querySelector('.custom_continueshp_btn');
    const isShippingAddressSameCheckbox = document.getElementById('is_shipping_address_same');

    function copyBillingToShipping() {
        shippingFullNameInput.value = fullNameInput.value;
        shippingEmailInput.value = emailInput.value;
        shippingPhoneInput.value = phoneInput.value;
        shippingStateInput.value = stateInput.value;
        shippingCityInput.value = cityInput.value;
        shippingApartmentInput.value = apartmentInput.value;
    }

    function clearShippingFields() {
        shippingFullNameInput.value = "";
        shippingEmailInput.value = "";
        shippingPhoneInput.value = "";
        shippingStateInput.value = "";
        shippingCityInput.value = "";
        shippingApartmentInput.value = "";
    }

    function toggleShippingInfoFields(isChecked) {
        if (isChecked) {
            copyBillingToShipping();
        } else {
            clearShippingFields();
        }
        toggleButtonState();
    }

    function checkBillingDetails() {
        return fullNameInput.value !== "" && fullNameInput.value !== null &&
               emailInput.value !== "" && emailInput.value !== null &&
               phoneInput.value !== "" && phoneInput.value !== null &&
               stateInput.value !== "" && stateInput.value !== null &&
               cityInput.value !== "" && cityInput.value !== null &&
               apartmentInput.value !== "" && apartmentInput.value !== null &&
               isValidPhoneNumber(phoneInput.value) &&
               isValidEmail(emailInput.value);
    }

    function checkShippingDetails() {
        return shippingFullNameInput.value !== "" && shippingFullNameInput.value !== null &&
               shippingEmailInput.value !== "" && shippingEmailInput.value !== null &&
               shippingPhoneInput.value !== "" && shippingPhoneInput.value !== null &&
               shippingStateInput.value !== "" && shippingStateInput.value !== null &&
               shippingCityInput.value !== "" && shippingCityInput.value !== null &&
               shippingApartmentInput.value !== "" && shippingApartmentInput.value !== null &&
               isValidPhoneNumber(shippingPhoneInput.value) &&
               isValidEmail(shippingEmailInput.value);
    }

    function isValidPhoneNumber(phone) {
        return /^\d{10}$/.test(phone);
    }

    function isValidEmail(email) {
        return /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email);
    }

    function toggleButtonState() {
        if (checkBillingDetails() && checkShippingDetails()) {
            continueButton.removeAttribute('disabled');
        } 
        // else {
        //     continueButton.setAttribute('disabled', 'disabled');
        // }
    }

    function initialize() {
        toggleButtonState();
        fullNameInput.addEventListener('input', toggleButtonState);
        emailInput.addEventListener('input', toggleButtonState);
        phoneInput.addEventListener('input', toggleButtonState);
        stateInput.addEventListener('input', toggleButtonState);
        cityInput.addEventListener('input', toggleButtonState);
        apartmentInput.addEventListener('input', toggleButtonState);
        shippingFullNameInput.addEventListener('input', toggleButtonState);
        shippingEmailInput.addEventListener('input', toggleButtonState);
        shippingPhoneInput.addEventListener('input', toggleButtonState);
        shippingStateInput.addEventListener('input', toggleButtonState);
        shippingCityInput.addEventListener('input', toggleButtonState);
        shippingApartmentInput.addEventListener('input', toggleButtonState);
        isShippingAddressSameCheckbox.addEventListener('change', function() {
            toggleShippingInfoFields(this.checked);
        });
    }

    initialize();
});

