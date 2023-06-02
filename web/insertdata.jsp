<%-- 
    Document   : insertdata
    Created on : 13 May, 2023, 9:47:46 AM
    Author     : chand
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
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
            String pass = request.getParameter("password");
            
            
        try{
        Class.forName("org.postgresql.Driver");
        Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres","postgres","1234");
        Statement st = con.createStatement();
        
        st.executeUpdate("insert into chandu (name,email,password) values('"+name+"','"+email+"','"+pass+"')");
        
        out.println("Data is inserted");
        
        }catch(Exception e){
        
            
        out.println(e);
        }  
        %>
    </body>
</html>
