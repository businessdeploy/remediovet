$(document).ready(function(){
    //category Multi select Dropdown =====@#
    $("#multiple-checkboxes").select2({
            closeOnSelect : false,
            placeholder : "Placeholder",
            // allowHtml: true,
            allowClear: true,
            tags: true // создает новые опции на лету
        }); 

    // ////===================create more product Variations =======================================/////
    var i = 1;
    var addamount = '';
    $("#add_more_variations").click(function(){
        addamount += '';
        console.log('amount: ' + addamount);
        i++;
        // Clone the variation_clone_div
        var newRow = $('#variation_clone_div').clone();
        // Update IDs and reset selected options
        newRow.attr('id', 'row' + i);
        newRow.find('select').val('color');
        newRow.find('input').val('0');
        // Create remove button
        var removeBtn = $('<button type="button" name="remove" id="remove_' + i + '" class="btn btn-danger btn_remove">X</button>');

        // Replace the last td with the remove button
        newRow.find('td:last').empty().append(removeBtn);
        // Append the cloned row to dynamic_field
        $('#dynamic_variation_field').append(newRow);
    });


    $(document).on('click', '.btn_remove', function(){
        addamount -= 700;
        console.log('amount: ' + addamount);
        $(this).closest('tr').remove();
    });


    // ////=================== Toggle Tabs =======================================/////
    $('#vert-tabs-tab a').on('click', function (e) {
        e.preventDefault()
        $(this).tab('show')
    })


    // ////===================create more product attributes =======================================/////
    var j = 1;
    $("#add_more_attribute").click(function(){
        j++;
        // Clone the variation_clone_div
        var newRow = $('#attribute_clone_div').clone();
        // Update IDs and reset selected options
        newRow.attr('id', 'row' + j);
        newRow.find('select').val('attribute_name');
        newRow.find('input').val('');
        // Create remove button
        var removeAtrBtn = $('<button type="button" name="remove" id="remove_attr_' + j + '" class="btn btn-danger btn_attr_remove">X</button>');
        // Replace the last td with the remove button
        newRow.find('td:last').empty().append(removeAtrBtn);
        // Append the cloned row to dynamic_field
        $('#dynamic_attribute_field').append(newRow);
    });

    $(document).on('click', '.btn_attr_remove', function(){
        var deletableid=$(this).attr('data-value');
        if(deletableid){
            var confirmation = confirm("Are you sure you want to delete this record?");
            if (confirmation) {
                console.log(deletableid)
                // AJAX request to delete record from the database
                var csrfToken = $('meta[name="csrf-token"]').attr('content');
                $.ajax({
                    url: deleteAttributeUrl, // Replace this with the actual endpoint to delete the record
                    method: 'POST',
                    headers: {
                        'X-CSRF-TOKEN': csrfToken
                    },
                    data: { id: deletableid },
                    success: function(response) {
                        // Remove the row from the table if deletion was successful
                        if(response.success) {
                            $('#dynamic_attribute_field').load(window.location.href + ' #dynamic_attribute_field');
                        } else {
                            alert("Failed to delete record");
                        }
                    },
                    error: function() {
                        alert("Error occurred while deleting record");
                    }
                });
            }
        }else{

        }

       $(this).closest('tr').remove();
    });


    $(document).on('click', '.btn_variation_status', function(){
        var button = $(this);
        var deletableid=$(this).attr('data-value');
        // var status=$(this).attr('data-status');
        var status = button.attr('data-status');
        //var newStatus = status == 0 ? 1 : 0; // Toggle status
        if(deletableid){
            var confirmation = confirm("Are you sure you want to change status?");
            if (confirmation) {
                // AJAX request to delete record from the database
                var csrfToken = $('meta[name="csrf-token"]').attr('content');
                $.ajax({
                    url: deleteVariationUrl, // Replace this with the actual endpoint to delete the record
                    method: 'POST',
                    headers: {
                        'X-CSRF-TOKEN': csrfToken
                    },
                    data: { id: deletableid, status: status },
                    success: function(response) {
                        // Remove the row from the table if deletion was successful
                        if(response.success) {
                            toastr.success(response.message)
                            window.location.reload();

                            //$('#dynamic_attribute_field').load(window.location.href + ' #dynamic_attribute_field');
                        } else {
                            alert("Failed to change status");
                        }
                    },
                    error: function() {
                        alert("Error occurred while status changed.");
                    }
                });
            }
        }
    });


    // ////===================Save Attributes =======================================/////
    $("#submitAttributeBtn").on('click', function(){
        var attributeData = [];
        var product_id=$('#product_id').val();
        $("#dynamic_attribute_field tr").each(function(){
            var attributeId = $(this).find('select[name="attribute_id[]"]').val();
            var attributeValue = $(this).find('input[name="attribute_value[]"]').val();
            attributeData.push({ attribute_id: attributeId, value: attributeValue });
        });

        // // Sending data via AJAX
        var csrfToken = $('meta[name="csrf-token"]').attr('content');
        $.ajax({
            url: saveAttributeUrl, // Change this to your backend script URL
            type: 'POST',
            headers: {
                'X-CSRF-TOKEN': csrfToken
            },
            data: { product_id:product_id,attributes: attributeData },
            success: function(response){
                // Handle success response
                toastr.success(response.message)
                $('#dynamic_attribute_field').load(window.location.href + ' #dynamic_attribute_field');
            },
            error: function(xhr, status, error){
                // Handle error
                console.error(xhr.responseText);
            }
        });
    });

    /// ////===================Save variations =======================================/////
    $("#submitVariationBtn").on('click', function(){
        var variationData = [];
        var product_id=$('#product_id').val();
        $("#dynamic_variation_field tr").each(function(){
            var attributes = [];
            $(this).find('select[name^="variation_attributes["]').each(function() {
                var productAttributeId = $(this).val();
                attributes.push(productAttributeId); // Push only the attribute ID
            });
            var variation_quantity = $(this).find('input[name="variation_quantity[]"]').val();
            var variation_price = $(this).find('input[name="variation_price[]"]').val();
            variationData.push({ attributes: attributes, variation_quantity: variation_quantity, variation_price: variation_price });
        });

        // // Sending data via AJAX
        var csrfToken = $('meta[name="csrf-token"]').attr('content');
        $.ajax({
            url: saveVariationUrl, // Change this to your backend script URL
            type: 'POST',
            headers: {
                'X-CSRF-TOKEN': csrfToken
            },
            data: { product_id:product_id,variations: variationData },
            success: function(response){
                // Handle success response
                 toastr.success(response.message)
                $('#dynamic_variation_field').load(window.location.href + ' #dynamic_variation_field');
            },
            error: function(xhr, status, error){
                // Handle error
                console.error(xhr.responseText);
            }
        });
    });


    $('input[name="variation_quantity1[]"], input[name="variation_price1[]"]').on('change', function() {
        var input = $(this);
        var value = input.val();
        var id = input.data('id');
        var type = input.data('type');
        var csrfToken = $('meta[name="csrf-token"]').attr('content');
        
        $.ajax({
            url: updateVariationUrl,
            type: 'POST',
            headers: {
                'X-CSRF-TOKEN': csrfToken
            },
            data: {id: id,type: type,value: value},
            success: function(response) {
                if(response.success) {
                    toastr.success(response.message)
                } else {
                    toastr.error(response.message)
                }
            },
            error: function(xhr, status, error) {
                //toastr.success(response.message)
                alert('An error occurred while updating the variation');
            }
        });
    });

    /// ////===================Save Product Faqs =======================================/////
    ClassicEditor.create(document.querySelector('#description')).catch(error => {
        console.error(error);
    });

     ClassicEditor.create(document.querySelector('#small_description')).catch(error => {
        console.error(error);
    });

    ClassicEditor.create(document.querySelector('#edit_description')).catch(error => {
        console.error(error);
    });

    $("#storeNewFaq").on('submit', function(e){
        e.preventDefault();

        // // Sending data via AJAX
        var csrfToken = $('meta[name="csrf-token"]').attr('content');
        $.ajax({
            url: saveFaqUrl, // Change this to your backend script URL
            type: 'POST',
            headers: {
                'X-CSRF-TOKEN': csrfToken
            },
            data: $(this).serialize(),
            success: function(response){
                // Handle success response
                toastr.success(response.message)

                $('#addFaqModal').modal('hide');
                $('#addFaqModal').trigger('reset');
                $('#product_faqs_table').load(window.location.href + ' #product_faqs_table');
            },
            error: function(xhr, status, error){
                // Handle error
                console.error(xhr.responseText);
            }
        });
    });


    


    $("#updateFaq").on('submit', function(e){
        e.preventDefault();
        // // Sending data via AJAX
        var csrfToken = $('meta[name="csrf-token"]').attr('content');
        $.ajax({
            url: updateFaqUrl, // Change this to your backend script URL
            type: 'POST',
            headers: {
                'X-CSRF-TOKEN': csrfToken
            },
            data: $(this).serialize(),
            success: function(response){
                // Handle success response
                toastr.success(response.message)

                $('#editFaqModal').modal('hide');
                $('#product_faqs_table').load(window.location.href + ' #product_faqs_table');
            },
            error: function(xhr, status, error){
                // Handle error
                console.error(xhr.responseText);
            }
        });
    });

});

