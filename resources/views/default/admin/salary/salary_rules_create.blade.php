@inject('createSalaryRulesForm', 'Erp\Forms\SalaryRulesForm')




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
                        <span class="glyphicon glyphicon-user " aria-hidden="true"></span>@if(isset($viewType)){{ strtoupper($viewType) }}@endif
                    </div>
                    <div class="col-md-6 snt">
                        <ul class="breadcrumb text-right">
                            <li>
                                <span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span>
                                <a href="#">Dashboard</a></li>
                            <li class="active">@if(isset($viewType)){{ strtoupper($viewType) }}@endif</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div> <!--row-->
        <div class="inner-box">
            <div class="row margin-top-area">
                <div class="col-md-8 snt form-horizontal">

                    @if (count($errors) > 0)
                        <div class="alert alert-danger">
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif
                        @if (session()->has('success'))
                            <div class="alert alert-success">
                                <ul>

                                    <li>{{ session()->get('success') }}</li>

                                </ul>
                            </div>
                        @endif





{!! Form::open(array('route' => 'create-salary-rules', 'files' => true, 'id'=>'create-form','class'=>'form-create')) !!}

{!! formFields($createSalaryRulesForm)  !!}


{!!  Form::close()   !!}
                </div>
            </div>
        </div>
    </div>



@endsection
