<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/





Route::get('/','Login\LoginController@loginPage');

Route::group(['namespace' => 'Login','prefix'=>'auth'], function(){
    /*Route::get('list', 'AdminController@index');*/
    Route::get('role', 'LoginController@roleCheck');
    Route::post('signin', 'LoginController@login');
    Route::get('login', 'LoginController@signInForm');
    Route::post('login', 'LoginController@signin');
    Route::get('signout','LoginController@logout');
    Route::get('mypage','LoginController@myPage');

});

Route::group(['namespace' => 'Language'], function(){
    Route::get('lang/{locale}', 'LanguageController@langChooser');
});
Route::group(['namespace' => 'User','prefix'=>'user'], function(){
    Route::get('list', ['as'=>'user-list','uses'=>'UsersController@index']);
    Route::get('add', ['as'=>'user-add-form','uses'=>'UsersController@createUserForm']);
    Route::post('add', ['as'=>'user-create','uses'=>'UsersController@createUser']);
    Route::get('view/{id}', ['as'=>'user-view','uses'=>'UsersController@viewUser']);
    Route::get('edit/{id}', ['as'=>'user-edit-form','uses'=>'UsersController@editUserForm']);
    Route::patch('edit/{id}', ['as'=>'user-edit','uses'=>'UsersController@editUser']);
    Route::get('delete/{id}', ['as'=>'user-delete','uses'=>'UsersController@deleteUser']);
});

Route::group(['namespace' => 'Admin','prefix'=>'admin'], function(){
    Route::get('/',['as'=>'admin','uses'=>'AdminController@accessAdmin']);
    Route::get('list', ['as'=>'admin-list','uses'=>'AdminController@index']);
    Route::get('add', ['as'=>'admin-add','uses'=>'AdminController@createAdminForm']);
    Route::post('add', ['as'=>'admin-create','uses'=>'AdminController@createAdmin']);
    Route::get('view/{id}', ['as'=>'admin-view','uses'=>'AdminController@viewAdmin']);
    Route::get('edit/{id}', ['as'=>'admin-edit','uses'=>'AdminController@editAdminForm']);
    Route::patch('edit/{id}', ['as'=>'admin-edit','uses'=>'AdminController@editAdmin']);
    Route::get('delete/{id}', ['as'=>'admin-delete','uses'=>'AdminController@deleteAdmin']);
});

Route::group(['namespace' => 'Employee','prefix'=>'profile'], function(){
    /*Route::get('/',function(){
        dd('hello');
    });*/
    Route::get('/',['as'=>'employee-profile','uses'=>'EmployeeController@employeePage']);
});

Route::group(['namespace' => 'Common'], function(){
   /* Route::get('cgroup/add', 'CommonController@createForm');
    Route::post('cgroup/add', 'CommonController@createCgroup');

    Route::get('company/add', 'CommonController@createForm');
    Route::get('department/add', 'CommonController@createForm');*/

});

Route::group(['namespace'=>'Role','prefix'=>'role'], function () {
    Route::get('add',['as'=>'role-add-form','uses'=>'RolesController@createForm']);
    Route::post('add', ['as'=>'role-create','uses'=>'RolesController@createRole']);
    Route::get('assign',['as'=>'role-assign-form','uses'=>'RolesController@roleAssignForm']);
    Route::post('assign',['as'=>'role-assign','uses'=>'RolesController@assignRole']);
    Route::get('list',['as'=>'role-list','uses'=>'RolesController@index']);
    Route::get('edit/{id}',['as'=>'role-edit-form','uses'=>'RolesController@editRoleForm']);
    Route::get('view/{id}',['as'=>'role-view','uses'=>'RolesController@viewRole']);
    Route::get('delete/{id}',['as'=>'role-delete','uses'=>'RolesController@deleteRole']);
    Route::patch('edit/{id}',['as'=>'role-edit','uses'=>'RolesController@editRole']);

});

Route::group(['namespace'=>'Permission','prefix'=>'permission'], function () {
    Route::get('add',['as'=>'permission-add-form','uses'=>'PermissionController@createForm']);
    Route::post('add', ['as'=>'permission-create','uses'=>'PermissionController@createPermission']);
    Route::get('assign',['as'=>'permission-assign-form','uses'=>'PermissionController@permissionAssignForm']);
    Route::post('assign',['as'=>'permission-assign','uses'=>'PermissionController@assignPermission']);
    Route::get('list',['as'=>'permission-list','uses'=>'PermissionController@index']);
    Route::get('edit/{id}',['as'=>'permission-edit-form','uses'=>'PermissionController@editPermissionForm']);
    Route::get('view/{id}',['as'=>'permission-view','uses'=>'PermissionController@viewPermission']);
    Route::get('delete/{id}',['as'=>'permission-delete','uses'=>'PermissionController@deletePermission']);
    Route::patch('edit/{id}',['as'=>'permission-edit','uses'=>'PermissionController@editPermission']);

});

