<%-- 
    Document   : controller
    Created on : 14 Mar, 2018, 5:19:59 PM
    Author     : Pavilion
--%>

<%@page import="com.fazecast.jSerialComm.SerialPort"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Demo Controller</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            #front, #back
            {
                width: 500px;
                height: 50px;
            }
            #left, #right
            {
                width: 100px;
                height: 250px;
            }
            #stop
            {
                width: 200px;
                height: 100px;
            }
            table, td, th
            {
                font-family: calibri;
                font-size: 22px;
                text-align: center;
                color: black;               
            }
            button
            {
                font-size: 16px;
                font-weight: bold;
            }
        </style>        
    </head>
    <body style="background-color:#80ccff">
        <%
        HttpSession sess=request.getSession();
        String port=(String)sess.getAttribute("port");
        Cookie[]cookieArray=request.getCookies();
        
        if(cookieArray!=null)
        {
            for(int i=0;i<cookieArray.length;i++)
            {
                Cookie c=cookieArray[i];
                if(c.getName()=="port")
                {
                    port=c.getValue().trim();
                }
            }
        }
        %>
    <center>
        <table width="50%">
            <tr>
                <th colspan="3" style="height: 30px "></th>
            </tr>
            <tr>
                <th colspan="3" style="height: 50px ">Connected to <%out.println(port);%></th>
            </tr>
            <tr>
                <th colspan="3" style="height: 30px "></th>
            </tr>
            <tr>
                <td></td>
                <td><form action="front" method="post"><button id="front" type="submit">FRONT</button></form></td>
                <td></td>
            </tr>
            <tr>
                <td><form action="left" method="post"><button id="left" type="submit">LEFT</button></form></td>
                <td><form action="stop" method="post"><button id="stop" type="submit">STOP</button></form></td>
                <td><form action="right" method="post"><button id="right" type="submit">RIGHT</button></form></td>
            </tr>
            <tr>
                <td></td>
                <td><form action="back" method="post"><button id="back" type="submit">BACK</button></form></td>
                <td></td>
            </tr>
            <tr>
                <td><br><br></td>
            </tr>
            <tr>
                <td></td>
                <td><form action="disconnect" method="post"><button type="submit" id="disconnect" style=" height: 30pt; width: 85pt">Disconnect</button></form></td>
                <td></td>
            </tr>
        </table>
    </center>
    </body>
</html>

