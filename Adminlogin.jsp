<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
</head>
<style>
*{
    margin: 0px;
    padding: 0px;
    box-sizing: border-box;
    
font-family: 'Roboto', sans-serif;
}

.container{
    max-width: 80%; 
    padding: 34px; 
    margin: auto;
}

.container h1 {
    text-align: center;
    font-family: 'Sriracha', cursive;
    font-size: 40px;
    
}

p{
    font-size: 17px;
    text-align: center;
    font-family: 'Sriracha', cursive;
}
h2{
text-align:center;
font size:40px;
}

input, textarea{
    
    border: 2px solid black;
    border-radius: 6px;
    outline: none;
    font-size: 16px;
    width: 80%;
    margin: 11px 0px;
    padding: 7px;
}
form{
    display: flex;
    align-items: center;
    justify-content: center;
    flex-direction: column;
}

.btn{
    color: white;
    background: purple;
    padding: 8px 12px;
    font-size: 20px; 
    border: 2px solid white;
    border-radius: 14px;
    cursor: pointer;
}

.bg{
    width: 100%;
    position: absolute;
    z-index: -1;
    opacity: 0.6;
}
.submitMsg{ 
    color: green;
    }

   
</style>
<body>
    <%String msg=(String)request.getAttribute("info"); %>
     
    <img class="bg" src="res/about.png" alt="">
    <div class="container">
        <h1>GYM MANAGEMENT SYSTEM.</h3>
        <h2>Admin Login</h2>
        <%if(msg!=null){ %>
        <h1><%=msg %></h1>
        <%} %>
        
       
        
        <p>Enter your details and submit this form.</p>
        <form action="loginservlet" method="post">
            <input type="text" name="username" id="userid" placeholder="Enter your user id">
            <input type="text" name="password" id="password" placeholder="Enter your password">
            //<input type="text" name="password" id="password" placeholder="Enter your pas">
            <button class="btn" type="submit">Submit</button> 
            <button class="btn" type="reset">Reset</button>
            <button class="btn" type="ok">Ok</button>
            
        </form>
    </div>
   
    
</body>
</html>

