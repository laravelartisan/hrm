<?php

namespace Erp\Models\Holydays;

use Illuminate\Database\Eloquent\Model;
use Erp\Models\Holydays\Holyday;

class HolyDayType extends Model
{
    const TYPE = 'type';
    const STATUS = 'status_id';
    const POSITION = 'position';


    public $timestamps = false;

    protected $fillable = [
        self::TYPE,
        self::STATUS,
        self::POSITION
    ];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function holydays()
    {
        return $this->hasMany(Holyday::class);
    }
}
