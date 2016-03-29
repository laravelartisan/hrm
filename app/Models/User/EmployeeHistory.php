<?php

namespace Erp\Models\User;

use Illuminate\Database\Eloquent\Model;

class EmployeeHistory extends Model
{

    const USER = 'user_id';
    const DEPARTMENT = 'department_id';
    const DESIGNATION = 'designation_id';
    const DEPTJOINDATE = 'dept_join_date';
    const STATUS ='status';
    const POSITION = 'position';
    const DEPT_JOIN_DATE = 'dept_join_date';


    public $timestamps = false;

    protected $fillable= [
        self::USER,
        self::DEPARTMENT,
        self::DESIGNATION,
        self::STATUS,
        self::POSITION,
        self::DEPT_JOIN_DATE
    ];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function user()
    {
        return $this->belongsTo(User::class);
    }





}

