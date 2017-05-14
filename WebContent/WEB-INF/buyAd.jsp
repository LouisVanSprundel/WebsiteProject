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
	
	 <c:forEach var="datasql" items="${ datasqls }">
				 
		 
		
		 <div class="display-title">
		  <c:out value="${datasql.titre}"/>
		 </div>
		 <div class="row">
<!-- 		  <div class="col span-1-of-2 first-part"> -->
		<div class="bloc">
<!-- 		  <ul>
		  <li> -->
		  <div class="first-part">
		  
            <div class="main-picture">
            <c:if test="${ !empty datasql.picture1 }">
                <img src="${PATH_PICTURE}${ datasql.picture1 }" id="main"> 
                </c:if>           
            </div>
            <div class="col span-1-of-5 stanby-picture ">
                	<c:if test="${ !empty datasql.picture1 }">
                    <img src="${PATH_PICTURE}${ datasql.picture1 }" onmouseover="changeMain(this.src)" >
                	</c:if>
            </div>
            <div class="col span-1-of-5 stanby-picture ">
                <c:if test="${ !empty datasql.picture2 }">
                    <img src="${PATH_PICTURE}${ datasql.picture2 }" onmouseover="changeMain(this.src)" >
                </c:if>
            </div>
            <div class="col span-1-of-5 stanby-picture ">
                <c:if test="${ !empty datasql.picture3 }">
                    <img src="${PATH_PICTURE}${ datasql.picture3 }" onmouseover="changeMain(this.src)" >
                </c:if>
            </div>
            <div class="col span-1-of-5 stanby-picture ">
                <c:if test="${ !empty datasql.picture4 }">
                    <img src="${PATH_PICTURE}${ datasql.picture4 }" onmouseover="changeMain(this.src)" >
                </c:if>
            </div>
            <div class="col span-1-of-5 stanby-picture ">
                <c:if test="${ !empty datasql.picture5 }">
                    <img src="${PATH_PICTURE}${ datasql.picture5 }" onmouseover="changeMain(this.src)" >
                </c:if>
            </div>
            
            </div>
        <!--     </li> 
                     
              
              <li>
              <div class="col span-1-of-2 google-form">
              
              <iframe  class="google" src="https://docs.google.com/forms/d/e/1FAIpQLSdHibzkUwMsqVnV6ORjd_hjomyDdLTGwBk2_mdzfFMGqM3z7w/viewform?embedded=true">Chargement en cours...</iframe>
              
              
              </li>
              </ul> -->
              </div>
              </div>
              <div class="row">
              
              <div class="display-maindescription">
              <div class="display-titre1">
               <c:out value="${datasql.titre1}"/>
               </div>
                <div class="display-description1">
		  <c:out value="${datasql.description1}"/>
		  </div>
		  <c:if test="${ !empty datasql.picture6 }">
                    <img src="${PATH_PICTURE}${ datasql.picture6 }" >
                </c:if>
		 </div>
		 
		   <div class="display-firstpart">
		   <c:if test="${ !empty datasql.titre1 && !empty datasql.description2 }">
		      <div class="display-titre2">		      
		      <c:out value="${datasql.titre1}"/>		     
		      </div>
		      <div class="display-description2">
		      <c:out value="${datasql.description2}"/>
		      </div>
		       </c:if>
		      <c:if test="${ !empty datasql.picture7 }">
                    <img src="${PATH_PICTURE}${ datasql.picture7 }" >
                </c:if>
		      
		 </div>
		 
		<div class="${ !empty datasql.descriptionY ? 'col span-1-of-2 display-youmap' : 'display-youmap'  }"> 
		<c:if test="${ !empty datasql.youtube }">
		 <iframe width="420" height="315"
			src="${datasql.youtube}">
		</iframe>
		<div class="display-descriptionY">
		      <c:out value="${datasql.descriptionY}"/>
		      </div>
		      </c:if>
		</div>		
		
		<div class="${ !empty datasql.descriptionY ? 'col span-1-of-2 display-youmap' : 'display-youmap'  }"> 
			   <div id="floating-panel">
     		 <input id="address" value="<c:out value="${datasql.adress}"/>">
    		</div>
    			<div id="map"></div>
    			<div class="display-descriptionM">
		      <c:out value="${datasql.descriptionM}"/>
		      </div>
		</div>
	</div>	 
		 
       
     
   
    <script>
function initMap() {
  var map = new google.maps.Map(document.getElementById('map'), {
    zoom: 14,
    center: {lat: -34.397, lng: 150.644}
  });
  var geocoder = new google.maps.Geocoder();
    geocodeAddress(geocoder, map);
    
}

function geocodeAddress(geocoder, resultsMap) {
  var address = document.getElementById('address').value;
  geocoder.geocode({'address': address}, function(results, status) {
    if (status === google.maps.GeocoderStatus.OK) {
      resultsMap.setCenter(results[0].geometry.location);
      var marker = new google.maps.Marker({
        map: resultsMap,
        position: results[0].geometry.location
      });
    } else {
      alert('Geocode was not successful for the following reason: ' + status);
    }
  });
}

    </script>
		 	
 	</c:forEach>
	
	 </section>	
	 <c:import url="footer.jsp" />     


 <script async defer src='https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyCwzPBDf-iuKnwlqYEjwp-arV_yWakCxJk&callback=initMap'></script>    
<!--<script src='https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyCwzPBDf-iuKnwlqYEjwp-arV_yWakCxJk'></script>-->
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script> 
        <script src="/June/vendors/js/jquery.waypoints.min.js"></script>

        <script src="/June/ressources/js/script.js"></script>
    </body>
</html>   