<div class="modal fade" id="editFaqModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" data-bs-backdrop="static">
    <div class="modal-dialog modal-xl"> <!-- Change modal size to modal-xl for extra-large -->
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Edit FAQ</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>

            <form enctype="multipart/form-data" id="updateFaq">
                @csrf
                <input type="hidden" name="faq_id" id="faq_id">
                <div class="modal-body">
                    <div class="mb-3">
                        <label>Title</label>
                        <input type="text" class="form-control" name="title" id="edit_title" placeholder="Title" required>
                        @error('title') <small class="text-danger">{{ $message }}</small> @enderror
                    </div>
                    <div class="mb-3">
                        <label>Description</label>
                        <textarea name="edit_description" id="edit_description" class="form-control"></textarea> <!-- Replace input with textarea -->
                        @error('description') <small class="text-danger">{{ $message }}</small> @enderror
                    </div>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Save</button>
                </div>
            </form>
        </div>
    </div>
</div>