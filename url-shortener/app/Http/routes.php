<?php
//use Illuminate\Support\Facades\Input;
/*
|--------------------------------------------------------------------------
| Routes File
|--------------------------------------------------------------------------
|
| Here is where you will register all of the routes in an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/', function () {
        return view('welcome');
});
Route::get('/ajax-shorted',function(){
    $url=Input::get('val');
   
    // Validate the url
    $validation = Validator::make(array('url'=>$url),array('url' => 'required|url'));
    if($validation->fails())
    {
        $msg= $validation->errors();
        return 'error~'.$msg->first('url');
    }
    
    // If the url is already in the table, return it
    $record= DB::table('urls')->where('url', $url)->value('shortened'); 
	if ( $record ) {
	   $uri = url()->previous();
		return 'success~'.$uri.$record;
	}
    
    // Otherwise, add a new row, and return the shortened url
	function get_unique_short_url()
	{
		$shortened = str_pad( base_convert( mt_rand(0, ( 255*255*255) ), 10, 16 ), 6, '0' );
        $chk=DB::table('urls')->where('shortened', $shortened)->value('shortened');
        if($chk)
        {
            get_unique_short_url();
        }
		return $shortened;
	}
    
    $row = DB::table('urls')->insert(['url'=> $url,'shortened'=>get_unique_short_url()]);  
    if($row)
    {
        $uri = url()->previous();
        //dd($uri);
        $record= DB::table('urls')->where('url', $url)->value('shortened'); 
        return 'success~'.$uri.$record;
    }
});

Route::get('/{shortened}', function($shortened)
{
	//dd($shortened);
    // query the DB for the row with that short url
	$row = DB::table('urls')->where('shortened', $shortened)->value('url');

	// if not found, redirect to home page
	if ( is_null($row) ) return redirect('/');

	// Otherwise, fetch the URL, and redirect.
	return redirect()->to($row);
});

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| This route group applies the "web" middleware group to every route
| it contains. The "web" middleware group is defined in your HTTP
| kernel and includes session state, CSRF protection, and more.
|
*/

Route::group(['middleware' => ['web']], function () {
    //
});
