<%@page import="java.sql.ResultSet"%>
<%@page import="lanka.content.GetContent"%>
 <%@ page pageEncoding="utf-8" %>
<!DOCTYPE html>
<html class="html" lang="en-US">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-type" content="text/html;charset=UTF-8"/>
        <title>TESYNC</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
        <link rel="stylesheet" type="text/css" href="css/style.css"/>
        <link rel="stylesheet" type="text/css" href="css/style-nav.css"/>
    </head>
    <body>

        <section class="container">
            <section class="sri-area">
                <section class="row">
                       <div id="wait">
                    <section class="cat-wall">
                        
                        <%
                        
                           String path="../m4u/CMS/Preview/";
//                          String cat_type = "english";
                            String cat_type = request.getParameter("cat_type");
                            //session.setAttribute("cat_type", cat_type);
                            String root_path = "http://wap.tesync.net/m4u/CMS/Preview/";
                            String cat = request.getParameter("cat");
                            GetContent gc = new GetContent();
                            ResultSet rs = gc.getContentCatWise( "ringtone",cat_type, "9");

//                          String  URI = getUri(URI);
                            //session.setAttribute("previous_page", URI);
                            while (rs.next()) {
                                System.out.println(" in resultset ********srlanka " + rs.getString(2));
                          %>
                           
                            
                            
                        <section class="col-md-4 col-xs-4">
                            <section class="wall-pic">
                             
                              <input type="image" src="<%= path + rs.getString(2)%>" style="max-width:130px; width:100%;" onclick="func1('<%=rs.getString(2)%>');"/>
                            </section>
                        </section>
                          
                          <%}%>

                             </section>
                    </div>

                                   </section>
 

                    </section>
                </section>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script> 
        <!-- Include all compiled plugins (below), or include individual files as needed --> 
        <script src="scripts/bootstrap.js"></script>
        <script src="scripts/change.js"></script>

    </body>
</html>