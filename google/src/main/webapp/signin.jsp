<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
        <title>reales | real estate web application</title>

        <link href="css/font-awesome.css" rel="stylesheet">
        <link href="css/simple-line-icons.css" rel="stylesheet">
        <link href="css/fullscreen-slider.css" rel="stylesheet">
        <link href="css/bootstrap.css" rel="stylesheet">
        <link href="css/app.css" rel="stylesheet">

        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body class="notransition black">
        <div id="page-container">
            <ul class="cb-slideshow">
                <li><span></span></li>
                <li><span></span></li>
                <li><span></span></li>
                <li><span></span></li>
                <li><span></span></li>
                <li><span></span></li>
            </ul>
        </div>

        <div class="modal fade" id="signin" role="dialog" aria-labelledby="signinLabel" aria-hidden="true">
            <div class="modal-dialog modal-sm">
                <div class="signLogo osLight"><span class="fa fa-home"></span> Reales</div>
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="signinLabel">Sign In</h4>
                    </div>
                    <div class="modal-body">
                        <form role="form">
                           
                            <div class="form-group">
                                <input type="text" placeholder="Login" class="form-control">
                            </div>
                            <div class="form-group">
                                <input type="password" placeholder="Password" class="form-control">
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-xs-6">
                                        <div class="checkbox custom-checkbox"><label><input type="checkbox"><span class="fa fa-check"></span> Remember me</label></div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="btn-group-justified">
                                    <a href="explore.jsp" class="btn btn-lg btn-green">Sign In</a>
                                </div>
                            </div>
  
                        </form>
                    </div>
                </div>
                <div class="signFooter">Real estate web application<br>&copy; 2014</div>
            </div>
        </div>

        <script src="js/jquery-2.1.1.min.js"></script>
        <script src="js/jquery-ui.min.js"></script>
        <script src="js/jquery-ui-touch-punch.js"></script>
        <script src="js/jquery.placeholder.js"></script>
        <script src="js/bootstrap.js"></script>
        <script src="js/jquery.touchSwipe.min.js"></script>
        <script src="js/jquery.visible.js"></script>
        <script src="js/signin.js" type="text/javascript"></script>
    </body>
</html>