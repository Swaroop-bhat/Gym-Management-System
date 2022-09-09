<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="gym.Memberobj"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
	integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
	integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
	crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<title>Member List</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<a class="navbar-brand"
				href="https://sites.google.com/mite.ac.in/ise/activities?authuser=0">
				<img src="res/logo1.png" style="height: 80px; width: 150px" alt="IS">
			</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#ashik"
				aria-controls="ashik" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="ashik">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item pe-2"><a
						class="btn btn-outline-info   w-100 pe-2" href="Home.jsp">Home</a>
					</li>
					<li class="nav-item pe-2"><a
						class="btn btn-outline-info  w-100" href="Addmember.jsp">Add
							new member</a></li>
					<li class="nav-item pe-2"><a
						class="btn btn-outline-info w-100" href="Addtrainer.jsp">Add
							new trainer</a></li>
					<li class="nav-item pe-2"><a
						class="btn btn-outline-info active w-100" href="List_member_servlet">Memberlist</a></li>
					<li class="nav-item pe-2"><a
						class="btn btn-outline-info w-100" href="list_trainer_servlet">Trainerlist</a></li>
					<li class="nav-item pe-2"><a
						class="btn btn-outline-danger w-100" href="Adminlogin.jsp">Logout</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<table class="table caption-top responsive">
		<thead class="thead-danger">
			<tr>
				<th>memid</th>
				<th>name</th>
				<th>age</th>
				<th>address</th>
				<th>phone</th>
				<th>gender</th>
				<th>timings</th>
				<th>fees</th>
			</tr>
		</thead>
		<tbody>
			<%
    List<Memberobj> mem=(List<Memberobj>) request.getAttribute("data");
    %>
			<%
					for(Memberobj obj:mem) {
					%>



			<tr>
				<td><%=obj.getMemid() %></td>
				<td><%=obj.getName() %></td>
				<td><%=obj.getAge() %></td>
				<td><%=obj.getAddress() %></td>
				<td><%=obj.getPhone() %></td>
				<td><%=obj.getGender() %></td>
				<td><%=obj.getTimings() %></td>
				<td><%=obj.getFees() %></td>
			</tr>
          <%} %>
		</tbody>
	</table>

</body>
</html>