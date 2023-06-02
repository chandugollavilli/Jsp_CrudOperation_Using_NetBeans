<%-- 
    Document   : index2
    Created on : 13 May, 2023, 3:55:20 PM
    Author     : chand
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Page</title>
    </head>
    <style>
        body {
        font-family: arial;
        background-color:yellow;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        }
        form {
        background-color: white;
        padding: 50px;
        border-radius: 5px;
        }
        input[type="text"],
        input[type="email"],
        input[type="password"] {
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
            background-color: greenyellow;
            padding: 10px 10px;
            border-radius: 5px;
        }
    </style>
    <body>
        <form action="deletedata.jsp">
            <table>
                <h1>Delete</h1>
                <tr>
                    <td>Name:</td>
                    <td><input type="text" name="name" placeholder="enter name"/></td>
                </tr>
                <tr>
                    <td>email:</td>
                    <td><input type="email" name="email" placeholder="email"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="submit"/></td>
                    <td><a href="view.jsp" target="_top">view</a></td>
                </tr>
            </table>  
        </form>
    </body>
</html>
