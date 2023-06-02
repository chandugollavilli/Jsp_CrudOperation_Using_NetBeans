<%-- 
    Document   : updatedata
    Created on : 13 May, 2023, 3:01:15 PM
    Author     : chand
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>update Page</title>
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
            Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres", "postgres", "1234");
            Statement st = con.createStatement();
                
            String updateQuery = "UPDATE chandu SET email=?, password=? WHERE name=?";
            PreparedStatement ps = con.prepareStatement(updateQuery);
            ps.setString(1, email);
            ps.setString(2, pass);
            ps.setString(3, name);
            
            int rowsAffected = ps.executeUpdate();
            if (rowsAffected > 0) {
                out.println("Data is updated");
            } else {
                out.println("No records found to update");
            }
            
            }catch(Exception e){
            
            out.println(e);
            }
            %>
       </body>
</html>

    

