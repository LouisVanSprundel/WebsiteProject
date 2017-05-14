<!DOCTYPER html>
<html lang="en">
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <link rel="stylesheet" type="text/css" href="/June/vendors/css/normalize.css">
        <link rel="stylesheet" type="text/css" href="/June/vendors/css/grid.css" />
        
        <link rel="stylesheet" type="text/css" href="/June/vendors/css/animate.css">
        <link rel="stylesheet" type="text/css" href="/June/vendors/css/ionicons.min.css">
        <link rel="stylesheet" type="text/css" href="/June/ressources/css/style1.css" >
        <link rel="stylesheet" type="text/css" href="/June/ressources/css/queries.css">
        <link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,300italic' rel='stylesheet' type='text/css'>
        <title>My Project</title>
    </head>
    <body>
    <c:import url="header.jsp" />
    <section>
     <div class="row">
    
   
       </div> 
       
     
     
     <c:choose>
	  	<c:when test="${ empty sessionScope.authent || sessionScope.authent == false }">
    	  <p> You need to login before ! </p>
 		</c:when>
    	
		 <c:otherwise>
		     <c:choose>
	  			<c:when test="${ delete.equals(\"0\") }">
		 <c:forEach var="datasql" items="${ datasqls }">
		<div class="preview-project">	 
		   	<div class="col span-1-of-3 buy">    	
     	<c:if test="${ !empty datasql.picture1 }">
     	<img src="${PATH_PICTURE}${datasql.picture1 }">
     	</c:if>
     	<div class="titre-buy">
     	<c:out value="${ datasql.titre }"/>
     	</div>
 
     	<div class="from-buy">
     	from  <c:out value="${ datasql.price } $"/> for <c:out value="${ datasql.nbrPieces }" /> bedrooms 
     	</div>
     	<div class="description-buy">
        <c:out value="${ datasql.description }" /> 
        </div> 
            
          </div>
 	</c:forEach>
 	 <p>Are you sure to delete this ad ? </p>
 	 <input type="button" name="deleteAd" value="Yes" onclick="self.location.href='deleteAd?id=${ id }&delete=1'"> 
 	 <input type="button" name="dontcare" value="No" onclick="history.go(-2)"> 
 	 
 	 </c:when>
 	 <c:otherwise>
 	
 	  <a class="btn disconnect" href="Disconnect">Disconnect</a>
 	 	<p> Your ad has been delete</p>
 	 
    		<p>You're connected as <c:out value="${ sessionScope.login }"/></p>
    	<div class="choice">
    		<a class="btn btn-choice" href="admin/add">Add ad</a>
            <a class="btn btn-choice" href="admin/modify">Modify Ad</a>
            
		</div>
 	 	</c:otherwise>
 	</c:choose> 
 	 

 		</c:otherwise>
 	</c:choose>   
       </section>  
     <c:import url="footer.jsp" />     

<script src='https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyCwzPBDf-iuKnwlqYEjwp-arV_yWakCxJk'></script>
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script> 
        <script src="/June/vendors/js/jquery.waypoints.min.js"></script>
      <!--   <script src="http://maps.google.com/maps/api/js"></script> -->
        <script src="/June/ressources/js/script.js"></script>
        <script src="/June/ressources/js/gmaps.js"></script>
    </body>
</html>  