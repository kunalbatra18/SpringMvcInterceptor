<%-- 
    Document   : search-rslt
    Created on : Feb 8, 2016, 12:33:48 PM
    Author     : Kunal Batra - Java Developer
--%>

<%@page import="lanka.search.ViewController"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.ArrayList"%>
<%@page import="lanka.search.SearchEngine"%>
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
                window.location = "http://122.160.233.120/slwap/DownloadAll?content_name=" + parameter1;
            }
        </script>

    </head>

    <%!
        public String getContentType(String content_name) {
            int i = content_name.indexOf("/");
            content_name = content_name.substring(0, i);
            return content_name;
        }


    %>
<!--    <body onload="javascript:showonlyone('newboxes1');">-->

 <%
   if(session.getAttribute("divVal") == null || session.getAttribute("divVal") ==""){
       System.out.println("Session value in animation "+session.getAttribute("divVal"));
   %>
<body onload="javascript:showonlyone('newboxes1','<%=request.getParameter("cli")%>');">
 <%} else {%>
 <body onload="javascript:showonlyone('<%=session.getAttribute("divVal")%>','<%=request.getParameter("cli")%>');">
 
 <%}%>
 <div id="mypage" style="visibility:hidden;">
        <section class="container">
            <section class="sri-area">
                <%@include file="headers/header.jsp" %>
                <section class="container">
                    <section class="sri-area">
                        <section id="wall-head">
                            <section class="col-md-4 col-xs-4">

                            </section>
                            <section class="col-md-4 col-xs-4">

                            </section>
                           <!-- <section class="col-md-4 col-xs-4">
                                 <div style="padding:10px;">
                                    <select style="float:right;" onchange="javascript:showonlyone(this.value);">
                                        <option value="newboxes1" id="newboxes1s" selected="">English</option>
                                        <option value="newboxes2" id="newboxes2s" selected="">Tamil</option>
                                        <option value="newboxes3" id="newboxes3s" selected="">Sinhala</option>
                                    </select>

                                </div>
                                
                             <div style="padding:10px;">
                                    <select style="float:right;" onchange="javascript:showonlyone(this.value);">
                                        <option value="newboxes1">English</option>
                                        <option value="newboxes2">Tamil</option>
                                        <option value="newboxes3">Sinhala</option>
                                    </select>

                                </div>
                            </section> -->
                        </section>

                        <div id="wait">
                            <section class="row">



                                <%
                                    String users_keyword = request.getParameter("users_keyword");
                                    String path = "../m4u/CMS/Preview/";
                                    List<ViewController> user_result_list = new ArrayList<ViewController>();
                                    SearchEngine se = new SearchEngine();
                                    se.settingKeyword(users_keyword);
                                    user_result_list = se.getSearchResult();
                                %>

                                <section class="container">
                                    <section class="sri-area">
                                        <section class="cat-head">
                                            <section class="col-md-6 col-xs-6">
                                                <h3 style="text-align:left; color:#E34043;">Search Results</h3></section>
                                            <section class="col-md-6 col-xs-6">
                                                <a href="#"><p style="text-align:right;">View All</p></a>
                                            </section></section>

                                        <section class="row">
                                            <section class="cat-wall">
                                                <%
                                                    int siz = user_result_list.size();
                                                    if (siz == 0) {

                                                %>

                                                <section class="wall-pic">
                                                    <p class="cata" style="text-align:center;"><b>Sorry No Results found for your Search!</b></p>

                                                </section>


                                                <%}%>
                                                <%
                                                    if (siz > 18) {
                                                        siz = 18;
                                                    }
                                                    for (int i = 0; i < siz; i++) {
                                                        ViewController vc = user_result_list.get(i);

                                                        String name = vc.getPrv();
                                                        String content_type = getContentType(name);


                                                %>            
                                                <section class="col-md-4 col-xs-4">
                                                    <section class="wall-pic">
                                                        <input type="image"  src="<%= path + vc.getPrv()%>" onclick="func1('<%=name%>');"/>

                                                        <%
                                                            if (content_type.equalsIgnoreCase("wallpaper")) {
                                                        %>
                                                        <div class="newboxes" id="newboxes1">   <p class="cata"><%= "Wallpaper For " + vc.getPricetag() + " Rs."%></p></div>
                                                        <div class="newboxes" id="newboxes2">   <p class="cata"><%= "வால்பேப்பர் " + vc.getPricetag() + " ரூ ."%></p></div>
                                                        <div class="newboxes" id="newboxes3">   <p class="cata"><%= "ෙවෝල් ෙප්පර් සඳහා " + vc.getPricetag() + " රුපියල්."%></p></div>
                                                            <%
                                                                }

                                                            %>
                                                            <%                                                            if (content_type.equalsIgnoreCase("animation")) {
                                                            %>
                                                        <div class="newboxes" id="newboxes1">   <p class="cata"><%= "Animation For " + vc.getPricetag() + " Rs."%></p></div>
                                                        <div class="newboxes" id="newboxes2">   <p class="cata"><%= "அனிமேஷன் " + vc.getPricetag() + " ரூ ."%></p></div>
                                                        <div class="newboxes" id="newboxes3">   <p class="cata"><%= "සජීවීකරණ සඳහා " + vc.getPricetag() + " රුපියල්."%></p></div>
                                                            <%
                                                                }

                                                            %>
                                                            <%                                                            if (content_type.equalsIgnoreCase("game")) {
                                                            %>
                                                        <div class="newboxes" id="newboxes1">   <p class="cata"><%= "Game For " + vc.getPricetag() + " Rs."%></p></div>
                                                        <div class="newboxes" id="newboxes2">   <p class="cata"><%= "விளையாட்டு பெண்கள் " + vc.getPricetag() + " ரூ ."%></p></div>
                                                        <div class="newboxes" id="newboxes3">   <p class="cata"><%= "ගේම් සඳහා " + vc.getPricetag() + " රුපියල්."%></p></div>
                                                            <%
                                                                }

                                                            %>
                                                            <%                                                            if (content_type.equalsIgnoreCase("ringtone")) {
                                                            %>
                                                        <div class="newboxes" id="newboxes1">   <p class="cata"><%= "Ringtone For " + vc.getPricetag() + " Rs."%></p></div>
                                                        <div class="newboxes" id="newboxes2">   <p class="cata"><%= "பொறுத்தவரை ரிங்டோன் " + vc.getPricetag() + " ரூ ."%></p></div>
                                                        <div class="newboxes" id="newboxes3">   <p class="cata"><%= "රිගින් ටෝන් සඳහා " + vc.getPricetag() + " රුපියල්."%></p></div>
                                                            <%
                                                                }

                                                            %>
                                                            <%                                                            if (content_type.equalsIgnoreCase("video")) {
                                                            %>
                                                        <div class="newboxes" id="newboxes1">   <p class="cata"><%= "Video For " + vc.getPricetag() + " Rs."%></p></div>
                                                        <div class="newboxes" id="newboxes2">   <p class="cata"><%= "வீடியோவைக் " + vc.getPricetag() + " ரூ ."%></p></div>
                                                        <div class="newboxes" id="newboxes3">   <p class="cata"><%= "වීඩියෝ සඳහා " + vc.getPricetag() + " රුපියල්."%></p></div>
                                                            <%
                                                                }

                                                            %>



                                                    </section>
                                                </section>
                                                <%}%>
                                            </section>
                                        </section>
                                        </div>


                                        <%@include file="footer/footer.jsp" %>
                                        <!--------start------>

                                    </section>
                                </section>


                                <section class="footer">
                                    <center>
                                        <div class="newboxes" id="newboxes1">  <p>copyright@2016</p></div>
                                        <div class="newboxes" id="newboxes2"> <p style="text-align:right;">பதிப்புரிமை @ 2016</p></div>
                                        <div class="newboxes" id="newboxes3"> <p style="text-align:right;">2016 @ කතුහිමිකම</p></div>         
                                    </center>
                                </section>



                            </section>
                    </section>

                    <!-- JS includes -->
                    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script> 
                    <!-- Include all compiled plugins (below), or include individual files as needed --> 
                    <script src="scripts/bootstrap.js"></script>
                    <script src="scripts/change.js"></script>
     </div>
                    </body>
                    </html>