Route::group(['namespace' => 'Religion','prefix'=>'religion'], function(){

    Route::get('add', 'ReligionController@createReligionForm');
    Route::post('add', 'ReligionController@createReligion');
    Route::get('list', 'ReligionController@index');
    Route::get('edit/{id}', 'ReligionController@editReligionForm');
    Route::patch('edit/{id}','ReligionController@editReligion');
    Route::get('view/{id}','ReligionController@viewReligion');
    Route::get('delete/{id}','ReligionController@deleteReligion');

});

Route::group(['namespace' => 'Gender','prefix'=>'gender'], function(){

    Route::get('add', 'GenderController@createGenderForm');
    Route::post('add', 'GenderController@createGender');
    Route::get('list', 'GenderController@index');
    Route::get('edit/{id}', 'GenderController@editGenderForm');
    Route::patch('edit/{id}','GenderController@editGender');
    Route::get('view/{id}','GenderController@viewGender');
    Route::get('delete/{id}','GenderController@deleteGender');

});

Route::group(['namespace' => 'Department','prefix'=>'department'], function(){

    Route::get('add', ['as'=>'department-add-form','uses'=>'DepartmentController@createDeptForm']);
    Route::post('add', ['as'=>'department-create','uses'=>'DepartmentController@createDepartment']);
    Route::get('list', ['as'=>'department-list','uses'=>'DepartmentController@index']);
    Route::get('edit/{id}', ['as'=>'department-edit-form','uses'=>'DepartmentController@editDeptForm']);
    Route::patch('edit/{id}',['as'=>'department-edit','uses'=>'DepartmentController@editDepartment']);
    Route::get('view/{id}',['as'=>'department-view','uses'=>'DepartmentController@viewDepartment']);
    Route::get('delete/{id}',['as'=>'department-delete','uses'=>'DepartmentController@deleteDepartment']);

});


Route::group(['namespace' => 'Shift','prefix'=>'shift'], function(){
    Route::get('add', ['as'=>'shift-add-form','uses'=>'ShiftController@createShiftForm']);
//    Route::post('add', ['as'=>'shift-create','uses'=>'ShiftController@createShift']);
    Route::post('add', ['as'=>'shift-create-json','uses'=>'ShiftController@createShiftJson']);
    Route::get('list', ['as'=>'shift-list','uses'=>'ShiftController@index']);
    Route::get('assign', ['as'=>'assign-shift-dept-form','uses'=>'ShiftController@assignShiftDeptForm']);
    Route::post('assign',['as'=>'shift-assign','uses'=>'ShiftController@assignShift']);
    Route::get('view/{id}',['as'=>'shift-view','uses'=>'ShiftController@viewShift']);
    Route::get('edit/{id}',['as'=>'shift-edit-form','uses'=>'ShiftController@editShiftForm']);
    Route::patch('edit/{id}',['as'=>'shift-edit','uses'=>'ShiftController@editShift']);
    Route::get('delete/{id}',['as'=>'shift-delete','uses'=>'ShiftController@deleteShift']);


});


Route::group(['namespace' => 'Designation','prefix'=>'designation'], function(){

    Route::get('add', ['as'=>'designation-add-form','uses'=>'DesignationController@createDesignationForm']);
    Route::post('add', ['as'=>'designation-add','uses'=>'DesignationController@createDesignation']);
    Route::get('list', ['as'=>'designation-list','uses'=>'DesignationController@index']);
    Route::get('edit/{id}', ['as'=>'designation-edit-form','uses'=>'DesignationController@editDesignationForm']);
    Route::patch('edit/{id}',['as'=>'designation-edit','uses'=>'DesignationController@editDesignation']);
    Route::get('view/{id}',['as'=>'designation-view','uses'=>'DesignationController@viewDesignation']);
    Route::get('delete/{id}',['as'=>'designation-delete','uses'=>'DesignationController@deleteDesignation']);
    Route::get('{deptId}',['as'=>'designation-dept','uses'=>'DesignationController@designationOfDept']);
    Route::get('user/{userId}',['as'=>'designation-user','uses'=>'DesignationController@designationToEdit']);

});

