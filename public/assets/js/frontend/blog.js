// $(document).ready(function() {
//     // Initially hide all blog items beyond the first 6
//     $('#blog-container .blog_view:gt(5)').hide();

//     // On click of the "Load More" button
//     $('#load-more-btn').click(function() {
//         // Show the next 3 hidden blog items
//         $('#blog-container .blog_view:hidden:lt(3)').slideDown();

//         // Hide the "Load More" button if no more hidden items
//         if ($('#blog-container .blog_view:hidden').length === 0) {
//             $('#load-more-btn').hide();
//         }
//     });
// });