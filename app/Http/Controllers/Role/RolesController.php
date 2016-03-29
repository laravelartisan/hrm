<?php

namespace Erp\Http\Controllers\Role;


use Erp\Forms\AssignRole;
use Erp\Forms\FormControll;
use Erp\Http\Controllers\Language\Lang;
use Erp\Models\Role\Role;
use Erp\Models\User\User;
use Illuminate\Http\Request;
use Erp\Http\Requests\Validator;
use Erp\Http\Requests;
use Erp\Http\Controllers\Controller;

class RolesController extends Controller
{
    use Lang, FormControll;

    private $role;

    /**
     * RolesController constructor.
     * @param Request $request
     * @param Role $role
     */
    public function __construct( Role $role)
    {
        $this->middleware('prevReq');
        $this->middleware('auth');
        $this->middleware('role:superadmin');

        $this->role = $role;
    }


    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index()
    {
        $model = $this->role;
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        $viewType = 'Role List';

        return view('default.admin.role.index',compact('locale','defaultLocale','viewType','model'));
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createForm()
    {
        $viewType = 'Create Role';

        return view('default.admin.role.create',compact('viewType'));

    }

    /**
     * @param Role $role
     * @param Validator $validatedRequest
     */
    public function createRole( Validator $validatedRequest)
    {
        $isCreated =  $this->role->create([
            'name'=>ucwords($validatedRequest->get('name')),
            'label'=>$validatedRequest->get('label')
        ]);

        return $isCreated?back():null;

    }

    /**
     * @return $this
     */
    public function roleAssignForm(AssignRole $assignRole)
    {
        $viewType = 'Assign Role';
        $assignRole = $assignRole;
        return view('default.admin.role.assign_role',compact('viewType','assignRole'));

    }

    /**
     * @param Validator $validatedRequest
     * @param User $user
     * @return \Illuminate\Http\RedirectResponse
     */
    public function assignRole(Validator $validatedRequest, User $user)
    {
//        dd($validatedRequest->user_id);
        $assignedUser = $user->findOrFail($validatedRequest->user_id);
        $roleChecked = $this->role->findOrFail($validatedRequest->role_id);
//        dd($roleChecked);
        foreach( $assignedUser->roles()->get() as $assignedRole){
            if($assignedRole->id == $roleChecked->id ){
                return back()->withErrors("$assignedUser->first_name $assignedUser->last_name already holds the $assignedRole->name role");
            }
        }
        $assignedUser->roles()->attach($validatedRequest->role_id);

        return back();
    }

    /**
     * @param $id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function editRoleForm($id)
    {
        $viewType = 'Edit Role';

        $eachRole =$this->editFormModel($this->role->findOrFail($id)) ;

        return view('default.admin.role.edit',compact('eachRole','viewType'));
    }


    /**
     * @param $id
     * @param Validator $validatedRequest
     * @return \Illuminate\Http\RedirectResponse|null
     */
    public function editRole($id,Validator $validatedRequest)
    {
        $roleToEdit = $this->role->findOrFail($id);

        $isEdited =  $roleToEdit->update([
            'name'=>ucwords($validatedRequest->get('name')),
            'label'=>$validatedRequest->get('label')
        ]);

        return $isEdited?back():null;
    }

    /**
     * @param $id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function viewRole($id)
    {
        $roleToView = $this->role->findOrFail($id);

        return view('default.admin.role.view',compact('roleToView'));

    }

    public function deleteRole($id)
    {
        $roleToDelete = $this->role->findOrFail($id);

        if($roleToDelete->delete()){

            return back();
        }
        return back()->withErrors('Not successfully deleted');
    }

}
