<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
        <title>reales | real estate web application</title>

        <link href="css/font-awesome.css" rel="stylesheet">
        <link href="css/simple-line-icons.css" rel="stylesheet">
        <link href="css/jquery-ui.css" rel="stylesheet">
        <link href="css/datepicker.css" rel="stylesheet">
        <link href="css/fileinput.min.css" rel="stylesheet">
        <link href="css/bootstrap.css" rel="stylesheet">
        <link href="css/app.css" rel="stylesheet">

        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body class="notransition">

        <!-- Header -->

        <div id="header">
            <div class="logo">
                <a href="index.jsp">
                    <span class="fa fa-home marker"></span>
                    <span class="logoText">reales</span>
                </a>
            </div>
            <a href="#" class="navHandler"><span class="fa fa-bars"></span></a>
            <div class="search">
                <span class="searchIcon icon-magnifier"></span>
                <input type="text" placeholder="Search for places...">
            </div>
            <div class="headerUserWraper">
                <a href="#" class="userHandler dropdown-toggle" data-toggle="dropdown"><span class="icon-user"></span><span class="counter">5</span></a>
                <a href="#" class="headerUser dropdown-toggle" data-toggle="dropdown">
                    <img class="avatar headerAvatar pull-left" src="images/avatar-1.png" alt="avatar">
                    <div class="userTop pull-left">
                        <span class="headerUserName">Admin</span> <span class="fa fa-angle-down"></span>
                    </div>
                    <div class="clearfix"></div>
                </a>
                <div class="dropdown-menu pull-right userMenu" role="menu">
                    <div class="mobAvatar">
                        <img class="avatar mobAvatarImg" src="images/avatar-1.png" alt="avatar">
                        <div class="mobAvatarName">Admin</div>
                    </div>
                    <ul>
                        <li><a href="#"><span class="icon-settings"></span>Settings</a></li>
                        <li class="divider"></li>
                        <li><a href="#"><span class="icon-power"></span>Logout</a></li>
                    </ul>
                </div>
            </div>

               
            <a href="#" class="mapHandler"><span class="icon-map"></span></a>
            <div class="clearfix"></div>
        </div>

        <!-- Left Side Navigation -->

        <div id="leftSide">
            <nav class="leftNav scrollable">
                <div class="search">
                    <span class="searchIcon icon-magnifier"></span>
                    <input type="text" placeholder="Search for houses, apartments...">
                    <div class="clearfix"></div>
                </div>
                <ul>
                    <li><a href="explore.jsp"><span class="navIcon icon-compass"></span><span class="navLabel">Explore</span></a></li>
                    <li><a href="single.jsp"><span class="navIcon icon-home"></span><span class="navLabel">Single</span></a></li>
                    <li><a href="add.jsp"><span class="navIcon icon-plus"></span><span class="navLabel">New</span></a></li>
                    
                
                    <li class="hasSub">
                        <a href="#"><span class="navIcon icon-link"></span><span class="navLabel">Pages</span><span class="fa fa-angle-left arrowRight"></span></a>
                        <ul>
                            <li><a href="signin.jsp">Sign In</a></li>
                            <li><a href="index.jsp">Homepage</a></li>
							<li><a href="explore.jsp">Explore</a></li>
							<li><a href="add.jsp">Add</a></li>
							<li><a href="single.jsp">Single</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>

        </div>
        <div class="closeLeftSide"></div>

        <!-- Content -->

        <div id="wrapper">
            <div id="mapView" class="mob-min"><div class="mapPlaceholder"><span class="fa fa-spin fa-spinner"></span> Loading map...</div></div>
            <div id="content" class="mob-max">
                <div class="rightContainer">
                    <h1>List a New Property</h1>
                    <form role="form">
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
                                <div class="form-group">
                                    <label>Title</label>
                                    <input type="text" class="form-control">
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                                <div class="form-group">
                                    <label>Price</label>
                                    <div class="input-group">
                                        <div class="input-group-addon">$</div>
                                        <input class="form-control" type="text">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Description</label>
                            <textarea class="form-control" rows="4"></textarea>
                        </div>
                        <div class="form-group">
                            <label>Address <span id="latitude" class="label label-default"></span> <span id="longitude" class="label label-default"></span></label>
                            <input class="form-control" type="text" id="address" placeholder="Enter a Location" autocomplete="off">
                            <p class="help-block">You can drag the marker to property position</p>
                        </div>
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
                                <div class="form-group">
                                    <label>Bedrooms</label>
                                    <input type="text" class="form-control">
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
                                <div class="form-group">
                                    <label>Bathrooms</label>
                                    <input type="text" class="form-control">
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
                                <div class="form-group">
                                    <label>Area</label>
                                    <div class="input-group">
                                        <input class="form-control" type="text">
                                        <div class="input-group-addon">Sq Ft</div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
                                <div class="btn-group">
                                    <label>Type</label>
                                    <div class="clearfix"></div>
                                    <a href="#" data-toggle="dropdown" class="btn btn-default dropdown-toggle">
                                        <span class="dropdown-label">For Sale</span>&nbsp;&nbsp;&nbsp;<span class="caret"></span>
                                    </a>
                                    <ul class="dropdown-menu dropdown-select">
                                        <li class="active"><input type="radio" name="ptype" checked="checked"><a href="#">For Sale</a></li>
                                        <li><input type="radio" name="ptype"><a href="#">For Rent</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                <div class="form-group">
                                    <label>Image Gallery</label>
                                    <input type="file" class="file" multiple data-show-upload="false" data-show-caption="false" data-show-remove="false" accept="image/jpeg,image/png" data-browse-class="btn btn-o btn-default" data-browse-label="Browse Images">
                                    <p class="help-block">You can select multiple images at once</p>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                                <div class="form-group">
                                    <label>Amenities</label>
                                    <div class="checkbox custom-checkbox"><label><input type="checkbox"><span class="fa fa-check"></span> Garage</label></div>
                                    <div class="checkbox custom-checkbox"><label><input type="checkbox"><span class="fa fa-check"></span> Security System</label></div>
                                    <div class="checkbox custom-checkbox"><label><input type="checkbox"><span class="fa fa-check"></span> Air Conditioning</label></div>
                                    <div class="checkbox custom-checkbox"><label><input type="checkbox"><span class="fa fa-check"></span> Balcony</label></div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                                <div class="form-group">
                                    <label>&nbsp;</label>
                                    <div class="checkbox custom-checkbox"><label><input type="checkbox"><span class="fa fa-check"></span> Outdoor Pool</label></div>
                                    <div class="checkbox custom-checkbox"><label><input type="checkbox"><span class="fa fa-check"></span> Internet</label></div>
                                    <div class="checkbox custom-checkbox"><label><input type="checkbox"><span class="fa fa-check"></span> Heating</label></div>
                                    <div class="checkbox custom-checkbox"><label><input type="checkbox"><span class="fa fa-check"></span> TV Cable</label></div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                                <div class="form-group">
                                    <label>&nbsp;</label>
                                    <div class="checkbox custom-checkbox"><label><input type="checkbox"><span class="fa fa-check"></span> Garden</label></div>
                                    <div class="checkbox custom-checkbox"><label><input type="checkbox"><span class="fa fa-check"></span> Telephone</label></div>
                                    <div class="checkbox custom-checkbox"><label><input type="checkbox"><span class="fa fa-check"></span> Fireplace</label></div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <a href="#" class="btn btn-green btn-lg">Add Property</a>
                        </div>
                    </form>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>

        <script src="js/json2.js"></script>
        <script src="js/jquery-2.1.1.min.js"></script>
        <script src="js/underscore.js"></script>
        <script src="js/moment-2.5.1.js"></script>
        <script src="js/jquery-ui.min.js"></script>
        <script src="js/jquery-ui-touch-punch.js"></script>
        <script src="js/jquery.placeholder.js"></script>
        <script src="js/bootstrap.js"></script>
        <script src="js/jquery.touchSwipe.min.js"></script>
        <script src="js/jquery.slimscroll.min.js"></script>
        <script src="js/jquery.visible.js"></script>
        <script src="http://maps.googleapis.com/maps/api/js?sensor=true&amp;libraries=geometry&amp;libraries=places" type="text/javascript"></script>
        <script src="js/infobox.js"></script>
        <script src="js/clndr.js"></script>
        <script src="js/jquery.tagsinput.min.js"></script>
        <script src="js/bootstrap-datepicker.js"></script>
        <script src="js/fileinput.min.js"></script>
        <script src="js/app.js"></script>
        <script src="js/calendar.js"></script>
    </body>
</html>