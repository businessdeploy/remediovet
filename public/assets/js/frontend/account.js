let tabs = document.querySelectorAll(".tabs li");
    let tabsArray = Array.from(tabs);
    let divs = document.querySelectorAll(".content > div");
    let divsArray = Array.from(divs);

    // console.log(tabsArray);

    tabsArray.forEach((ele) => {
      ele.addEventListener("click", function (e) {
        // console.log(ele);
        tabsArray.forEach((ele) => {
          ele.classList.remove("active");
        });
        e.currentTarget.classList.add("active");
        divsArray.forEach((div) => {
          div.style.display = "none";
        });
        // console.log(e.currentTarget.dataset.cont);
        document.querySelector(e.currentTarget.dataset.cont).style.display = "block";
      });
    });

$(document).ready(function(){
        $('#phone').on('input', function() {
            var phone = $(this).val();
            if (!phone.match(/^\d{10}$/)) {
                $(this).addClass('is-invalid');
                $('#saveAddressButton').prop('disabled',true);
            } else {
                $(this).removeClass('is-invalid');
                $('#saveAddressButton').prop('disabled',false);
            }
        });

       $('#email').on('input', function () {
            var email = $(this).val();
            var isValid = isValidEmail(email); // Check if the email is valid using the isValidEmail function defined previously

            if (!isValid) {
                $(this).addClass('is-invalid');
                $('#saveAddressButton').prop('disabled', true);
            } else {
                $(this).removeClass('is-invalid');
                $('#saveAddressButton').prop('disabled', false);
            }
        });

        // Function to check if the email is valid
        function isValidEmail(email) {
            // Regular expression for email validation
            var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            return emailRegex.test(email);
        }


    $('.delete-address').click(function(e) {
            e.preventDefault();
            var addressId = $(this).data('address-id');
          
            var confirmDelete = confirm('Are you sure you want to delete this address?');

            if (confirmDelete) {
                var csrfToken = $('meta[name="csrf-token"]').attr('content');
                $.ajax({
                    url: deleteAddressUrl,
                    type: "POST",
                    headers: {
                        'X-CSRF-TOKEN': csrfToken
                      },
                    data: { addressId : addressId },
                    success: function(response) {
                        $.toast({
                            heading: 'Success',
                            text: response.message,
                            position: 'top-right',
                            icon: 'success'
                        })

                        setTimeout(function(){
                            window.location.href = myaccount; 
                        }, 3000); 
                       
                    },
                    error: function(xhr, status, error) {
                        // Handle error response
                        console.error(xhr.responseText);
                        // Optionally, show an error message to the user
                    }
                });
                
               
            }
        });



    $('#addressForm').submit(function(e) {
        e.preventDefault(); // Prevent default form submission
        var csrfToken = $('meta[name="csrf-token"]').attr('content');
        // Serialize form data
        var formData = $(this).serialize();
        $.ajax({
            url: updateAddressUrl,
            type: "POST",
            headers: {
                'X-CSRF-TOKEN': csrfToken
              },
            data: formData,
            success: function(response) {
                $.toast({
                    heading: 'Success',
                    text: response.message,
                    position: 'top-right',
                    icon: 'success'
                })

                setTimeout(function(){
                    window.location.href = accountUrl; 
                }, 3000); 
               
            },
            error: function(xhr, status, error) {
                // Handle error response
                console.error(xhr.responseText);
                // Optionally, show an error message to the user
            }
        });
    });


    $('#addressStoreForm').submit(function(e) {
        e.preventDefault(); // Prevent default form submission
        var csrfToken = $('meta[name="csrf-token"]').attr('content');
        // Serialize form data
        var formData = $(this).serialize();
        $.ajax({
            url: storeAddressUrl,
            type: "POST",
            headers: {
                'X-CSRF-TOKEN': csrfToken
              },
            data: formData,
            success: function(response) {
                $.toast({
                    heading: 'Success',
                    text: response.message,
                    position: 'top-right',
                    icon: 'success'
                })

                setTimeout(function(){
                    window.location.href = accountUrl; 
                }, 3000); 
               
            },
            error: function(xhr, status, error) {
                // Handle error response
                console.error(xhr.responseText);
                // Optionally, show an error message to the user
            }
        });
    });

    $('#profileForm').submit(function(e) {
        e.preventDefault(); // Prevent default form submission
        var csrfToken = $('meta[name="csrf-token"]').attr('content');
        // Serialize form data
        var formData = $(this).serialize();
        $.ajax({
            url: userProfileUpdateUrl,
            type: "POST",
            headers: {
                'X-CSRF-TOKEN': csrfToken
              },
            data: formData,
            success: function(response) {
                $.toast({
                    heading: 'Success',
                    text: response.message,
                    position: 'top-right',
                    icon: 'success'
                })

                setTimeout(function(){
                    window.location.href = accountUrl; 
                }, 3000); 
               
            },
            error: function(xhr, status, error) {
                // Handle error response
                console.error(xhr.responseText);
                // Optionally, show an error message to the user
            }
        });
    });
});

function redirectToUrl(url) {
    window.location.href = url;
}

function removeWishlist(id){    
        $.ajax({
            url: removeWishlistUrl,
            type: 'POST',
            data:{ id:id },
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            success: function(response) {
                // Handle success response
                $('#account_wishlist').load(location.href + ' #account_wishlist');
                // Optionally, you can update the UI to reflect the removed item
            },
            error: function(xhr, status, error) {
                // Handle error
                console.error(xhr.responseText);
            }
        });  
}


