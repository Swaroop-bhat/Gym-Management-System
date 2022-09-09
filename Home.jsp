
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home | GYM</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="Home.jsp">
    	<img src="res/logo1.png" style="height:80px;width:150px" alt="IS">
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#ashik" aria-controls="ashik" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="ashik">
      <ul class="navbar-nav ms-auto">
        <li class="nav-item pe-2">
          <a class="btn btn-outline-info active w-100 pe-2" href="Home.jsp">Home</a>
        </li>
        <li class="nav-item pe-2">
          <a class="btn btn-outline-info w-100" href="Addmember.jsp">Add new memnber</a>
        </li>
        <li class="nav-item pe-2">
          <a class="btn btn-outline-info w-100" href="Addtrainer.jsp">Add new trainer</a>
        </li>
        <li class="nav-item pe-2">
          <a class="btn btn-outline-info w-100" href="List_member_servlet">Member list</a>
        </li>
        <li class="nav-item pe-2">
          <a class="btn btn-outline-info w-100" href="list_trainer_servlet">Trainer list</a>
        </li>
        
       <li>
      
      <li class="nav-item pe-2">
          <a class="btn btn-outline-danger w-100" style="margin-left:5px" href="Adminlogin.jsp">Logout </a>
        </li>
      </ul>
      
    </div>
  </div>
</nav>

<% String msg = (String) request.getAttribute("info"); 
if(msg!=null){%>
<h1 class="text-center text-primary display-3"> <%=msg %> </h1>
<%} %>

<div class="container-fluid mt-4">
<div id="fizan" class="carousel carousel-dark slide" data-bs-ride="carousel">
  
  <div class="carousel-inner">
    <div class="carousel-item active" data-bs-interval="10000">
      <img src="res/about.png" style="height:500px" class="d-block w-100" alt="slide one">
    </div>
    <div class="carousel-item" data-bs-interval="2000">
      <img src="res/logo1.png" style="height:500px" class="d-block w-100" alt="slide two">
      <div class="carousel-caption d-none d-md-block">
      </div>
    </div>
    <div class="carousel-item">
      <img src="res/Fitness.png" style="height:500px" class="d-block w-100" alt="slide three">
    </div>
    <div class="carousel-item">
      <img src="res/goal.png" style="height:500px" class="d-block w-100" alt="slide four">
    </div>
    <div class="carousel-item">
      <img src="res/gym.png" style="height:500px" class="d-block w-100" alt="slide five">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#fizan" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#fizan" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
</div>

</body>
</html>