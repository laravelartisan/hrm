<?php

namespace Erp\Http\Controllers\Status;

use Erp\Forms\FormControll;
use Erp\Models\Status\Status;
use Illuminate\Http\Request;

use Erp\Http\Requests;
use Erp\Http\Controllers\Controller;

class StatusController extends Controller
{
    use FormControll;

    private $status;

    /**
     * StatusController constructor.
     * @param Status $status
     */
    public function __construct(Status $status)
    {
        $this->middleware('prevReq');
        $this->status = $status;

    }

    public function index()
    {
        dd('status list');
    }
    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createStatusForm()
    {
        $viewType = 'Create Status';

        return view('default.admin.status.create',compact('viewType'));

    }

    /**
     * @param Requests\Validator $validatedRequest
     * @return \Illuminate\Http\RedirectResponse|null
     */
    public function createStatus(Requests\Validator $validatedRequest)
    {
        $isCreated =  $this->status->create([
            'name'=>ucwords($validatedRequest->name)
        ]);

        return $isCreated?back():null;
    }


}
