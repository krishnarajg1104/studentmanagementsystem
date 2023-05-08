<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register - KayOne</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

    <!-- Navigation Bar -->
    <nav class="nav">
        <div class="leftNav">
            <h3 class="logo">KayOne</h3>
        </div>
        <div class="rightNav">
            <div class="navItem">
                <a href="#home">Home</a>
            </div>
            <div class="navItem">
                <a href="#about">About</a>
            </div>
            <div class="navItem">
                <a href="#service">Service</a>
            </div>
            <div class="navItem">
                <a href="#contact">Contact</a>
            </div>
            <div class="navItem">
                <button class="loginBtn">Login</button>
            </div>
        </div>
    </nav>

    <!-- Main Content -->
    <main class="container">
        <fieldset>
            <legend>Registration Form</legend>
            <form action="register" method="POST" class="form">
                <div class="inputBox">
                    <input type="text" name="fName" placeholder="First Name" required id="fName">
                </div>
                <div class="inputBox">
                    <input type="text" name="lName" placeholder="Last Name" required id="lName">
                </div>
                <div class="inputBox">
                    <input type="text" name="uName" placeholder="User Name" required id="uName">
                </div>
                <div class="inputBox">
                    <input type="tel" name="mbl" placeholder="Phone Number" required id="mbl">
                </div>
                <div class="inputBox">
                    <input type="text" name="city" placeholder="City" required id="city">
                </div>
                <div class="inputBox">
                    <input type="email" name="email" placeholder="Email ID" required id="email">
                </div>
                <div class="inputBox">
                    <input type="password" name="pwd" placeholder="Password" required id="pwd">
                </div>
                <div class="formFooter">
                    <div class="remember">
                        <label for="remember"><input type="checkbox" name="remember" id="remember" required> I have agree to the terms and conditions</label>
                    </div>
                </div>
                <div class="loginType">
                    <p>Register as</p>
                    <div class="student">
                        <input type="radio" required id="student" name="loginType" value="student"><label for="student">Student</label>
                    </div>
                    <div class="admin">
                        <input type="radio" required id="teacher" name="loginType" value="teacher"><label for="teacher">Teacher</label>
                    </div>
                    <div class="admin">
                        <input type="radio" required id="admin" name="loginType" value="admin"><label for="admin">Admin</label>
                    </div>
                </div>
                <div class="loginSubmitBtn">
                    <button class="submit" type="submit" id="submit">Register</button>
                </div>
                <div class="linkPage">
                    <p>Already have an account? <a href="login.jsp">Login</a></p>
                </div>
            </form>
        </fieldset>
    </main>

    <!-- Footer -->
    <footer class="footer">
        <p>&copy; KayOne Corporation</p>
    </footer>
</body>
</html>