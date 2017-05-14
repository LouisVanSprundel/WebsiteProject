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
         <meta name="msapplication-TileColor" content="#da532c">
        <meta name="msapplication-TileImage" content="/resources/favicons/mstile-144x144.png">
        <meta name="msapplication-config" content="/resources/favicons/browserconfig.xml">
        <meta name="theme-color" content="#ffffff">

        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <link rel="stylesheet" href="/resources/demos/style.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,300italic' rel='stylesheet' type='text/css'>
        <title>My Project</title>

    </head>
    <body>
    <div class="mailMessage">
     <c:out value="${Message}"/> 
     </div>  
 <header id="home">
            <nav>
                <div class="row">
                    <img src="/June/ressources/css/img/era-logo.png" alt="logo" class="logo">
                    <img src="/June/ressources/css/img/era-logo.png" alt="logo" class="logo-black">
                    <ul class="main-nav js--scroll-to-home">
                        <li><a href="#home">Home</a></li>
                        <li><a href="#lauches">New Launches</a></li>
                        <li><a href="#information">Information</a></li>
                        <li><a href="#contact">Contact me</a></li>
                    </ul>
                    <a class="mobile-nav-icon js--nav-icon"><i class="ion-navicon-round"></i></a>
                </div>
            </nav>
          <!--    <div class="mainsearch">
                <form method="post" action="#" class="search">
                    <h1>Find your home</h1>

                    <div class="type">
                        <select name="type" id="type">
                            <option value="Type" selected>Type</option>
                            <option value="Private-condos" >Private condos</option>
                            <option value="Executive-condos">Executive condos</option>
                            <option value="Cluster-housing">Cluster-housing</option>
                            <option value="Terrace">Terrace</option>
                        </select>

                    </div>

                    <div class="nbrroom">

                        <div class="row"></div>
                        <p>
                            Number of rooms : 
                            <input type="radio" name="rooms" value="nbr1" id="nbr1" /> <label for="nbr1">1</label>
                            <input type="radio" name="rooms" value="nbr2" id="nbr2" /> <label for="nbr2">2</label>
                            <input type="radio" name="rooms" value="nbr3" id="nbr3" /> <label for="nbr1">3</label>
                            <input type="radio" name="rooms" value="nbr4" id="nbr4" /> <label for="nbr4">4</label>
                            <input type="radio" name="rooms" value="nbr5" id="nbr5" /> <label for="nbr1">5</label>
                            <input type="radio" name="rooms" value="nbr6" id="nbr6" /> <label for="nbr6">6</label>
                        </p>


                    </div>

                    <div class="row">

                        <select name="district" class="type">
                            <option value="district" selected>district</option>   
                            <option value="1" >1</option>
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


                    </div>

                    
                    <script>     
                            $( function() {
                                $( "#slider-range" ).slider({
                                    range: true,
                                    min: 0,
                                    max: 10000000,
                                    values: [ 100000, 200000, 300000, 400000, 500000, 600000, 700000, 800000, 900000, 1000000 ],
                                    slide: function( event, ui ) {
                                        $( "#amount" ).val( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] );
                                    }
                                });
                                $( "#amount" ).val( "$" + $( "#slider-range" ).slider( "values", 0 ) +
                                                   " - $" + $( "#slider-range" ).slider( "values", 1 ) );
                            } );

                        </script>      
                    <div class="type">
                        <p>

                            <input type="text" id="amount" readonly style="border:0; color:#f6931f; font-weight:bold;">
                        </p>

                        <div id="slider-range"></div>
                        

                    </div>
                    <div class="type">
                        <select name="Tenure" class="Tenure">
                            <option value="Tenure" selected>Tenure</option>   
                            <option value="2017">2017</option>
                            <option value="2018">2018</option>
                            <option value="2019">2019</option>
                            <option value="2020">2020</option>
                            <option value="2021">2021</option>
                            <option value="2022">2022</option>
                        </select>
                    </div>
                    <div class="type">
                        <select name="Estitop" id="Estitop"> 
                            <option value="Estimated-top" selected>Estimated Top</option>    
                            <option value="Freehold" selected>Freehold</option>
                            <option value="99years">99years</option>
                            <option value="103years">103years</option>
                            <option value="999years">999years</option>
                        </select>
                    </div>
                    <div class="submit">
                        <a class="btn btn-search" href="#" value="Search">Search</a>
                    </div>
                </form>
            </div>-->

        </header>  
        
         <section class="section-features js--lauches" id="lauches">
         
          <div class="row">
                <h2>New Launches</h2>
                <p class="long-copy">
                    Here is a sample of new launches, we have a launches in different district's Singapor. BLALABLABLALBLZLVV BLABLA
                </p>
            </div>
            
            <div class="row"> 
         <ul>
     <c:forEach var="datasql" items="${ datasqls }">
     <div class="col span-1-of-3 buy">
     <a href="buy/buyAd?id=${ datasql.id }">
     	
     	<c:if test="${ !empty datasql.picture1 }">
     	<img src="${PATH_PICTURE}${datasql.picture1 }">
     	</c:if>
     	<div class="titre-buy">
     	<c:out value="${ datasql.titre }"/>
     	</div>
     	</a>
     	<div class="from-buy">
     	from  <c:out value="${ datasql.price } $"/> for <c:out value="${ datasql.reference }" /> bedrooms 
     	</div>
     	<div class="description-buy">
        <c:out value="${ datasql.description }" /> 
        </div> 
        </div>
       
            
        
              
       </c:forEach> 
       
       </ul>   
       </div>
        <div class="clickhere">
        <a href="buy">  Click here to see more</a>
        </div>
       </section> 
    
     <section id="information">
            <h2>Information</h2>

        </section>


        <section class="section-steps" id="contact">
            <div class="row">
                <h2>Contact me</h2>

                <div class="row">
                   	<div id="message">
				<form id="frmContact" name="frmContact" action="" method="POST"
					novalidate="novalidate">
					<div class="label">Name:</div>
					<div class="field">
						<input type="text" id="pp-name" name="name"
							placeholder="enter your name here" title="Please enter your name"
							class="required" aria-required="true" required>
					</div>
					<div class="label">Email:</div>
					<div class="field">
						<input type="text" id="pp-email" name="email"
							placeholder="enter your email address here"
							title="Please enter your email address" class="required email"
							aria-required="true" required>
					</div>
					<div class="label">Subject:</div>
					<div class="field">
						<input type="text" id="pp-email" name="subject"
							placeholder="enter the subject here here"
							class="required" aria-required="true" required>
					</div>
					<div class="label">Message:</div>
					<div class="field">
						<textarea id="about-project" name="message"
							placeholder="enter your message here"></textarea>
					</div>
					<div id="mail-status"></div>
					<input type="submit" name="submit" value="Send Message"
						id="send-message" style="clear: both;">
					<%-- <%
						if (null != message) {
							out.println("<div class='" + status + "'>"
									+ message + "</div>");
						}
					%> --%>
				</form>
			</div>

                </div>
            </div>

        </section>






        <section class="section-form">

        </section>

        <footer>
            <div class="row">
                <div class="col span-1-of-2">
                    <ul class="footer-nav">
                        <li><a href="#">About us</a></li>
                        <li><a href="#">Blog</a></li>
                        <li><a href="#">Press</a></li>
                        <li><a href="#">iOS App</a></li>
                        <li><a href="#">Android App</a></li>
                    </ul>
                </div>
                <div class="col span-1-of-2">
                    <ul class="social-links">
                        <li><a href="#"><i class="ion-social-facebook"></i></a></li>
                        <li><a href="#"><i class="ion-social-twitter"></i></a></li>
                        <li><a href="#"><i class="ion-social-googleplus"></i></a></li>
                        <li><a href="#"><i class="ion-social-instagram"></i></a></li>
                    </ul>
                </div>
            </div>
            <div class="row">
                <p>
                    Copyright &copy; 2017 by LVS. All rights reserved.
                </p>
            </div>
        </footer>

<script async defer src='https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyCwzPBDf-iuKnwlqYEjwp-arV_yWakCxJk&callback=initMap'></script>    
<!--<script src='https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyCwzPBDf-iuKnwlqYEjwp-arV_yWakCxJk'></script>-->
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script> 
        <script src="/June/vendors/js/jquery.waypoints.min.js"></script>

        <script src="/June/ressources/js/script.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script src="//cdn.jsdelivr.net/respond/1.4.2/respond.min.js"></script>
        <script src="//cdn.jsdelivr.net/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="//cdn.jsdelivr.net/selectivizr/1.0.3b/selectivizr.min.js"></script>
 

        <script>
            (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
                (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
                m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
                                    })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

            ga('create', 'UA-61026110-2', 'auto');
            ga('send', 'pageview');

        </script>

    </body>  

</html>
    
