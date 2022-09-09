<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<title>Insert Member Details</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="https://sites.google.com/mite.ac.in/ise/activities?authuser=0">
    	<img src="res/logo1.png" style="height:80px;width:150px" alt="IS">
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#ashik" aria-controls="ashik" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="ashik">
      <ul class="navbar-nav ms-auto">
        <li class="nav-item pe-2">
          <a class="btn btn-outline-info   w-100 pe-2" href="Home.jsp">Home</a>
        </li>
        <li class="nav-item pe-2">
          <a class="btn btn-outline-info active w-100" href="Addmember.jsp">Add new member</a>
        </li>
        <li class="nav-item pe-2">
          <a class="btn btn-outline-info w-100" href="Addtrainer.jsp">Add new trainer</a>
        </li>
        <li class="nav-item pe-2">
          <a class="btn btn-outline-info w-100" href="List_member_servlet">Memberlist</a>
        </li>
        <li class="nav-item pe-2">
          <a class="btn btn-outline-info w-100" href="list_trainer_servlet">Trainerlist</a>
        </li>
        <li class="nav-item pe-2">
          <a class="btn btn-outline-danger w-100" href="Adminlogin.jsp">Logout</a>
        </li>
      </ul>
    </div>
  </div>
</nav>

<div class="container"> 
<% String msg = (String) request.getAttribute("info"); 
if(msg!=null){%>
<h1 class="text-center text-primary display-3"> <%=msg %> </h1>
<%} %>
<form action="Add_member_servlet" method="post" class="row g-3">
  <div class="col-md-6">
    <label for="Name" class="form-label">Name</label>
    <input type="text" name="name" class="form-control" id="inputname">
  </div>
  <div class="col-md-6">
    <label for="age" class="form-label">Age</label>
    <input type="number" name="age" class="form-control" id="inputage">
  </div>
  <div class="col-12">
    <label for="inputAddress" class="form-label">Address</label>
    <input type="text" name="address" class="form-control" id="inputAddress" placeholder="">
  </div>
  <div class="col-12">
    <label for="inputphone" class="form-label">Phone</label>
    <input type="text" name="phone" class="form-control" id="inputphone" placeholder="">
  </div>
  <div class="col-md-6">
    <label for="inputgender" class="form-label">Gender</label>
    
    <select id="inputState" name="gender" class="form-select">
      <option selected>Choose...</option>
      <option value="male">male</option>
      <option value="female">female</option>
      </select>
  </div>
  <div class="col-md-4">
    <label for="inputState" class="form-label">Timings</label>
    <select id="inputState" name="timings" class="form-select">
      <option selected>Choose...</option>
      <option value="5am-10am">5am-10am</option>
      <option value="4pm-10pm">4pm-10pm</option>
    </select>
  </div>
  
  <div class="col-md-2">
    <label for="inputremarks" class="form-label">Fees Amount</label>
    <input type="text" name="fees"  class="form-control" id="inputremarks">
  </div>
  <div class="col-12">
  </div>
  <div class="col-12 mx-auto">
    <button type="submit" class="btn btn-primary ">Submit</button>
  </div>
</form>
</div>
</body>
</html>