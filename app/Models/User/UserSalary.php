<?php

namespace Erp\Models\User;

use Illuminate\Database\Eloquent\Model;

class UserSalary extends Model
{
    const USER = 'user_id';
    const BASIC = 'basic';
    const ALLOWANCE = 'salary_rule_id';
    const OVERTIME = 'overtime_rule_id';
    const SALARY_CUT = 'salary_cut_rule_id';
    const BONUS = 'bonus_id';


    public $timestamps = false;
    protected $fillable = [
        self::USER,
        self::BASIC,
        self::ALLOWANCE,
        self::OVERTIME,
        self::SALARY_CUT,
        self::BONUS
    ];

    public function user()
    {
        return $this->belongsTo(User::class);

    }


}