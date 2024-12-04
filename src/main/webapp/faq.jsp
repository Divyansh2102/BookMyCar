<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
  <head>
    <title>Frequently Asked Questions</title>
    <link rel="stylesheet" href="styles.css" />
     <script src="https://cdn.tailwindcss.com">

 </script>

 <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet"/>

 <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&amp;display=swap" rel="stylesheet"/>
<link rel="stylesheet" href="css/knowUsFaq.css">


  </head>
  <body>

        <section class="faq-section">
   
   <a href="index.jsp"><img class="home" width="25px" height="25px" src="home.png"></a>
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
  
  
  
  
  
    <div class="faq-item">

    <div class="faq-question" onclick="toggleFaq(this)">

      What documents are required to rent a self-drive car?<i class="fas fa-chevron-down"></i>

    </div>

    <div class="faq-answer">

You’ll need a valid driver’s license, a government-issued ID (such as a passport or national ID), and a credit or debit card for payment.


    </div>

  </div>
  
    <div class="faq-item">

    <div class="faq-question" onclick="toggleFaq(this)">

      Is there an age requirement to rent a car? <i class="fas fa-chevron-down"></i>

    </div>

    <div class="faq-answer">
Yes, renters typically need to be at least 21 years old, though some premium vehicles may have higher age requirements.


    </div>

  </div>
  
  
    <div class="faq-item">

    <div class="faq-question" onclick="toggleFaq(this)">

      Can I extend my rental duration? <i class="fas fa-chevron-down"></i>

    </div>

    <div class="faq-answer">

Yes, you can extend your rental if the vehicle is available. Contact our support team to make arrangements, and additional charges may apply.


    </div>

  </div>
  
  
    <div class="faq-item">

    <div class="faq-question" onclick="toggleFaq(this)">

      What if the car breaks down during my rental period? <i class="fas fa-chevron-down"></i>

    </div>

    <div class="faq-answer">

In case of a breakdown, contact our roadside assistance team. We provide 24/7 support to ensure your safety and timely assistance.


    </div>

  </div>
  
  
  
  
    <div class="faq-item">

    <div class="faq-question" onclick="toggleFaq(this)">

Do I need to refuel the car before returning it?  <i class="fas fa-chevron-down"></i>
    </div>

    <div class="faq-answer">

Yes, please return the car with the same fuel level as when it was picked up. Refueling charges may apply if the fuel level is lower.



    </div>

  </div>
    
        <div class="faq-item">

    <div class="faq-question" onclick="toggleFaq(this)">

     Can I cancel or modify my booking? <i class="fas fa-chevron-down"></i>

    </div>

    <div class="faq-answer">

Yes, you can cancel or modify your booking through your account. Cancellation fees may apply depending on the timing.



    </div>

  </div>
    
    <div class="faq-item">

    <div class="faq-question" onclick="toggleFaq(this)">

      Is there a security deposit? <i class="fas fa-chevron-down"></i>

    </div>

    <div class="faq-answer">
Yes, a security deposit is required at the start of your rental. It will be refunded upon return, provided there is no damage to the vehicle.
    </div>

  </div>
  
  
  
  

</section>




 <script>

  function toggleFaq(element) {

    // Close any open FAQ

    const openFaq = document.querySelector('.faq-item.active');

    if (openFaq && openFaq !== element.parentElement) {

      openFaq.classList.remove('active');

    }

    // Toggle the clicked FAQ

    element.parentElement.classList.toggle('active');

  }

</script>

  </body>
</html>