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
     <div class="choice">
    		<a class="btn btn-choice" href="/June/admin/add">Add ad</a>
            <a class="btn btn-choice" href="/June/admin/modify">Modify Ad</a>
            <a class="btn btn-choice disconnect" href="/June/disconnect">Disconnect</a>
        
		</div>
       </div> 
       
     
     
     <c:choose>
	  	<c:when test="${ empty sessionScope.authent || sessionScope.authent == false }">
    	  <p> You need to login before ! </p>
 		</c:when>
    	
		 <c:otherwise>

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
          </div>
          
          
          
          
          
		 <div class="display">
		 <div class="display-titre">
		<p> <c:out value="${ datasql.titre }"/></p>
		 </div>
		 <div class="displayimg">
		 <div class="col span-1-of-5 display-picture1">
		 	<c:if test="${ !empty datasql.picture1 }">
		 <img src="${PATH_PICTURE}${ datasql.picture1 }">
		 </c:if>
		 </div>
		 <div class="col span-1-of-5 display-picture2">
		 	<c:if test="${ !empty datasql.picture2 }">
		 <img src="${PATH_PICTURE}${datasql.picture2 }">
		 </c:if>
		 </div>
		 <div class="col span-1-of-5 display-picture3">
		 	<c:if test="${ !empty datasql.picture3 }">
		 <img src="${PATH_PICTURE}${datasql.picture3 }">
		 </c:if>
		 </div>
		 <div class="col span-1-of-5 display-picture4">
		 	<c:if test="${ !empty datasql.picture4 }">
		 <img src="${PATH_PICTURE}${datasql.picture4 }">
		 </c:if>
		 </div>
		 <div class="col span-1-of-5 display-picture5">
		 	<c:if test="${ !empty datasql.picture5 }">
		 <img src="${PATH_PICTURE}${datasql.picture5 }">
		 </c:if>
		 </div>
		 </div>
		 
		 <div class="display-title1">
		<p> 	<c:out value="${ datasql.titre1 }"/></p>
		 	 </div>
		 <div class="display-description1">
		<p> 	<c:out value="${ datasql.description1 }"/></p>
		 	 </div>
		 	 
		 	 <c:if test="${ !empty datasql.picture6 }">
		 <img src="${PATH_PICTURE}${datasql.picture6 }">
		 </c:if>
		
		  <div class="display-title2">
		   <c:if test="${ !empty datasql.titre2 }">
		<p> 	<c:out value="${ datasql.titre2 }"/></p>		 	
		 	 </c:if>
		 	  </div>
		 <div class="display-description2">
		   <c:if test="${ !empty datasql.description2 }">
		<p> 	<c:out value="${ datasql.description2 }"/></p>
		</c:if>
		 	 </div>
		 	 
		 	 <c:if test="${ !empty datasql.picture7 }">
		 <img src="${PATH_PICTURE}${datasql.picture7 }">
		 </c:if>
		 
		 	<div class="display-youtube">
		<c:if test="${ !empty datasql.youtube }">		 	
 		<p>	<c:out value="${ datasql.youtube }"/> </p>
 		</c:if>
 			 </div>
 			 
 			<div class="display-descriptionY">	
 			<c:if test="${ !empty datasql.descriptionY }">		
 		<p>	<c:out value="${ datasql.descriptionY }"/></p>
 		</c:if>
 		</div>
 		
 		<div class="display-descriptionM">	
 			<c:if test="${ !empty datasql.descriptionM }">		
 		<p>	<c:out value="${ datasql.descriptionM }"/></p>
 		</c:if>
 		</div>
 			</div>	
 	
 	<input type="button" name="deleteAd" value="Delete this ad" onclick="self.location.href='deleteAd?id=${ datasql.id }&delete=0'"> 
 	
 	<form method="post" action="modifyAd?id=${ datasql.id }" enctype="multipart/form-data">
 	
 	 <p>
            <label for="reference">Reference : <span class="requis">*</span></label>
            <input type="text" name="reference" id="reference" value="<c:out value="${datasql.reference}"/>"/>
            <span class="erreur">${errors['reference']}</span>
        </p>
        <p>
            <label for="titre">Title : </label>
            <input type="text" name="titre" id="titre" value="<c:out value="${datasql.titre}"/>" />
            <span class="erreur">${errors['titre']}</span>
        </p>
        
         <p>
            <label for="nbrPieces">Number of pieces : </label>
            <input type="text" name="nbrPieces" id="nbrPieces" value="<c:out value="${datasql.nbrPieces}"/>" />
            <span class="erreur">${errors['nbrPieces']}</span>
        </p>
        
         <p>
            <label for="district">District : </label>
            <select name="district" id="district">
           <option value="1" selected>1</option>
           <option value="2">2</option>
           <option value="2">2</option>    
           <option value="3">3</option>    
           <option value="4">4</option>    
           <option value="5">5</option>    
           <option value="6">6</option>    
           <option value="7">7</option>    
           <option value="8">8</option>    
           <option value="9">9</option>    
           <option value="10">10</option>    
           <option value="11">11</option>    
           <option value="12">12</option>    
           <option value="13">13</option>    
           <option value="14">14</option>    
           <option value="15">16</option>    
           <option value="16">16</option>    
           <option value="17">17</option>    
           <option value="18">18</option>    
           <option value="19">19</option>    
           <option value="20">20</option>    
           <option value="21">21</option>    
           <option value="22">22</option>    
           <option value="23">23</option>    
           <option value="24">24</option>
   			<option value="25">25</option>
   			<option value="26">26</option>
   			<option value="27">27</option>
   			<option value="28">28</option>
                    
       </select>           
        </p>
        
        <p>
            <label for="description">Description : </label>
            <textarea name="description" id="description" rows="8" ><c:out value="${datasql.description}"/></textarea>

         <!--    <input type="text" name="description" id="description" value="<c:out value="${param.description}"/>"/>-->
           <span class="erreur">${errors['description']}</span>
        </p>
        
         <p>
            <label for="picture1">File to send : </label>
            <input type="file" name="picture1" id="picture1" />
        </p>
        <p>
            <label for="picture2">File to send : </label>
            <input type="file" name="picture2" id="picture2" />
        </p>
        <p>
            <label for="picture3">File to send : </label>
            <input type="file" name="picture3" id="picture3" />
        </p>
        <p>
            <label for="picture4">File to send : </label>
            <input type="file" name="picture4" id="picture4" />
        </p>
        <p>
            <label for="picture5">File to send : </label>
            <input type="file" name="picture5" id="picture5" />
        </p>
        
        <p>
            <label for="titre1">Title1 : </label>
            <input type="text" name="titre1" id="titre1" value="<c:out value="${datasql.titre1}"/>" />
            <span class="erreur">${errors['titre1']}</span>
        </p>
        
          <p>
            <label for="description1">Description : </label>
            <textarea name="description1" id="description" rows="8" ><c:out value="${datasql.description1}"/></textarea>

         <!--    <input type="text" name="description" id="description" value="<c:out value="${param.description}"/>"/>-->
           <span class="erreur">${errors['description1']}</span>
        </p>
        
         
  <!--         <p>
            <label for="date">Date : </label>
            <input type="date" name="date" id="date" value="<c:out value="${param.date}"/>"/>
        </p>  -->
        
        
          <p>
            <label for="picture6">File to send : </label>
            <input type="file" name="picture6" id="picture6" />
        </p>
        
        <p>
            <label for="titre2">Title2 : </label>
            <input type="text" name="titre2" id="titre2" value="<c:out value="${datasql.titre2}"/>" />
            <span class="erreur">${errors['titre2']}</span>
        </p>
        
          <p>
            <label for="description2">Description : </label>
            <textarea name="description2" id="description" rows="8" ><c:out value="${datasql.description2}"/></textarea>

         <!--    <input type="text" name="description" id="description" value="<c:out value="${param.description}"/>"/>-->
           <span class="erreur">${errors['description2']}</span>
        </p>
        
       
        
          <p>
            <label for="picture7">File to send : </label>
            <input type="file" name="picture7" id="picture7" />
        </p>
        
              
        <p>
            <label for="youtube">Youtube URL : </label>
            <textarea name="youtube" id="youtube" rows="8" ><c:out value="${datasql.youtube}"/></textarea>
           <span class="erreur">${errors['description1']}</span>
        </p>
        
            <p>
            <label for="descriptionY">Description : </label>
            <textarea name="descriptionY" id="descriptionY" rows="8" ><c:out value="${datasql.descriptionY}"/></textarea>
           <span class="erreur">${errors['descriptionY']}</span>
        </p>
        
            <p>
            <label for="descriptionM">Description : </label>
            <textarea name="descriptionM" id="descriptionM" rows="8" ><c:out value="${datasql.descriptionM}"/></textarea>
           <span class="erreur">${errors['descriptionM']}</span>
        </p>
        
        
        <p>
            <label for="adress">Adress : </label>
            <input type="text" name="adress" id="adress" value="<c:out value="${datasql.adress}"/>"/>
            <span class="erreur">${errors['adress']}</span>
        </p>
        
       <p>
            <label for="price">Price : </label>
            <input type="number" name="price" id="price" value="<c:out value="${datasql.price}"/>"/>
            <span class="erreur">${errors['price']}</span>
        </p>
         <p>
            <label for="aera">Aera : </label>
            <input type="number" name="aera" id="aera" value="<c:out value="${datasql.aera}"/>"/>
            <span class="erreur">${errors['aera']}</span>
        </p>
        <p>
            <label for="status">Status : </label>
            <select name="status" id="statud">
           <option value="rent" selected>Rent</option>
           <option value="buy">Buy</option>         
       </select>           
        </p>
                
         <p>
            <label for="display">Display directly ad on website : </label>
            <select name="display" id="display">
           <option value="1" selected>Yes</option>
           <option value="0">No</option>
           
       </select>
            
        </p>
      
         <input type="submit"><br>
 
         </form>
         
         <c:out value="${resultat}"/>

 	</c:forEach>
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