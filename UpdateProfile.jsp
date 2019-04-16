<%@ page contentType="text/html; charset=utf-8" language="java"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

  <meta charset="utf-8">

  <style>
  .popcorn-loader-overlay {
      width: 100%;
      height: 100%;
      background: url('popcorn.gif') center no-repeat #FFF;
      z-index: 99999;
      position: fixed;
  }

  </style>


  <title>Update Your Profile</title>

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


    <div class="popcorn-loader-overlay"></div>

    <div style="text-align:center;">
      <h1>Update Your Profile</h1>

  <form action="UserProfile.jsp" method="post">

    <div class="form-control">
      <label class="header">Name:</label>
      <input type="text" title="Name" id="name" name="name" value= "${name}"
       method="post">
    </div>

<br>

    <div class="form-control">
      <label class="header">Phone Number:</label>
      <input type="tel" title="Phone Number" id="phone_number" name="phone_number"
      value="${phone_no}" method="post" title="Phone Number" >
    </div>



<br>

<div class="form-control">
  <label class="header">City:</label>
  <input type="text" title="City" id="city" name="city"
  value="${address}" method="post" title="City" >
</div>

<br>

    <div class="form-control">
      <label class="header">Profile Photo:</label>

      <input id="image" title="Profile Photo" type="file" name="profile_photo" value="${photo}" method="post" capture>
    </div>


<br>




    <div class="form-control">
      <label class="header" title="Type of User">Type of User</label><select name="type_of_user" method="post" >
        <option value=" " selected> EMPTY </option>
        <option value="Customer">Customer</option>
        <option value="Manager">Manager</option>
        <option value="Both">Both</option>
      </select>
    </div>


<br>

    <div>
      <input style="text-align: center;" type="submit" class="save-changes" title="Save Changes" method="post" value="Save Changes">
    </div>



</form>


</div>
</body>
</html>
