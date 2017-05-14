<!DOCTYPER html>
<html lang="en">
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
         <script type="text/javascript" src="/June/ressources/js/script.js"></script>
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
	  	<c:when test="${ empty sessionScope.authent || sessionScope.authent == false }">
    	  <p> You need to login before ! </p>
 </c:when>
    	
 <c:otherwise>
 
    	<div class="choice">
    		<a class="btn btn-choice" href="add">Add ad</a>
            <a class="btn btn-choice" href="modify">Modify Ad</a>
             <a class="btn btn-choice" href="/June/disconnect">Disconnect</a>
		</div>
   		<form method="post" action="add" enctype="multipart/form-data">
   		
        <div class="firstrow">
        <ul>
        <li>
        <div class="reference">
        <p>
        <label for="reference">Reference : <span class="requis">*</span></label><br>
            <input type="text" name="reference" id="reference" value="<c:out value="${param.reference}"/>"/>
            <span class="erreur">${errors['reference']}</span>
        </p>
         </div>
        </li>
        <li>
        <div class="titre">
        <p>
            <label for="titre">Title : <span class="requis">*</span></label><br>
            <input type="text" name="titre" id="titre" value="<c:out value="${param.titre}"/>" />
            <span class="erreur">${errors['titre']}</span>
        </p>
        </div>
        </li>
        <li>
        <div class="nbrPieces">
         <p>
            <label for="nbrPieces">Number of pieces : <span class="requis">*</span></label><br>
            <input type="text" name="nbrPieces" id="nbrPieces" value="<c:out value="${param.nbrPieces}"/>" />
            <span class="erreur">${errors['nbrPieces']}</span>
        </p>
        </div>
        </li>
        <li>
        <div class="district">
         <p>
            <label for="district">District : <span class="requis">*</span></label><br>
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
        </div>
        </li>
        </ul>
         </div>   
       
        
        
        
        <div class="description">
        <p>
            <label for="description">Description project : <span class="requis">*</span></label><br>
            <textarea name="description" id="description" rows="8" ><c:out value="${param.description}"/></textarea>

         <!--    <input type="text" name="description" id="description" value="<c:out value="${param.description}"/>"/>-->
           <span class="erreur">${errors['description']}</span>
        </p>
        </div>
        <div class="mainpicture">
         <p>
            <label for="picture1">Picture 1 : </label>
            <input type="file" name="picture1" id="picture1" />
        </p>
        <p>
            <label for="picture2">Picture 2 : </label>
            <input type="file" name="picture2" id="picture2" />
        </p>
        <p>
            <label for="picture3">Picture 3 : </label>
            <input type="file" name="picture3" id="picture3" />
        </p>
        <p>
            <label for="picture4">Picture 4 : </label>
            <input type="file" name="picture4" id="picture4" />
        </p>
        <p>
            <label for="picture5">Picture 5 : </label>
            <input type="file" name="picture5" id="picture5" />
        </p>
        </div>
        <div class="titre1">
        <p>
            <label for="titre1">Title1 : <span class="requis">*</span></label>
            <input type="text" name="titre1" id="titre1" value="<c:out value="${param.titre1}"/>" />
            <span class="erreur">${errors['titre1']}</span>
        </p>
        </div>
        <div class="description1">
          <p>
            <label for="description1">Description : <span class="requis">*</span></label>
            <textarea name="description1" id="description" rows="8" ><c:out value="${param.description1}"/></textarea>

         <!--    <input type="text" name="description" id="description" value="<c:out value="${param.description}"/>"/>-->
           <span class="erreur">${errors['description1']}</span>
        </p>
        </div>
         
  <!--         <p>
            <label for="date">Date : </label>
            <input type="date" name="date" id="date" value="<c:out value="${param.date}"/>"/>
        </p>  -->
        
          <div class="pictures">
          <p>
            <label for="picture6">Picture 6 : </label>
            <input type="file" name="picture6" id="picture6" />
        </p>
        </div>
        <div class="titre2">
        <p>
            <label for="titre2">Title2 : </label>
            <input type="text" name="titre2" id="titre2" value="<c:out value="${param.titre2}"/>" />
            <span class="erreur">${errors['titre2']}</span>
        </p>
        </div>
        <div class="description2">
          <p>
            <label for="description2">Description : </label>
            <textarea name="description2" id="description" rows="8" ><c:out value="${param.description2}"/></textarea>

         <!--    <input type="text" name="description" id="description" value="<c:out value="${param.description}"/>"/>-->
           <span class="erreur">${errors['description2']}</span>
        </p>
        </div>
       
        <div class="pictures">
          <p>
            <label for="picture7">Picture 7 : </label>
            <input type="file" name="picture7" id="picture7" />
        </p>
        </div>
          <div class="youtube">    
        <p>
            <label for="youtube">Youtube URL : </label>
            <textarea name="youtube" id="youtube" rows="8" ><c:out value="${param.youtube}"/></textarea>
           <span class="erreur">${errors['description1']}</span>
        </p>
        </div>
        <div class="descriptionY">
            <p>
            <label for="descriptionY">Description : </label>
            <textarea name="descriptionY" id="descriptionY" rows="8" ><c:out value="${param.descriptionY}"/></textarea>
           <span class="erreur">${errors['descriptionY']}</span>
        </p>
        </div>
        <div class="descriptionM">
            <p>
            <label for="descriptionM">Description : </label>
            <textarea name="descriptionM" id="descriptionM" rows="8" ><c:out value="${param.descriptionM}"/></textarea>
           <span class="erreur">${errors['descriptionM']}</span>
        </p>
        </div>
         <div class="adress">
        <p>
            <label for="adress">Adress : </label>
            <input type="text" name="adress" id="adress" value="<c:out value="${param.adress}"/>"/>
            <span class="erreur">${errors['adress']}</span>
        </p>
        </div>
        <div class="price">
       <p>
            <label for="price">Price : </label>
            <input type="number" name="price" id="price" value="<c:out value="${param.price}"/>"/>
            <span class="erreur">${errors['price']}</span>
        </p>
        </div>
        <div class="aera">
         <p>
            <label for="aera">Aera : </label>
            <input type="number" name="aera" id="aera" value="<c:out value="${param.aera}"/>"/>
            <span class="erreur">${errors['aera']}</span>
        </p>
        </div>
        <div class="status">
        <p>
            <label for="status">Status : </label>
            <select name="status" id="statud">
           <option value="rent" selected>Rent</option>
           <option value="buy">Buy</option>         
       </select>           
        </p>
          </div>
          <div class="display">      
         <p>
            <label for="display">Display directly ad on website : </label>
            <select name="display" id="display">
           <option value="1" selected>Yes</option>
           <option value="0">No</option>
           
       </select>
            
        </p>
        </div>
	
       
    
       
         <input type="submit"><br>
         </form>

        
  
    
       <ul>
      <c:out value="${resultat }"/>

      
            
    
    </ul>  
    	
      	</c:otherwise>
 </c:choose> 
 </section>	
	 <c:import url="footer.jsp" />     

<script src='https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyCwzPBDf-iuKnwlqYEjwp-arV_yWakCxJk'></script>
       
        <script src="/June/vendors/js/jquery.waypoints.min.js"></script>
      <!--   <script src="http://maps.google.com/maps/api/js"></script> 
      
        <script src="/June/ressources/js/gmaps.js"></script>-->
    </body>
</html>  