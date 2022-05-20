<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %>
<%@ page import="java.util.*, pack.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style_accueil2.css">
    <title>LeCoinCoin - Accueil</title>
</head>
<body>
    <jsp:include page="navbar.jsp"/>

      <div class="container-fluid">
          <div class="container bg-light">
            <form>
                
                <div class="form-row">
                    <div class="form-group col-md-3">
                        <label for="inputCategorie">Catégorie</label>
                        <select id="inputCategorie" class="form-control">
                            <option selected>Catégorie</option>
                            <% 
					    		Collection<Categorie> lc = (Collection<Categorie>) request.getAttribute("lc"); 
						    	for (Categorie c : lc){ %>
									<option><%= c.getNom() %></option>
					         <% } %>
                        </select>
                    </div>

                    <div class="form-group col-md-5">
                        <label for="inputCity">Que recherchez-vous</label>
                        <input type="text" class="form-control" id="inputCity">
                    </div>

                    <div class="form-group col-md-4">
                    <label for="inputCity">Ville</label>
                    <input type="text" class="form-control" id="inputCity">
                    </div>
                    
                </div>
                <div class="form-group">
                    <div class="form-check">
                    <input class="form-check-input" type="checkbox" id="gridCheck">
                    <label class="form-check-label" for="gridCheck">
                        Offres disponibles en livraison
                    </label>
                    </div>
                </div>
                
                <button type="submit" class="btn btn-primary">Rechercher</button>
                </form>
          </div>

      </div>
    
    

    
    <div class="container bg-light">
        <h2>Catégories</h2>
        <div class="row g-1">
        
    	<% 
    		Collection<Categorie> lc2 = (Collection<Categorie>) request.getAttribute("lc"); 
	    	for (Categorie c : lc2){ %>

            <div class="col-4">
                <div class="p-3 border bg-light">
                    <a href="Servlet?op=articles&cat=<%= c.getId() %>">   
                        <h2> <%= c.getNom() %> </h2>
                    </a>
                </div>
            </div>
            
         <% } %>
            
        </div>

    </div>
</body>
</html>