Route::group(['namespace' => 'Leave','prefix'=>'leave'], function(){
    Route::get('add', ['as'=>'leave-add-form','uses'=>'LeaveController@createLeaveForm']);
    Route::post('add', ['as'=>'leave-create','uses'=>'LeaveController@createLeave']);
    Route::get('list', ['as'=>'leave-list','uses'=>'LeaveController@index']);
    Route::get('edit/{id}', ['as'=>'leave-edit-form','uses'=>'LeaveController@editLeaveForm']);
    Route::patch('edit/{id}',['as'=>'leave-edit','uses'=>'LeaveController@editLeave']);
    Route::get('view/{id}',['as'=>'leave-view','uses'=>'LeaveController@viewLeave']);
    Route::get('delete/{id}',['as'=>'leave-delete','uses'=>'LeaveController@deleteLeave']);
});
Route::group(['namespace' => 'Leave','prefix'=>'application'], function(){
    Route::get('add', ['as'=>'application-add-form','uses'=>'LeaveController@createApplicationForm']);
    Route::post('add', ['as'=>'application-create','uses'=>'LeaveController@applyForLeave']);
    Route::get('list', ['as'=>'application-list','uses'=>'LeaveController@leaveApplicationList']);
    Route::get('edit/{id}', ['as'=>'application-edit-form','uses'=>'LeaveController@applicationEditForm']);
    Route::patch('edit/{id}', ['as'=>'application-edit','uses'=>'LeaveController@editAplication']);
    Route::get('delete/{id}', ['as'=>'application-delete','uses'=>'LeaveController@deleteApplication']);
    Route::get('myleave', ['as'=>'employee-leave','uses'=>'LeaveController@myLeave']);

});

Route::group(['namespace' => 'Status','prefix'=>'status'], function(){
    Route::get('add', ['as'=>'status-add-form','uses'=>'StatusController@createStatusForm']);
    Route::post('add', ['as'=>'status-create','uses'=>'StatusController@createStatus']);
    Route::get('list', ['as'=>'status-list','uses'=>'StatusController@index']);


});

Route::group(['namespace' => 'Holiday','prefix'=>'holydaytype'], function(){
    Route::get('add', 'HolydayController@createHolydayTypeForm');
    Route::post('add', 'HolydayController@createHolydayType');
    /*Route::get('list', 'LeaveController@leaveApplicationList');
    Route::get('edit/{id}', 'LeaveController@applicationEditForm');
    Route::patch('edit/{id}', 'LeaveController@editAplication');
    Route::get('delete/{id}', 'LeaveController@deleteApplication');*/
});
Route::group(['namespace' => 'Holiday','prefix'=>'holyday'], function(){
    Route::get('add', 'HolydayController@createHolydayForm');
    Route::post('add', 'HolydayController@createHolyday');
    Route::get('list', 'HolydayController@holydayList');
    Route::get('list/{year}/{date}', 'HolydayController@holydaysByMonth');
   /* Route::get('edit/{id}', 'LeaveController@applicationEditForm');
    Route::patch('edit/{id}', 'LeaveController@editAplication');
    Route::get('delete/{id}', 'LeaveController@deleteApplication');*/

});
Route::group(['namespace' => 'Punch','prefix'=>'punch'], function(){
    Route::get('add', ['as'=>'punch-insert-form','uses'=>'PunchController@insertPunchForm']);
    Route::post('add', ['as'=>'punch-in','uses'=>'PunchController@punchIn']);
    Route::post('out', ['as'=>'punch-out','uses'=>'PunchController@punchOut']);
    Route::get('edit/{date}/{id}', ['as'=>'user-daily-punch-edit-by-date','uses'=>'PunchController@editPunchForm']);
    Route::patch('edit/{id}/{date}', ['as'=>'user-punch-edit','uses'=>'PunchController@editUserPunch']);
//    Route::get('timesheet',['as'=>'your-timesheet','uses'=>'PunchController@getTimesheet']);
//    Route::get('timesheet/report',['as'=>'timesheet-report','uses'=>'PunchController@timeShiftForMonth']);
//    Route::get('timesheet',['as'=>'your-timesheet','uses'=>'PunchController@timesheetPage']);
});

