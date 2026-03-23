$(document).ready(function(){
    $('#password-toggle').click(function(){
        var input = $('#password');
        if (input.attr('type') === 'password') {
            input.attr('type', 'text');
            $(this).find('span').removeClass('mdi mdi-eye-off').addClass('mdi mdi-eye');
        } else {
            input.attr('type', 'password');
            $(this).find('span').removeClass('mdi mdi-eye').addClass('mdi mdi-eye-off');
        }
    });

    $('#c_password-toggle').click(function(){
        var input = $('#c_password');
        if (input.attr('type') === 'password') {
            input.attr('type', 'text');
            $(this).find('span').removeClass('mdi mdi-eye-off').addClass('mdi mdi-eye');
        } else {
            input.attr('type', 'password');
            $(this).find('span').removeClass('mdi mdi-eye').addClass('mdi mdi-eye-off');
        }
    });
});

/// ////===================Update Password =======================================/////
 $("#updateUserPassword").on('submit', function(e){
        e.preventDefault();
        // // Sending data via AJAX
        var csrfToken = $('meta[name="csrf-token"]').attr('content');
        $.ajax({
            url: updatePasswordUrl, // Change this to your backend script URL
            type: 'POST',
            headers: {
                'X-CSRF-TOKEN': csrfToken
            },
            data: $(this).serialize(),
            success: function(response){
                // Handle success response
                toastr.success(response.message)
                setTimeout(function() {
                    window.location.reload();
                }, 3000);
              
            },
            error: function(xhr, status, error){
                // Handle error
                console.error(xhr.responseText);
            }
        });
    });