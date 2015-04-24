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
                <div class="singleTop">
                    <div id="carouselFull" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#carouselFull" data-slide-to="0" class="active"></li>
                            <li data-target="#carouselFull" data-slide-to="1"></li>
                            <li data-target="#carouselFull" data-slide-to="2"></li>
                            <li data-target="#carouselFull" data-slide-to="3"></li>
                        </ol>
                        <div class="carousel-inner">
                            <div class="item active">
                                <img src="images/prop/4-1.png" alt="First slide">
                                <div class="container">
                                    <div class="carousel-caption">
                                        
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <img src="images/prop/4-2.png" alt="Second slide">
                                <div class="container">
                                    <div class="carousel-caption">
                                        
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <img src="images/prop/4-3.png" alt="Third slide">
                                <div class="container">
                                    <div class="carousel-caption">
                                        
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <img src="images/prop/4-4.png" alt="Fourth slide">
                                <div class="container">
                                    <div class="carousel-caption">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        <a class="left carousel-control" href="#carouselFull" role="button" data-slide="prev"><span class="fa fa-chevron-left"></span></a>
                        <a class="right carousel-control" href="#carouselFull" role="button" data-slide="next"><span class="fa fa-chevron-right"></span></a>
                    </div>
                    <div class="summary">
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
                                <div class="summaryItem">
                                    <h1 class="pageTitle">Modern Residence in New York</h1>
                                    <div class="address"><span class="icon-pointer"></span> 39 Remsen St, Brooklyn, NY 11201, USA</div>
                                    <ul class="rating">
                                        <li><a href="#"><span class="fa fa-star"></span></a></li>
                                        <li><a href="#"><span class="fa fa-star"></span></a></li>
                                        <li><a href="#"><span class="fa fa-star"></span></a></li>
                                        <li><a href="#"><span class="fa fa-star"></span></a></li>
                                        <li><a href="#"><span class="fa fa-star-o"></span></a></li>
                                        <li>(146)</li>
                                    </ul>
                                    <div class="favLink"><a href="#"><span class="icon-heart"></span></a>54</div>
                                    <ul class="stats">
                                        <li><span class="icon-eye"></span> 200</li>
                                        <li><span class="icon-bubble"></span> 13</li>
                                    </ul>
                                    <div class="clearfix"></div>
                                    <ul class="features">
                                        <li><span class="fa fa-moon-o"></span><div>2 Bedrooms</div></li>
                                        <li><span class="icon-drop"></span><div>2 Bathrooms</div></li>
                                        <li><span class="icon-frame"></span><div>2750 Sq Ft</div></li>
                                    </ul>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                                <div class="agentAvatar summaryItem">
                                     <div class="clearfix"></div>
                                    <img class="avatar agentAvatarImg" src="images/avatar-2.png" alt="avatar">
                                    <div class="agentName">Jane Smith</div>
                                    <a data-toggle="modal" href="#contactAgent" class="btn btn-lg btn-round btn-green contactBtn">Contact Agent</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="clearfix"></div>
                <div class="description">
                    <h3>Description</h3>
                    <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>
                </div>

            </div>

            <div class="clearfix"></div>
        </div>

        <div class="modal fade" id="contactAgent" role="dialog" aria-labelledby="contactLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title" id="contactLabel">Contact Agent</h4>
                    </div>
                    <div class="modal-body">
                        <form class="contactForm">
                            <div class="row">
                                <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 cfItem">
                                    <input type="text" placeholder="Name" class="form-control">
                                 </div>
                                <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 cfItem">
                                    <input type="text" placeholder="Email" class="form-control">
                                </div>
                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 cfItem">
                                    <input type="text" placeholder="Subject" class="form-control">
                                </div>
                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 cfItem">
                                    <textarea placeholder="Message" rows="3" class="form-control"></textarea>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <a href="#" data-dismiss="modal" class="btn btn-round btn-o btn-gray">Close</a>
                        <a href="#" class="btn btn-round btn-green">Send message</a>
                    </div>
                </div>
            </div>
        </div>

        <script src="js/jquery-2.1.1.min.js"></script>
        <script src="js/jquery-ui.min.js"></script>
        <script src="js/jquery-ui-touch-punch.js"></script>
        <script src="js/jquery.placeholder.js"></script>
        <script src="js/bootstrap.js"></script>
        <script src="js/jquery.touchSwipe.min.js"></script>
        <script src="js/jquery.slimscroll.min.js"></script>
        <script src="js/jquery.visible.js"></script>
        <script src="http://maps.googleapis.com/maps/api/js?sensor=true&amp;libraries=geometry&amp;libraries=places" type="text/javascript"></script>
        <script src="js/infobox.js"></script>
        <script src="js/jquery.tagsinput.min.js"></script>
        <script src="js/bootstrap-datepicker.js"></script>
        <script src="js/single.js" type="text/javascript"></script>
    </body>
</html>