function editFaqModel(id,title,description){
    $('#faq_id').val(id);
    $('#edit_title').val(title);
    $('#edit_description').val(description);
    
    $('#editFaqModal').modal('show');
}

function deleteFaq(id) {
    Swal.fire({
        title: 'Are you sure?',
        text: "You won't be able to revert this!",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Yes, delete it!'
    }).then((result) => {
        if (result.isConfirmed) {
            var csrfToken = $('meta[name="csrf-token"]').attr('content');
            $.ajax({
                url: deleteFaqUrl, // Change this to your backend script URL
                type: 'POST',
                headers: {
                    'X-CSRF-TOKEN': csrfToken
                },
                data: { faq_id:id },
                success: function(response){
                    // Handle success response
                    toastr.success(response.message)                
                    $('#product_faqs_table').load(window.location.href + ' #product_faqs_table');
                },
                error: function(xhr, status, error){
                    // Handle error
                    console.error(xhr.responseText);
                }
            });
        }
    });
}


// preview featured image
function previewImage(event) {
    var reader = new FileReader();
    reader.onload = function() {
        var preview = document.getElementById('featured_image_preview');
        preview.src = reader.result;
        preview.style.display = 'block';
    }
    reader.readAsDataURL(event.target.files[0]);
}


function previewMultipleImages(event) {
    var files = event.target.files;
    var preview = document.querySelector('preview-image');
    preview.innerHTML = ''; // Clear existing previews

    // Loop through each selected file
    for (var i = 0; i < files.length; i++) {
        // Use an IIFE to preserve the value of i
        (function(file) {
            var reader = new FileReader();
            reader.onload = function() {
                var img = document.createElement('img');
                img.src = reader.result;
                img.style.maxWidth = '100px';
                img.style.marginBottom = '10px';
                preview.appendChild(img);
            }
            reader.readAsDataURL(file);
        })(files[i]); // Pass the current file to the IIFE
    }
}


