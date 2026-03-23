@extends('layouts.admin',['layout'=>'user'])

@section('title', 'Users')

@section('content')

    <div class="row">
        <div class="col md-12">
            @if (session('message'))
                <div class="alert alert-success">{{ session('message') }}</div>
            @endif

            @if ($errors->any())
                <ul class="alert alert-warning">
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            @endif

            <div class="card">
                <div class="card-header">
                    <h4>Edit User
                        <div class="float-end">
                            <a href="{{ url('admin/users') }}" class="btn btn-danger btn-sm text-white float-end">
                                Back</a>
                            <a href="#" data-bs-toggle="modal" data-bs-target="#changePasswordModal" class="btn btn-secondary btn-sm text-white change_passwordbtn">
                                Change Password</a>   
                        </div> 
                    </h4>

                </div>
                <div class="card-body">
                    <form action="{{ url('admin/users/'.$user->id) }}" method="POST">
                        @csrf
                        @method('PUT')
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="">Name <span class="text-danger">*</span></label>
                                <input type="text" name="name" value="{{ $user->name }}" class="form-control">
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="">Email <span class="text-danger">*</span></label>
                                <input type="email" name="email" readonly value="{{ $user->email }}" class="form-control">
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="">Select Role <span class="text-danger">*</span></label>
                                <select name="role_as" class="form-control">
                                    <option value="">Select Role</option>
                                    <option value="0" {{ $user->role_as == '0' ? 'selected':'' }}>User</option>
                                    <option value="1" {{ $user->role_as == '1' ? 'selected':'' }}>Admin</option>
                                    <option value="2" {{ $user->role_as == '2' ? 'selected':'' }}>Editor</option>
                                    <option value="3" {{ $user->role_as == '3' ? 'selected':'' }}>Viewer</option>
                                </select>
                            </div>
                            <div class="col-md-12 text-end">
                                <button type="submit" class="btn btn-primary">Update</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>



 <div class="modal fade" id="changePasswordModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" data-bs-backdrop="static">
    <div class="modal-dialog modal-dialog-centered"> <!-- Change modal size to modal-xl for extra-large -->
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Change Password</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>

            <form enctype="multipart/form-data" id="updateUserPassword">
                @csrf
                <input type="hidden" name="user_id" value="{{ $user->id }}">
                <div class="modal-body">
                    <div class="mb-3">
                        <label for="password">Password</label>
                        <div class="input-group">
                            <input type="password" class="form-control" name="password" id="password" placeholder="Password" required>
                            <button class="btn btn-outline-secondary" type="button" id="password-toggle">
                                <span class="mdi mdi-eye-off"></span>
                            </button>
                        </div>
                        @error('title') <small class="text-danger">{{ $message }}</small> @enderror
                    </div>
                    <div class="mb-3">
                        <label for="password">Confirm Password</label>
                        <div class="input-group">
                            <input type="password" class="form-control" name="c_password" id="c_password" placeholder="Confirm Password" required>
                            <button class="btn btn-outline-secondary" type="button" id="c_password-toggle">
                                <span class="mdi mdi-eye-off"></span>
                            </button>
                        </div>
                        @error('title') <small class="text-danger">{{ $message }}</small> @enderror
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

<script type="text/javascript">
    var updatePasswordUrl="{{ route('user.change.password') }}";
</script>
@endsection
