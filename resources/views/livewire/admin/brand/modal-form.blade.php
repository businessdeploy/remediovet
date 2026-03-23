<!-- Brand Create Modal -->
<div wire:ignore.self class="modal fade" id="addBrandModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Add Brands</h5>
                <button type="button" class="btn-close" wire:click="closeModal" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>

            <form wire:submit.prevent="storeBrand">
                <div class="modal-body">                
                    <div class="mb-3">
                        <label>Brand Name <span class="text-danger">*</span></label>
                        <input type="text" wire:model.defer="name" class="form-control" required>
                        @error('name') <small class="text-danger">{{ $message }}</small> @enderror
                    </div>
                    <div class="mb-3">
                        <label>Brand Slug <span class="text-danger">*</span></label>
                        <input type="text" wire:model.defer="slug" class="form-control" required>
                        @error('slug') <small class="text-danger">{{ $message }}</small> @enderror
                    </div>
                    <div class="mb-3">
                        <label for="image">Brand Image (200 x 126) <span class="text-danger">*</span></label>
                        
                        <input type="file" id="image" wire:model="image" class="form-control" required>

                        @error('image') <small class="text-danger">{{ $message }}</small> @enderror
                    </div>
                    <div class="mb-3">
                        <label>Position <span class="text-danger">*</span></label>
                        <input type="number" min="1" wire:model.defer="position" class="form-control" required>
                        @error('position') <small class="text-danger">{{ $message }}</small> @enderror
                    </div>
                    <div class="mb-3">
                        <label>Status</label><br>
                        <input type="checkbox" wire:model.defer="status"> (Checked = Hidden, Unchecked = Visible)
                        @error('status') <small class="text-danger">{{ $message }}</small> @enderror
                    </div>
                </div>

                <div class="modal-footer">
                    <button type="button" wire:click="closeModal" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Save</button>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- Brand Update Modal -->
<div wire:ignore.self class="modal fade" id="updateBrandModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" >
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Update Brand</h5>
                <button type="button" class="btn-close" wire:click="closeModal" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>

            <div wire:loading class="p-2" style="text-align:center">
                <div class="spinner-border text-primary" role="status">
                    <span class="visually-hidden">Loading...</span>
                </div>
            </div>

            <div wire:loading.remove>
                <form wire:submit.prevent="updateBrand" enctype="multipart/form-data">
                    <div class="modal-body">                        
                        <div class="mb-3">
                            <label>Brand Name <span class="text-danger">*</span></label>
                            <input type="text" wire:model.defer="name" class="form-control" required>
                            @error('name') <small class="text-danger">{{ $message }}</small> @enderror
                        </div>
                        <div class="mb-3">
                            <label>Brand Slug <span class="text-danger">*</span></label>
                            <input type="text" wire:model.defer="slug" class="form-control" required>
                            @error('slug') <small class="text-danger">{{ $message }}</small> @enderror
                        </div>
                          <div class="mb-3">
                                <label for="image">Image (200 x 126)</label>
                                 <input type="file" id="image" wire:model="image" class="form-control"><br>
                                 @if ($image)
                                    <img src="{{ asset('storage/' . $image) }}" alt="Uploaded Image" height="70px" width="70px" alt="image">
                                @endif
                                @error('image') <small class="text-danger">{{ $message }}</small> @enderror
                            </div>
                        <div class="mb-3">
                            <label>Position <span class="text-danger">*</span></label>
                            <input type="number" min="1" wire:model.defer="position" class="form-control" required>
                            @error('position') <small class="text-danger">{{ $message }}</small> @enderror
                        </div>
                        <div class="mb-3">
                            <label>Status</label><br>
                            <input type="checkbox" wire:model.defer="status"> (Checked = Hidden, Unchecked = Visible)
                            @error('status') <small class="text-danger">{{ $message }}</small> @enderror
                        </div>
                    </div>

                    <div class="modal-footer">
                        <button type="button" wire:click="closeModal" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Update</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- Brand Delete Modal -->
<div wire:ignore.self class="modal fade" id="deleteBrandModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Delete Brand</h5>
                <button type="button" class="btn-close" wire:click="closeModal" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>

            <div wire:loading class="p-2" style="text-align:center">
                <div class="spinner-border text-primary" role="status">
                    <span class="visually-hidden">Loading...</span>
                </div>
            </div>

            <div wire:loading.remove>
                <form wire:submit.prevent="destroyBrand">
                    <div class="modal-body">
                        <h4>Are you sure you want to delete this data?</h4>
                    </div>

                    <div class="modal-footer">
                        <button type="button" wire:click="closeModal" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Yes, Delete!</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

