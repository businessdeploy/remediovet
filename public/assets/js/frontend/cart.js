$(document).ready(function(){
	$('#applyCoupons').on('submit', function(e) {
		e.preventDefault();
		var couponName=$('#couponName').val();
		if (couponName.trim() === '') {
            alert('Please enter a coupon name.'); // Show alert
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
               		$('#show_coupon_error').text(response.message).css('color', 'red').show(); // Show error message in red
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


     Show_Countdown();

});




var counter = timer; // Initial value, can be changed later

function Show_Countdown() {
    var timer = setInterval(function () {
        var date = new Date(0);
        date.setSeconds(counter);
        var timeString = date.toISOString().substring(11, 19);

        $("#examplecontent").text(timeString);
        counter--;

        if (counter < 0) {
            clearInterval(timer);
            $("#examplecontent").hide();
            updateSpecialOffer();
        }
    }, 1000);
}


function updateSpecialOffer() {
    var specialofferId = $('#specialofferId').val();
    $.ajax({
        url: getRandomSpecialOffer,
        method: 'GET',
        data: { specialofferId: specialofferId },
        success: function(data) {
            // Update the link and image with the new offer data
            if(data.sproductid!=''){
                
            $("#offer-link").attr("href", data.product_url);
            $("#featured_image_preview").attr("src", data.featured_image);
            $('#specialofferId').val(data.id);
            $('#hiddenproductid').val(data.sproductid);
            // Reset the timer with the new time
            counter = data.time; // Assuming 'time' is part of the returned data
            $("#examplecontent").show();

            // Start a new countdown
            Show_Countdown();
}else{
   $("#specialofer").css("display", "none");
    $("#nooffer").css("display", "block"); 
}
            
        },
        error: function(error) {
            console.error('Error fetching new offer:', error);
        }
    });
}