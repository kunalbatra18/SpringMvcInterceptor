<%-- 
    Document   : wallpaper
    Created on : Feb 6, 2016, 2:49:05 PM
    Author     : Kunal
--%>
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
<!--    <body onload="javascript:showonlyone('newboxes1');">-->
 <%
   if(session.getAttribute("divVal") == null || session.getAttribute("divVal") ==""){
       System.out.println("Session value in animation "+session.getAttribute("divVal"));
   %>
 <body onload="javascript:showonlyone('newboxes1','<%=request.getParameter("cli")%>');">
 <%} else {%>
 <body onload="javascript:showonlyone('<%=session.getAttribute("divVal")%>','<%=request.getParameter("cli")%>');">
 
 <%}%>
  <div id="mypage" style="visibility:hidden;" >

        <section class="container">
            <section class="sri-area">
                <%@include file="headers/header.jsp" %>

                <section class="container">
                    <section class="sri-area">

                        <!-------end---------->
<!--                        <section id="wall-head">
                        </section>-->

<section id="wall-head">
                            <section class="col-md-4 col-xs-4">

                            </section>
                            <section class="col-md-4 col-xs-4">

                            </section>
                         <!--   <section class="col-md-4 col-xs-4">
                                <div style="padding:10px;">
                                    <select style="float:right;" onchange="javascript:showonlyone(this.value);">
                                        <option value="newboxes1" id="newboxes1s" selected="">English</option>
                                        <option value="newboxes2" id="newboxes2s" selected="">Tamil</option>
                                        <option value="newboxes3" id="newboxes3s" selected="">Sinhala</option>
                                    </select>

                                </div>
                            </section> -->
                        </section>
                        <section class="row">
                            <!--categories area-->
                            <section class="categories-area">

                                <section class="cat-area">
                                    <section class="row">


<section class="cat-head">
                                         <section class="col-md-6 col-xs-6">
                                        <div class="newboxes" id="newboxes1"><h3 style="text-align:left;">Brain Teasers</h3></div>
                                            <div class="newboxes" id="newboxes2"><h3 style="text-align:left;">மூளை டீஸர்கள்</h3></div>
                                            <div class="newboxes" id="newboxes3"><h3 style="text-align:left;">මොළයේ එක්කෝ</h3></div>
                                          </section>
                                         
                <section class="col-md-6 col-xs-6">
                    <a href="game_cat.jsp?cat_type=Brain Teasers" style="padding: 0px;">  <div class="newboxes" id="newboxes1"><p style="text-align:right; color:#E34043;font-weight:bold;">View All</p></div>
                                             <div class="newboxes" id="newboxes2"><p style="text-align:right; color:#E34043;font-weight:bold;">அனைத்து பார்வையிட</p></div>
                                              <div class="newboxes" id="newboxes3"><p style="text-align:right; color:#E34043;font-weight:bold;">දැක්ම සියලු</p></div></a>

                                        </section>
                                        </section>


                                        <section class="cat-set">
                                            <%
                                                String path = "../m4u/CMS/Preview/";
                                                String image_name = "Game/PoliceVsGangs.gif";

                                            %>
                                            <section class="col-md-4 col-xs-4">
                                                <img src="<%=path + image_name%>"/>
                                            </section>
                                            <section class="col-md-8 col-xs-8">
<!--                                                <p class="cata">Play here brain-teasing games for Teens & Adults...</p>-->
                                                
                                                 <div class="newboxes" id="newboxes1">   <p class="cata">Play here brain-teasing games for Teens & Adults...</p></div>
                                            <div class="newboxes" id="newboxes2">   <p class="cata">இங்கே விளையாட பதின்ம வயதினராக மற்றும் பெரியவர்களுக்கான மூளை-கேலி விளையாட்டுகள் ...</p></div>
                                            <div class="newboxes" id="newboxes3">   <p class="cata">යෞවනයන්ට සහ වැඩිහිටියන්ට සඳහා මෙහි මොළයේ - ඔච්චම් ක්රීඩා ...</p> </div>
                                                
                                                
                                            </section>
                                        </section>

                                    </section>
                                </section>

                            </section>
                            <!--categories area-->
                            <!--categories area-->
                            <section class="categories-area">

                                <section class="cat-area">
                                    <section class="row">
<!--                                        <section class="cat-head">
                                            <section class="col-md-6 col-xs-6">
                                                <h3 style="text-align:left;">Fighter Games</h3></section>
                                            <section class="col-md-6 col-xs-6">
                                                <a href="game_cat.jsp?cat_type=Fighter Games"><p style="text-align:right;color:#000;">View All</p></a>
                                            </section></section>-->

