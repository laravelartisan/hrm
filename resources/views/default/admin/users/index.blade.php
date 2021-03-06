@extends('default.admin.layouts.master')

@section('style')
    {!! Html::style('css/styles.css') !!}
@endsection

@section('content')

    <div class="container-fluid" style="min-height: 1215px;">
        <div class="row">
            <div class="col-md-12">
                <div class="student-box-header">
                    <div class="col-md-6">
                        <span class="glyphicon glyphicon-user " aria-hidden="true"></span>{{ strtoupper($viewType) }}
                    </div>
                    <div class="col-md-6 snt">
                        <ul class="breadcrumb text-right">
                            <li>
                                <span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span>
                                <a href="#">Dashboard</a></li>
                            <li class="active">{{ strtoupper($viewType) }}</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div> <!--row-->
        <div class="inner-box">
            <div class="row margin-top-area">
                <div id="datatable">


                    <div class="row last">
                        <div class="col-sm-12">
                            <div class="box">
                                <div class="box-header">
                                </div><!-- /.box-header -->
                                <div class="box-body">
                                    <table id="example1" class="table table-bordered table-striped">
                                        <thead>
                                        <tr>
                                            <th>SL</th>
                                            <th>Photo</th>
                                            <th>Name</th>
                                            <th>Email</th>
                                            <th>Department</th>
                                            <th>Designation</th>
                                            <th>Address</th>
                                            <th>Phone</th>
                                            <th>Gender</th>
                                            <th>Religion</th>
                                            <th>Action</th>

                                        </tr>
                                        </thead>
                                        <tbody>

                                        @set('sl',1)
                                        @foreach($usersWithPhotos as $photo => $user)


                                        <tr>
                                                <td>{{$sl++}}</td>

                                                <td>{!!  Html::image('imagecache/dummy/'.$photo) !!}</td>
                                                {{--<td><span class="glyphicon glyphicon-user fa-man" aria-hidden="true"></span></td>--}}
                                                <td>
                                                    {{ $user->translate($locale)? $user->first_name.' '.$user->last_name:$user->translate($defaultLocale)->first_name.' '.$user->translate($defaultLocale)->last_name }}
                                                </td>

                                                <td>{{ $user->email or 'Null'}}</td>
                                                <td>{{ $user->department->name or 'Null'}}</td>
                                                <td>{{ $user->designation->name or 'Null' }}</td>
                                                <td>{{ $user->translate($locale)?$user->address:$user->translate($defaultLocale)->address }}</td>
                                                <td>{{ $user->phone or 'Null' }}</td>
                                                <td>{{ $user->gender->translate($locale)?$user->gender->gender_name:$user->gender->translate($defaultLocale)->gender_name }}</td>
                                                <td>{{ $user->religion->name or 'Null' }}</td>
                                                <td>
                                                    <a class="btn btn-primary btn-xs mrg" data-original-title="View" data-toggle="tooltip" href="{{ route('user-view',[$user->id]) }}">
                                                        <i class="fa fa-check-square-o"></i></a>
                                                    <a class="btn btn-warning btn-xs mrg" data-original-title="Edit" data-toggle="tooltip" href="{{ route('user-edit-form',[$user->id]) }}"><i class="fa fa-edit"></i></a>

                                                    <a  class="btn btn-danger btn-xs mrg" data-original-title="Delete" data-toggle="tooltip" href="{{ route('user-delete',[$user->id]) }}"><i class="fa fa-trash-o"></i></a>
                                                </td>

                                        </tr>
                                        @endforeach

                                        </tbody>
                                        <tfoot>
                                        <tr>
                                            <th>SL</th>
                                            <th>Photo</th>
                                            <th>Name</th>
                                            <th>Email</th>
                                            <th>Department</th>
                                            <th>Designation</th>
                                            <th>Address</th>
                                            <th>Phone</th>
                                            <th>Gender</th>
                                            <th>Religion</th>
                                            <th>Action</th>

                                        </tr>
                                        </tfoot>
                                    </table>

                                    {{--this function is described in the helper/forms.php page and the
                                    parameteres are provided from the relevant controller i.e UsersController in this case--}}
{{--                                    {!! dataTableList($usersList,null,null,$model) !!}--}}
                                </div><!-- /.box-body -->
                            </div><!-- /.box -->
                        </div>
                    </div> <!--row last-->
                </div>
            </div>
        </div>
    </div>



@endsection
@section('scripts')

    @parent
    <script src="{{ asset('theme_components/admin/plugins/datatables/jquery.dataTables.min.js') }}"></script>
    {!! Html::script('theme_components/admin/plugins/datatables/dataTables.bootstrap.min.js') !!}

    <script>
        $(function () {
            $("#example1").DataTable();
            $('#example2').DataTable({
                "paging": true,
                "lengthChange": false,
                "searching": false,
                "ordering": true,
                "info": true,
                "autoWidth": false
            });
        });
    </script>

@endsection