<%-- 
    Document   : url_urlconnection
    Created on : 26-Mar-2020, 18:09:18
    Author     : Ravikumar Makwana
--%>
<jsp:include page="header.jsp"/>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.net.*,java.io.*"%>
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
        <title>Text Based Browser</title>

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
                                Browser
                            </h2>
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="index.jsp"><i class="fa fa-home"></i>Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Assignment 5</li>
                                    <li class="breadcrumb-item active" aria-current="page">Browser</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Background Curve -->
            <div class="breadcrumb-bg-curve">
                <img src="./img/core-img/curve-5.png" alt="">
            </div>
        </div>
        <!-- ***** Breadcrumb Area End ***** -->

        <div class="container">
            <form action="" method="post">
                <div class="row">
                    <div class="col-lg-11">
                        <div class="form-group">
                            <input type="text" name="url" placeholder="Please Enter the Url" class="form-control"/>
                        </div>
                    </div>
                    <div class="col-lg-1">
                        <div class="form-group">
                            <input type="submit" name="submit" value="Search" class="btn btn-outline-danger"/>
                        </div>
                    </div>
                </div>
            </form>
            <div>
                <%
        if (request.getParameter("submit") != null) {
            URL url = new URL("http://" + request.getParameter("url"));
            URLConnection con = url.openConnection();
            InputStream is = con.getInputStream();
            DataInputStream in = new DataInputStream(is);
            out.println(in.readUTF());
        }%>
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
<jsp:include page="footer.jsp"/>