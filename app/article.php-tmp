<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class article extends Model {
	protected $table = "article";
	public function product() {
		return $this->hasMany('App\product', 'id_product', 'ID');
	}
}