<section class="cat-head">
                                         <section class="col-md-6 col-xs-6">
                                        <div class="newboxes" id="newboxes1"><h3 style="text-align:left;">Fighter Games</h3></div>
                                            <div class="newboxes" id="newboxes2"><h3 style="text-align:left;">ஃபைட்டர் விளையாட்டு</h3></div>
                                            <div class="newboxes" id="newboxes3"><h3 style="text-align:left;">ප්රහාරක ක්රීඩා</h3></div>
                                          </section>
                                         
                <section class="col-md-6 col-xs-6">
                    <a href="game_cat.jsp?cat_type=Fighter Games" style="padding: 0px;">  <div class="newboxes" id="newboxes1"><p style="text-align:right; color:#E34043;font-weight:bold;">View All</p></div>
                                             <div class="newboxes" id="newboxes2"><p style="text-align:right; color:#E34043;font-weight:bold;">அனைத்து பார்வையிட</p></div>
                                              <div class="newboxes" id="newboxes3"><p style="text-align:right; color:#E34043;font-weight:bold;">දැක්ම සියලු</p></div></a>

                                        </section>
                                        </section>



                                        <section class="cat-set">
                                            <%
                                                image_name = "Game/EliteForceHD.gif";
                                            %>
                                            <section class="col-md-4 col-xs-4">
                                                <img src="<%=path + image_name%>"/>
                                            </section>
                                            <section class="col-md-8 col-xs-8">
<!--                                                <p class="cata">Enjoy playing street-fighting games online!!!</p>-->
                                                
                                                
                                                 <div class="newboxes" id="newboxes1">   <p class="cata">Enjoy playing street-fighting games online!!!</p></div>
                                            <div class="newboxes" id="newboxes2">   <p class="cata">ஆன்லைன் தெரு சண்டை விளையாடுவதை அனுபவிக்க !!!</p></div>
                                            <div class="newboxes" id="newboxes3">   <p class="cata">සමඟ අමුත්තන් වීදි සටන් ක්රීඩා කිරීම භුක්ති !!!</p> </div>
                                                
                                            </section>
                                        </section>

                                    </section>
                                </section>

                            </section>
                            <!--categories area-->

                            <!--categories area-->
                            <section class="categories-area">

                                <section class="cat-area">
                                    <section class="row">


<section class="cat-head">
                                         <section class="col-md-6 col-xs-6">
                                        <div class="newboxes" id="newboxes1"><h3 style="text-align:left;">Sports Special</h3></div>
                                            <div class="newboxes" id="newboxes2"><h3 style="text-align:left;">விளையாட்டு சிறப்பு</h3></div>
                                            <div class="newboxes" id="newboxes3"><h3 style="text-align:left;">ක්රීඩා විශේෂ</h3></div>
                                          </section>
                                         
                <section class="col-md-6 col-xs-6">
                    <a href="game_cat.jsp?cat_type=Sports Special" style="padding: 0px;">  <div class="newboxes" id="newboxes1"><p style="text-align:right; color:#E34043;font-weight:bold;">View All</p></div>
                                             <div class="newboxes" id="newboxes2"><p style="text-align:right; color:#E34043;font-weight:bold;">அனைத்து பார்வையிட</p></div>
                                              <div class="newboxes" id="newboxes3"><p style="text-align:right; color:#E34043;font-weight:bold;">දැක්ම සියලු</p></div></a>

                                        </section>
                                        </section>


                                        <section class="cat-set">
                                            <%
                                                image_name = "Game/CricketStreetCup.gif";
                                            %>
                                            <section class="col-md-4 col-xs-4">
                                                <img src="<%=path + image_name%>"/>
                                            </section>
                                            <section class="col-md-8 col-xs-8">
                                              
                                                
                                                
                                             <div class="newboxes" id="newboxes1">   <p class="cata">Best online sports games Just for you..</p></div>
                                            <div class="newboxes" id="newboxes2">   <p class="cata">நீங்கள் சிறந்த ஆன்லைன் விளையாட்டு விளையாட்டு ..</p></div>
                                  <div class="newboxes" id="newboxes3">යන්තම් ඔබ සඳහා හොඳම සමඟ අමුත්තන් ක්රීඩා තරග ..<p class="cata"></p></div>
                                            </section>
                                        </section>

                                    </section>
                                </section>

                            </section>





                            <!--categories area-->







                            <section class="banner-cat">
                                <a href="subscription.jsp"> <img src="images/SUBSCRIPTION.png"/>
                            </section>


                        </section>

                          <%@include file="footer/footer.jsp" %>

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
