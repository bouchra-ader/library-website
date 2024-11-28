<div class="navbar navbar-inverse set-radius-zero" >
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand">

                    <img src="assets/img/logo_final.jpeg" style="height: 82px; position: relative; bottom: 13px; right:25px"/>
                </a>

            </div>

            <div class="right-div">
                <a href="logout.php" class="btn btn-danger pull-right">Déconnexion</a>
            </div>
        </div>
    </div>
    <!-- LOGO HEADER END-->
    <section class="menu-section">
        <div class="container">
            <div class="row ">
                <div class="col-md-12">
                    <div class="navbar-collapse collapse " style="background-color: rgba(171, 103, 26, 1); width:1300px; position: relative; right: 90px">
                        <ul id="menu-top" class="nav navbar-nav navbar-right">
                            <li><a href="dashboard.php" class="menu-top-active" style="background-color: rgba(171, 103, 26, 1); color:white">Accueil</a></li>
                           
                            <li>
                                <a href="#" class="dropdown-toggle" id="ddlmenuItem" data-toggle="dropdown" style="background-color: rgba(171, 103, 26, 1); color:white"> Catégories <i class="fa fa-angle-down"></i></a>
                                <ul class="dropdown-menu" role="menu" aria-labelledby="ddlmenuItem">
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="add-category.php" >Ajouter Catégorie</a></li>
                                     <li role="presentation"><a role="menuitem" tabindex="-1" href="manage-categories.php">Gérer Categories</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#" class="dropdown-toggle" id="ddlmenuItem" data-toggle="dropdown" style="background-color: rgba(171, 103, 26, 1); color:white"> Auteurs <i class="fa fa-angle-down"></i></a>
                                <ul class="dropdown-menu" role="menu" aria-labelledby="ddlmenuItem">
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="add-author.php">Ajouter Auteur</a></li>
                                     <li role="presentation"><a role="menuitem" tabindex="-1" href="manage-authors.php">Gérer les  Auteurs</a></li>
                                </ul>
                            </li>
 <li>
                                <a href="#" class="dropdown-toggle" id="ddlmenuItem" data-toggle="dropdown" style="background-color: rgba(171, 103, 26, 1); color:white"> Livres <i class="fa fa-angle-down"></i></a>
                                <ul class="dropdown-menu" role="menu" aria-labelledby="ddlmenuItem">
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="add-book.php">Ajouter Livres</a></li>
                                     <li role="presentation"><a role="menuitem" tabindex="-1" href="manage-books.php">Gérer les livres</a></li>
                                </ul>
                            </li>

                           <li>
                                <a href="#" class="dropdown-toggle" id="ddlmenuItem" data-toggle="dropdown" style="background-color: rgba(171, 103, 26, 1); color:white"> Livres Empruntés <i class="fa fa-angle-down"></i></a>
                                <ul class="dropdown-menu" role="menu" aria-labelledby="ddlmenuItem">
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="issue-book.php">Emprunter nouveau livre</a></li>
                                     <li role="presentation"><a role="menuitem" tabindex="-1" href="manage-issued-books.php">Gérer Livres Empruntés</a></li>
                                </ul>
                            </li>
                             <li><a href="reg-students.php" style="background-color: rgba(171, 103, 26, 1); color:white">Étudiants</a></li>
                    
  <li><a href="change-password.php" style="background-color: rgba(171, 103, 26, 1); color:white">Changer Mot de Passe </a></li>
                        </ul>
                    </div>
                </div>

            </div>
        </div>
    </section>