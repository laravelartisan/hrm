<?php

namespace Erp\Models\Image;

use Erp\Models\User\User;
use Illuminate\Database\Eloquent\Model;

class Photo extends Model
{

    const NAME = 'name';
    const EXTENSION = 'extension';
    const PATH = 'path';


    public $timestamps = false;

    protected $fillable = [
        self::NAME,
        self::EXTENSION,
        self::PATH
    ];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\MorphTo
     */
    public function imageable()
    {
        return $this->morphTo();
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
