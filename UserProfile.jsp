<%@ page contentType="text/html; charset=utf-8" language="java"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta charset="utf-8">

<title>View Profile</title>

<link rel="stylesheet"  type="text/css" href="Profile.css" />
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

<h1><%=user.getname() %></h1>
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
    </tr>
  
        <tr>
            <td><%= user.getname() %></td>
            <td><%= user.getEmail() %></td>
            <td><%= user.getaddress() %></td>
            <td><%= user.getphone_no() %></td>
            <td><%= user.getgender() %></td>
            <td><%= user.getphoto() %></td>
        </tr>
        <%}%>
</table>
</body>
</html>
