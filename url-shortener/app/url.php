<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Url extends Model
{
    //
    public function get_unique_short_url()
	{
		$shortened = base_convert(rand(10000,99999), 10, 36);
		return $shortened;
	}
}
