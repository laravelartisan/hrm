@extends('default.admin.layouts.master')


@section('head')
    {!! Html::style('css/styles.css') !!}
@endsection



@section('content')
    <div class="container-fluid" style="min-height: 1215px;">
        <div class="row">
            <div class="col-md-12">
                <div class="view-header">
                    <div class="col-md-6">                     
                         <button class="btn btn-warning"><span class="fa fa-print"></span> Print </button>
                         <button class="btn btn-warning"><span class="fa fa-file"></span> PDF Preview </button>
                         <button class="btn btn-warning"><span class="fa fa-file"></span> Edit</button>
                         <button class="btn btn-warning"><span class="fa fa-file"></span> Send Pdf to Mail </button> 
                    </div>
                    <div class="col-md-6 view">
                        <ul class="breadcrumb text-right">
                            <li>
                                <span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span>
                                <a href="#">Dashboard</a></li>
                            <li class="active">Leave</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div> <!--row-->

        <div class="row margin-top-area">
            <div class="col-md-12 view">
               
               <table class="table table-bordered table-hover table-responsive view-table-holder">
                    <thead>
                       <tr class="th-bg ">
                           <th colspan="4" class="text-center">
                               <div class="view-picture">
                               <h3>Leave Information</h3>
                               </div>
                            </th>
                        </tr>


                   </thead>

                   <tbody>


                       <tr>
                           <td>Leave Type </td>
                           <td> {{ $leaveToView->type  }}</td>
                       </tr>
                        <tr>
                           <td> Leave Details</td>
                           <td> {{ $leaveToView->leave_details }}</td>
                                                   
                       </tr>
                       <tr>
                           <td> Maximum Days</td>
                           <td> {{ $leaveToView->max_days }}</td>

                       </tr>
                       <tr>

                           <td> Status </td>
                           <td> {{ $leaveToView->status }}</td>
                                                     
                       </tr>
                   </tbody>
               </table> 
            </div>
            <div class="clearfix"></div>
        </div>

    </div>



@endsection


