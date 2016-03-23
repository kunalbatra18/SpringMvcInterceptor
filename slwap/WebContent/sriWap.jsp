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
        <script>
            function func1(parameter1) {
                window.location = "http://122.160.233.120/slwap/DownloadWallpaper?content_name=" + parameter1;
            }
        </script>
        <style>
            a{padding: 5px 0}
        </style>

    </head>
<!--    <body onload="javascript:showonlyone('newboxes1');">-->
 <%
   if(session.getAttribute("divVal") == null || session.getAttribute("divVal") ==""){

   %>
 <body onload="javascript:showonlyone('newboxes1','<%=request.getParameter("cli")%>');">
 <%} else {%>
 <body onload="javascript:showonlyone('<%=session.getAttribute("divVal")%>','<%=request.getParameter("cli")%>');">
 
 <%}%>
 <div id="mypage" style="visibility:hidden;" >
        <section class="container">
            <section class="sri-area">
                <%@include file="headers/header.jsp" %>
<!--                <div class="verticalspacer"></div>-->
                <section class="container">
                    <section class="sri-area">


                        <section id="wall-head">
                            <section class="col-md-4 col-xs-4">

                            </section>
                            <section class="col-md-4 col-xs-4">

                            </section>
                            <section class="col-md-4 col-xs-4">
<!--                                <div style="padding:10px;">
                                <select style="float:right;" onchange="javascript:showonlyone(this.value);">
                                    <option value="newboxes1" id="newboxes1s" selected="">English</option>
                                        <option value="newboxes2" id="newboxes2s" selected="">Tamil</option>
                                        <option value="newboxes3" id="newboxes3s" selected="">Sinhala</option>
                                </select>

                            </div>-->
<!--                                <div style="padding:10px;">
                                    <select style="float:right;" onchange="javascript:showonlyone(this.value);">
                                        <option value="newboxes1" id="newboxes1s" selected="">English</option>
                                        <option value="newboxes2" id="newboxes2s" selected="">Tamil</option>
                                        <option value="newboxes3" id="newboxes3s" selected="">Sinhala</option>
                                    </select>

                                </div>-->
                            </section>
                        </section>

                        <!--                    <section id="wall-head">
                                            </section>-->

                        <section class="row">
                            <!--categories area-->
                            <section class="categories-area">
    <section class="freepick">
                                    <section class="row">
                                        <section class="pick-fi">
<!--                                            <section class="pick-head">

                                                <h3>Pick of the Day</h3>
                                                <a href="pickofday.jsp?cat_type=Ultra Hot Babes"><p style="text-align:right;color:#000;">View All</p></a>
                                            </section>-->

<section class="pick-head">
                                             <a href="pickofday.jsp?cat_type=Ultra Hot Babes"><div class="newboxes" id="newboxes1"><h3>Pick of the Day</h3></div>
                                            <div class="newboxes" id="newboxes2"><h3>தினம் எடு</h3></div>
                                            <div class="newboxes" id="newboxes3"><h3>දවසේ පික්</h3></div></a>


                                        </section>

                                            <section class="preview">
                                                <section class="row">
                                                    <%
                                                        String path = "../m4u/CMS/Preview/";
                                                        String cat = request.getParameter("cat");
                                                        GetContent gc = new GetContent();
                                                        ResultSet rs = gc.getContentCatWise("animation", "Ultra Hot Babes", "3");

                                                        while (rs.next()) {
                                                            System.out.println(" in resultset ********srlanka " + rs.getString(2));
                                                    %>




                                                    <section class="col-md-4 col-xs-4">
                                                        <section class="pre-view">

                                                            <input type="image" src="<%= path + rs.getString(2)%>" style="max-width:130px; width:100%;" onclick="func1('<%=rs.getString(2)%>');"/>

                                                        </section>
                                                    </section>

                                                    <%}%>
                                                </section>

                                            </section>


                                        </section>
                                        <section class="pick-fi">
