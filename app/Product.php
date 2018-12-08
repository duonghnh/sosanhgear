<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model {
	protected $table = "product";
	public function category() {
		return $this->belongsTo('App\category', 'category', 'ID');
	}
	public function marketplace() {
		return $this->belongsTo('App\marketplace', 'marketplace', 'ID');
	}
	public function product_article() {
		return $this->hasMany('App\product_article', 'ID_article', 'ID');
	}
}
