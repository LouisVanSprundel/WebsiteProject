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
		<c:choose>
		<c:when test="${ empty sessionScope.authent  }">
			<form method="post" action="admin">
        <p>
           
            <input type="text" name="login" id="login" placeholder="Login" />
        </p>
        <p>
           
            <input type="password" name="pass" id="pass" placeholder="Password"  />
        </p>
        
        <input type="submit" value="Log in" id="log"/>
    </form>	
		</c:when>
    	<c:when test="${ sessionScope.authent == false }">
    	<div class="logerror">
    	<p><c:out value="Error, try again"/></p>
    	</div>
    	<form method="post" action="admin">
        <p>
            
            <input type="text" name="login" id="login" placeholder="Login" />
        </p>
        <p>
            
            <input type="password" name="pass" id="pass" placeholder="Password"/>
        </p>
        
        <input type="submit" value="Log in" id="log" />
    </form>	
 </c:when>
 <c:otherwise>
  				<div class="loginformation">
    		<p>You're connected as <c:out value="${ sessionScope.login }"/></p>
    		</div>
    		
    	<div class="choice">
    		<a class="btn btn-choice" href="admin/add">Add ad</a>
            <a class="btn btn-choice" href="admin/modify">Modify Ad</a>
            <a class="btn btn-choice" href="Disconnect">Disconnect</a>
            
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