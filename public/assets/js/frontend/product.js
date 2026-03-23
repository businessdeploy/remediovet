$(document).ready(function(){

    // const selectedOption = $(this).find('option:selected');
    // const variationId = selectedOption.val();
    // const variationPrice = $('#variation_price');
    // Livewire.emit('variationSelected', variationId);
    // variationPrice.show();

    



    $('.nav-tabs a:first').tab('show');
    // Click event handler for category buttons
    // $('[id^="dogTypeButton"]').click(function(event) {
    //     event.preventDefault();
    //     var index = $(this).attr('id').replace('dogTypeButton', '');
    //     $('#subCategoriesDog' + index).toggleClass('hide');
    //     $(this).find('.menu-open').toggleClass('d-none');
    //     $(this).find('.menu-close').toggleClass('d-none');
    // });

    // // Click event handler for subcategory buttons
    // $('[id^="foodTypeButton"]').click(function(event) {
    //     event.preventDefault();
    //     var index = $(this).attr('id').replace('foodTypeButton', '');
    //     $('#foodList' + index).slideToggle();
    //     $(this).find('.menu-open').toggleClass('d-none');
    //     $(this).find('.menu-close').toggleClass('d-none');
    // });
    


    
	$('#submit-review').on('click', function() {
        var rating = $('.rating input:checked').val();
        var review = $('#review').val();
        var product_id= $('#product_id').val();
        var csrfToken = $('meta[name="csrf-token"]').attr('content');

        if (!rating || !review.trim()) {
            // Show error message
            $.toast({
                heading: 'Warning',
                text: 'Please provide both rating and review.',
                position: 'top-right',
                icon: 'warning'
            });
            return; // Prevent further execution of the function
        }

        $(this).prop('disabled', true);

        $('#submit-review').html('<i class="fas fa-spinner fa-spin"></i> Processing...').attr('disabled', true);
        $.ajax({
            url: submitRatingUrl,
            type: "POST",
            headers: {
                'X-CSRF-TOKEN': csrfToken
              },
            data: {
                rating: rating,
                review: review,  
                product_id:product_id,              
            },
            success: function(response) {
                if(response.status == true){
                    $.toast({
                        heading: 'Success',
                        text: response.message,
                        position: 'top-right',
                        icon: 'success'
                    }) // Show success message

                    $('#review-form')[0].reset();
                    // Alternatively, you can reset individual elements
                    $('.rating input:checked').prop('checked', false);
                    $('#review').val('');
                }else{
                    $.toast({
                        heading: 'Warning',
                        text: response.message,
                        position: 'top-right',
                        icon: 'warning'
                    });
                }
                
                // You can update UI as needed after successful submission
                $('#submit-review').html('Submit').attr('disabled', false);
               
            },
            error: function(xhr) {
                // Handle errors
                console.log(xhr.responseText);
                $('#submit-review').html('Submit').attr('disabled', false);
            },
            complete: function() {
                // Re-enable the submit button after AJAX request is complete
                $('#submit-review').prop('disabled', false);
            }
        });
    });
});

function wishlist(product_id,type){
    var csrfToken = $('meta[name="csrf-token"]').attr('content');
    var actionText = (type === 'add') ? 'Adding...' : 'Removing...';
    $.ajax({
        url: wishlistUrl,
        type: "POST",
        headers: {
            'X-CSRF-TOKEN': csrfToken
          },
        data: {
            product_id: product_id,
            type: type
        },
        beforeSend: function () {
            // Show the action text while waiting for the response
            $('#' + type + '-' + product_id + '-button').find('span').last().text(actionText);
        },
        success: function(response) {
            $.toast({
                heading: 'Success',
                text: response.message,
                position: 'top-right',
                icon: 'success'
            })
            setTimeout(function() {
                location.reload();
            }, 3000);
        },
        error: function(xhr) {
            // Handle errors
            console.log(xhr.responseText);
        },
        complete: function() {
            
        }
    });
}

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


function redirectToProduct(url){
    window.location.href=url;
}