/// ////===================Product Addon's =======================================/////
 var j = 1;
    $("#add_more_addons").click(function(){
        j++;
        // Clone the variation_clone_div
        var newRow = $('#addon_clone_div').clone();
        // Update IDs and reset selected options
        newRow.attr('id', 'row' + j);
        newRow.find('select').val('addon_name');
        newRow.find('input').val('');
        // Create remove button
        var removeAtrBtn = $('<button type="button" name="remove" id="remove_attr_' + j + '" class="btn btn-danger btn_attr_remove">X</button>');
        // Replace the last td with the remove button
        newRow.find('td:last').empty().append(removeAtrBtn);
        // Append the cloned row to dynamic_field
        $('#dynamic_addon_field').append(newRow);
    });


    $(document).on('click', '.btn_addon_remove', function(){
        var deletableid=$(this).attr('data-value');
        if(deletableid){
            var confirmation = confirm("Are you sure you want to delete this record?");
            if (confirmation) {
                console.log(deletableid)
                // AJAX request to delete record from the database
                var csrfToken = $('meta[name="csrf-token"]').attr('content');
                $.ajax({
                    url: deleteAttributeUrl, // Replace this with the actual endpoint to delete the record
                    method: 'POST',
                    headers: {
                        'X-CSRF-TOKEN': csrfToken
                    },
                    data: { id: deletableid },
                    success: function(response) {
                        // Remove the row from the table if deletion was successful
                        if(response.success) {
                            $('#dynamic_addon_field').load(window.location.href + ' #dynamic_addon_field');
                        } else {
                            alert("Failed to delete record");
                        }
                    },
                    error: function() {
                        alert("Error occurred while deleting record");
                    }
                });
                $(this).closest('tr').remove();
            }
        }else{

        }

       
    });

    ///=====================SAve Addon ========@#
    $("#submitAddonBtn").on('click', function(){
        var addonData = [];
        var product_id=$('#product_id').val();
        $("#dynamic_addon_field tr").each(function(){
            var addonId = $(this).find('select[name="addon_id[]"]').val();
            addonData.push({ addon_id: addonId});
        });

        // // Sending data via AJAX
        var csrfToken = $('meta[name="csrf-token"]').attr('content');
        $.ajax({
            url: saveAddonUrl, // Change this to your backend script URL
            type: 'POST',
            headers: {
                'X-CSRF-TOKEN': csrfToken
            },
            data: { product_id:product_id,addons: addonData },
            success: function(response){
                // Handle success response
                toastr.success(response.message)
                $('#dynamic_addon_field').load(window.location.href + ' #dynamic_addon_field');
            },
            error: function(xhr, status, error){
                // Handle error
                console.error(xhr.responseText);
            }
        });
    });