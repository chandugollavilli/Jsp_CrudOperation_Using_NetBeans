<%-- 
    Document   : index1
    Created on : 13 May, 2023, 1:03:12 PM
    Author     : chand
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Page</title>
    </head>
    <style>
        body{
            font-family: arial;
            background-color: yellow;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        form{
            background-color: white;
            padding: 50px;
            border-radius: 5px; 
        }
        input[type="name"],
        input[type="email"],
        input[type="password"]{
        width: 100%;
        padding: 10px;
        margin-bottom: 10px;
        border: none;
        border-radius: 3px;
        box-sizing: border-box;
        font-size: 16px;
        background-color: gainsboro;
        }
        input[type="submit"]{
            border: none;
            padding: 10px 10px;
            border-radius: 5px;
            background-color: greenyellow;
        }
    </style>
    <body>
        <form action="updatedata.jsp">
            <h1>Update you detail</h1>
            <table>
                <tr>
                    <td>name:</td>
                    <td><input type="name" name="name" placeholder="name"/></td>
                </tr>
                <tr>
                    <td>email:</td>
                    <td><input type="email" name="email" placeholder="email"/></td>
                </tr>
                <tr>
                    <td>password:</td>
                    <td><input type="password" name="password" placeholder="password"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="submit"/></td>
                    <td><a href="index2.jsp" target="_top">Delete</a></td>
                </tr>
            </table> 
        </form>
    </body>
</html>
