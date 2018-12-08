<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Marketplace extends Model {
	protected $table = "marketplace";
	public function product{
		return $this->hasMany('App\product','marketplace','ID');

	}
}
