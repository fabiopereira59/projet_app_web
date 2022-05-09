<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style_accueil.css">
    <title>LeCoinCoin - Accueil</title>
</head>
<body>
    <section class="menu">
        <header class="header">       
            <img class="logo" src="images/logo.jpg" height="50" alt="">
            <nav class="nav">
                <li>
                   <a href="deposerannonce.html" target="_self"><input type="button"class="btn_menu" value="Déposer une annonce"></a>
                </li>

                <li>
                 <input id="searchbar" type="text" name="search" placeholder="Chercher un article...">
                </li>
                <li>
                    <a href="bonjour.jsp" target="_self"><input type="button" class="btn_menu" value="Se connecter"></a>
                </li>
            </nav>
        </header>
    </section> 
    <hr>
    
    <section class="recherche">
        <div class="div_recherche">
            <select class="recherche_item" name="categorie" id="categorie-select">
                <option value="">--Catégorie--</option>
                <option value="meubles">Meubles</option>
                <option value="vetements">Vêtem</option>
                <option value="livresr">Livres</option>
            </select>

            <input id="searchbar" class="recherche_item" type="text" name="search" placeholder="Chercher un article...">

            <input id="searchbar" class="recherche_item" type="text" name="search" placeholder="Où ? Ville, code postal...">

            <input type="button" class="recherche_item" value="Rechercher">
        </div>

    </section>

    <section class="categories">
        <h1>Catégories</h1>
        <div class="grille_categories">
            <div class="categorie_item">
                <a href="">   
                    <h2> Meubles </h2>
                </a>
            </div>

            <div class="categorie_item">
                <a href="">   
                    <h2> Meubles </h2>
                </a>
            </div>

            <div class="categorie_item">
                <a href="">   
                    <h2> Meubles </h2>
                </a>
            </div>

            <div class="categorie_item">
                <a href="">   
                    <h2> Meubles </h2>
                </a>
            </div>

            <div class="categorie_item">
                <a href="">   
                    <h2> Meubles </h2>
                </a>
            </div>

            <div class="categorie_item">
                <a href="">   
                    <h2> Meubles </h2>
                </a>
            </div>
            
        </div>
    </section>
</body>
</html>
