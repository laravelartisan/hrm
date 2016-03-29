<?php

namespace Erp\Models\Shift;

use Illuminate\Database\Eloquent\Model;

class ShiftTranslation extends Model
{
    const NAME = 'name';

    public $timestamps = false;

    protected $fillable = [self::NAME];
}