Route::group(['namespace' => 'Punch','prefix'=>'timesheet'], function(){

    Route::get('/',['as'=>'your-timesheet','uses'=>'PunchController@timesheetPage']);
    Route::get('mine',['as'=>'my-timesheet','uses'=>'PunchController@myTimesheetPage']);
    Route::get('my-details/{id}/{month}/{year}',['as'=>'my-timesheet-report','uses'=>'PunchController@myDailyTimesheet']);
//    Route::get('monthly-report',['as'=>'timesheet-report','uses'=>'PunchController@timeShiftForMonth']);
    Route::get('monthly-report/{year}/{month}',['as'=>'timesheet-report','uses'=>'PunchController@timeShiftForMonth']);
    Route::get('users-daily-report/{id}/{month}/{year}',['as'=>'user-month-timesheet-details','uses'=>'PunchController@usersDailyTimesheet']);
});
Route::group(['namespace' => 'Punch','prefix'=>'attendance'], function(){

    Route::get('monthly',['as'=>'monthly-device-attendance','uses'=>'PunchController@monthlyDeviceAttendance']);
    Route::post('monthly',['as'=>'monthly-device-data-upload','uses'=>'PunchController@monthlyDeviceDataUpload']);
});

Route::group(['namespace' => 'Salary','prefix'=>'salary'], function(){
    Route::get('type', ['as'=>'salary-type-create-form','uses'=>'SalaryController@createSalaryTypeForm']);
    Route::get('type/list',['as'=>'salary-type-list','uses'=>'SalaryController@salaryTypeList']);
    Route::get('type/edit/{id}',['as'=>'salary-type-edit-form','uses'=>'SalaryController@salaryTypeEditForm']);
    Route::patch('type/edit/{id}',['as'=>'salary-type-edit','uses'=>'SalaryController@editSalaryType']);
    Route::get('type/delete/{id}',['as'=>'salary-type-delete','uses'=>'SalaryController@salaryTypeDelete']);
    Route::post('type', ['as'=>'create-salary-type','uses'=>'SalaryController@createSalaryType']);

    Route::get('allowance-rules',['as'=>'salary-rules-create-form','uses'=>'SalaryController@createAllowanceForm']);
    Route::post('allowance-rules',['as'=>'create-salary-rules','uses'=>'SalaryController@createAllowance']);
    Route::get('allowance-rules-list',['as'=>'salary-allowance-rules-list','uses'=>'SalaryController@allowanceRulesList']);
    Route::get('allowance-rules/edit/{id}',['as'=>'allowance-rule-edit-form','uses'=>'SalaryController@allowanceRuleEditForm']);
    Route::patch('allowance-rules/edit/{id}',['as'=>'allowance-rule-edit','uses'=>'SalaryController@editAllowanceRule']);
    Route::get('allowance-rules/delete/{id}',['as'=>'allowance-rule-delete','uses'=>'SalaryController@deleteAllowanceRule']);

    Route::get('overtime-rules',['as'=>'overtime-rules-create-form','uses'=>'SalaryController@createOvertimeForm']);
    Route::post('overtime-rules',['as'=>'create-overtime-rules','uses'=>'SalaryController@createOvertime']);
    Route::get('overtime-rules-list',['as'=>'salary-overtime-rules-list','uses'=>'SalaryController@overtimeRulesList']);

    Route::get('cut-rules',['as'=>'cut-rules-create-form','uses'=>'SalaryController@createSalaryCutForm']);
    Route::post('cut-rules',['as'=>'create-salary-cut-rules','uses'=>'SalaryController@createSalaryCut']);
    Route::post('cut-rules-list',['as'=>'salary-cut-rules-list','uses'=>'SalaryController@salaryCutRulesList']);

    Route::get('bonus-rules',['as'=>'bonus-rules-create-form','uses'=>'SalaryController@createBonusForm']);
    Route::post('bonus-rules',['as'=>'create-bonus-rules','uses'=>'SalaryController@createBonusRule']);
    Route::post('bonus-rules-list',['as'=>'salary-bonus-rules-list','uses'=>'SalaryController@bonusRulesList']);

    Route::post('bonus-attr',['as'=>'create-bonus-attr','uses'=>'SalaryController@createBonusAttr']);
    Route::post('check-bonus-attr/{id}',['as'=>'check-bonus-attr','uses'=>'SalaryController@checkBonusAttr']);
    Route::post('bonus-attr-delete/{id}',['as'=>'delete-bonus-attr','uses'=>'SalaryController@deleteBonusAttr']);
});


