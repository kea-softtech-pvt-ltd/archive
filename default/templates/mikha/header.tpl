<!DOCTYPE html>
<html lang="en">

  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <meta name="description" content="mikha is responsive html real estate theme">
    <meta name="author" content="afriq yasin ramadhan">
    <link rel="shortcut icon" href="{$siteroot}/mikha/img/favicon.png">

    <title>Mikha</title>

    <!-- Bootstrap core CSS -->
    <link href="{$siteroot}/mikha/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,600,800' rel='stylesheet' type='text/css'>
    <link href="{$siteroot}/mikha/css/font-awesome.min.css" rel="stylesheet">
    <link href="{$siteroot}/mikha/css/style.css" rel="stylesheet">
    <link href="{$siteroot}/mikha/css/responsive.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="{$siteroot}/mikha/js/html5shiv.js"></script>
      <script src="{$siteroot}/mikha/js/respond.min.js"></script>
    <![endif]-->
  </head>

  <body id="top">

    <!-- begin:topbar -->
    <div class="topbar">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <ul class="topbar-nav topbar-left">
              <li class="disabled"><a href="#"><i class="fa fa-envelope"></i> info@mikha.com</a></li>
              <li class="disabled"><a href="#"><i class="fa fa-phone"></i> (+62) - 1234567890</a></li>
            </ul>
            <ul class="topbar-nav topbar-right hidden-xs">
              <li><a href="#"><i class="fa fa-twitter"></i></a></li>
              <li><a href="#"><i class="fa fa-facebook"></i></a></li>
              <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
              <li><a href="#"><i class="fa fa-youtube"></i></a></li>
              <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
              <li><a href="#"><i class="fa fa-instagram"></i></a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <!-- end:topbar -->

    <!-- begin:navbar -->
    <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
      <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-top">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.html"><img src="{$siteroot}/mikha/img/logo.png" alt="mikha"><!-- <span>MIKHA</span> --></a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="navbar-top">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="index.php">Home</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Property <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="search">Search (Grid View)</a></li>
                <li><a href="search_list">Search (List View)</a></li>
                <li class="active"><a href="category">Category (Grid View)</a></li>
                <li><a href="category_list">Category (List View)</a></li>
                <li><a href="single?id=1">Single page</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Pages <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="blog">Blog Archive</a></li>
                <li><a href="blog_single">Blog Single</a></li>
                <li><a href="about">About</a></li>
                <li><a href="contact">Contact</a></li>
              </ul>     
            </li>
            {if ($smarty.session.role != 4)}
            <li><a href="modal-signin" class="signin" data-toggle="modal" data-target="#modal-signin">Sign in</a></li>
            <li><a href="#modal-signup" class="signup" data-toggle="modal" data-target="#modal-signup">Sign up</a></li>
            {/if}
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <i class="fa fa-ellipsis-v"></i></a>
              <ul class="dropdown-menu">
                <li><a href="#" class="logout" data-toggle="modal" data-target="#modal-logout">Logout</a></li>
                <li><a href="modal-signin" class="signin" data-toggle="modal" data-target="#modal-signin">Sign in</a></li>
                <li><a href="#modal-signup" class="signin" data-toggle="modal" data-target="#modal-signup">Sign up</a></li>
              </ul>     
            </li>
            {* {$userMessage} *}
            <li><a style="color:#ffffff" href="message"><span>4  </span> <b><i class="	fa fa-envelope"> </i></b></a></li>
            {* <li><a href="#" class="logout" data-toggle="modal" data-target="#modal-logout">logout</a></li> *}
            {if ($smarty.session.role == 4)}
             <li><a style="color:#ffffff"><b><i class="	fa fa-dot-circle-o text-success"></i></b> {$smarty.session.username}</a></li>
            {elseif ($smarty.session.role != 4)}
            <li><a href="">User</a></li>
            {/if}
            
             {* {if ($smarty.session.role != 4)}
                   user
                   {elseif ($smarty.session.role == 4) }
                {$smarty.session.username}
				{/if} *}
     
             
            {* {if isset($smarty.session.username) && $smarty.session.username != username}
     { user }
{elseif $smarty.session.role == 4}
     { $smarty.session.role }
{/if} *}


{* {if $smarty.session.username == $smarty.session.username} 
  {$smarty.session.username}
  {elseif $smarty.session.username != username}

   user

{/if} *}

{* {if $smarty.session.username != $smarty.session.username }
sdfg
{else}
{$smarty.session.username}
{/if} *}


					<!-- /Message Notifications -->
      </ul>
        </div><!-- /.navbar-collapse -->
      </div><!-- /.container -->
    </nav>
    <!-- end:navbar -->