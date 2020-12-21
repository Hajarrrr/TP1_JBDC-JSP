<%-- 
    Document   : listeEmploye
    Created on : 21 déc. 2020, 16:05:32
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
        <h1>Affichage des employés:</h1>
        <%@page import="java.sql.*"%>
        <table bgcolor="yellow" border="1" align="center" width="75%">
            <tr>
                <td>Matricule</td>
                <td>Nom</td>
                <td>Prenom</td>
                <td>Service</td>
            </tr>
            <% 
            try {
                Class.forName("org.apache.derby.jdbc.ClientDriver").newInstance();
                Connection conn = DriverManager.getConnection("jdbc:derby://localhost:1527/etablissement","root","azerty");
                Statement stmt=conn.createStatement();
                String sql = "select * from employe";
                ResultSet rs = stmt.executeQuery(sql);
                while(rs.next()) { %>
            <tr>
                <td><%= rs.getString("matricule")%></td>
                <td><%= rs.getString("nom")%></td>
                <td><%= rs.getString("prenom")%></td>
                <td><%= rs.getString("service")%></td>
            </tr>
            <% }%>    
        </table>
        <% if(stmt != null){
            stmt.close();
            }
            if(conn != null){
                conn.close();
            }}//fin bloc try
            catch(Exception e){
                out.print(e);
            }     
        %> 
    


