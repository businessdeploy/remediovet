$(document).ready(function() {
    // Add More button click event
    $('.add-btn').click(function() {
        var directoryRow = $('.directory-row').first().clone(); // Clone the first row
        directoryRow.find('input').val(''); // Clear input values in the cloned row
        $('#directoryHoursContainer').append(directoryRow); // Append the cloned row to the container
    });

    // Remove button click event
    $('#directoryHoursContainer').on('click', '.remove-btn', function() {
        $(this).closest('.directory-row').remove(); // Remove the row containing the clicked remove button
    });
});

