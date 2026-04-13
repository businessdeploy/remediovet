$(document).ready(function() {

    $('.subCategories').addClass('hide');

    $('[id^="dogTypeButton"]').click(function(event) {
        event.preventDefault();
        var index = $(this).attr('id').replace('dogTypeButton', '');
        $('#subCategoriesDog' + index).toggleClass('hide');
        $(this).find('.menu-open').toggleClass('d-none');
        $(this).find('.menu-close').toggleClass('d-none');
    });

    // Click event handler for subcategory buttons
    $('[id^="foodTypeButton"]').click(function(event) {
        event.preventDefault();
        var index = $(this).attr('id').replace('foodTypeButton', '');
        $('#foodList' + index).slideToggle();
        $(this).find('.menu-open').toggleClass('d-none');
        $(this).find('.menu-close').toggleClass('d-none');
    });

    $('.brandInputs').click(function(){
        applyFilters();
    });

    

    //Category Filters
    $('#featuredFilter, #seasonalInputs,.priceInput, .categoryInput').change(function() {
        applyFilters();
    });
});
function redirectToProduct(url) {
    window.location.href = url;
}


function applyFilters() {

    var featuredFilter = $('#featuredFilter').prop('checked') ? 1 : 0;
    var seasonalInputs = $('#seasonalInputs').prop('checked') ? 1 : 0;
    var priceInput = $('input[name="priceSort"]:checked').val();

    var selectedBrands = $('.brandInputs:checked').map(function() {
        return $(this).val();
    }).get();

    // Collect selected categories, subcategories, and product types
    var selectedCategories = [];
    var maincategoryInput=$('#maincategoryInput').val();
    $('input[name="categoryInput"]:checked').each(function() {
        selectedCategories.push($(this).val());
    });

    var selectedCategoriesLength = selectedCategories.length;
    if (selectedCategoriesLength > 0) {
    }else{
        selectedCategories.push(maincategoryInput);
    }

    // AJAX request to fetch filtered products
    $.ajax({
        url: categoryFilterUrl, // Use the generated route URL
        type: "GET",
        data: {
            selectedCategories:selectedCategories,
            featuredFilter:featuredFilter,
            seasonalInputs: seasonalInputs,
            priceInput: priceInput,
            selectedBrands:selectedBrands,
        },
        success: function(data) {
           
           // Generate product listing HTML
            var response=data.products;
            var productListingHTML = '';
            var productCount="Showing "+data.productCount+" Products"
            $('#productCount').html(productCount);
            if (response.length > 0) {
                response.forEach(function(product) {
                    productListingHTML += '<div class="col-sm-12 col-md-6 col-lg-3 col-lg-4 py-3">';
                    productListingHTML += '<div class="product_box listing-p">';
                    productListingHTML += '<div class="img_boxes pointer" onclick="redirectToProduct(\'' + product.url + '\')">';
                    productListingHTML += '<span class="bg_circle"></span>';
                    productListingHTML += '<img src="https://remediovet.com/' + product.featured_image + '" class="mx-auto d-block" alt="Product Image">';
                    productListingHTML += '</div>';
                    productListingHTML += '<div class="product_details justify-content-center my-3">';
                    productListingHTML += '<h5 class="fw-bold d-flex justify-content-center" onclick="redirectToProduct(\'' + product.url + '\')">' + product.name + '</h5>';
                    productListingHTML += '<div class="d-flex justify-content-center">';
                    productListingHTML += '<p class="price fw-bold d-flex justify-content-center fs-3 custom_rating_txt">&#8377;' + product.selling_price + '</p>';
                    productListingHTML += '<p class="price fw-bold fs-4 text-decoration-line-through p-1 mx-2">&#8377;' + product.original_price + '</p>';
                    productListingHTML += '</div>';
                    productListingHTML += '<div class="d-flex justify-content-center custom_rating_txt">';
                    productListingHTML += product.rating_html; // Assuming rating_html is returned in data
                    productListingHTML += '</div>';
                    productListingHTML += '<span>';
                    productListingHTML += '<button type="button" class="text-light submit_btn border-0 px-5 mx-auto d-block" onclick="redirectToProduct(\'' + product.url + '\')">Shop Now</button>';
                    productListingHTML += '</span>';
                    productListingHTML += '</div>';
                    productListingHTML += '</div>';
                    productListingHTML += '</div>';
                });
            } else {
                productListingHTML = '<div class="col-sm-12 text-center"><div class="product_box"><h1 class="fs-4 text-secondary">No Product Found</h1></div></div>';
            }
            
            // Update product listing with generated HTML
            $('#productListing').html(productListingHTML);

           
        }
    });
}


	
	$('.chevron-i').click(function (e) {
    if ($('.main-category-li .menu-open').hasClass("active")) {
        $('.main-category-li .menu-open').removeClass("active");
    }
    else {
        $('.main-category-li .menu-open').addClass("active");
    }
});




