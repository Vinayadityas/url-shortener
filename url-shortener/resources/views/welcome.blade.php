<!DOCTYPE html>
<html>
    <head>
        <title>Laravel</title>

        <link href="https://fonts.googleapis.com/css?family=Lato:100" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
        <style>
            html, body {
                height: 100%;
            }

            body {
                margin: 0;
                padding: 0;
                width: 100%;
                display: table;
                font-weight: 100;
                font-family: monospace;
            }
            .title {
                text-align: center;
                font-family: Lato;
            }
            .error{
              display: inline-flex;
              color: red;
              
            }
            #shorturl{
                font-family: monospace;
                margin-top: 20px;
                text-align: center;
            }
            .xtra{
                margin-top: 50px;
            }
            .form-horizontal .form-group {
                 margin-right: 30px !important; 
                 margin-left: 30px !important; 
            }
            .bdr{
                border: 1px solid #DDDDDD;
                border-radius: 3px;
                padding: 25px 20px;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="content">
                <h1 class="title">Url Shortener using Laravel 5 | MySql</h1>
                <div class="row xtra">
                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12"></div>
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 bdr">
                        <form class="form-horizontal" method="post">
                            
                            <div class="form-group">
                                <label style="display: inline-flex;" for="url">Enter your complete url :</label>
                                <div class="error"></div>                                
                            </div>
                            <div class="form-group">
                                <input type="text" name="url" class="form-control" size="35" value="" id="url" />
                            </div>
                            <div class="form-group">
                                <input type="button" name="shorten" id="shorten" value="shorten" class="btn" />
                            </div>
                        </form>
                        <div id="shorturl"></div>
                    </div>
                    <div class="col-lg-3 col-md-3 ol-sm-3 col-xs-12"></div>
                </div> 
            </div>
        </div>
    </body>
</html>

<script type="text/javascript">
$(document).ready(function(){
  $('#shorten').click(function(){
    $(".error").html('');
    $("#shorturl").html('');
    var datavalue=$('#url').val();
    $.get('ajax-shorted?val='+datavalue,function(data){
       // console.log(data);
      var extract= data.split('~');
      console.log(extract[0]);
      if(extract[0]=='error')
      {
        $(".error").html('<label>'+extract[1]+'</label>');
      }
      else
      {
        $("#shorturl").html("Here is your short url <a href='"+extract[1]+"' target='_blank' >"+extract[1]+"</a>");
      }
    });
   
  }); 
});
</script>

