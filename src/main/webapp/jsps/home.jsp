<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://www.w3schools.com/lib/w3-colors-flat.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="style.css">
    <title>Kiya fashion</title>
</head>
<body>
    <header class="header" id="top">
        <div class="w3-top">
            <div class="w3-bar w3-black w3-card header">
              <a class="w3-bar-item w3-button w3-padding-large w3-hide-medium w3-hide-large w3-right" href="javascript:void(0)" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
              <a href="#top" class="w3-bar-item w3-button w3-padding-large " >Jenkins CICD</a>
              <span class="w3-right">

             
              <a href="#home" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Home</a>
              <a href="#gallery" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Gallery</a>
              <a href="#new-arrivals" class="w3-bar-item w3-button w3-padding-large w3-hide-small">New Arrivals</a>
              <a href="#testimony" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Testimony</a>
              <a href="#contact" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Contact</a>
            </span>
            </div>
          </div>
  
          <!-- Navbar on small screens (remove the onclick attribute if you want the navbar to always show on top of the content when clicking on the links) -->
          <div id="navDemo" class="w3-bar-block w3-black w3-hide w3-hide-large w3-hide-medium w3-top" style="margin-top:46px">
            <a href="#home" class="w3-bar-item w3-button w3-padding-large" onclick="myFunction()">Home</a>
            <a href="#gallery" class="w3-bar-item w3-button w3-padding-large" onclick="myFunction()">Gallery</a>
            <a href="#new-arrivals" class="w3-bar-item w3-button w3-padding-large" onclick="myFunction()">New Arrivals</a>
            <a href="#testimony" class="w3-bar-item w3-button w3-padding-large" onclick="myFunction()">Testimony</a>
            <a href="#contact" class="w3-bar-item w3-button w3-padding-large" onclick="myFunction()">Contact</a>
          </div>
    </header>
