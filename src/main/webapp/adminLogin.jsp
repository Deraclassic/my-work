<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 3/12/24
  Time: 5:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Admin Login</title>
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.3/css/bootstrap.min.css">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
   <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.3/js/bootstrap.min.js"></script>
    <style>
        body {
            color: #fff;
            background: #e2f0fa;
        }
        .form-control {
            min-height: 41px;
            background: #f2f2f2;
            box-shadow: none !important;
            border: transparent;
        }
        .form-control:focus {
            background: #e2e2e2;
        }
        .form-control, .btn {
            border-radius: 2px;
        }
        .login-form {
            width: 350px;
            margin: 30px auto;
            text-align: center;
        }
        .login-form h2 {
            margin: 10px 0 25px;
        }
        .login-form form {
            color: #7a7a7a;
            border-radius: 3px;
            margin-bottom: 15px;
            background: #fff;
            box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
            padding: 30px;
        }
        .login-form .btn {
            font-size: 16px;
            font-weight: bold;
            background: #3598dc;
            border: none;
            outline: none !important;
        }
        .login-form .btn:hover, .login-form .btn:focus {
            background: #2389cd;
        }
        .login-form a {
            color: #fff;
            text-decoration: underline;
        }
        .login-form a:hover {
            text-decoration: none;
        }
        .login-form form a {
            color: #7a7a7a;
            text-decoration: none;
        }
        .login-form form a:hover {
            text-decoration: underline;
        }
        .signup-prompt {
            color: #0e0e0e; /* This will change the color of the text to white */
        }
        .signup-prompt a {
            color: #3598dc; /* This will change the color of the link to black */
        }


    </style>
</head>
<body>
<div class="login-form">
    <form action="admin-servlet" method="post">
        <h2 class="text-center">Admin Login</h2>
        <div class="form-group has-error">
            <label>
                <input type="text" class="form-control" name="username" placeholder="Username" required="required">
            </label>
        </div>
        <div class="form-group">
            <label>
                <input type="password" class="form-control" name="password" placeholder="Password" required="required">
            </label>
        </div>
        <div class="form-group">
            <label>
                <input type="password" class="form-control" name="password" placeholder="Admin token" required="required" />
            </label>
        </div>
        <div class="form-group">
           <a href="adminDashboard.jsp"> <button type="submit" class="btn btn-primary btn-lg btn-block">Sign in</button></a>
        </div>
        <p><a href="#">Lost your Password?</a></p>
    </form>
    <p class="text-center small signup-prompt">Don't have an account? <a href="adminSignup.jsp">Sign up here!</a></p>
</div>
</body>
</html>
