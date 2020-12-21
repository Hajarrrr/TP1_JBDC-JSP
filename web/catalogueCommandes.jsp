<%-- 
    Document   : catalogueCommandes
    Created on : 21 déc. 2020, 14:43:47
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Un catalogue de commandes:</h1>
        <%!
            String article[]={"iPad","SD","Cle USB"};
            double prix[]={1990.99,12.99,199.99};
            int quantite[]={2,9,24};
        %>
        <table bgcolor="yellow" border="1" align="center" width="75%">
            <tr>
                <td>Article</td>
                <td>Prix</td>
                <td>Quantité</td>
                <td>Prix total</td>
            </tr>
            <% for(int i=0;i<3;i++){%>
            <tr>
                <td><%= article[i]%></td>
                <td><%= prix[i]%></td>
                <td><%= quantite[i]%></td>
                <td><%= prix[i]*quantite[i]%></td>
            </tr>
            <% }%>    
        </table>
    </body>
</html>
