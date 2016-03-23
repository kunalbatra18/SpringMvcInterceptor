<%-- 
    Document   : wallpaper
    Created on : Feb 6, 2016, 2:49:05 PM
    Author     : sushil
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
                            <!-- <section class="col-md-4 col-xs-4">
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
                                                <div class="newboxes" id="newboxes1"><h3 style="text-align:left;">Bollywood</h3></div>
                                                <div class="newboxes" id="newboxes2"><h3 style="text-align:left;">பாலிவுட்</h3></div>
                                                <div class="newboxes" id="newboxes3"><h3 style="text-align:left;">බොලිවුඩ්</h3></div>
                                            </section>

                                            <section class="col-md-6 col-xs-6">
                                                <a href="ring_cat.jsp?cat_type=Bollywood" style="padding: 0px;">  <div class="newboxes" id="newboxes1"><p style="text-align:right; color:#E34043;font-weight:bold;">View All</p></div>
                                                    <div class="newboxes" id="newboxes2"><p style="text-align:right; color:#E34043;font-weight:bold;">அனைத்து பார்வையிட</p></div>
                                                    <div class="newboxes" id="newboxes3"><p style="text-align:right; color:#E34043;font-weight:bold;">දැක්ම සියලු</p></div></a>

                                            </section>
                                        </section>

                                        <section class="cat-set">
                                            <%
                                                String path = "../m4u/CMS/Preview/";
                                                String image_name = "Ringtone/na-sikha-meine-jeena.gif";

                                            %>
                                            <section class="col-md-4 col-xs-4">
                                                <img src="<%=path + image_name%>"/>
                                            </section>
                                            <section class="col-md-8 col-xs-8">

                                                
                                                <div class="newboxes" id="newboxes1">   <p class="cata">Tune into for Bollywood Ringtones...</p></div>
                                                <div class="newboxes" id="newboxes2">   <p class="cata">பாலிவுட் ரிங்டோன்கள் ஒரு டியூன் ...</p></div>
                                                <div class="newboxes" id="newboxes3">   <p class="cata">බොලිවුඩ් රිගින්ටෝන බවට ටියුන් ...</p> </div>
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
                                                <div class="newboxes" id="newboxes1"><h3 style="text-align:left;">Arti Songs</h3></div>
                                                <div class="newboxes" id="newboxes2"><h3 style="text-align:left;">ஆர்த்தி பாடல்கள்</h3></div>
                                                <div class="newboxes" id="newboxes3"><h3 style="text-align:left;">භක්ති ගීත</h3></div>
                                            </section>

                                            <section class="col-md-6 col-xs-6">
                                                <a href="ring_cat.jsp?cat_type=Arti Songs" style="padding: 0px;">  <div class="newboxes" id="newboxes1"><p style="text-align:right; color:#E34043;font-weight:bold;">View All</p></div>
                                                    <div class="newboxes" id="newboxes2"><p style="text-align:right; color:#E34043;font-weight:bold;">அனைத்து பார்வையிட</p></div>
                                                    <div class="newboxes" id="newboxes3"><p style="text-align:right; color:#E34043;font-weight:bold;">දැක්ම සියලු</p></div></a>

                                            </section>
                                        </section>


                                        <section class="cat-set">
                                            <section class="col-md-4 col-xs-4">
                                                <%
                                                    image_name = "Ringtone/AartiOmJaiJagdishHare.gif";
                                                %>
                                                <img src="<%=path + image_name%>"/>
                                            </section>
                                            <section class="col-md-8 col-xs-8">
