<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Page title -->
    <title>HOMER | WebApp admin theme</title>

    <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
    <!--<link rel="shortcut icon" type="image/ico" href="favicon.ico" />-->

    <!-- Vendor styles -->
    <link rel="stylesheet" href="../assets/vendor/fontawesome/css/font-awesome.css"/>
    <link rel="stylesheet" href="../assets/vendor/metisMenu/dist/metisMenu.css"/>
    <link rel="stylesheet" href="../assets/vendor/animate.css/animate.css"/>
    <link rel="stylesheet" href="../assets/vendor/bootstrap/dist/css/bootstrap.css"/>

    <!-- App styles -->
    <link rel="stylesheet" href="../assets/fonts/pe-icon-7-stroke/css/pe-icon-7-stroke.css"/>
    <link rel="stylesheet" href="../assets/fonts/pe-icon-7-stroke/css/helper.css"/>
    <link rel="stylesheet" href="../assets/styles/style.css">

</head>

<body class="blank">

<!-- Simple splash screen-->
<div class="splash">
    <div class="color-line"></div>
    <div class="splash-title">
        <h1>Homer - Responsive Admin Theme</h1>
        <p>Special Admin Theme for small and medium webapp with very clean and aesthetic style and feel.</p>
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

<div class="color-line"></div>

<div class="login-container">
    <div class="row">
        <div class="col-md-12">
            <div class="text-center m-b-md">
                <h3>PLEASE LOGIN TO APP</h3>
                <small>This is the best app ever!</small>
            </div>

            <div class="hpanel">
                <div class="panel-body">

                    <g:if test='${flash.message}'>
                        <br/>
                        <div class="alert alert-danger alert-dismissable">
                            <button aria-hidden="true" data-dismiss="alert" class="close" type="button">×</button>
                            El usuario y/o la contraseña no son válidos.
                        </div>
                    </g:if>

                    <p>Ingresa tu Usuario y Contraseña</p>
                    <form action="${postUrl ?: 'authenticate'}" method="POST" id="loginForm" autocomplete="off" class="m-t" role="form">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Usuario" name="${usernameParameter ?: 'username'}" id="username"/>
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" placeholder="Contraseña" name="${passwordParameter ?: 'password'}" id="password">
                        </div>
                        <button type="submit" class="btn btn-primary block full-width m-b center-block"
                                value="${message(code: 'springSecurity.login.button')}">Ingresar</button>
                    </form>

                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12 text-center">
            <strong>Nuuptech</strong> - Sistema de Administración de Gastos  <br/> 2017 Copyright 
        </div>
    </div>
</div>


<!-- Vendor scripts -->
<script src="../assets/vendor/jquery/dist/jquery.min.js"></script>
<script src="../assets/vendor/jquery-ui/jquery-ui.min.js"></script>
<script src="../assets/vendor/slimScroll/jquery.slimscroll.min.js"></script>
<script src="../assets/vendor/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="../assets/vendor/metisMenu/dist/metisMenu.min.js"></script>
<script src="../assets/vendor/iCheck/icheck.min.js"></script>
<script src="../assets/vendor/sparkline/index.js"></script>

<!-- App scripts -->
<script src="../assets/scripts/homer.js"></script>

</body>
</html>