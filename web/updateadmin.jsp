<%-- 
    Document   : updateadmin
    Created on : 23-Feb-2020, 13:05:28
    Author     : Ravikumar Makwana
--%>

<%@include file="header.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page errorPage="errorpage.jsp"
import="java.sql.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Data</title>
    </head>
    <body>
        <div class="breadcrumb-area">
            <div class="container h-100">
                <div class="row h-100 align-items-end">
                    <div class="col-12">
                        <div class="breadcumb--con">
                            <h2 class="title">
                                Update Data
                            </h2>
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="index.jsp"><i class="fa fa-home"></i>Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page"><a href="displayadmin.jsp">Display Data</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Update Data</li>
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
        <!-- ***** Contact Area Start ***** -->
        <jsp:include page="dbconnect.jsp"/>
        <%
        Connection con=(Connection)application.getAttribute("con");
        Statement stmt=con.createStatement();
        int pid=Integer.parseInt(request.getParameter("pid"));
        ResultSet rs=stmt.executeQuery("SELECT * FROM products where pid='"+pid+"'");
        boolean b=rs.next();
        String pname=rs.getString(2);
        String pdesc=rs.getString(3);
        int stock=rs.getInt(4);
        float price=rs.getFloat(5);
        String image=rs.getString(6);
        String msg="";
        if(request.getParameter("update")!=null)
        {
            pname=request.getParameter("pname");
            pdesc=request.getParameter("pdesc");
            stock=Integer.parseInt(request.getParameter("stock"));
            price=Float.parseFloat(request.getParameter("price"));
            image=request.getParameter("image");
            int row=stmt.executeUpdate("Update products set pname='"+pname+"', pdesc='"+pdesc+"' , stock='"+stock+"' , price='"+price+"', image='"+image+"' where pid='"+pid+"'");
            msg=row+" are Updated .";
        }
        %>
        <section class="uza-contact-area section-padding-80">
            <div class="container">
                <form action="" method="post">
                    <input type="text" name="pname" class="form-control col-lg-5" value="<%= pname %>" /><br/>
                    <textarea type="text" name="pdesc" class="form-control col-lg-5" ><%= pdesc %></textarea><br/>
                    <input type="number" name="stock" class="form-control col-lg-5" value="<%= stock %>"/><br/>
                    <input type="number" name="price" class="form-control col-lg-5"  value="<%= price %>"/><br/>
                    <input type="file" name="image" value="<%= image%>" class="form-control col-lg-5"/><br/>
                    <input type="submit" name="update" value="Update" class="btn btn-info col-lg-2"/>
                </form>
               <br/>
               <p style="color:teal;font-size:30px;"><%= msg%></p>
            </div>
        </section>
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