<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\User;


class Customer extends Model
{
    public function users()
    {
        return $this->belongsTo(User::class);
    }
}
