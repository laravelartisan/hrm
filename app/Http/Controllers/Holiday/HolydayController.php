<?php

namespace Erp\Http\Controllers\Holiday;

use Erp\Forms\FormControll;
use Erp\Http\Controllers\Language\Lang;
use Erp\Lists\HolyDayList;
use Erp\Models\Holydays\Holyday;
use Erp\Models\Holydays\HolyDayType;

use Illuminate\Http\Request;
use Erp\Http\Requests;
use Erp\Http\Controllers\Controller;

class HolydayController extends Controller
{
    use Lang,FormControll;


    public function __construct()
    {
        $this->middleware('prevReq');
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createHolydayTypeForm()
    {
        $viewType = 'Create Holyday Type';

        return view('default.admin.holydays.create-holyday-type',compact('viewType'));
    }

    /**
     * @param HolyDayType $holyDayType
     * @param Requests\Validator $validatedRequest
     * @return \Illuminate\Http\RedirectResponse|null
     */
    public function createHolydayType(HolyDayType $holyDayType,Requests\Validator $validatedRequest )
    {
        $isCreated = $holyDayType->create([
            'type'=>ucwords($validatedRequest->type),
            'status_id'=>ucwords($validatedRequest->status_id)
        ]);

        return $isCreated?back():null;
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createHolydayForm()
    {
        $viewType = 'Create Holyday';

        return view('default.admin.holydays.create',compact('viewType'));
    }

    /**
     * @param Holyday $holyday
     * @param Requests\Validator $validatedRequest
     * @return \Illuminate\Http\RedirectResponse|null
     */
    public function createHolyday(Holyday $holyday, Requests\Validator $validatedRequest)
    {
        $isCreated = $holyday->create([
            'date'=>$validatedRequest->date,
            'occasion'=>ucwords($validatedRequest->occasion),
            'type_id'=>$validatedRequest->type_id,
            'status_id'=>$validatedRequest->status_id
        ]);

        return $isCreated?back():null;

    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function holydayList(Holyday $holyday)
    {

        $viewType = 'Holidays List';
        $firstDate = date('Y-m-d',mktime(0,0,0,1,1,2016));
        $lastDate = date('Y-m-d',mktime(0,0,0,1,31,2016));

        $holydays =  $holyday->with('holydayType','status')->whereBetween('date',[$firstDate,$lastDate])
            ->orderBy('id','desc')
            ->get();

        return view('default.admin.holydays.index',compact('viewType','holydays'));
    }

    /**
     * @param $monthFromList
     * @param Holyday $holyday
     * @return string
     */
    public function holydaysByMonth($year,$month,Holyday $holyday)
    {
//          $month = date("m",strtotime($holyday->first()->date));

        $firstDate = date('Y-m-d',mktime(0,0,0,$month,1,$year));
        $lastDate = date('Y-m-d',mktime(0,0,0,$month,31,$year));

        $holydays =  $holyday->with('holydayType','status')
                             ->whereBetween('date',[$firstDate,$lastDate])
                             ->orderBy('id','desc')
                             ->get();

        return view('default.admin.holydays.holydays-list',compact('holydays','firstDate','lastDate'));
    }

}
