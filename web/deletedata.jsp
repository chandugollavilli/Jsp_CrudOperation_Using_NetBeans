<%-- 
    Document   : deletedata
    Created on : 13 May, 2023, 4:02:41 PM
    Author     : chand
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Page</title>
    </head>
    <style>
        body{
            background-color: yellow;
            text-align: center;
            display: flex;
            justify-content: center;
            padding: 50px;
            font-family: arial;
            font-size: 100px
        }
    </style>
    <body>
        <%
    String name = request.getParameter("name");
    String email = request.getParameter("email");

    try {
        Class.forName("org.postgresql.Driver");
        Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres", "postgres", "1234");

        String deleteQuery = "DELETE FROM chandu WHERE name = ? AND email = ?";
        PreparedStatement ps = con.prepareStatement(deleteQuery);
        ps.setString(1, name);
        ps.setString(2, email);

        int rowsAffected = ps.executeUpdate();
        if (rowsAffected > 0) {
            out.println("Data is deleted");
        } else {
            out.println("Delete operation failed");
        }

    } catch (Exception e) {
        out.println(e);
    }
%> 
    </body>
</html>
