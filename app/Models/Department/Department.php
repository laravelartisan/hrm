<?php

namespace Erp\Models\Department;

use Erp\Models\Company\Company;
use Erp\Models\Designation\Designation;
use Erp\Models\Shift\Shift;
use Illuminate\Database\Eloquent\Model;
use Erp\Models\User\User;

class Department extends Model
{

   public $timestamps = false;

   const NAME = 'name';
    const STATUS = 'status';
   const POSITION = 'position';

   protected $fillable = [self::NAME,self::STATUS,self::POSITION];


    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function company()
    {
       return $this->belongsTo(Company::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function users()
    {
        return $this->hasMany(User::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function designations()
    {
        return $this->hasMany(Designation::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsToMany
     */
    public function shifts()
    {
        return $this->belongsToMany(Shift::class);
    }
}