<!--                                            <section class="pick-head">

                                                <h3 style="color:#000;">Deal of the Day</h3>
                                                <a href="dealofday.jsp?cat_type=Sri Lanka Stars"><p style="text-align:right;color:#000;">View All</p></a>
                                            </section>-->

<section class="pick-head">
                                             <a href="dealofday.jsp?cat_type=Sinhala Art"><div class="newboxes" id="newboxes1"><h3 style="color:#000;">Deal of the Day</h3></div>
                                            <div class="newboxes" id="newboxes2"><h3 style="color:#000;">நாள் ஒப்பந்தம்</h3></div>
                                            <div class="newboxes" id="newboxes3"><h3 style="color:#000;">දවසේ ගනුදෙනුව</h3></div></a>
                                        </section>

                                            <section class="preview">
                                                <section class="row">

                                                    <%
                                                        rs = gc.getContentCatWise("wallpaper", "Sinhala Art", "3");

                                                        while (rs.next()) {
                                                            System.out.println(" in resultset ********srlanka " + rs.getString(2));

                                                    %>

                                                    <section class="col-md-4 col-xs-4">
                                                        <section class="pre-view">

                                                            <input type="image" src="<%= path + rs.getString(2)%>" style="max-width:130px; width:100%;" onclick="func1('<%=rs.getString(2)%>');"/>

                                                        </section>
                                                    </section>

                                                    <%}%>

                                                </section>

                                            </section>


                                        </section>






                                    </section>
                                </section>
                                
                                <section class="cat-area">
                                <section class="row">


                                    <section class="banner-a">
                                       <a href="freeZone.jsp"> <div class="newboxes" id="newboxes1"> <img src="images/FREE ZONE.png"/></div>
                                        <div class="newboxes" id="newboxes2"><img src="images/tamil/FREE ZONE.png"/></div>
                                        <div class="newboxes" id="newboxes3"><img src="images/sinhala/FREE ZONE.png"/></div></a>
                                    </section>
                                    <section class="banner-a">
                                         <a href="buyOneGetOne.jsp"><div class="newboxes" id="newboxes1"> <img src="images/free.png"/></div>
                                        <div class="newboxes" id="newboxes2"><img src="images/tamil/free.png"/></div>
                                        <div class="newboxes" id="newboxes3"><img src="images/sinhala/free.png"/></div></a>
                                    </section>
                                    <section class="banner-a">
                                       <a href="subscription.jsp"> <div class="newboxes" id="newboxes1"> <img src="images/SUBSCRIPTION.png"/></div>
                                        <div class="newboxes" id="newboxes2"><img src="images/tamil/subscription.png"/></div>
                                        <div class="newboxes" id="newboxes3"><img src="images/sinhala/subscription.png"/></div></a>
                                    </section>

                                </section>
                            </section>
<!--                                <section class="cat-area">
                                    <section class="row">

                                        <section class="banner-a">
                                            <a href="freeZone.jsp"><img src="images/FREE ZONE.png"/></a>
                                        </section>
                                        <section class="banner-a">
                                            <a href="buyOneGetOne.jsp"><img src="images/free.png"/></a>
                                        </section>
                                        <section class="banner-a">
                                            <a href="subscription.jsp"><img src="images/SUBSCRIPTION.png"/></a>
                                        </section>

                                    </section>
                                </section>-->
                            

                            </section>
                        </section>



                        </section>

                        

                    </section>






                   <section class="footer">
                       <center>
    <div class="newboxes" id="newboxes1">  <p>copyright@2016</p></div>
      <div class="newboxes" id="newboxes2"> <p style="text-align:right;">பதிப்புரிமை @ 2016</p></div>
      <div class="newboxes" id="newboxes3"> <p style="text-align:right;">2016 @ ප්රකාශන අයිතිය</p></div>         
                       </center>
            </section>
                </section>
            </section>
        <!--</section>-->



        <!-- JS includes -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script> 
        <!-- Include all compiled plugins (below), or include individual files as needed --> 
        <script src="scripts/bootstrap.js"></script>
        <script src="scripts/change.js"></script>
 </div>
    </body>
</html>