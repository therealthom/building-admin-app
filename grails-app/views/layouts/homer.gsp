<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>

    <!-- Page title -->
    <title>HOMER | WebApp admin theme</title>

    <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
    <!--<link rel="shortcut icon" type="image/ico" href="favicon.ico" />-->

    <!-- Vendor styles -->
    <link rel="stylesheet" href="/building-admin-app/assets/vendor/fontawesome/css/font-awesome.css"/>
    <link rel="stylesheet" href="/building-admin-app/assets/vendor/metisMenu/dist/metisMenu.css"/>
    <link rel="stylesheet" href="/building-admin-app/assets/vendor/animate.css/animate.css"/>
    <link rel="stylesheet" href="/building-admin-app/assets/vendor/bootstrap/dist/css/bootstrap.css"/>

    <!-- App styles -->
    <link rel="stylesheet" href="/building-admin-app/assets/fonts/pe-icon-7-stroke/css/pe-icon-7-stroke.css"/>
    <link rel="stylesheet" href="/building-admin-app/assets/fonts/pe-icon-7-stroke/css/helper.css"/>
    <link rel="stylesheet" href="/building-admin-app/assets/styles/style.css">


    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <g:layoutHead/>
</head>

<body>

    <!-- Simple splash screen-->
    <div class="splash">
        <div class="color-line"></div>
        <div class="splash-title">
            <h1>Homer - Responsive Admin Theme</h1>
            <p>Special AngularJS Admin Theme for small and medium webapp with very clean and aesthetic style and feel.</p>
            <div class="spinner">
                <div class="rect1"></div>
                <div class="rect2"></div>
                <div class="rect3"></div>
                <div class="rect4"></div>
                <div class="rect5"></div>
            </div>
        </div>
    </div>

    <!--[if lt IE 7]>
    <p class="alert alert-danger">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->

    <!-- Header -->
    <div id="header">
        <div class="color-line">
        </div>

        <div id="logo" class="light-version">
            <span>
                APP NAME
            </span>
        </div>
        <nav role="navigation">
            <div class="header-link hide-menu"><i class="fa fa-bars"></i></div>

            <div class="small-logo">
                <span class="text-primary">APP NAME</span>
            </div>

            <form role="search" class="navbar-form-custom" method="post" action="#">
                <div class="form-group">
                    <input type="text" placeholder="Search something special" class="form-control" name="search">
                </div>
            </form>

            <div class="mobile-menu">
                <button type="button" class="navbar-toggle mobile-menu-toggle" data-toggle="collapse"
                        data-target="#mobile-collapse">
                    <i class="fa fa-chevron-down"></i>
                </button>

                <div class="collapse mobile-navbar" id="mobile-collapse">
                    <ul class="nav navbar-nav">
                        <li>
                            <a class="" href="#">Link</a>
                        </li>
                        <li>
                            <a class="" href="#">Link</a>
                        </li>
                    </ul>
                </div>
            </div>

            <div class="navbar-right">
                <ul class="nav navbar-nav no-borders">
                    <li>
                        <a href="#">
                            <i class="pe-7s-upload pe-rotate-90"></i>
                        </a>
                    </li>
                </ul>
            </div>
        </nav>
    </div>

    <!-- Navigation -->
    <aside id="menu">
        <div id="navigation">
            <div class="profile-picture">

                <div class="stats-label text-color">
                    <span class="font-extra-bold font-uppercase">Username</span>

                    <div class="dropdown">
                        <a class="dropdown-toggle" href="#" data-toggle="dropdown">
                            <small class="text-muted">Links <b class="caret"></b></small>
                        </a>
                        <ul class="dropdown-menu animated flipInX m-t-xs">
                            <li><a href="#">Example link</a></li>
                            <li><a href="#">Example link</a></li>
                        </ul>
                    </div>

                </div>
            </div>

            <ul class="nav" id="side-menu">
                <li class="active">
                <li><g:link controller="main">Inicio</g:link></li>
                </li>
                <li>
                    <a href="#"><span class="nav-label">Administración</span><span class="fa arrow"></span> </a>
                    <ul class="nav nav-second-level">
                        <li><g:link controller="unidad">Unidades</g:link></li>
                        <li><g:link controller="construccion">Construcciones</g:link></li>
                        <li><g:link controller="persona">Personas</g:link></li>
                        <li><g:link controller="titularDeConstruccion">Titular de la Construcción</g:link></li>
                        <li><g:link controller="ingresoPorConstruccion">Ingreso por Construcción</g:link></li>
                        <li><g:link controller="egresoPorUnidad">Egreso por Unidad</g:link></li>
                    </ul>
                </li>
                <li>
                    <a href="#"><span class="nav-label">Catálogos</span><span class="fa arrow"></span> </a>
                    <ul class="nav nav-second-level">
                        <li><g:link controller="tipoDeUnidad">Tipo de Unidad</g:link></li>
                        <li><g:link controller="tipoDeConstruccion">Tipo de Construcción</g:link></li>
                        <li><g:link controller="tipoDeIngreso">Tipo de Ingreso</g:link></li>
                        <li><g:link controller="tipoDeEgreso">Tipo de Egreso</g:link></li>
                    </ul>
                </li>
            </ul>
        </div>
    </aside>

    <!-- Main Wrapper -->
    <div id="wrapper">

        <div class="content animate-panel">
            <div class="row">
                <div class="col-lg-12">
                    <div class="hpanel">
                        <div class="panel-heading">
                            <div class="panel-tools">
                                <a class="showhide"><i class="fa fa-chevron-up"></i></a>
                                <a class="closebox"><i class="fa fa-times"></i></a>
                            </div>
                            Title
                        </div>

                        <div class="panel-body">
                            <g:layoutBody/>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Footer-->
        <footer class="footer">
            <span class="pull-right">
                Example text
            </span>
            Company 2016
        </footer>

    </div>

    <!-- Vendor scripts -->
    <script src="/building-admin-app/assets/vendor/jquery/dist/jquery.min.js"></script>
    <script src="/building-admin-app/assets/vendor/slimScroll/jquery.slimscroll.min.js"></script>
    <script src="/building-admin-app/assets/vendor/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="/building-admin-app/assets/vendor/metisMenu/dist/metisMenu.min.js"></script>

    <!-- App scripts -->

    <asset:javascript src="homer.js"/>

</body>
</html>
