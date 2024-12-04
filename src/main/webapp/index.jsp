<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

 <head>

 <meta charset="utf-8"/>

 <meta content="width=device-width, initial-scale=1.0" name="viewport"/>

 <title>

  Outstation Rides

 </title>

 <script src="https://cdn.tailwindcss.com">

 </script>

 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet"/>
 <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&amp;display=swap" rel="stylesheet"/>
  <link rel="stylesheet" href="css/indexstyles.css">
<style>

.footer {



 background: #3e5172;

 color: #fff;

 padding: 40px 0;

 font-family: Arial, sans-serif;
 align-items:center;

}

.footer .container {

 display: flex;

 justify-content: space-between;

 align-items: center;

 flex-wrap: wrap;

}

.footer .footer-content {

 display: flex;

 justify-content: space-between;

 width: 100%;

}

.footer .footer-section {

 flex: 1;

 margin: 10px;

 min-width: 200px;

}

.footer .footer-section h3,

.footer .footer-section h4 {

 color: #4CAF50;

 margin-bottom: 15px;

}

.footer .footer-section p {

 line-height: 1.8;

}

.footer .footer-section ul {

 list-style: none;

 padding: 0;

}

.footer .footer-section ul li {

 margin-bottom: 10px;

}

.footer .footer-section ul li a {

 color: #fff;

 text-decoration: none;

 transition: all 0.3s ease;

}

.footer .footer-section ul li a:hover {

 color: #f4a261;

 text-decoration: underline;

}

.footer .footer-bottom {

 text-align: center;

 margin-top: 20px;

 font-size: 0.9rem;

 color: #aaa;

}

.footer .footer-bottom p {

 margin: 0;

 margin-left: 365px;

}

</style>
 </head>

 <body class="bg-gray-100 text-gray-800">

 <header class="bg-[#3e5172] text-white p-4 flex justify-between items-center">

  <div class="flex items-center">

  <div class="bg-green-500 p-2 rounded-full">

   <i class="fas fa-car text-white">

   </i>

  </div>

  <div class="ml-2">

   <h1 class="text-lg font-bold">

   BookMyCar

   </h1>

   <p class="text-sm">

   Outstation rides at your fare

   </p>

  </div>

  </div>

  <div class="flex items-center space-x-4">

  

  <div class="flex items-center space-x-2">

   <button class="bg-gray-700 p-2 rounded-full">

   <i class="fas fa-globe">

   </i>

   </button>

   <button class="bg-gray-700 p-2 rounded-full">

   En

   </button>

   <a href="login.jsp"><button class="bg-gray-700 px-4 py-2 rounded">

    Login

    </button></a>

    <a href="register.jsp"><button  class="bg-gray-700 px-4 py-2 rounded">

    Sign Up

    </button>
</a>
  </div>

  </div>

 </header>

 <main class="p-4">

  <section class="bg-white p-6 rounded-lg shadow-md mb-6" id="background"> <!-- background overlay -->

 <style>
        #upSection {
            position: relative;
            padding: 150px;
            color: white;
        }
        #blurOverlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: url('carr.png') no-repeat center center;
            background-size: cover;
            filter: blur(10px);
            z-index: 1;
        }
        #textContainer {
            position: relative;
            z-index: 2;
            text-align: center;
        }
        #textContainer h2 {
            color: #000; /* Change this to your desired text color */
        }
        #textContainer span {
            color: #ff0000; /* Change this to your desired highlight color */
        }
    </style>
<div id="upSection">
    <div id="blurOverlay"></div>
    <div id="textContainer">
        <h2 class="text-2xl font-bold text-gray-900 mb-4" style="color:white">
            Comfortable rides at your
            <span class="text-green-500" id="highlight">fare</span>
        </h2>
    </div>
</div>






  <div class="flex ">

    <div class="w-[880px]">

      <img width="880px" src="https://cdni.iconscout.com/illustration/premium/thumb/order-car-on-rent-via-mobile-app-illustration-download-in-svg-png-gif-file-formats--rental-a-sharing-service-pack-services-illustrations-5053357.png?f=webp" alt="">

    </div>


</div>

  </section>

<!-- Chhose us section -->
<section class="mb-6">

  <h2 class="text-2xl font-bold text-gray-900 mb-4">

    So, why choose <span class="text-green-500">us?</span>

  </h2>

  <div class="why-choose-container">

    <div class="feature-item">

      <div class="feature-icon">

        <i class="fas fa-dollar-sign"></i>

      </div>

      <div class="feature-content">

        <h3>Fair prices</h3>

        <p>Choose the best offer at your price</p>

      </div>

    </div>

    <div class="feature-item">

      <div class="feature-icon">

        <i class="fas fa-user-check"></i>

      </div>

      <div class="feature-content">

        <h3>Flexible pricing plans</h3>

        <p> Choose Unlimites kms or 'with fuel' plans



        </p>

      </div>

    </div>

    <div class="feature-item">

      <div class="feature-icon">

        <i class="fas fa-door-open"></i>

      </div>

      <div class="feature-content">

        <h3>Round Trip Cabs</h3>

        <p>Wish a cab for all your travel route, then go with our round trip cabs.</p>

      </div>

    </div>

  </div>

