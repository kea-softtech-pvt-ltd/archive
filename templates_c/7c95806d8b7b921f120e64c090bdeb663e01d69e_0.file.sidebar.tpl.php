<?php
/* Smarty version 3.1.29, created on 2021-06-02 17:11:05
  from "C:\xampp\htdocs\archive\default\templates\administrator\common\sidebar.tpl" */

if ($_smarty_tpl->smarty->ext->_validateCompiled->decodeProperties($_smarty_tpl, array (
  'has_nocache_code' => false,
  'version' => '3.1.29',
  'unifunc' => 'content_60b76e51b3b616_67645810',
  'file_dependency' => 
  array (
    '7c95806d8b7b921f120e64c090bdeb663e01d69e' => 
    array (
      0 => 'C:\\xampp\\htdocs\\archive\\default\\templates\\administrator\\common\\sidebar.tpl',
      1 => 1622634060,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_60b76e51b3b616_67645810 ($_smarty_tpl) {
?>
<nav class="navbar navbar-expand-lg navbar-dark bg-default fixed-top" id="mainNav">
    <a class="navbar-brand" href="index.html">Flats On Discount</a>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Dashboard">
          <a class="nav-link" href="<?php echo $_smarty_tpl->tpl_vars['adminroot']->value;?>
/dashboard">
            <i class="fa fa-fw fa-home"></i>
            <span class="nav-link-text">Dashboard</span>
          </a>
        </li>
        <?php if ((isset($_SESSION['role']) && $_SESSION['role'] != 3)) {?>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Builder management">
          <a class="nav-link" href="<?php echo $_smarty_tpl->tpl_vars['adminroot']->value;?>
/builder">
            <i class="fa fa-fw fa-address-card"></i>
            <span class="nav-link-text">Builder management</span>
          </a>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Amenities management">
          <a class="nav-link" href="<?php echo $_smarty_tpl->tpl_vars['adminroot']->value;?>
/amenities">
            <i class="fa fa-fw fa-adn"></i>
            <span class="nav-link-text">Amenities management</span>
          </a>
        </li>
      <!---<li class="nav-item" data-toggle="tooltip" data-placement="right" title="Units management">
          <a class="nav-link" href="<?php echo $_smarty_tpl->tpl_vars['adminroot']->value;?>
/units">
            <i class="fa fa-fw fa-yelp"></i>
            <span class="nav-link-text">Units management</span>
          </a>
        </li>--->
         <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Banner management">
          <a class="nav-link" href="<?php echo $_smarty_tpl->tpl_vars['adminroot']->value;?>
/banner">
            <i class="fa fa-fw fa-image"></i>
            <span class="nav-link-text">banner management</span>
          </a>
        </li>
   <!--   <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Wings">
          <a class="nav-link" href="<?php echo $_smarty_tpl->tpl_vars['adminroot']->value;?>
/wing">
            <i class="fa fa-fw fa-delicious"></i>
            <span class="nav-link-text">Add wing</span>
          </a>
        </li>
         <li class="nav-item" data-toggle="tooltip" data-placement="right" title="unit">
          <a class="nav-link" href="<?php echo $_smarty_tpl->tpl_vars['adminroot']->value;?>
/un">
            <i class="fa fa-fw fa-delicious"></i>
            <span class="nav-link-text">Add unit</span>
          </a>
        </li>---->
         <li class="nav-item" data-toggle="tooltip" data-placement="right" title="unit">
          <a class="nav-link" href="<?php echo $_smarty_tpl->tpl_vars['adminroot']->value;?>
/team">
            <i class="fa fa fa-group"></i>
            <span class="nav-link-text">Add Team</span>
          </a>
        </li>
         
         <li class="nav-item" data-toggle="tooltip" data-placement="right" title="unit">
          <a class="nav-link" href="<?php echo $_smarty_tpl->tpl_vars['adminroot']->value;?>
/proType">
            <i class="fa fa-fw fa-delicious"></i>
            <span class="nav-link-text">Add Property Type</span>
          </a>
        </li>
         <li class="nav-item" data-toggle="tooltip" data-placement="right" title="unit">
          <a class="nav-link" href="<?php echo $_smarty_tpl->tpl_vars['adminroot']->value;?>
/contact">
            <i class="fa fa-phone"></i>
            <span class="nav-link-text"> Contact Details</span>
          </a>
        </li>
    <!-- <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Building Type">
          <a class="nav-link" href="<?php echo $_smarty_tpl->tpl_vars['adminroot']->value;?>
/buildingType">
            <i class="fa fa-fw fa-delicious"></i>
            <span class="nav-link-text">Building Type</span>
          </a>
        </li>--->
         <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Neighbourhoods Type">
          <a class="nav-link" href="<?php echo $_smarty_tpl->tpl_vars['adminroot']->value;?>
/neighbourhoods">
            <i class="fa fa-fw fa-building-o"></i>
            <span class="nav-link-text">Neighbourhoods</span>
          </a>
        </li>
         <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Address management">
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseProfile" data-parent="#exampleAccordion">
            <i class="fa fa-fw fa-institution"></i>
            <span class="nav-link-text">Address management</span>
          </a>
          <ul class="sidenav-second-level collapse" id="collapseProfile">
            <li>
              <a href="<?php echo $_smarty_tpl->tpl_vars['adminroot']->value;?>
/country">Add Country</a>
            </li>
			      <li>
              <a href="<?php echo $_smarty_tpl->tpl_vars['adminroot']->value;?>
/state">Add State</a>
            </li>
            <li>
              <a href="<?php echo $_smarty_tpl->tpl_vars['adminroot']->value;?>
/city">Add City</a>
            </li>
          </ul>
        </li>
        <?php }?>
        
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Property management">
          <a class="nav-link" href="<?php echo $_smarty_tpl->tpl_vars['adminroot']->value;?>
/properties">
            <i class="fa fa-fw fa-sitemap"></i>
            <span class="nav-link-text">Property management</span>
          </a>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Customer management">
          <a class="nav-link" href="<?php echo $_smarty_tpl->tpl_vars['adminroot']->value;?>
/customers">
            <i class="fa fa-fw fa-dashboard"></i>
            <span class="nav-link-text">Customer management</span>
          </a>
        </li>
       <!--- <li class="nav-item" data-toggle="tooltip" data-placement="right" title="City management">
          <a class="nav-link" href="<?php echo $_smarty_tpl->tpl_vars['adminroot']->value;?>
/city">
            <i class="fa fa-fw fa-institution"></i>
            <span class="nav-link-text">city management</span>
          </a>
        </li>
         <li class="nav-item" data-toggle="tooltip" data-placement="right" title="State management">
          <a class="nav-link" href="<?php echo $_smarty_tpl->tpl_vars['adminroot']->value;?>
/state">
            <i class="fa fa-fw fa-institution"></i>
            <span class="nav-link-text">State management</span>
          </a>
        </li> --->

        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="My profile">
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseProfile" data-parent="#exampleAccordion">
            <i class="fa fa-fw fa-wrench"></i>
            <span class="nav-link-text">My profile</span>
          </a>
          <ul class="sidenav-second-level collapse" id="collapseProfile">
            <li>
              <a href="<?php echo $_smarty_tpl->tpl_vars['adminroot']->value;?>
/builder/edit?id=<?php echo $_SESSION['id'];?>
">Edit profile</a>
            </li>
			      <li>
              <a href="<?php echo $_smarty_tpl->tpl_vars['adminroot']->value;?>
/builder">Builder profile</a>
            </li>
          </ul>
        </li>
      </ul>
      <ul class="navbar-nav sidenav-toggler">
        <li class="nav-item">
          <a class="nav-link text-center" id="sidenavToggler">
            <i class="fa fa-fw fa-angle-left"></i>
          </a>
        </li>
      </ul>
      <ul class="navbar-nav ml-auto">
          <li class="nav-item">
          <a class="nav-link " title="Link home page" href="https://www.youtube.com/watch?v=YpIdc7KlbQI">
            <i class="fa fa-fw fa-home" style="font-size:20px" ></i>
          </a>

        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle mr-lg-2" id="messagesDropdown" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fa fa-fw fa-envelope"></i>
            <span class="d-lg-none">Messages
              <span class="badge badge-pill badge-primary">12 New</span>
            </span>
            <span class="indicator text-primary d-none d-lg-block">
              <i class="fa fa-fw fa-circle"></i>
            </span>
          </a>
          <div class="dropdown-menu" aria-labelledby="messagesDropdown">
            <h6 class="dropdown-header">New Messages:</h6>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <strong>David Miller</strong>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">Hey there! This new version of SB Admin is pretty awesome! These messages clip off when they reach the end of the box so they don't overflow over to the sides!</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <strong>Jane Smith</strong>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">I was wondering if you could meet for an appointment at 3:00 instead of 4:00. Thanks!</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <strong>John Doe</strong>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">I've sent the final files over to you for review. When you're able to sign off of them let me know and we can discuss distribution.</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item small" href="#">View all messages</a>
          </div>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle mr-lg-2" id="alertsDropdown" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fa fa-fw fa-bell"></i>
            <span class="d-lg-none">Alerts
              <span class="badge badge-pill badge-warning">6 New</span>
            </span>
            <span class="indicator text-warning d-none d-lg-block">
              <i class="fa fa-fw fa-circle"></i>
            </span>
          </a>
          <div class="dropdown-menu" aria-labelledby="alertsDropdown">
            <h6 class="dropdown-header">New Alerts:</h6>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <span class="text-success">
                <strong>
                  <i class="fa fa-long-arrow-up fa-fw"></i>Status Update</strong>
              </span>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">This is an automated server response message. All systems are online.</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <span class="text-danger">
                <strong>
                  <i class="fa fa-long-arrow-down fa-fw"></i>Status Update</strong>
              </span>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">This is an automated server response message. All systems are online.</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <span class="text-success">
                <strong>
                  <i class="fa fa-long-arrow-up fa-fw"></i>Status Update</strong>
              </span>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">This is an automated server response message. All systems are online.</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item small" href="#">View all alerts</a>
          </div>
        </li>
        <li class="nav-item">
      <!--    <form class="form-inline my-2 my-lg-0 mr-lg-2">
            <div class="input-group">
              <input class="form-control search-top" type="text" placeholder="Search for...">
              <span class="input-group-btn">
                <button class="btn btn-primary" type="button">
                  <i class="fa fa-search"></i>
                </button>
              </span>
            </div>
          </form> --->
        </li>
        <li class="nav-item">
          <a class="nav-link" data-toggle="modal" data-target="#exampleModal">
            <i class="fa fa-fw fa-sign-out"></i>Logout</a>
        </li>
      </ul>
    </div>
  </nav><?php }
}