//variation get price
$(document).ready(function() {
    const $sizeSelect = $('input[name="size_field"]');
    const $colorSelect = $('input[name="color_field"]');
    const $addToCartBtn = $('.finalAddToCart');
    const $productIdInput = $('#product_id');
    var $quantity = $('.rounded-pill');



        function convertPrice(priceString) {
            return parseFloat(priceString.replace(/[^0-9.]/g, ''));
        }

        function formatPrice(price) {
            return '₹' + price.toFixed(2).replace(/\d(?=(\d{3})+\.)/g, '$&,');
        }

        function updatePrice(quantity) {

            var price = $('.single_product_price').text();
            var numericPrice = convertPrice(price);
            var totalPrice = numericPrice * quantity;
            var formattedTotalPrice = formatPrice(totalPrice);

            $('#selectedVariationPrice').html(formattedTotalPrice)
        }

    function checkSelections() {
        
        let sizeSelected = $('input[name="size_field"]:checked').val() || null;
        let colorSelected = $('input[name="color_field"]:checked').val() || null;
        let product_id = $productIdInput.val();

        if (sizeSelected && colorSelected) {
            $addToCartBtn.prop('disabled', false);
        } else if ($sizeSelect.length && sizeSelected || $colorSelect.length && colorSelected) {
            $addToCartBtn.prop('disabled', false);
        } else {
            $addToCartBtn.prop('disabled', true);
        }

        var csrfToken = $('meta[name="csrf-token"]').attr('content');
        $.ajax({
            url: getVariationPriceUrl,
            type: "POST",
            headers: {
                'X-CSRF-TOKEN': csrfToken
            },
            data: {
                product_id: product_id,
                sizeSelected: sizeSelected,
                colorSelected: colorSelected,
            },
            success: function(response) {
                $addToCartBtn.prop('disabled', response.buttonDisable);
                $('#selectedVariationPrice').html(response.price);
                $('#variation_id').val(response.variation_id);
                $('.single_product_price').text(response.price);
                var current_val = parseInt($quantity.val());
                if(current_val > 1) {
                    updatePrice(current_val);
                }
                if(response.quantity !="") {
                    $('.att_value').html('<span class="left_quantity">Only ' + response.quantity + ' products left</span>');
                }

            },
            error: function(xhr) {
                console.log(xhr.responseText);
            }
        });
    }

    $sizeSelect.on('change', checkSelections);
    $colorSelect.on('change', function() {
        $colorSelect.not(this).prop('checked', false);
        checkSelections();
    });

    $sizeSelect.first().trigger('click');


    $('#quantity').on('input', function() {
        var selectedQuantity = $(this).val();

        if (selectedQuantity == 0) {
            $('.product-qty').css('border-color', 'red');
        } else {
            $('.product-qty').css('border-color', 'black');
        }
    });

    $('.rounded-pill').keyup(function(){
        var $quantity = $('.rounded-pill');
        var current_val = parseInt($quantity.val());
        updatePrice(current_val);
    })


    
    function addToCart(product_id, selectedQuantity, variation_id, addons) {
        var csrfToken = $('meta[name="csrf-token"]').attr('content');
        $.ajax({
            url: addToCartUrl,
            type: "POST",
            headers: {
                'X-CSRF-TOKEN': csrfToken
            },
            data: {
                product_id: product_id,
                selectedQuantity: selectedQuantity,
                variation_id: variation_id,
                addons: addons
            },
            success: function(response) {
                if(response.status == 404) {
                        $.toast({
                        heading: 'Error',
                        text: response.text,
                        position: 'top-right',
                        icon: 'error'
                    });    
                } else {
                    Livewire.emit('cartAddedUpdated');
                    $.toast({
                        heading: 'Success',
                        text: response.message,
                        position: 'top-right',
                        icon: 'success'
                    });

                    setTimeout(function() {
                        window.location.href = cartPageUrl;
                    }, 3000);    
                }
                
            },
            error: function(xhr) {
                console.log(xhr.responseText);
            }
        });
    }
    
    
     function addToCart1(product_id, selectedQuantity, variation_id, addons) {
        alert();
        var csrfToken = $('meta[name="csrf-token"]').attr('content');
        $.ajax({
            url: addToCartUrl,
            type: "POST",
            headers: {
                'X-CSRF-TOKEN': csrfToken
            },
            data: {
                product_id: product_id,
                selectedQuantity: selectedQuantity,
                variation_id: variation_id,
                addons: addons
            },
            success: function(response) {
                Livewire.emit('cartAddedUpdated');
                $.toast({
                    heading: 'Success',
                    text: response.message,
                    position: 'top-right',
                    icon: 'success'
                });

                setTimeout(function() {
                    window.location.href = cartPageUrl;
                }, 3000);
            },
            error: function(xhr) {
                console.log(xhr.responseText);
            }
        });
    }

    $('#addToCartBtn').on('click', function(e) {
        e.preventDefault();

        var product_id = $productIdInput.val();
        var selectedQuantity = $('#quantity').val();
        var selectedSize = $('input[name="size_field"]:checked').val();
        var selectedColor = $('input[name="color_field"]:checked').val();

        var totalQuantity = $('.left_quantity').html();
        var quantity = totalQuantity.match(/\d+/)[0];
        var actualQuantity = parseInt(quantity, 10);
        

        if (selectedQuantity == 0) {
            $('.product-qty').css('border-color', 'red');
            alert('Please select a quantity.');
            return;
        }

        if (selectedQuantity > actualQuantity) {
            alert('Only ' + actualQuantity + ' Products Available in Stock!');
            return;
        }

        if ($sizeSelect.length > 0 && !selectedSize) {
            alert('Please select a size.');
            return;
        }

        if ($colorSelect.length > 0 && !selectedColor) {
            alert('Please select a color.');
            return;
        }

        var variation_id = $('#variation_id').val();

        // Capture selected add-ons
        var addons = [];
        $('input[name="addonCheckbox[]"]:checked').each(function() {
            addons.push($(this).val());
        });

        if (!$addToCartBtn.prop('disabled')) {
            addToCart(product_id, selectedQuantity, variation_id, addons);
        }
    });

    $('.addonBtn').on('click', function(e) {
        e.preventDefault();

        var addonId = $(this).data('addon-id');
        var selectedQuantity = $('#quantity').val();
        var variation_id = $('#variation_id').val();

        if (selectedQuantity == 0) {
            $('.product-qty').css('border-color', 'red');
            alert('Please select a quantity.');
            return;
        }

        addToCart(addonId, selectedQuantity, variation_id);
    });
});

