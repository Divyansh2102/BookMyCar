<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Know Us</title>
    <link rel="stylesheet" href="styles.css" />
     <script src="https://cdn.tailwindcss.com">

 </script>

 <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet"/>

 <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&amp;display=swap" rel="stylesheet"/>

<link rel="stylesheet" href="css/knowUsFaq.css">
  </head>
  <body>
        <section class="faq-section">

<a href="index.jsp"><img class="home" width="30px" height="30px" src="home.png"></a>

  <h2 class="faq-title">Know About Us</h2>



  <div class="faq-item">

    <div class="faq-question" onclick="toggleFaq(this)">

      About us 

    </div>

    <div class="faq-answer">

Welcome to Book My Car your trusted partner for hassle-free, affordable, and reliable car rentals. Founded with the vision of transforming mobility, Book My Car offers a wide range of vehicles to meet every traveler's need. Whether you're planning a weekend getaway, a business trip, or a family vacation, our app makes booking a car easy and efficient, saving you time and effort.

Our fleet includes a diverse selection of vehicles, from economy cars for budget-conscious travelers to luxury sedans, spacious SUVs, and vans for larger groups. Each vehicle is regularly maintained to ensure safety and cleanliness, and our commitment to quality means you can expect only the best. Additionally, Book My Car embraces sustainability with a growing selection of eco-friendly and electric cars, making it easy for environmentally-conscious travelers to choose greener options.

We believe that the key to our success lies in our focus on customer satisfaction. Our user-friendly app simplifies the booking process, while our dedicated customer support team is available 24/7 to assist with any queries, modifications, or emergencies during your journey. With transparent pricing, customizable rental periods, and flexible pick-up and drop-off locations, Book My Car is designed to cater to a wide range of mobility needs.

Thank you for choosing Book My Car. We look forward to being a part of your journey and helping you make memorable travel experiences.
    </div>

  </div>



  <div class="faq-item">

    <div class="faq-question" onclick="toggleFaq(this)">

      Privacy Policy 

    </div>

    <div class="faq-answer">

       At Book My Car, we value your privacy and are committed to protecting the personal information you share with us. This Privacy Policy outlines how we collect, use, and safeguard your information, ensuring transparency and trust in our services.
<br><br>
1. Information Collection
We collect information necessary for delivering our services effectively, including:

<br>Personal Information: Name, email, contact details, and payment information when you register or make a booking.
Usage Data: Details about how you use our app, including login times, preferences, and interactions with our services.
Location Data: With your consent, we may collect location information to improve the booking experience, identify nearby cars, and provide location-based services.
<br><br>2. Use of Information
Your information is used for the following purposes:

<br>Service Provision: To complete bookings, process payments, and provide you with updates on your rental.
<br>Customer Support: To address any issues, answer questions, and improve our customer experience.
<br>Marketing and Promotions: With your consent, we may send you promotional offers, discounts, and updates.
<br>Legal and Security: To prevent fraud, ensure compliance with legal obligations, and protect user data.
<br><br>3. Information Sharing
<br>We may share your data with trusted third parties for specific purposes, including payment processing, fraud prevention, and service improvements. We ensure that all third parties maintain data security and comply with applicable privacy laws.

<br><br>4. Data Security
<br>We use advanced security measures to protect your data, including encryption, regular audits, and secure servers. While we strive to protect your information, please be aware that no method of data transmission is entirely secure.

<br><br>5. Your Rights
<br>You have the right to access, modify, or delete your personal information. For any concerns or to exercise your rights, please contact our support team.

<br><br>6. Policy Updates
<br>We may update this Privacy Policy periodically. We encourage you to review it regularly to stay informed of any changes.



    </div>

  </div>



  <div class="faq-item">

    <div class="faq-question" onclick="toggleFaq(this)">

      Tearms And Conditions

    </div>

    <div class="faq-answer">

     These Terms and Conditions outline the rules and obligations for using the Book My Car app. By using our services, you agree to comply with these terms.
<br><br>
1. Booking and Rental Policies<br>
Age Requirement: Renters must be at least 21 years old. Additional fees may apply for renters under 25.
Driver's License: A valid driver's license is required for all rentals.
Payment Terms: Payment must be completed at the time of booking. We accept major credit cards and digital payment methods.
<br><br>2. Rental Period and Return<br>
Pick-Up and Drop-Off: Vehicles must be picked up and returned at the agreed locations and times.
Extensions: Rental extensions are subject to availability and may incur additional fees.
Late Returns: Late returns may result in additional charges and must be communicated to avoid penalty fees.
<br><br>3. Insurance and Liability<br>
Insurance Options: Book My Car offers various insurance coverage options. Renters are responsible for choosing coverage that meets their needs.
Damage and Loss: Renters are liable for any damage or loss incurred during the rental period unless covered by selected insurance.
Accidents: In the event of an accident, renters must report to local authorities and notify Book My Car immediately.
<br><br>4. User Conduct<br>
Prohibited Use: Vehicles may not be used for illegal activities, off-road driving, or carrying more passengers than the vehicle's capacity.
Subleasing: Subleasing or transferring rental agreements is prohibited.
Maintenance and Care: Renters are responsible for maintaining the cleanliness and general upkeep of the vehicle during the rental period.
<br><br>5. Termination and Suspension<br>
Book My Car reserves the right to terminate or suspend user accounts if there is evidence of misuse, illegal activity, or violation of terms.

<br><br>6. Limitation of Liability<br>
Book My Car is not liable for indirect damages, including loss of personal items, delays, or unavailability due to unforeseen circumstances.

<br><br>7. Amendments<br>
We reserve the right to amend these Terms and Conditions at any time. Continued use of the app constitutes acceptance of updated terms.
<br><br>
Thank you for choosing Book My Car.

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