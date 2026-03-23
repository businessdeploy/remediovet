<script src="{{ asset('admin/vendors/base/vendor.bundle.base.js') }}"></script>
    <script src="{{ asset('admin/vendors/datatables.net/jquery.dataTables.js') }}"></script>
    <script src="{{ asset('admin/vendors/datatables.net-bs4/dataTables.bootstrap4.js') }}"></script>
    <script src="{{ asset('admin/js/off-canvas.js') }}"></script>
    <script src="{{ asset('admin/js/hoverable-collapse.js') }}"></script>
    <script src="{{ asset('admin/js/template.js') }}"></script>
      <!-- Custom js for this page-->

    <script src="{{ asset('admin/js/data-table.js') }}"></script>
    <script src="{{ asset('admin/js/jquery.dataTables.js') }}"></script>
    <script src="{{ asset('admin/js/dataTables.bootstrap4.js') }}"></script>
    <!-- End custom js for this page-->
    <script src="{{ asset('admin/js/toastr.min.js') }}"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>


    <script src="https://cdn.datatables.net/buttons/2.3.6/js/dataTables.buttons.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.3.6/js/buttons.html5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.3.6/js/buttons.print.min.js"></script>
    @switch($layout)
        @case('dashboard')
            <script src="{{ asset('admin/js/dashboard.js') }}"></script>
		@break
        @case('user')
            <script src="{{ asset('admin/js/user/user.js') }}"></script>
        @break
        @case('order')
            <script>
                $('#form_datatable').DataTable({
                    dom: 'Bfrtip',
                    buttons: [
                        'excel', 'pdf'
                    ],
                    "createdRow": function(row, data, dataIndex) {
                        $(row).addClass('custom-row-height');
                    },
                    "order": [[ 0, "desc" ]],
                    "paging": true,
                    "searching": true
                });
            </script>
        @break
		@case('product')
        <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.4/js/select2.min.js"></script>
            <script src="https://cdn.ckeditor.com/ckeditor5/23.0.0/classic/ckeditor.js"></script>
            <script src="{{ asset('admin/js/product/product.js') }}"></script>
		@break
		@case('aboutus')
           <script src="https://cdn.ckeditor.com/ckeditor5/23.0.0/classic/ckeditor.js"></script>
           <script>
            ClassicEditor.create( document.querySelector( '#who_we_are' ) )
                .catch( error => {
                    console.error( error );
                } );
                ClassicEditor.create( document.querySelector( '#our_impact' ) )
                .catch( error => {
                    console.error( error );
                } );
                ClassicEditor.create( document.querySelector( '#mission' ) )
                .catch( error => {
                    console.error( error );
                } );
                ClassicEditor.create( document.querySelector( '#we_proud' ) )
                .catch( error => {
                    console.error( error );
                } );
        </script>
		@break
		
		@case('faq')
           <script src="https://cdn.ckeditor.com/ckeditor5/23.0.0/classic/ckeditor.js"></script>
           <script>
            ClassicEditor.create( document.querySelector( '#description' ) )
                .catch( error => {
                    console.error( error );
                } );
        </script>
		@break
        @case('directory')
            <script src="{{ asset('admin/js/directory/directory.js') }}"></script>
        @break
		@case('blog')
            <script src="https://cdn.ckeditor.com/ckeditor5/23.0.0/classic/ckeditor.js"></script>
            <script>
                ClassicEditor.create( document.querySelector( '#description' ) )
                    .catch( error => {
                        console.error( error );
                    } );
            </script>
            <script>
                $('#form_datatable').DataTable(); 
            </script>
            <script src="{{ asset('admin/js/blog/blog.js') }}"></script>
        @break
        @case('content_management')
            <script src="https://cdn.ckeditor.com/ckeditor5/23.0.0/classic/ckeditor.js"></script>
            <script>
                ClassicEditor.create( document.querySelector( '#description' ) )
                    .catch( error => {
                        console.error( error );
                    } );
            </script>           
        @break
        @case('pet_flight')
            <script src="https://cdn.ckeditor.com/ckeditor5/23.0.0/classic/ckeditor.js"></script>
            <script>
                ClassicEditor.create( document.querySelector( '#best_service_content') )
                    .catch( error => {
                        console.error( error );
                    } );
                ClassicEditor.create( document.querySelector( '#expert_handlers') )
                    .catch( error => {
                        console.error( error );
                    } );
                ClassicEditor.create( document.querySelector( '#pet_friendly_travel') )
                    .catch( error => {
                        console.error( error );
                    } );
                ClassicEditor.create( document.querySelector( '#safe_travel') )
                    .catch( error => {
                        console.error( error );
                    } );
            </script>   
        @break
        @case('banner')
            <script src="{{ asset('admin/js/banners/banner.js') }}"></script>
        @break
        @case('subscribeform')
            <script>
                $('#form_datatable').DataTable({
                    dom: 'Bfrtip',
                    buttons: [
                        'excel', 'pdf'
                    ]
                }); 
            </script>
        @break
        @case('pet_flight_form')
            <script>
                $('#form_datatable').DataTable({
                    dom: 'Bfrtip',
                    buttons: [
                        'excel', 'pdf'
                    ]
                }); 
            </script>
        @break
        @case('donate')
            <script>
                $('#form_datatable').DataTable({
                    dom: 'Bfrtip',
                    buttons: [
                        'excel', 'pdf'
                    ]
                }); 
            </script>
        @break
        @case('contact_us_forms')
            <script>
                $('#form_datatable').DataTable({
                    dom: 'Bfrtip',
                    buttons: [
                        'excel', 'pdf'
                    ]
                }); 
            </script>
        @break

        
	@endswitch

   