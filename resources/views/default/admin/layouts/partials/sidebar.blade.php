<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="{!! asset('theme_components/admin/dist/img/user2-160x160.jpg') !!}" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
                <p>Alexander Pierce</p>
                <a href="{!! url('#') !!}"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
        </div>


        <!-- search form -->
        <form action="{!! url('#') !!}" method="get" class="sidebar-form">
            <div class="input-group">
                <input type="text" name="q" class="form-control" placeholder="Search...">
              <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i></button>
              </span>
            </div>
        </form>
        <!-- /.search form -->


        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu">
            <li class="header">MAIN NAVIGATION</li>
            <li class=" ">
                <a href="{!! route('admin') !!}">
                    <i class="fa fa-dashboard"></i> <span>{{ trans('sidebar.dashboard') }}</span>
                </a>

            </li>
            <li class="treeview">
                <a href="{!! url('#') !!}">
                    <i class="fa fa-user"></i> <span>{{ trans('sidebar.status') }}</span> <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{!! route('status-list') !!}"><i class="fa fa-users"></i> {{ trans('sidebar.status-list') }}</a></li>
                    <li class="active"><a href="{!! route('status-add-form') !!}"><i class="fa fa-plus"></i> {{ trans('sidebar.status-create') }}</a></li>
                </ul>
            </li>
            <li class="treeview">
                <a href="{!! url('#') !!}">
                    <i class="fa fa-user"></i> <span>{{ trans('sidebar.roles') }}</span> <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{!! route('role-list') !!}"><i class="fa fa-users"></i> {{ trans('sidebar.role-list') }}</a></li>
                    <li class="active"><a href="{!! route('role-add-form') !!}"><i class="fa fa-plus"></i> {{ trans('sidebar.role-create') }}</a></li>
                    <li class="active"><a href="{!! route('role-assign-form') !!}"><i class="fa fa-plus"></i> {{ trans('sidebar.role-assign') }}</a></li>
                </ul>
            </li>
            <li class="treeview">
                <a href="{!! url('#') !!}">
                    <i class="fa fa-user"></i> <span>{{ trans('sidebar.permissions') }}</span> <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{!! route('permission-list') !!}"><i class="fa fa-users"></i> {{ trans('sidebar.permission-list') }}</a></li>
                    <li class="{{ request()->is('permission/add') ? 'current' : '' }}"><a href="{!! route('permission-add-form') !!}"><i class="fa fa-plus"></i> {{ trans('sidebar.permission-create') }}</a></li>
                    <li class="{{ request()->is('permission/assign') ? 'current' : '' }}"><a href="{!! route('permission-assign-form') !!}"><i class="fa fa-plus"></i> {{ trans('sidebar.permission-assign') }}</a></li>

                </ul>
            </li>
            <li class="treeview">
                <a href="{!! url('#') !!}">
                    <i class="fa fa-user"></i> <span>{{ trans('sidebar.admins') }}</span> <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{!! route('admin-list') !!}"><i class="fa fa-users"></i> {{ trans('sidebar.admin-list') }}</a></li>
                    <li class="active"><a href="{!! route('admin-add') !!}"><i class="fa fa-plus"></i> {{ trans('sidebar.admin-create') }}</a></li>
                </ul>
            </li>
            <li class="treeview">
                <a href="{!! url('#') !!}">
                    <i class="fa fa-user"></i> <span>{{ trans('sidebar.users') }}</span> <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{!! route('user-list') !!}"><i class="fa fa-users"></i> {{ trans('sidebar.user-list') }}</a></li>
                    <li class="active"><a href="{!! route('user-add-form') !!}"><i class="fa fa-plus"></i> {{ trans('sidebar.user-create') }}</a></li>
                </ul>
            </li>

            <li class="treeview">
                <a href="{!! url('#') !!}">
                    <i class="fa fa-user"></i> <span>{{ trans('sidebar.gender') }}</span> <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{!! url('gender/list') !!}"><i class="fa fa-users"></i> {{ trans('sidebar.gender-list') }}</a></li>
                    <li class="active"><a href="{!! url('gender/add') !!}"><i class="fa fa-plus"></i> {{ trans('sidebar.gender-create') }}</a></li>
                </ul>
            </li>
            <li class="treeview">
                <a href="{!! url('#') !!}">
                    <i class="fa fa-user"></i> <span>{{ trans('sidebar.religion') }}</span> <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{!! url('religion/list') !!}"><i class="fa fa-users"></i> {{ trans('sidebar.religion-list') }}</a></li>
                    <li class="active"><a href="{!! url('religion/add') !!}"><i class="fa fa-plus"></i> {{ trans('sidebar.religion-create') }}</a></li>
                </ul>
            </li>
           {{-- <li class="treeview">
                <a href="{!! url('#') !!}">
                    <i class="fa fa-user"></i> <span>{{ trans('sidebar.cgroups') }}</span> <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{!! url('cgroup/list') !!}"><i class="fa fa-users"></i> {{ trans('sidebar.cgroup-list') }}</a></li>
                    <li class="active"><a href="{!! url('cgroup/add') !!}"><i class="fa fa-plus"></i> {{ trans('sidebar.cgroup-create') }}</a></li>
                </ul>
            </li>
            <li class="treeview">
                <a href="{!! url('#') !!}">
                    <i class="fa fa-user"></i> <span>{{ trans('sidebar.company') }}</span> <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{!! url('company/list') !!}"><i class="fa fa-users"></i> {{ trans('sidebar.company-list') }}</a></li>
                    <li class="active"><a href="{!! url('company/add') !!}"><i class="fa fa-plus"></i> {{ trans('sidebar.company-create') }}</a></li>
                </ul>
            </li>--}}
            <li class="treeview">
                <a href="{!! url('#') !!}">
                    <i class="fa fa-user"></i> <span>{{ trans('sidebar.department') }}</span> <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{!! route('department-list') !!}"><i class="fa fa-users"></i> {{ trans('sidebar.department-list') }}</a></li>
                    <li class="active"><a href="{!! route('department-add-form') !!}"><i class="fa fa-plus"></i> {{ trans('sidebar.department-create') }}</a></li>
                </ul>
            </li>
            <li class="treeview">
                <a href="{!! url('#') !!}">
                    <i class="fa fa-user"></i> <span>{{ trans('sidebar.designation') }}</span> <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{!! route('designation-list') !!}"><i class="fa fa-users"></i> {{ trans('sidebar.designation-list') }}</a></li>
                    <li class="active"><a href="{!! route('designation-add-form') !!}"><i class="fa fa-plus"></i> {{ trans('sidebar.designation-create') }}</a></li>
                </ul>
            </li>
            <li class="treeview">
                <a href="{!! url('#') !!}">
                    <i class="fa fa-user"></i> <span>{{ trans('sidebar.shift') }}</span> <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{!! route('shift-list') !!}"><i class="fa fa-users"></i> {{ trans('sidebar.shift-list') }}</a></li>
                    <li class="active"><a href="{!! route('shift-add-form') !!}"><i class="fa fa-plus"></i> {{ trans('sidebar.shift-create') }}</a></li>
                    <li class="active"><a href="{!! route('assign-shift-dept-form') !!}"><i class="fa fa-plus"></i> {{ trans('sidebar.assign-shift-department') }}</a></li>
                </ul>
            </li>
           {{-- <li class="treeview">
                <a href="{!! url('#') !!}">
                    <i class="fa fa-user"></i> <span>{{ trans('sidebar.punch') }}</span> <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{!! route('punch-insert-form') !!}"><i class="fa fa-users"></i> {{ trans('sidebar.punch-insert') }}</a></li>

                </ul>--}}
            </li>
            <li class="treeview">
                <a href="{!! url('#') !!}">
                    <i class="fa fa-user"></i> <span>{{ trans('sidebar.attendance') }}</span> <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{!! route('monthly-device-attendance') !!}"><i class="fa fa-users"></i> {{ trans('sidebar.monthly-device-attendance') }}</a></li>

                </ul>
            </li>
            <li class="treeview">
                <a href="{!! url('#') !!}">
                    <i class="fa fa-user"></i> <span>{{ trans('sidebar.report') }}</span> <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{!! route('your-timesheet') !!}"><i class="fa fa-users"></i> {{ trans('sidebar.your-timesheet-report') }}</a></li>

                </ul>
            </li>
            <li class="treeview">
                <a href="{!! url('#') !!}">
                    <i class="fa fa-user"></i> <span>{{ trans('sidebar.salary-settings') }}</span> <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{!! route('salary-type-create-form') !!}"><i class="fa fa-users"></i> {{ trans('sidebar.create-salary-type') }}</a></li>
                    <li><a href="{!! route('salary-rules-create-form') !!}"><i class="fa fa-users"></i> {{ trans('sidebar.create-salary-rules') }}</a></li>
                    <li><a href="{!! route('overtime-rules-create-form') !!}"><i class="fa fa-users"></i> {{ trans('sidebar.create-overtime-rules') }}</a></li>
                    <li><a href="{!! route('cut-rules-create-form') !!}"><i class="fa fa-users"></i> {{ trans('sidebar.create-cut-rules') }}</a></li>
                    <li><a href="{!! route('bonus-rules-create-form') !!}"><i class="fa fa-users"></i> {{ trans('sidebar.create-bonus-rules') }}</a></li>
                    <li><a href="{!! route('salary-type-list') !!}"><i class="fa fa-users"></i> {{ trans('sidebar.salary-type-list') }}</a></li>
                    <li><a href="{!! route('salary-allowance-rules-list') !!}"><i class="fa fa-users"></i> {{ trans('sidebar.allowance-list') }}</a></li>
                    <li><a href="{!! route('salary-overtime-rules-list') !!}"><i class="fa fa-users"></i> {{ trans('sidebar.overtime-list') }}</a></li>
                    <li><a href="{!! route('salary-cut-rules-list') !!}"><i class="fa fa-users"></i> {{ trans('sidebar.salary-cut-list') }}</a></li>
                    <li><a href="{!! route('salary-bonus-rules-list') !!}"><i class="fa fa-users"></i> {{ trans('sidebar.bonus-list') }}</a></li>

                </ul>
            </li>

            <li class="treeview">
                <a href="{!! url('#') !!}">
                    <i class="fa fa-user"></i> <span>{{ trans('sidebar.leave') }}</span> <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{!! route('leave-list') !!}"><i class="fa fa-users"></i> {{ trans('sidebar.leave-list') }}</a></li>
                    <li class="active"><a href="{!! route('leave-add-form') !!}"><i class="fa fa-plus"></i> {{ trans('sidebar.leave-create') }}</a></li>
                </ul>
            </li>

            <li class="treeview">
                <a href="{!! url('#') !!}">
                    <i class="fa fa-user"></i> <span>{{ trans('sidebar.leave-application') }}</span> <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{!! route('application-list') !!}"><i class="fa fa-users"></i> {{ trans('sidebar.application-list') }}</a></li>

                </ul>
            </li>

            <li class="treeview">
                <a href="{!! url('#') !!}">
                    <i class="fa fa-user"></i> <span>{{ trans('sidebar.holydays') }}</span> <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{!! url('holydaytype/list') !!}"><i class="fa fa-users"></i> {{ trans('sidebar.holydaytype-list') }}</a></li>
                    <li class="active"><a href="{!! url('holydaytype/add') !!}"><i class="fa fa-plus"></i> {{ trans('sidebar.holydaytype-create') }}</a></li>
                    <li><a href="{!! url('holyday/list') !!}"><i class="fa fa-users"></i> {{ trans('sidebar.holyday-list') }}</a></li>
                    <li class="active"><a href="{!! url('holyday/add') !!}"><i class="fa fa-plus"></i> {{ trans('sidebar.holyday-create') }}</a></li>
                </ul>
            </li>

            <li class="treeview">
                <a href="{!! url('#') !!}">
                    <i class="fa fa-files-o"></i>
                    <span>Layout Options</span>
                    <span class="label label-primary pull-right">4</span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{!! url('#') !!}"><i class="fa fa-circle-o"></i> Top Navigation</a></li>
                    <li><a href="{!! url('#') !!}"><i class="fa fa-circle-o"></i> Boxed</a></li>
                    <li><a href="{!! url('#') !!}"><i class="fa fa-circle-o"></i> Fixed</a></li>
                    <li><a href="{!! url('#') !!}"><i class="fa fa-circle-o"></i> Collapsed Sidebar</a></li>
                </ul>
            </li>

            <li class="treeview">
                <a href="{!! url('#') !!}">
                    <i class="fa fa-table"></i> <span>Tables</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{!! url('#') !!}"><i class="fa fa-circle-o"></i> Simple tables</a></li>
                    <li><a href="{!! url('#') !!}"><i class="fa fa-circle-o"></i> Data tables</a></li>
                </ul>
            </li>
            <li>
                <a href="{!! url('#') !!}">
                    <i class="fa fa-calendar"></i> <span>Calendar</span>
                    <small class="label pull-right bg-red">3</small>
                </a>
            </li>
            <li>
                <a href="{!! url('#') !!}">
                    <i class="fa fa-envelope"></i> <span>Mailbox</span>
                    <small class="label pull-right bg-yellow">12</small>
                </a>
            </li>

            <li><a href="{!! url('#') !!}"><i class="fa fa-book"></i> <span>Documentation</span></a></li>
            <li class="header">LABELS</li>
            <li><a href="{!! url('#') !!}"><i class="fa fa-circle-o text-red"></i> <span>Important</span></a></li>
            <li><a href="{!! url('#') !!}"><i class="fa fa-circle-o text-yellow"></i> <span>Warning</span></a></li>
            <li><a href="{!! url('#') !!}"><i class="fa fa-circle-o text-aqua"></i> <span>Information</span></a></li>
        </ul>
    </section>
    <!-- /.sidebar -->
</aside>