<main>
    <div  class="hero-section w3-animate-left " id="home">
        <div class="hero-section-main">
           <div class="hero-section-into-text w3-margin-top">
               <h1 class="w3-text-white">CICD With Jenkins</h1>
              <p class="w3-right w3-text-white w3-small w3-hide-small hero-qoute ">
                "Jenkins is an open source CICD tool that does automation from when developers push their 
                codes to gitHub right up to when end-users can access the application on the web. It is a tool
                that is easy to configure and use. Overall, Jenkins helps automate repetitive and time-consuming 
                tasks in software development, allowing teams to focus on innovation and delivering high-quality 
                software. It is widely used in organizations of all sizes and has a large, active community that 
                continuously contributes to its development and improvement." 
                —Vin—

              </p>
               <div class="w3-text-white l " style="margin-top:60px">
                 <p >Follow us on Social media</p>
                 <div class="w3-margin-top">

  
              <a href="#">  <i class="fa fa-facebook-official w3-hover-opacity icons" ></i></a> 
              <a href="#"><i class="fa fa-instagram w3-hover-opacity icons" ></i></a> 
              <a href="#"><i class="fa fa-snapchat w3-hover-opacity icons"></i></a>  
              <a href="#"><i class="fa fa-pinterest-p w3-hover-opacity icons" ></i></a>  
              <a href="#"><i class="fa fa-twitter w3-hover-opacity icons"></i></a>  
              <a href="#"><i class="fa fa-linkedin w3-hover-opacity icons"></i></a>  
              </div>
               </div>
               <a href="#new-arrivals" class="" >
                <button class="w3-text-white w3-small w3-round w3-red w3-btn w3-margin-top"  >New Products
                  
                </button>
               </a>
               
           </div>
        </div>    
        </div>
    
    </div>
  </main>
  <section>
    <div class="products" id="gallery">

  
      <div class="w3-container ">
        <h2 class="section-text-header">Find out what life of an engineer is</h2>
      </div>
      <div class="w3-row product-list"  >
        <div class="w3-col m9 l6 product-left-side w3-animate-left">
          <p style="position: absolute;padding: 18px;">Developer Doing their Thing</p>
         <img src="https://jenkins-cicd-project.s3.amazonaws.com/project-photos/dev1.jpg" alt="pedram-normohamadian"/>
        </div>
        <div class="w3-col m9 l5 product-right-side" >
          <div class="product-right-side-1">
            <p style="position: absolute;padding: 20px;">Mr Dramacydal</p>
             <img src="https://vin-project.s3.amazonaws.com/project-images/mr+dramacydal.jpeg" alt="ussama-azam"/>
          </div>
          <div class="product-right-side-2">
            <p style="position: absolute; padding: 20px;">SRE Engineer</p>
              <img src="https://vin-project.s3.amazonaws.com/project-images/allen.JPEG" alt="kindred-hues"/>
          </div>
          <div>

          </div>
        </div>
      </div>
      <div>
        <div class="w3-container ">
          <h2 class="section-text-header">Get our newly arrived products</h2>
        </div>
        
        
      </div>
      </div>

      
  </section>
  
    <div class="new-arrived-products" id="new-arrivals">
      <div class="new-product ">
         <div class="new-arrived-image">
            <img src="https://jenkins-cicd-project.s3.amazonaws.com/project-photos/laptop1.jpg" alt="milada-vigerova"/>
         </div>
         <div class="w3-margin-top" style="overflow: hidden; padding:0px 20px;">

         
         <h4 style="text-overflow:ellipsis ;overflow: hidden;;">kiya Fashion</h4>
         <p  class="w3-small">8 items in store</p>
         <p class="w3-small" >gray | white | black</p>
         <p class="price" >$12.00</p>
       </div>
      </div>
      <div class="new-product">
       <div class="new-arrived-image">
         <img src="https://jenkins-cicd-project.s3.amazonaws.com/project-photos/large+screen.jpg" alt="cristofer-maximilian"/>
       </div>
       <div class="w3-margin-top" style="overflow: hidden; padding:0px 20px;">

       
         <h4 style="text-overflow:ellipsis ;overflow: hidden;">kiya Fashion</h4>
         <p  class="w3-small">10 items in store</p>
         <p class="w3-small" >gray | yellow | black</p>
         <p class="price" >$23.00</p>
     </div>
     </div>
     <div class="new-product">
       <div class="new-arrived-image">
         <img src="https://jenkins-cicd-project.s3.amazonaws.com/project-photos/coffee.jpg" alt="gez-xavier-mansfield"/>
     </div>
     <div class="w3-margin-top" style="overflow: hidden;  padding:0px 20px;">
       <h4>kiya Fashion</h4>
       <p >6 items in store</p>
       <p class="w3-small">gray | blue-black</p>
       <p class="price" >$10.00</p>
   </div>
     </div>
     <div class="new-product">
       <div class="new-arrived-image">
         <img src="https://jenkins-cicd-project.s3.amazonaws.com/project-photos/sylvia.png" alt="wander-fleur"/>
       </div>
       <div class="w3-margin-top" style="overflow: hidden;  padding:0px 20px;">
         <h4>Solutions Architech</h4>
         <p class="w3-small">Engineer</p>
         <p class="w3-small">COO</p>
         <p class="price" >Sylvia</p>
     </div>
    </div>
    <div class="new-product">
     <div class="new-arrived-image">
       <img src="https://spaces.w3schools.com/images/signature-june-v5jTUTeuc1c-unsplash-removebg-preview.png" alt="signature-june"/>
     </div>
     <div class="w3-margin-top" style="overflow: hidden; padding:0px 20px;">
       <h4>kiya Fashion</h4>
       <p  class="w3-small">5 items store </p>
       <p class="w3-small" >Red | black</p>
       <p class="price" >$24.00</p>
   </div>
   </div>
   <div class="new-product">
     <div class="new-arrived-image">
       <img src="https://spaces.w3schools.com/images/kemal-alkan-_BDBEP0ePQc-unsplash-removebg-preview.png" alt="kemal-alkan"/>
   </div>
   <div class="w3-margin-top"  style="overflow: hidden;  padding:0px 20px;">
     <h4 >kiya Fashion</h4>
     <p class="w3-small" >4 items in store</p>
     <p class="w3-small" >Red | yellow | black</p>
     <p  class="price" >$15.00</p>
 </div>
   </div>

   </div>
<!-- Client Feedback-->
<div class="w3-light-gray" style="margin-top: 40px; padding: 50px 0px;" id="testimony">


