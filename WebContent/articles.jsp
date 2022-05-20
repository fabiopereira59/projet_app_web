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
    <link rel="stylesheet" href="css/styles_articles2.css">
    <title> </title>
</head>
<body>
     <jsp:include page="navbar.jsp"/>

    <div class="container">
        <div class="row">
            <div class="col-md-6">
            	<% Categorie categorie = (Categorie) request.getAttribute("categorie"); %>
                <h1><%= categorie.getNom() %></h1>
            </div>

            <div class="col-md-6 text-right">
                <button class="btn my-2 my-sm-0" type="submit" >Filter</button>
            </div>
        </div>

        <div class="row py-5">
        	<% 
	    		Collection<Article> la = (Collection<Article>) request.getAttribute("la"); 
		    	for (Article a : la){ %>
	         
		            <div class="col-3 p-3">
		                <div class="card" style="width: 18rem;">
		                    <img class="card-img-top" src="images/meubles.jpg" alt="Card image cap">
		                    <div class="card-body">
		                    <h5 class="card-title"> <%= a.getNom() %></h5>
		                    <h5 class="card-text"><%= Float.toString(a.getPrix()) %>€</h5>
		                    <p class="card-text"><%= a.getDescription() %></p>
		                    <a href="#" class="btn btn-primary">Voir article</a>
		                    </div>
		                </div>
		            </div>
            
            <% } %>
        	

            
        </div>
    </div>

    </div>

    <nav aria-label="Page navigation example">
        <ul class="pagination justify-content-center">
          <li class="page-item disabled">
            <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Précédent</a>
          </li>
          <li class="page-item"><a class="page-link" href="#">1</a></li>
          <li class="page-item"><a class="page-link" href="#">2</a></li>
          <li class="page-item"><a class="page-link" href="#">3</a></li>
          <li class="page-item">
            <a class="page-link" href="#">Suivant</a>
          </li>
        </ul>
    </nav>

    
    
</body>
</html>
