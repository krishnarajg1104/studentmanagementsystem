<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%
	if(session.getAttribute("uName")==null){
		response.sendRedirect("login.jsp");
	}
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>KayOne - Profile</title>
    <link rel="stylesheet" href="style.css">
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</head>
<body>
<% if(session.getAttribute("loginType")=="student"){ %>
	<!-- STUDENT PROFILE PAGE -->	
    <div class="indexSidebar">
        <div class="sidebarLogo">
            <h1>KayOne</h1>
        </div>
        <div class="sidebarMenu">
            <ul>
                <li>
                    <a href="#home" class="active"><span class="icon"><ion-icon name="home"></ion-icon></span>Home</a>
                </li>
                <li>
                    <a href="#attendance"><span class="icon"><ion-icon name="calendar"></ion-icon></span>Attendance</a>
                </li>
                <li>
                    <a href="#schedule"><span class="icon"><ion-icon name="reader"></ion-icon></span>Schedule</a>
                </li>
                <li>
                    <a href="#result"><span class="icon"><ion-icon name="school"></ion-icon></span>Result</a>
                </li>
                <li>
                    <a href="#help"><span class="icon"><ion-icon name="help-cilcle"></ion-icon></span>Help</a>
                </li>
            </ul>
        </div>
    </div>

    <div class="mainContainer">
        <header class="header">
            <div class="headerTitle">
                <h2>Dashboard</h2>
            </div>
            <div class="searchBar">
                <input type="search" placeholder="Search here">
            </div>
            <div class="userIcon">
                <img src="/images/profile.jfif" alt="" width="50px" height="50px">
                <h4>User</h4>
                <small>Student</small>
            </div>
        </header>
        <main class="mainDashboard"></main>
    </div>

    <!-- Footer -->
    <footer class="footer">
        <p>&copy; KayOne Corporation</p>
    </footer>
   
    <%}else { %>
    <!-- ADMIN PROFILE PAGE -->
    	<div class="indexSidebar">
        <div class="sidebarLogo">
            <h1>KayOne</h1>
        </div>
        <div class="sidebarMenu">
            <ul>
                <li>
                    <a href="#home" class="active"><span class="icon"><ion-icon name="home"></ion-icon></span>Home</a>
                </li>
                <li>
                    <a href="#students"><span class="icon"><ion-icon name="people"></ion-icon></span>Students</a>
                </li>
                <li>
                    <a href="#teachers"><span class="icon"><ion-icon name="ribbon"></ion-icon></span>Teachers</a>
                </li>
                <li>
                    <a href="#schedule"><span class="icon"><ion-icon name="reader"></ion-icon></span>Schedule</a>
                </li>
                <li>
                    <a href="#result"><span class="icon"><ion-icon name="school"></ion-icon></span>Result</a>
                </li>
                <li>
                    <a href="#help"><span class="icon"><ion-icon name="help-circle"></ion-icon></span>Help</a>
                </li>
            </ul>
        </div>
    </div>

    <div class="mainContainer">
        <header class="header">
            <div class="headerTitle">
                <h2>Dashboard</h2>
            </div>
            <div class="searchBar">
                <input type="search" placeholder="Search here">
            </div>
            <div class="userIcon">
                <img src="/images/profile.jfif" alt="" width="50px" height="50px">
                <h4>User</h4>
                <small>Admin</small>
            </div>
        </header>
        <main class="mainDashboard"></main>
    </div>


    <!-- Footer -->
    <footer class="footer">
        <p>&copy; KayOne Corporation</p>
    </footer>
    <%}%>
</body>
</html>
<!-- ================================ -->
<%-- <%} else if(request.getParameter("loginType")=="teacher"){%>
    <!-- TEACHER PROFILE PAGE -->
    <div class="indexSidebar">
        <div class="sidebarLogo">
            <h1>KayOne</h1>
        </div>
        <div class="sidebarMenu">
            <ul>
                <li>
                    <a href="#home" class="active"><span class="icon"><ion-icon name="home"></ion-icon></span>Home</a>
                </li>
                <li>
                    <a href="#home" class="active"><span class="icon"><ion-icon name="people"></ion-icon></span>Students</a>
                </li>
                <li>
                    <a href="#attendance"><span class="icon"><ion-icon name="calendar"></ion-icon></span>Attendance Register</a>
                </li>
                <li>
                    <a href="#schedule"><span class="icon"><ion-icon name="reader"></ion-icon></span>Schedule</a>
                </li>
                <li>
                    <a href="#result"><span class="icon"><ion-icon name="school"></ion-icon></span>Exam Result</a>
                </li>
                <li>
                    <a href="#help"><span class="icon"><ion-icon name="help-circle"></ion-icon></span>Help</a>
                </li>
            </ul>
        </div>
    </div>

    <div class="mainContainer">
        <header class="header">
            <div class="headerTitle">
                <h2>Dashboard</h2>
            </div>
            <div class="searchBar">
                <input type="search" placeholder="Search here">
            </div>
            <div class="userIcon">
                <img src="/images/profile.jfif" alt="" width="50px" height="50px">
                <h4>User</h4>
                <small>Teacher</small>
            </div>
        </header>
        <main class="mainDashboard"></main>
    </div>


    <!-- Footer -->
    <footer class="footer">
        <p>&copy; KayOne Corporation</p>
    </footer> --%>