<div class="feedback">
  <div class="w3-container ">
    <h2 class="section-text-header" style="margin-top: 0px !important;">Client FeedBack</h2>
  </div> 
  <div class="Customer-feedback" style="display: flex;justify-content: space-evenly;flex-wrap: wrap;">
   <div class="card">
    <div class="customer-feedback-header">
       <div class="customer-profile">
         <img src="https://spaces.w3schools.com/images/1B22UBPK1Pw.jpg" alt="Photo by Behrouz Sasani | Unsplash"/>
       </div>
       <div>
         <p class="name">Sara Mak</p>
         
       </div>
    </div>
   <div>
     <p class="w3-small">"Your items were a huge success!"</p>
   </div>
  </div>
  <div class="card">
    <div class="customer-feedback-header">
       <div class="customer-profile">
         <img src="https://spaces.w3schools.com/images/zHHtOf92CC4.jpg" alt="Photo by Roman Holoschchuk | Unsplash"/>
       </div>
       <div>
         <p class="name">Christina Bredema</p>
         
       </div>
    </div>
   <div>
     <p class="w3-small">"Thank you for your gracious hospitality hosting the W.H.A.T. Group! "</p>
   </div>
  </div>
  <div class="card">
    <div class="customer-feedback-header">
       <div class="customer-profile">
         <img src="https://spaces.w3schools.com/images/cdksyTqEXzo.jpg" alt="Photo by Robert Godwin | Unsplash"/>
       </div>
       <div>
         <p class="name">John Daniel</p>
         
       </div>
    </div>
   <div>
     <p class="w3-small">"With Gratitude...for making this world & my life better!"</p>
   </div>
  </div>
  <div class="card">
    <div class="customer-feedback-header">
       <div class="customer-profile">
         <img src="https://spaces.w3schools.com/images/quPVqsLmhTg.jpg" alt="Photo by Florencia Simonini | Unsplash"/>
       </div>
       <div>
         <p class="name">Lydia Kante</p>
         
       </div>
    </div>
   <div>
     <p class="w3-small" >"I LOVE THE SHIRTS, they are probably the best dress/casual shirts I have ever had."</p>
   </div>
  </div>


  </div> 
</div>

</div>

<br>
  <div class="w3-center contact" id="contact" >
    <div class=" w3-left-align w3-margin-top contact-info ">
       <h3 style="font-weight: 800;" class="contact-head">GET IN TOUCH</h3> 
       <h4 style="font-weight: 600;">Your styles at low cost 
       </h4>
       <p>We care about our customers<br>you can contact us for any feedback</p>
       <h4 style="font-weight: 600;">Follow Us </h4>
       
     <i class="fa fa-facebook-official w3-hover-opacity icons"  ></i>
     <i class="fa fa-instagram w3-hover-opacity icons" ></i>
     <i class="fa fa-snapchat w3-hover-opacity icons"></i>
     <i class="fa fa-pinterest-p w3-hover-opacity icons" ></i>
     <i class="fa fa-twitter w3-hover-opacity icons"></i>
     <i class="fa fa-linkedin w3-hover-opacity icons"></i>
    </div>
    <div class="w3-left-align w3-margin-top contact-info" >
          <h3 style="font-weight: 600;">OPENING HOURS</h3>
             <p>Mon - Sat 7am - 9pm:</p>
             <p>Opening on Morning | Off at afternoon</p>
             <p>Delivery only on opening hours</p>
             <br>
             <div class="w3-margin-to  w3-left-align" >
              <h4 style="font-weight: 600;">CONTACT INFO</h4>
              <p> <i class="fa fa-phone " style="margin-right: 8px;font-size: 20px;"></i> 09661948268</p>
              <p><i class="fa fa-phone" style="margin-right: 8px;font-size: 20px;"></i>09451003746</p>
              <label><i class="fa fa-envelope " style=" margin-right: 5px;font-size: 20px;"></i></label>
             <input placeholder="Email" class="w3-margin-top" type="email"/>
             <br>
             <br>
             <button class="w3-button w3-red w3-round " style="margin-left: 30px;">Subscribe</button>
    
           </div>     
                 
    </div>
    
    
  </div>


  <div class="w3-flat-midnight-blue w3-padding w3 w3-center w3-margin-top">
    <p>Powered by CHA Team</p>
  </div>
    <script>
        function myFunction() {
          var x = document.getElementById("navDemo");
          if (x.className.indexOf("w3-show") == -1) {
            x.className += " w3-show";
          } else { 
            x.className = x.className.replace(" w3-show", "");
          }
        }
    </script>
</body>
</html>