<?php

namespace Erp\Models\Status;

use Erp\Models\Holydays\Holyday;
use Erp\Models\Leave\LeaveApplication;
use Erp\Models\Salary\SalaryRule;
use Erp\Models\Shift\Shift;
use Illuminate\Database\Eloquent\Model;

class Status extends Model
{

    const Name = 'name';

    public $timestamps = false;

    protected $fillable = [
        self::Name
    ];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function leaveApplication()
    {
        return $this->hasMany(LeaveApplication::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function holydays()
    {
        return $this->hasMany(Holyday::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function shifts()
    {
        return $this->hasMany(Shift::class);
    }

    public function allowances()
    {
        return $this->hasMany(SalaryRule::class);
    }
}
