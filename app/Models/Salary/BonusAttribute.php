<?php

namespace Erp\Models\Salary;

use Illuminate\Database\Eloquent\Model;

class BonusAttribute extends Model
{
    const MONTH = 'month';
    const SALARY_TYPES = 'salary_types';
    const AMOUNT = 'amount';
    const AMOUNT_TYPE = 'amount_type';


    public $timestamps = false;
    protected $fillable = [
        self::MONTH,
        self::SALARY_TYPES,
        self::AMOUNT,
        self::AMOUNT_TYPE
    ];
}
