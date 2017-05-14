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
    <body >
    <c:import url="header.jsp" />
    <section>
    <c:choose>
	  	<c:when test="${ empty sessionScope.authent || sessionScope.authent == false }">
    	  <p> You need to login before ! </p>
    	 
 </c:when>
    	
 <c:otherwise>
    <div class="row">
    
    	<div class="choice">
    		<a class="btn btn-choice" href="/June/admin/add">Add ad</a>
            <a class="btn btn-choice" href="/June/admin/modify">Modify Ad</a>
            <a class="btn btn-choice disconnect" href="/June/disconnect">Disconnect</a>
        
		</div>
		<div class="section-features"> 
    <ul>

    
     <c:forEach var="datasql" items="${ datasqls }">
     
     	<div class="col span-1-of-3 buy">
     <a href="modify/modifyAd?id=${ datasql.id }">
     	
     	<c:if test="${ !empty datasql.picture1 }">
     	<img src="${PATH_PICTURE}${datasql.picture1 }">
     	</c:if>
     	<div class="titre-buy">
     	<c:out value="${ datasql.titre }"/>
     	</div>
     	</a>
     	<div class="from-buy">
     	from  <c:out value="${ datasql.price } $"/> for <c:out value="${ datasql.nbrPieces }" /> bedrooms 
     	</div>
     	<div class="description-buy">
        <c:out value="${ datasql.description }" /> 
        </div> 
            
          </div>

       
          
            
       </c:forEach> 
       
       </ul> 
       </div> 
       </div> 
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