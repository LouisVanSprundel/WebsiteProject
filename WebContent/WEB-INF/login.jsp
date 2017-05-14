<!DOCTYPER html>
<html lang="en">
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
         <script type="text/javascript" src="/June/ressources/js/scripttest.js"></script>
         <link rel="stylesheet" type="text/css" href="/June/vendors/css/normalize.css">
        <link rel="stylesheet" type="text/css" href="/June/vendors/css/grid.css" />
        
        <link rel="stylesheet" type="text/css" href="/June/vendors/css/animate.css">
        <link rel="stylesheet" type="text/css" href="/June/vendors/css/ionicons.min.css">
        <link rel="stylesheet" type="text/css" href="/June/ressources/css/style.css" >
        <link rel="stylesheet" type="text/css" href="/June/ressources/css/queries.css">
        <link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,300italic' rel='stylesheet' type='text/css'>
        <title>My Project</title>

    </head>
    <body>
    
    <c:import url="header.jsp" />
	
      	<section>
    
    	  	<div id="request-form">
    <form enctype="multipart/form-data" method="post" action="login">
      <div class="field" align="left">
  <h3>Upload your images</h3>
  <input type="file" id="files" name="files"  />
</div>
        <input type="button" id="submit" value="Submit"><br>
    </form>
</div>	

</section>
	 <c:import url="footer.jsp" />     


  
   
    </body>
    