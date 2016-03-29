<?php

namespace Erp\Models\User;

use Illuminate\Database\Eloquent\Model;

class BankAccount extends Model
{

    const USER = 'user_id';
    const ACCOUNT_HOLDER = 'account_holder';
    const ACCOUNT_NO = 'account_no';
    const BANK = 'bank_name';
    const IFSC = 'ifsc_code';
    const BRANCH = 'branch';
    const PAN = 'pan_no';
    const STATUS ='status';
    const POSITION = 'position';

    public $timestamps = false;

    protected $fillable =[
        self::USER,
        self::ACCOUNT_HOLDER,
        self::ACCOUNT_NO,
        self::BANK,
        self::IFSC,
        self::BRANCH,
        self::PAN,
        self::STATUS,
        self::POSITION
    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }



}
