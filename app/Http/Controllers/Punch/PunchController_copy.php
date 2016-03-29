<?php

namespace Erp\Http\Controllers\Punch;

use Erp\Models\Punch\Punch;
use Faker\Provider\zh_TW\DateTime;
use Illuminate\Http\Request;
use Erp\Http\Requests;
use Erp\Http\Controllers\Controller;
use Erp\Models\Holydays\Holyday;


class PunchController extends Controller
{
    private $punch;
    private $authenticatedUser;
    private $todayMaxTime;
    private $todayMinTime;
    private $yesterdayMaxTime;
    private $yesterdayMinTime;
    private $weekend;
    private $holidays;
    private $outOfShiftMin;
    private $outOfShiftMax;
    private $nextDayShift;

    public function __construct(Punch $punch)
    {
        $this->middleware('prevReq');
        $this->punch = $punch;
        $this->authenticatedUser = request()->user();
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function insertPunchForm()
    {
        $viewType = 'Insert Punch';


        if(count($this->authenticatedUser->punches)>0){
            $punchFlag = $this->authenticatedUser
                ->punches
                ->last()->punch_flag;

        }else{
            $punchFlag = null;
        }

//        dd($punchFlag);
        return view('default.admin.punches.insert-punch',compact('viewType','punchFlag'));
    }

    /**
     * @return mixed
     */
    private function shiftForToday()
    {
//        dd($this->authenticatedUser->shift);
        if(!is_null($this->authenticatedUser->shift)){
//            dd(json_decode($this->authenticatedUser->shift->contents));
            $shiftForToday = json_decode($this->authenticatedUser->shift->contents);
            return $shiftForToday;
        }
        return back()->withErrors('shift not set for thie employee');
    }

    /**
     * @return $this
     */
    public function punchIn()
    {
        /**
         * punch in information
         */
        $this->punch->user_id = $this->authenticatedUser->id ;
        $this->punch->punch_in = date('H:i:s', time());
        $this->punch->punch_date = date('Y-m-d');
        $this->punch->punch_in_date_time = date('Y-m-d H:i:s');
        $this->punch->punch_year = date('Y');
        $this->punch->punch_month = date('m');
        $this->punch->punch_day = date('d');
        $this->punch->punch_flag = true;
        $shiftForToday = $this->shiftForToday();
        $today = Date('D');
        $todaysDate = date('Y-m-d H:i:s');

        /**
         * function for getting the shift range
         */
        $this->shiftForPunchInCheck($shiftForToday,$today);

        /**
         * check if ur shift exists today or between two days,
         * if true then ur working hours should be deemed regular
         */
        if(($todaysDate >= $this->yesterdayMinTime && $todaysDate <= $this->yesterdayMaxTime) ||
            ($todaysDate >= $this->todayMinTime && $todaysDate <= $this->todayMaxTime) ){
            if($this->punch->save())
                return back()->withSuccess('it is ur shift and u r successfully punched in');
        }

        /**
         * if ur shift doesn't exist between two days,
         * check whether ur shift exists today only
         */

        /*if($todaysDate >= $this->todayMinTime && $todaysDate <= $this->todayMaxTime){
            dd('shifting');
            if($this->punch->save())
                return back()->withSuccess('it is ur shift and u r successfully punched in');
        }*/

        /**
         * if u r on holiday or weekend ur working hour should be considered overtime
         */
        if($this->weekend == true){
            $this->punch->is_overtime = 1;
            if($this->punch->save())
                return back()->withSuccess('it is not ur shift and should be considered overtime for u...');
        }

        /**
         * if u r out of ur shift ur working time will be considered overtime
         * and u should be paid extra ....
         * only then is_overtime flag should be 1, by default which is 0
         */
        $this->punch->is_overtime = 1;
        if($this->punch->save())
            return back()->withSuccess('it is not ur shift and should be considered overtime for u...');
    }

    /**
     * determine the shift within which u r going to punch in or out
     * @param $shiftForTheDay
     * @param $today
     */
    private function shiftForPunchInCheck($shiftForTheDay,$today)
    {
        switch($today):

            case 'Sat':
//                if(!array_key_exists('sat_day_off',$shiftForTheDay)){
                    if(array_key_exists('fri_extend_day',$shiftForTheDay)){

                        $this->yesterdayMinTime = date('Y-m-d H:i',strtotime("Sat ".$shiftForTheDay->fri_min." -1 day"));
                        $this->yesterdayMaxTime = date('Y-m-d H:i',strtotime('Sat '.$shiftForTheDay->fri_max));
                    }
                    if(array_key_exists('sat_extend_day',$shiftForTheDay)){

                        $this->todayMinTime = date('Y-m-d H:i',strtotime('Sat '.$shiftForTheDay->sat_min));
                        $this->todayMaxTime = date('Y-m-d H:i',strtotime("Sat ".$shiftForTheDay->sat_max." +1 day"));
                    } elseif(!array_key_exists('sat_extend_day',$shiftForTheDay)){

                        $this->todayMinTime = date('Y-m-d H:i',strtotime('Sat '.$shiftForTheDay->sat_min));
                        $this->todayMaxTime = date('Y-m-d H:i',strtotime('Sat '.$shiftForTheDay->sat_max));
                    }
//                }
                if(array_key_exists('sat_day_off',$shiftForTheDay)){
                    $this->weekend = true;
                }

                break;
            case 'Sun':
//                if(!array_key_exists('sun_day_off',$shiftForTheDay)){
                    if(array_key_exists('sat_extend_day',$shiftForTheDay)){

                        $this->yesterdayMinTime = date('Y-m-d H:i',strtotime("Sun ".$shiftForTheDay->sat_min." -1 day"));

                        $this->yesterdayMaxTime = date('Y-m-d H:i',strtotime('Sun '.$shiftForTheDay->sat_max));
                    }
                    if(array_key_exists('sun_extend_day',$shiftForTheDay)){

                        $this->todayMinTime = date('Y-m-d H:i',strtotime('Sun '.$shiftForTheDay->sun_min));

                        $this->todayMaxTime = date('Y-m-d H:i',strtotime("Sun ".$shiftForTheDay->sun_max." +1 day"));
                    } elseif(!array_key_exists('sun_extend_day',$shiftForTheDay)){

                        $this->todayMinTime = date('Y-m-d H:i',strtotime('Sun '.$shiftForTheDay->sun_min));

                        $this->todayMaxTime = date('Y-m-d H:i',strtotime('Sun '.$shiftForTheDay->sun_max));
                    }
//                }
                if(array_key_exists('sun_day_off',$shiftForTheDay)){
                    $this->weekend = true;
                }

                break;
            case 'Mon':
//                if(!array_key_exists('mon_day_off',$shiftForTheDay)){
                    if(array_key_exists('sun_extend_day',$shiftForTheDay)){

                        $this->yesterdayMinTime = date('Y-m-d H:i',strtotime("Mon ".$shiftForTheDay->sun_min." -1 day"));

                        $this->yesterdayMaxTime = date('Y-m-d H:i',strtotime('Mon '.$shiftForTheDay->sun_max));
                    }
                    if(array_key_exists('mon_extend_day',$shiftForTheDay)){

                        $this->todayMinTime = date('Y-m-d H:i',strtotime('Mon '.$shiftForTheDay->mon_min));

                        $this->todayMaxTime = date('Y-m-d H:i',strtotime("Mon ".$shiftForTheDay->mon_max." +1 day"));
                    } elseif(!array_key_exists('mon_extend_day',$shiftForTheDay)){

                        $this->todayMinTime = date('Y-m-d H:i',strtotime('Mon '.$shiftForTheDay->mon_min));

                        $this->todayMaxTime = date('Y-m-d H:i',strtotime('Mon '.$shiftForTheDay->mon_max));
                    }
//                }
                if(array_key_exists('mon_day_off',$shiftForTheDay)){
                    $this->weekend = true;
                }

                break;
            case 'Tue':
//                if(!array_key_exists('tue_day_off',$shiftForTheDay)) {
                    if ((array_key_exists('mon_extend_day', $shiftForTheDay))) {

                        $this->yesterdayMinTime = date('Y-m-d H:i', strtotime("Tue " . $shiftForTheDay->mon_min . " -1 day"));

                        $this->yesterdayMaxTime = date('Y-m-d H:i', strtotime('Tue ' . $shiftForTheDay->mon_max));
                    }
                    if (array_key_exists('tue_extend_day', $shiftForTheDay)) {

                        $this->todayMinTime = date('Y-m-d H:i', strtotime($shiftForTheDay->tue_min));

                        $this->todayMaxTime = date('Y-m-d H:i', strtotime("Tue " . $shiftForTheDay->tue_max . " +1 day"));

                    } elseif (!array_key_exists('tue_extend_day', $shiftForTheDay)) {

                        $this->todayMinTime = date('Y-m-d H:i', strtotime('Tue ' . $shiftForTheDay->tue_min));

                        $this->todayMaxTime = date('Y-m-d H:i', strtotime('Tue ' . $shiftForTheDay->tue_max));
                    }

//                }

                if(array_key_exists('tue_day_off',$shiftForTheDay)){
                    $this->weekend = true;
                }


                break;
            case 'Wed':
//                if(!array_key_exists('wed_day_off',$shiftForTheDay)){
                    if(array_key_exists('tue_extend_day',$shiftForTheDay)){

                        $this->yesterdayMinTime = date('Y-m-d H:i',strtotime("Wed ".$shiftForTheDay->tue_min." -1 day"));

                        $this->yesterdayMaxTime = date('Y-m-d H:i',strtotime('Wed '.$shiftForTheDay->tue_max));
                    }
                    if(array_key_exists('wed_extend_day',$shiftForTheDay)){

                        $this->todayMinTime = date('Y-m-d H:i',strtotime('Wed '.$shiftForTheDay->wed_min));

                        $this->todayMaxTime = date('Y-m-d H:i',strtotime("Wed ".$shiftForTheDay->wed_max." +1 day"));
                    } elseif(!array_key_exists('wed_extend_day',$shiftForTheDay)){

                        $this->todayMinTime = date('Y-m-d H:i',strtotime('Wed '.$shiftForTheDay->wed_min));

                        $this->todayMaxTime = date('Y-m-d H:i',strtotime('Wed '.$shiftForTheDay->wed_max));
                    }
//                }
                    if(array_key_exists('wed_day_off',$shiftForTheDay)){
                        $this->weekend = true;
                    }


                break;
            case 'Thu':
//                if(!array_key_exists('thu_day_off',$shiftForTheDay)){
                    if(array_key_exists('wed_extend_day',$shiftForTheDay)){

                        $this->yesterdayMinTime = date('Y-m-d H:i',strtotime("Thu ".$shiftForTheDay->wed_min." -1 day"));

                        $this->yesterdayMaxTime = date('Y-m-d H:i',strtotime('Thu '.$shiftForTheDay->wed_max));
                    }
                    if(array_key_exists('thu_extend_day',$shiftForTheDay)){

                        $this->todayMinTime = date('Y-m-d H:i',strtotime('Thu '.$shiftForTheDay->thu_min));

                        $this->todayMaxTime = date('Y-m-d H:i',strtotime("Thu ".$shiftForTheDay->thu_max." +1 day"));
                    } elseif(!array_key_exists('thu_extend_day',$shiftForTheDay)){
                        $this->todayMinTime = date('Y-m-d H:i',strtotime('Thu '.$shiftForTheDay->thu_min));
                        $this->todayMaxTime = date('Y-m-d H:i',strtotime('Thu '.$shiftForTheDay->thu_max));
                    }
//                }

                if(array_key_exists('thu_day_off',$shiftForTheDay)){
                    $this->weekend = true;
                }


                break;
            case 'Fri':
//                if(!array_key_exists('fri_day_off',$shiftForTheDay)){
                    if(array_key_exists('thu_extend_day',$shiftForTheDay)){
                        $this->yesterdayMinTime = date('Y-m-d H:i',strtotime("Fri ".$shiftForTheDay->thu_min." -1 day"));
                        $this->yesterdayMaxTime = date('Y-m-d H:i',strtotime('Fri '.$shiftForTheDay->thu_max));
                    }
                    if(array_key_exists('fri_extend_day',$shiftForTheDay)){
                        $this->todayMinTime = date('Y-m-d H:i',strtotime('Fri '.$shiftForTheDay->fri_min));
                        $this->todayMaxTime = date('Y-m-d H:i',strtotime("Fri ".$shiftForTheDay->fri_max." +1 day"));
                    } elseif(!array_key_exists('fri_extend_day',$shiftForTheDay)){
                        $this->todayMinTime = date('Y-m-d H:i',strtotime('Fri '.$shiftForTheDay->fri_min));
                        $this->todayMaxTime = date('Y-m-d H:i',strtotime('Fri '.$shiftForTheDay->fri_max));
                    }
//                }

                if(array_key_exists('fri_day_off',$shiftForTheDay)){
                    $this->weekend = true;
                }

                break;
            default:
                return;
        endswitch;
    }

    /**
     * get next day shift to get working hours existing out of today's shift
     * @param $shiftForTheDay
     * @param $day
     */
    private function nextDayShiftInfo($shiftForTheDay,$nextDay)
    {
        $this->outOfShiftMin = $this->todayMaxTime;
//        dd($this->outOfShiftMin);
        $this->nextDayShift  = $this->shiftForPunchInCheck($shiftForTheDay,$nextDay);

        $this->outOfShiftMax = $this->todayMinTime;
//        dd($this->outOfShiftMax);
    }

    /**
     *
     */
    public function punchOut()
    {

        /**
         * finding the row to update from punches table while punching out
         */
        $punchingRow = $this->authenticatedUser
                            ->punches
                            ->where('punch_flag','1')
                            ->where('punch_out',null)
                            ->where('punch_out_date_time',null)
                            ->last();

        /**
         * current time considered punch out time in two different formats
         * hours minutes second
         * hours minutes second with date
         */
        $punchOutTime = date('H:i:s', time());
        $punchOutDateTime = date('Y-m-d H:i:s', time());

        /**
         * if the punching row is found or not null
         * then it is updated
         */
       if(!is_null($punchingRow)){
           $punchInTime = $punchingRow->punch_in;
           $workingHoursBetweenPunchInAndOut =  abs((strtotime($punchOutTime)-strtotime($punchInTime)))/(60*60);

           $punchOutUpdate    = $punchingRow->update([
               'punch_out' => $punchOutTime,
               'punch_out_date_time' => $punchOutDateTime,
               'working_hours' => $workingHoursBetweenPunchInAndOut,
               'punch_flag' => false
           ]);
           return $punchOutUpdate? back()->withSuccess('successfully punched out'):dd('not updated');
       }


    }

    /**
     * determine working hours based on all conditions
     * check if working hours exist within ur regular shift
     * ---------exist out of ur shift
     * ---------exist on holiday
     * ---------exist on weekend
     */
    public function getTimesheet(Holyday $holydays)
    {

//        $todaysDate = date("$year-$month-$day");
//        $timestamp = strtotime($todaysDate);

//        $day = date('D', $timestamp);
//        dd($day);

        $todaysDate = date('Y-m-d');
//        dd($todaysDate);
//        $today = date('D', $timestamp);;
        $today = date('D');
//        dd($today);
        $nextDay = date('D',strtotime($today.' +1 day'));
//        dd($nextDay);
//        echo $nextDay;




        /**
         * get today's shift for the logged-in user
         */
        $shiftForToday = $this->shiftForToday();
//        dd($shiftForToday);

        /**
         * adjust shiftForToday(sat,sun etc...) for punching....
         */
        $this->shiftForPunchInCheck($shiftForToday,$today);

        $shiftInWorkingHours = 0;
        $workingHourForOvertime = 0;
        $weekendOrHolidayOvertime = 0;


        /*
        |--------------------------------------------------------------------------------------------------------------
        |--------------------------------------------------------------------------------------------------------------
        |-------------------------------------UPDATE PUNCH INFO MISTAKINGLY READ BY PUNCH MACHINE-----------------------
        |--------------------------------------------------------------------------------------------------------------
        |--------------------------------------------------------------------------------------------------------------
        */


        /**
         * if punch in or out time is missing for the punching machine error,
         * hrm software gives null value for those fields....and
         * those fields with null values are updated to the minimum time and the maximum time respectively
         * must remain at the top
         */

        foreach($this->authenticatedUser->punches as $punchRow){

                if($punchRow->punch_in_date_time >= $this->todayMinTime &&
                    $punchRow->punch_in_date_time <= $this->todayMaxTime &&
                    is_null($punchRow->punch_out_date_time) ){

                    $punchRow->update([
                        'punch_out_date_time'=> $this->todayMaxTime
                    ]);
                }

                if($punchRow->punch_out_date_time > $this->todayMinTime &&
                    $punchRow->punch_out_date_time <= $this->todayMaxTime &&
                    is_null($punchRow->punch_in_date_time)){

                    $punchRow->update([
                        'punch_in_date_time'=> $this->todayMinTime
                    ]);
                }
            }


        /*
        |--------------------------------------------------------------------------------------------------------------
        |--------------------------------------------------------------------------------------------------------------
        |-------------------------------------Regular Shift-------------------------------------------------------
        |--------------------------------------------------------------------------------------------------------------
        |--------------------------------------------------------------------------------------------------------------
        */


        /**
         * check if today is not weekend
         */
        if($this->weekend != true){
            /**
             * check if punch_in_date_time and punch_out_date_time exist within today's shift to
             * get user specific punch infos from which total working hours within today's shift is determined;
             */
            $punchInfosForWorkingHours = $this->authenticatedUser->punches()
                ->whereNotNull('punch_in_date_time')
                ->whereNotNull('punch_out_date_time')
                ->whereBetween('punch_in_date_time',[$this->todayMinTime,$this->todayMaxTime])
                ->whereBetween('punch_out_date_time',[$this->todayMinTime,$this->todayMaxTime])
                ->orderBy('id','DESC')
                ->get();

            /**
             * get today's working hour within the shift
             * set $shiftInWorkingHours to zero
             * $shiftInWorkingHours is incremented by
             * the intervening working hours(punch_out_date_time - punch_in_date_time) for each punch row
             */

            foreach($punchInfosForWorkingHours as $punchInfo){

                $inDateTime = $punchInfo->punch_in_date_time;
                $outDateTime = $punchInfo->punch_out_date_time;
                $shiftInWorkingHours +=  abs((strtotime($outDateTime)-strtotime($inDateTime)));
            }
//            dd($shiftInWorkingHours);
//            echo $shiftInWorkingHours;

        }

        /*
        |--------------------------------------------------------------------------------------------------------------
        |--------------------------------------------------------------------------------------------------------------
        |-------------------------------------Holiday or Weekend-------------------------------------------------------
        |--------------------------------------------------------------------------------------------------------------
        |--------------------------------------------------------------------------------------------------------------
        */

        /**
         * get holidays to determine working hours those days
         * overtime applies provided ur working hours exist on holidays or weekends
         */
        $this->holidays = $holydays;
        $allHolidays = $this->holidays->with('holydayType')->get();

        /**
         * get a flag for checking if the day is holiday or weekend
         */
        foreach($allHolidays as $holiday){
            if( $todaysDate == $holiday->date ){

                $holiToday = true;

                break;
            }
            $holiToday = false;
        }
        /**
         * get punching row for the punchInfos out of holidays or weekends
         * overtime applies provided working hours exist on holiday or weekend
         */
        if($this->weekend == true || $holiToday == true ){
            $punchInfosForHolidays = $this->authenticatedUser->punches()
                ->whereNotNull('punch_in_date_time')
                ->whereNotNull('punch_out_date_time')
                ->whereBetween('punch_in_date_time',[$this->todayMinTime,$this->todayMaxTime])
                ->whereBetween('punch_out_date_time',[$this->todayMinTime,$this->todayMaxTime])
                ->orderBy('id','DESC')
                ->get();

            /**
             * get total hours for holidays or weekends work- considered overtime
             * $weekendOrHolidayOvertime set to 0,
             * then incremented by the interveinig time between punch-in and punch-out (punch-out - punch-in)
             */
            foreach($punchInfosForHolidays as $punchInfoHoliday){

                $holidayInDateTime = $punchInfoHoliday->punch_in_date_time;
                $holidayOutDateTime = $punchInfoHoliday->punch_out_date_time;
                $weekendOrHolidayOvertime +=  abs((strtotime($holidayOutDateTime)-strtotime($holidayInDateTime)));
            }
        }
//        dd(date('Y-m-d H:i'));
//        dd($weekendOrHolidayOvertime);
//        echo $weekendOrHolidayOvertime;

        /*
        |--------------------------------------------------------------------------------------------------------------
        |--------------------------------------------------------------------------------------------------------------
        |-------------------------------------Out of Shift-------------------------------------------------------
        |--------------------------------------------------------------------------------------------------------------
        |--------------------------------------------------------------------------------------------------------------
        */

        /**
         * get next day shift to get working hours out of today's shift
         * must remain below
         */

        $this->nextDayShiftInfo($shiftForToday,$nextDay);

        /**
         * get punching row for the punchInfos out of today's shift
         * out of shift meaning - time greater than today's max time and less than tomorrow's min time
         */
        $punchInfosForOvertime = $this->authenticatedUser->punches()
            ->whereNotNull('punch_in_date_time')
            ->whereNotNull('punch_out_date_time')
            ->where('punch_in_date_time','>',$this->outOfShiftMin)
            ->where('punch_in_date_time','<',$this->outOfShiftMax)
            ->where('punch_out_date_time','>',$this->outOfShiftMin)
            ->where('punch_out_date_time','<',$this->outOfShiftMax)
            ->orderBy('id','DESC')
            ->get();
//dd($punchInfosForOvertime);
        /**
         * get total hours for out-of-shift work considered overtime
         * $workingHourForOvertime set to 0,
         * then incremented by the interveinig time between punch-in and punch-out (punch-out - punch-in)
         */

        foreach($punchInfosForOvertime as $punchInfoOvertime){

            $overInDateTime = $punchInfoOvertime->punch_in_date_time;
            $overOutDateTime = $punchInfoOvertime->punch_out_date_time;
            $workingHourForOvertime +=  abs((strtotime($overOutDateTime)-strtotime($overInDateTime)));
        }

dd($workingHourForOvertime);
//        echo $weekendOrHolidayOvertime;
    }



}
