<%@page import="com.UpdateItem"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%
if (request.getParameter("fundID") != null) 
 { 
 UpdateItem itemObj = new UpdateItem(); 
 String stsMsg = itemObj.Update(request.getParameter("fundID"), 
 request.getParameter("amount"),
 request.getParameter("createdDate")); 
 session.setAttribute("statusMsg", stsMsg); 
 }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Items Management</title>
<style>
           body{
               margin: 0;
               padding: 0;
               background: url(b.jpg);
               background-size: 280%;
               background-position: -480px 0px;


           }
           .main{
               width: 400px;
               margin: 100px auto 0px auto;
           }
            .h2{
                text-align: center;
                padding: 20px;
                font-family: sans-serif;

            }
            .reg{
                background-color: rgba(0, 0, 0, 0.5);
                width: 100%;
                font-size: 18px;
                border-radius: 10px;
                border:  1px solid(0,0,0,0.3);
                color: #fff;

            }
            form#register{
                margin: 40px;
            }
            .label{
                font-family: sans-serif;
                font-size: 18px;
                font-style: italic;
            }
            input#name{
                width: 300px;
                border: 1px solid #ddd;
                border-radius: 3px;
                outline: 0;
                padding: 7px;
                background-color: white;

            }
            .abc{
                display: flex;
                justify-content: space-between;
            }
            .button{
                width: 180px;
                color:black;
                font-size: 20px;
                padding: 12px 0;
                background:red;
                border: 0;
                border-radius: 20px;
                outline: none;
                margin-top: 30px;
                margin-left: 30px;
   
            }
           

       </style>
</head>
<body>
<div class="main">


<div class="reg">
                   
               
                        

                   <form id="register" method="post" action="Update.jsp">
                        <h2 class="h2">Update Fund</h2>
                        <br>
                         <label>Fund ID</label>
                        <br>
                        <input type="text" name="fundID"
                        id="name" placeholder="Enter the Fund ID">
                        <br><br>
                        <label>Amount</label>
                        <br>
                        <input type="text" name="amount"
                        id="name" placeholder="Enter the amount">
                        <br><br>
                        <label>Date</label>
                        <br>
                        <input type="text" name="createdDate" id="name"> 
                        <br><br>
                        <input type="submit" value="Update" name="submit"
                        id="submit">
                        </form>
                               
                    

                   
                </div>








               

            </div>
           
<%
 out.print(session.getAttribute("statusMsg")); 
%> 
</body>
</html>