<!--                                                <p class="cata">Top 10 Aarti Bhakti Songs...</p>-->
                                                
                                                
                                                <div class="newboxes" id="newboxes1">   <p class="cata">Top 10 Aarti Bhakti Songs...</p></div>
                                                <div class="newboxes" id="newboxes2">   <p class="cata">டாப் 10 ஆர்த்தி பக்தி பாடல்கள் ...</p></div>
                                                <div class="newboxes" id="newboxes3">   <p class="cata">භක්ති ගීත පහර ...</p> </div>
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
                                                <div class="newboxes" id="newboxes1"><h3 style="text-align:left;">Devotional Tones</h3></div>
                                                <div class="newboxes" id="newboxes2"><h3 style="text-align:left;">ஆன்மீகம் டோன்ஸ்</h3></div>
                                                <div class="newboxes" id="newboxes3"><h3 style="text-align:left;">බැති නාද</h3></div>
                                            </section>

                                            <section class="col-md-6 col-xs-6">
                                                <a href="ring_cat.jsp?cat_type=Devotional Tones" style="padding: 0px;">  <div class="newboxes" id="newboxes1"><p style="text-align:right; color:#E34043;font-weight:bold;">View All</p></div>
                                                    <div class="newboxes" id="newboxes2"><p style="text-align:right; color:#E34043;font-weight:bold;">அனைத்து பார்வையிட</p></div>
                                                    <div class="newboxes" id="newboxes3"><p style="text-align:right; color:#E34043;font-weight:bold;">දැක්ම සියලු</p></div></a>

                                            </section>
                                        </section>

                                        <section class="cat-set">
                                            <%
                                                image_name = "Ringtone/OmjaigangeMata.gif";

                                            %>
                                            <section class="col-md-4 col-xs-4">
                                                <img src="<%=path + image_name%>"/>
                                            </section>
                                            <section class="col-md-8 col-xs-8">

                                                
                                                <div class="newboxes" id="newboxes1">   <p class="cata">Tune into for MP3 Devotional Ringtones...</p></div>
                                                <div class="newboxes" id="newboxes2">   <p class="cata">எம்பி 3 ஆன்மீகம் ரிங்டோன்களைத் ஒரு டியூன் ...</p></div>
                                                <div class="newboxes" id="newboxes3">   <p class="cata">බැති රිගින්ටෝන සඳහා බවට ටියුන් ...</p> </div>
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
                                                <div class="newboxes" id="newboxes1"><h3 style="text-align:left;">Bhojpuri Tunes</h3></div>
                                                <div class="newboxes" id="newboxes2"><h3 style="text-align:left;">போஜ்புரி ட்யூன்ஸ்</h3></div>
                                                <div class="newboxes" id="newboxes3"><h3 style="text-align:left;">බිහාර් විශේෂ නාද</h3></div>
                                            </section>

                                            <section class="col-md-6 col-xs-6">
                                                <a href="ring_cat.jsp?cat_type=Bhojpuri Tunes" style="padding: 0px;">  <div class="newboxes" id="newboxes1"><p style="text-align:right; color:#E34043;font-weight:bold;">View All</p></div>
                                                    <div class="newboxes" id="newboxes2"><p style="text-align:right; color:#E34043;font-weight:bold;">அனைத்து பார்வையிட</p></div>
                                                    <div class="newboxes" id="newboxes3"><p style="text-align:right; color:#E34043;font-weight:bold;">දැක්ම සියලු</p></div></a>

                                            </section>
                                        </section>


                                        <section class="cat-set">
                                            <section class="col-md-4 col-xs-4">
                                                <%
                                                    image_name = "Ringtone/BichSarakParNakh.gif";
                                                %>
                                                <img src="<%=path + image_name%>"/>
                                            </section>
                                            <section class="col-md-8 col-xs-8">
                                                
                                                <div class="newboxes" id="newboxes1">   <p class="cata">Download Bhojpuri MP3 songs!!!</p></div>
                                                <div class="newboxes" id="newboxes2">   <p class="cata">போஜ்புரி பாடல்கள் !!!</p></div>
                                                <div class="newboxes" id="newboxes3">   <p class="cata">ඉහළ බිහාර් ගීත බාගත !!!</p> </div>
                                            </section>
                                        </section>

                                    </section>
                                </section>

                            </section>


                            <!--categories area-->
                            <section class="categories-area">

                                <section class="cat-area">
                                    <section class="row">


<section class="cat-head">
                                            <section class="col-md-6 col-xs-6">
                                                <div class="newboxes" id="newboxes1"><h3 style="text-align:left;">Haryanvi Tunes</h3></div>
                                                <div class="newboxes" id="newboxes2"><h3 style="text-align:left;">அரியானா டன்</h3></div>
                                                <div class="newboxes" id="newboxes3"><h3 style="text-align:left;">හර්යානා නාද</h3></div>
                                            </section>

                                            <section class="col-md-6 col-xs-6">
                                                <a href="ring_cat.jsp?cat_type=Haryanvi Tunes" style="padding: 0px;">  <div class="newboxes" id="newboxes1"><p style="text-align:right; color:#E34043;font-weight:bold;">View All</p></div>
                                                    <div class="newboxes" id="newboxes2"><p style="text-align:right; color:#E34043;font-weight:bold;">அனைத்து பார்வையிட</p></div>
                                                    <div class="newboxes" id="newboxes3"><p style="text-align:right; color:#E34043;font-weight:bold;">දැක්ම සියලු</p></div></a>

                                            </section>
                                        </section>


                                        <section class="cat-set">
                                            <section class="col-md-4 col-xs-4">
                                                <%
                                                    image_name = "Ringtone/KaaljeMeinAag.gif";
                                                %>
                                                <img src="<%=path + image_name%>"/>
                                            </section>
                                            <section class="col-md-8 col-xs-8">
                                               
                                                <div class="newboxes" id="newboxes1">   <p class="cata">Download Haryanvi Ringtones for your mobile phones!!</p></div>
                                                <div class="newboxes" id="newboxes2">   <p class="cata">உங்கள் மொபைல் போன்களில் அரியானா ரிங்டோன்கள் பதிவிறக்கம் !!</p></div>
                                                <div class="newboxes" id="newboxes3">   <p class="cata">ඔබගේ ජංගම දුරකථන සඳහා හර්යානා රිගින්ටෝන බාගත !!</p> </div>
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
