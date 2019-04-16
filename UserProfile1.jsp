<%@ page contentType="text/html; charset=utf-8" language="java"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <style>
  .popcorn-loader-overlay {
      width: 100%;
      height: 100%;
      background: url('popcorn.gif') center no-repeat #FFF;
      z-index: 99999;
      position: fixed;
  }

  </style>

<meta charset="utf-8">

<title>View Profile</title>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script>
jQuery(window).load(function(){
  jQuery(".popcorn-loader-overlay").fadeOut(1000);
});
</script>

<noscript>
  <style>.popcorn-loader-overlay { display: none; } </style> </noscript>

</head>
<body>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
  <script src="RegistrationPage.js"></script>

  <div class="popcorn-loader-overlay"></div>

<h1>${name}</h1>
<table>
    <tr>
        <th colspan="5" style="background-color:#7c2f97;">Profile</th>
    </tr>
    <tr style="background-color:#f0a64e;">
        <th class="border">Name</th>
        <th class="border">Email</th>
        <th class="border">Address</th>
        <th class="border">Phone Number</th>
        <th class="border">Gender</th>
        <th class="border">Profile Photo</th>
        <th class="border">City</th>
    </tr>
        <tr>
            <td><font color="red">${name}</font></td>
            <td><font color="red">${email}</font></td>
            <td><font color="red">${address}</font></td>
            <td><font color="red">${phone_no}</font></td>
            <td><font color="red">${gender}</font></td>
            <td><font color="red">${photo}</font></td>
            <td><font color="red">${address}</font></td>
        </tr>

</table>

<a href="ViewBookingHistory.jsp">View Your Booking History</a>

<a href="UpdateProfile.jsp">Update Your Profile</a>


<a href="ResetPassword.html">Reset Your Password</a>

</body>
</html>
