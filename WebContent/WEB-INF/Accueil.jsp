<!DOCTYPER html>
<html lang="en">
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
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

        <section class="photo">


        </section>

        <section class="presentation">
            <div class="begin">
                <h1>Apartments simplicity or understood do it we</h1>
                <p>Song such eyes had and off. Removed winding ask explain delight out few behaved lasting. Letters old hastily ham sending not sex chamber because present. Oh is indeed twenty entire figure. Occasional diminution announcing new now literature terminated. Really regard excuse off ten pulled. </p>
            </div>
            <div class="row">
                <div class="col span-1-of-3 box">
                    <img src="/June/ressources/img/cat.jpg" alt="a cat"> 
                    <h2>lady four or eyes an</h2>
                    <p>Ought these are balls place mrs their times add she. Taken no great widow spoke of it small.</p>
                    <a class="btn btn-pres" href="#">sign up</a>
                </div>
                <div class="col span-1-of-3 box">
                    <img src="/June/ressources/img/pigeon.gif" alt="a cat">
                    <h2>He concluded mr</h2>
                    <p>Genius use except son esteem merely her limits. Sons park by do make on.</p>
                    <a class="btn btn-pres" href="#">click !</a>
                </div>
                <div class="col span-1-of-3 box">
                    <img src="/June/ressources/img/autruche.jpg" alt="a cat">
                    <h2>An if pretended</h2>
                    <p>It do oh cottage offered cottage in written. Especially of dissimilar up attachment themselves by interested boisterous.</p>
                    <a class="btn btn-pres" href="#">asshole !</a>
                </div>
            </div>
        </section>
        <section class="offers">
            <div class="row">            

                <div class="col span-1-of-3 question" >
                    <form method="post" action="#" class="search">
                        <h3>Find your home</h3>                  
                        <div class="what">
                            <select name="what" id="what">
                                <option value="sell" selected>Sell</option>
                                <option value="rent">Rent</option>
                            </select>
                        </div>
                        <div class="type">
                            <select name="type" id="type">
                                <option value="appartement" selected>Appartement</option>
                                <option value="house">House</option>

                            </select>
                        </div>
                        <div class="place">
                            <select name="place" id="place">
                                <option value="nord" selected>Nord</option>
                                <option value="sud">Sud</option>
                                <option value="est">Est</option>
                                <option value="West">West</option>
                            </select>
                        </div>
                        <div class="row">
                            <div class="col span-1-of-3">
                                <p>Budget</p>
                            </div>
                            <div class="col span-1-of-3">
                                <input type="text" name="Min" id="Min" placeholder="Min" required>

                            </div>
                            <div class="col span-1-of-3">
                                <input type="text" name="Max" id="Max" placeholder="Max" required>
                            </div>
                        </div>
                        <div class="submit">
                            <a class="btn btn-search" href="#">Search</a>
                        </div>
                    </form>
                </div>
                <div class="row">

                    <div class="col span-1-of-3 picture" >
                        <div class="container"> 
                            <img src="/June/ressources/img/DSCF5909.JPG" alt="picture" >
                            <div class="gallery-text">
                                <h4>MK in love with Vincent</h4>
                            </div>
                        </div>
                        <div class="container"> 
                            <img src="/June/ressources/img/MKeating.JPG" alt="picture"> 
                            <div class="gallery-text">
                                <h4>MK eating</h4>
                            </div>
                        </div>
                    </div>
                    <div class="col span-1-of-3 picture1" > 
                        <div class="container1">                          
                            <img src="/June/ressources/img/mms_20170221_223934.jpg" alt="picture">
                            <div class="gallery-text">
                                <h4>just an asshole !</h4>
                            </div>
                        </div>
                    </div>


                </div>

            </div>

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
