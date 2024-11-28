
<div class="navbar navbar-inverse set-radius-zero" >
        <div class="container">
            <div class="navbar-header">
                
                <a class="navbar-brand">

                    <img src="assets/img/logo_final.jpeg" style="height: 82px; position: relative; bottom: 13px; right:25px" />
                </a>

            </div>
<?php if($_SESSION['login'])
{
?> 
            <div class="right-div">
                <a href="logout.php" class="btn btn-danger pull-right">Déconnexion</a>
            </div>
            <?php }?>
        </div>
    </div>
    <!-- LOGO HEADER END-->
<?php if($_SESSION['login'])
{
?>    
<section class="menu-section">
        <div class="container">
            <div class="row ">
                <div class="col-md-12">
                    <div class="navbar-collapse collapse " style="background-color: rgba(171, 103, 26, 1); width:1300px; position: relative; right: 90px">
                        <ul id="menu-top" class="nav navbar-nav navbar-right">
                            <li><a href="dashboard.php" class="menu-top-active" style="background-color: rgba(171, 103, 26, 1);color:white">Acceuil</a></li>
                            <li><a href="issued-books.php" style="background-color: rgba(171, 103, 26, 1);color:white">Livres Empruntés</a></li>
                             <li>
                                <a href="#" class="dropdown-toggle" id="ddlmenuItem" data-toggle="dropdown" style="background-color: rgba(171, 103, 26, 1);color:white"> Compte <i class="fa fa-angle-down"></i></a>
                                <ul class="dropdown-menu" role="menu" aria-labelledby="ddlmenuItem">
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="my-profile.php">Mon Profile</a></li>
                                     <li role="presentation"><a role="menuitem" tabindex="-1" href="change-password.php">Changer Mot De Passe</a></li>
                                </ul>
                            </li>

                        </ul>
                    </div>
                </div>

            </div>
        </div>
    </section>
    <?php } else { ?>
        <section class="menu-section">
        <div class="container">
            <div class="row ">
                <div class="col-md-12">
                    <div class="navbar-collapse collapse " style="background-color: rgba(171, 103, 26, 1); width:1300px; position: relative; right: 90px">
                        <ul id="menu-top" class="nav navbar-nav navbar-right">                        
                          
      <li><a href="index.php" style="background-color: rgba(171, 103, 26, 1); color:white; position: relative; right:30px" >Home</a></li>
      
                            <li><a href="signup.php" style="background-color: rgba(171, 103, 26, 1); color:white; position: relative; right:30px">User Signup</a></li>
                         
                            <li><a href="adminlogin.php" style="background-color: rgba(171, 103, 26, 1); color:white; position: relative; right:30px">Admin Login</a></li>

                        </ul>
                    </div>
                </div>

            </div>
        </div>
    </section>

    <?php } ?>