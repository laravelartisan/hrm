@inject('leaveApplicationList','Erp\Lists\LeaveApplicationList')
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
                                            <th>Name</th>
                                            <th>Leave Type</th>
                                            <th>Subject</th>
                                            <th>Explanation</th>
                                            <th>From</th>
                                            <th>To</th>
                                            <th>Applied On</th>
                                            <th>Status</th>
                                            <th>Action</th>

                                        </tr>
                                        </thead>
                                        <tbody>
{{--{{ dd($model) }}--}}
                                        @set('sl',1)
                                        @foreach($applications as $key => $application)


                                            <tr>
                                                <td>{{$sl++}}</td>
                                                <td>
                                                    {{ $application->user->translate($locale)? $application->user->first_name.' '.$application->user->last_name:$application->user->translate($defaultLocale)->first_name.' '.$application->user->translate($defaultLocale)->last_name }}
                                                </td>
                                                <td>{{ $application->leave->type or 'Null'}}</td>
                                                <td>{{ $application->translate($locale,$defaultLocale)->subject or 'Null'}}</td>
                                                <td>{{ $application->translate($locale,$defaultLocale)->explanation or 'Null' }}</td>
                                                <td>{{ $application->from or 'Null'}}
                                                <td>{{ $application->to or 'Null' }}</td>
                                                <td>{{ $application->applied_on or 'Null'}}
                                                <td>{{ $application->status->name or 'Null' }}</td>
                                                <td>

                                                    <a class="btn btn-warning btn-xs mrg" data-original-title="Edit" data-toggle="tooltip" href="{{ route('application-edit-form',[$application->id]) }}"><i class="fa fa-edit"></i></a>

                                                    <a  class="btn btn-danger btn-xs mrg" data-original-title="Delete" data-toggle="tooltip" href="{{ route('application-delete',[$application->id]) }}"><i class="fa fa-trash-o"></i></a>
                                                </td>

                                            </tr>
                                        @endforeach

                                        </tbody>
                                        <tfoot>
                                        <tr>
                                            <th>SL</th>
                                            <th>Name</th>
                                            <th>Leave Type</th>
                                            <th>Subject</th>
                                            <th>Explanation</th>
                                            <th>From</th>
                                            <th>To</th>
                                            <th>Applied On</th>
                                            <th>Status</th>
                                            <th>Action</th>

                                        </tr>
                                        </tfoot>
                                    </table>
                                    {{--this function is described in the helper/forms.php page and the
                                    parameteres are provided from the relevant controller i.e UsersController in this case--}}
                                    {!! dataTableList($leaveApplicationList,null,null,$model) !!}
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