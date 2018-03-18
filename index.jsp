<%-- 
    Document   : index
    Created on : 14 Mar, 2018, 7:19:34 PM
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
                font-size: 25pt;
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
    <center>
        <form action="connect" method="post">
        <table width="50%">
            <tr>
                <td style="height: 50px"></td>
            </tr>
            <tr>
                <th colspan="3" style="height: 50px ">CONTROLLER</th>
            </tr>
            <tr>
                <td>
                    <select style=" height: 30pt; width: 220pt" name="port">
                        <option value="" style="text-align: center" disabled>-Select Port-</option>
                        <%
                            SerialPort[] portNames = SerialPort.getCommPorts();
                            for(int i = 0; i < portNames.length; i++)
                            {
                        %>
                        <option value="<%out.println(portNames[i].getSystemPortName());%>" ><%out.println(portNames[i].getSystemPortName());%></option>
                        <% 
                            }
                        %>
                    </select>
                </td>
            </tr>
            <tr><td></td></tr>
            <tr>
                <td><button type="submit" id="connect" style=" height: 30pt; width: 220pt">Connect</button></td>
            </tr>            
        </table>
        </form>
    </center>
    </body>
</html>
