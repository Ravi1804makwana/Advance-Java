<%-- 
    Document   : home_lms
    Created on : 25-Mar-2020, 11:02:02
    Author     : Ravikumar Makwana
--%>
<%
        if (session.getAttribute("lms") == null) {
            response.sendRedirect("login_lms.jsp");
        }
%>
<%@include file="header.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="description" content="uza - Model Agency HTML5 Template">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Title -->
        <title>Library Management System</title>

        <!-- Favicon -->
        <link rel="icon" href="./img/core-img/favicon.ico">

        <!-- Core Stylesheet -->
        <link rel="stylesheet" href="style.css">
    </head>

    <body>
        <div class="breadcrumb-area">
            <div class="container h-100">
                <div class="row h-100 align-items-end">
                    <div class="col-12">
                        <div class="breadcumb--con">
                            <h2 class="title">
                                Library Management System
                            </h2>
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="index.jsp"><i class="fa fa-home"></i>Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Assignment 6</li>
                                    <li class="breadcrumb-item active" aria-current="page">Library Management System</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Background Curve -->
            <div class="breadcrumb-bg-curve">
                <img src="./img/core-img/curve-1.png" alt="">
            </div>
        </div>
        <!-- ***** Breadcrumb Area End ***** -->

        <div class="container">
        <div class="row align-items-center">

            <!-- About Thumbnail -->
            <div class="col-12 col-md-6">
                <div class="about-us-thumbnail mb-80">
                    <img src="img/core-img/quote.png" style="height:50px;width:50px;"/>
                    <h1 style="font-family:monospace;color:teal;">Library are Sacred Time Machine Where Knowledge flow and Magic is eternal.
                    </h1>
                </div>
            </div>

            <!-- About Us Content -->
            <div class="col-12 col-md-6">
                <div class="about-us-content mb-80">
                    <div class="container">
                        <h2>Our Services</h2>
                        <a href="issuebook_lms.jsp" class="btn btn-outline-danger">Issue Book</a><br/><br/>
                        <a href="returnbook_lms.jsp" class="btn btn-outline-danger">Return Book</a><br/><br/>
                        <a href="checkbookstatus_lms.jsp" class="btn btn-outline-danger">Check Book Status</a><br/><br/>
                        <a href="suggestion.jsp" class="btn btn-outline-danger">Suggestion</a><br/><br/>
                    </div>
                </div>
            </div>
        </div>
        <!-- jQuery js -->
        <script src="js/jquery.min.js"></script>
        <!-- Popper js -->
        <script src="js/popper.min.js"></script>
        <!-- Bootstrap js -->
        <script src="js/bootstrap.min.js"></script>
        <!-- All js -->
        <script src="js/uza.bundle.js"></script>
        <!-- Active js -->
        <script src="js/default-assets/active.js"></script>

    </body>
</html>
<%@include file="footer.jsp" %>