</section>



 <section class="mb-3">

  <h2 class="text-2xl font-bold text-gray-900 mb-4">

    We care about <span class="text-green-500">safety</span>

  </h2>

  <div class="safety-container">

    <!-- Image Container for car -->

    <div class="image-container">

      <img src="carr.png" alt="Illustration of a car with a shield icon representing safety" width="400" height="300">

    </div>



    <!-- Feature Items -->

    <div class="features">

      <div class="feature-itemss">

        <h3>Rating system</h3>

        <p>We ask users to give us their honest feedback after each ride. You can choose your driver based on the experience of previous riders.</p>

      </div>

      <div class="feature-itemss">

        <h3>Mandatory checks</h3>

        <p>All drivers must pass a background check before driving with BookMyCar.</p>

      </div>

      <div class="feature-itemss">

        <h3>Regular Maintenance </h3>

        <p>Every Car has a scheduled maintenance .</p>

      </div>

    </div>

  </div>

</section>






  <section class="faq-section">

  <h2 class="faq-title">Frequently Asked Questions</h2>



  <div class="faq-item">

    <div class="faq-question" onclick="toggleFaq(this)">

      Is there a speed limit? <i class="fas fa-chevron-down"></i>

    </div>

    <div class="faq-answer">

      We allows up to 125 km/hr. However, in some cities, the limit is 80 km/hr, and certain cars may have speed governors as per government directives. We strictly advises following local speed limits.

    </div>

  </div>



  <div class="faq-item">

    <div class="faq-question" onclick="toggleFaq(this)">

      Can I extend/ cancel/ modify? <i class="fas fa-chevron-down"></i>

    </div>

    <div class="faq-answer">

      Yes, extensions are possible subject to availability & charges. Cancellations & modifications will attract nominal charges as per our policy.

    </div>

  </div>



  <div class="faq-item">

    <div class="faq-question" onclick="toggleFaq(this)">

      Booking criteria & documents? <i class="fas fa-chevron-down"></i>

    </div>

    <div class="faq-answer">

      Minimum 21 years old with a valid original government ID (Aadhar or Passport) and an original hard copy or DigiLocker driving license for “Light Motor Vehicles” at least 6 months old. Additional verification documents may be required, such as local ID or proof of travel.

    </div>

  </div><div class="faq-item">

    <div class="faq-question" onclick="toggleFaq(this)">

      Are there any restricted areas? <i class="fas fa-chevron-down"></i>

    </div>

    <div class="faq-answer">

      Leh/Ladhakh, Spiti Valley & Kaza/Nako regions are restricted for our cars. Customers will be fully liable for any damages incurred in these areas.

    </div>

  </div>

  <div class="view-all">

    <a href="faq.jsp"><u>View all</u></a>

  </div>

</section>

  <div class="section-title">

  What Our Customer Say

  </div>

  <div class="testimonials">

  <div class="testimonial-slider" style="transform: translateX(0%);">

   <div class="testimonial-item">
    
     <p><b>"Easy and Hassle-Free Experience!"</b> <br><br>

"Renting with Book My Car was a breeze! The car was clean, well-maintained, and ready at the scheduled time. The booking process was simple, and the customer service was super responsive. Highly recommended!" 
 <h4>-Himanshu , Pune</h4>
   </div>

   <div class="testimonial-item">
    
     <p><b> "Affordable and Reliable!"</b> <br><br>


"I needed a car for a last-minute business trip, and Book My Car had the best prices and options. The car performed wonderfully, and there were no hidden fees. I’ll be renting from here again for sure!" 
 <h4>-Raghav , Bangaluru</h4>
   </div>
   
  </div>



 </main>
<footer class="footer">

 <div class="container">

  <div class="footer-content">

   <div class="footer-section">

    <h3>BookMyCar</h3>

    <p>Your trusted partner for seamless and reliable rides.</p>

   </div>

   <div class="footer-section links">

    <h4>Quick Links</h4>

    <ul>

     <li><a href="#">Home</a></li>

     <li><a href="login.jsp">Services</a></li>

     <li><a href="knowUs.jsp">About Us</a></li>

     <li><a href="ContactUs.jsp">Contact Us</a></li>

    </ul>

   </div>

   <div class="footer-section">

    <h4>Contact Us</h4>

    <p>Email: support@BookMyCar.com</p>

    <p>Phone: +91 9765438980</p>

   </div>

  </div>

  <div class="footer-bottom">

   <p>&copy; 2024 BookMyCar All rights reserved.</p>

  </div>

 </div>

</footer>






 <script>
 let currentIndex = 0;
 const slides = document.querySelectorAll('.slides img');
 const totalSlides = slides.length;
 function showNextSlide() {
   currentIndex = (currentIndex + 1) % totalSlides;
   const offset = -currentIndex * 100;
   document.querySelector('.slides').style.transform = translateX(${offset}%);
 }
 setInterval(showNextSlide, 1000000000000000); 



 function resetAutoSlide() {

     clearInterval(autoSlideInterval);

     startAutoSlide();

 }


 document.addEventListener("DOMContentLoaded", startAutoSlide);
 const slider = document.querySelector('.testimonial-slider');
  
  function toggleFaq(element) {

    const openFaq = document.querySelector('.faq-item.active');

    if (openFaq && openFaq !== element.parentElement) {

      openFaq.classList.remove('active');

    }


    element.parentElement.classList.toggle('active');

  }

</script>

 </body>

</html>