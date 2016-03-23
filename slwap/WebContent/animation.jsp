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
                <div class="verticalspacer"></div>
                <section class="container">
                    <section class="sri-area">


                        <section id="wall-head">
                            <section class="col-md-4 col-xs-4">

                            </section>
                            <section class="col-md-4 col-xs-4">

                            </section>
                          <!--  <section class="col-md-4 col-xs-4">
                                <div style="padding:10px;">
                                    <select style="float:right;" onchange="javascript:showonlyone(this.value);">
                                     <option value=""></option>
<option value="newboxes1" id="newboxes1s" selected="">English</option>
                                        <option value="newboxes2" id="newboxes2s" selected="">Tamil</option>
                                        <option value="newboxes3" id="newboxes3s" selected="">Sinhala</option>
                                    </select>

                                </div>
                            </section>  -->
                        </section>

                        <!--                    <section id="wall-head">
                                            </section>-->

                        <section class="row">
                            <!--categories area-->
                            <section class="categories-area">

                                <section class="cat-area">
                                    <section class="row">
<!--                                        <section class="cat-head">
                                            <section class="col-md-6 col-xs-6">
                                                <h3 style="text-align:left;">Hollywood Stars</h3></section>
                                            <section class="col-md-6 col-xs-6">
                                                <a href="animation_cat.jsp?cat_type=Hollywood Stars"><p style="text-align:right;color:#000;">View All</p></a>
                                            </section></section>-->


<section class="cat-head">
                                         <section class="col-md-6 col-xs-6">
                                        <div class="newboxes" id="newboxes1"><h3 style="text-align:left;">Hollywood Stars</h3></div>
                                            <div class="newboxes" id="newboxes2"><h3 style="text-align:left;">ஹாலிவுட் நட்சத்திரங்கள்</h3></div>
                                            <div class="newboxes" id="newboxes3"><h3 style="text-align:left;">හොලිවුඩ් තරු</h3></div>
                                          </section>
                                         
                <section class="col-md-6 col-xs-6">
                    <a href="animation_cat.jsp?cat_type=Hollywood Stars" style="padding: 0px;">  <div class="newboxes" id="newboxes1"><p style="text-align:right; color:#E34043;font-weight:bold;">View All</p></div>
                                             <div class="newboxes" id="newboxes2"><p style="text-align:right; color:#E34043;font-weight:bold;">அனைத்து பார்வையிட</p></div>
                                              <div class="newboxes" id="newboxes3"><p style="text-align:right; color:#E34043;font-weight:bold;">දැක්ම සියලු</p></div></a>

                                        </section>
                                        </section>

                                        <section class="cat-set">
                                            <%
                                                String path = "../m4u/CMS/Preview/";
                                                String image_name = "Animation/Jennifer_Lopez_14.gif";

                                            %>
                                            <section class="col-md-4 col-xs-4">
                                                <img src="<%=path + image_name%>"/>
                                            </section>
                                            <section class="col-md-8 col-xs-8">
<!--                                                <p class="cata">Famous Hollywood Stars & Divas</p>-->
                                                
                                                
                                                  <div class="newboxes" id="newboxes1">   <p class="cata">Famous Hollywood Stars & Divas</p></div>
                                            <div class="newboxes" id="newboxes2">   <p class="cata">பிரபல ஹாலிவுட் நட்சத்திரங்கள் மற்றும் திவாஸ்</p></div>
                                            <div class="newboxes" id="newboxes3">   <p class="cata">ප්රසිද්ධ හොලිවුඩ් තරු</p> </div>
                                                
                                                
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
                                                <h3 style="text-align:left;">Bikini Babes</h3></section>
                                            <section class="col-md-6 col-xs-6">
                                                <a href="animation_cat.jsp?cat_type=Bikini Babes"><p style="text-align:right;color:#000;">View All</p></a>
                                            </section></section>-->
                                        
                                        
                                        <section class="cat-head">
                                         <section class="col-md-6 col-xs-6">
                                        <div class="newboxes" id="newboxes1"><h3 style="text-align:left;">Bikini Babes</h3></div>
                                            <div class="newboxes" id="newboxes2"><h3 style="text-align:left;">பிகினி பேப்ஸ்</h3></div>
                                            <div class="newboxes" id="newboxes3"><h3 style="text-align:left;">ළදරුවන්ගේ</h3></div>
                                          </section>
                                         
                <section class="col-md-6 col-xs-6">
                    <a href="animation_cat.jsp?cat_type=Bikini Babes" style="padding: 0px;">  <div class="newboxes" id="newboxes1"><p style="text-align:right; color:#E34043;font-weight:bold;">View All</p></div>
                                             <div class="newboxes" id="newboxes2"><p style="text-align:right; color:#E34043;font-weight:bold;">அனைத்து பார்வையிட</p></div>
                                              <div class="newboxes" id="newboxes3"><p style="text-align:right; color:#E34043;font-weight:bold;">දැක්ම සියලු</p></div></a>

                                        </section>
                                        </section>
                                        
                                        
                                        <section class="cat-set">
                                            <section class="col-md-4 col-xs-4">
                                                <%
                                                    image_name = "Animation/Beautiful_Babes_14.gif ";
                                                %>

                                                <img src="<%=path + image_name%>"/>
                                            </section>
                                            <section class="col-md-8 col-xs-8">
<!--                                                <p class="cata">Hot bikini babes Models Just for you...</p>-->
                                                
                                                 <div class="newboxes" id="newboxes1">   <p class="cata">Hot bikini babes Models Just for you...</p></div>
                                            <div class="newboxes" id="newboxes2">   <p class="cata">நீங்கள் ஹாட் பிகினி கண்ணே மாதிரிகள் ...</p></div>
                                            <div class="newboxes" id="newboxes3">   <p class="cata">යන්තම් ඔබ උණු ළදරුවන් ආදර්ශයන් ...</p> </div>
                                                
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
                                                <h3 style="text-align:left;">Sunny Leone</h3></section>
                                            <section class="col-md-6 col-xs-6">
                                                <a href="animation_cat.jsp?cat_type=Sunny Leone"><p style="text-align:right;color:#000;">View All</p></a>
                                            </section></section>-->

<section class="cat-head">
                                         <section class="col-md-6 col-xs-6">
                                        <div class="newboxes" id="newboxes1"><h3 style="text-align:left;">Sunny Leone</h3></div>
                                            <div class="newboxes" id="newboxes2"><h3 style="text-align:left;">சன்னி லியோன்</h3></div>
                                            <div class="newboxes" id="newboxes3"><h3 style="text-align:left;">සනී ලියෝන්</h3></div>
                                          </section>
                                         
                <section class="col-md-6 col-xs-6">
                    <a href="animation_cat.jsp?cat_type=Sunny Leone" style="padding: 0px;">  <div class="newboxes" id="newboxes1"><p style="text-align:right; color:#E34043;font-weight:bold;">View All</p></div>
                                             <div class="newboxes" id="newboxes2"><p style="text-align:right; color:#E34043;font-weight:bold;">அனைத்து பார்வையிட</p></div>
                                              <div class="newboxes" id="newboxes3"><p style="text-align:right; color:#E34043;font-weight:bold;">දැක්ම සියලු</p></div></a>

                                        </section>
                                        </section>


                                        <section class="cat-set">
                                            <%
                                                image_name = "Animation/Sunny_Leone.gif";
                                            %>
                                            <section class="col-md-4 col-xs-4">
                                                <img src="<%=path + image_name%>"/>
                                            </section>
                                            <section class="col-md-8 col-xs-8">
<!--                                                <p class="cata">Sizzling Sunny Leone in a different avatar!!</p>-->
                                                
                                                   <div class="newboxes" id="newboxes1">   <p class="cata">Sizzling Sunny Leone in a different avatar!!</p></div>
                                            <div class="newboxes" id="newboxes2">   <p class="cata">வேறு சின்னம் உள்ள சிஸ்லிங் சன்னி லியோன் !!</p></div>
                                            <div class="newboxes" id="newboxes3">   <p class="cata">වෙනස් පෙනුමක් දී සනී ලියෝන් සිස්ල් !!</p> </div>
                                                
                                                
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
                                                <h3 style="text-align:left;">Telugu Beauties</h3></section>
                                            <section class="col-md-6 col-xs-6">
                                                <a href="animation_cat.jsp?cat_type=Telugu Beauties"><p style="text-align:right;color:#000;">View All</p></a>
                                            </section></section>-->


<section class="cat-head">
                                         <section class="col-md-6 col-xs-6">
                                        <div class="newboxes" id="newboxes1"><h3 style="text-align:left;">Telugu Beauties</h3></div>
                                            <div class="newboxes" id="newboxes2"><h3 style="text-align:left;">தெலுங்கு அழகானவர்கள்</h3></div>
                                            <div class="newboxes" id="newboxes3"><h3 style="text-align:left;">තෙළිඟු අලංකාරයෙන්</h3></div>
                                          </section>
                                         
                <section class="col-md-6 col-xs-6">
                    <a href="animation_cat.jsp?cat_type=Telugu Beauties" style="padding: 0px;">  <div class="newboxes" id="newboxes1"><p style="text-align:right; color:#E34043;font-weight:bold;">View All</p></div>
                                             <div class="newboxes" id="newboxes2"><p style="text-align:right; color:#E34043;font-weight:bold;">அனைத்து பார்வையிட</p></div>
                                              <div class="newboxes" id="newboxes3"><p style="text-align:right; color:#E34043;font-weight:bold;">දැක්ම සියලු</p></div></a>

                                        </section>
                                        </section>


                                        <section class="cat-set">
                                            <%
                                                image_name = "Animation/Ileana_17.gif";
                                            %>
                                            <section class="col-md-4 col-xs-4">
                                                <img src="<%=path + image_name%>"/>
                                            </section>
                                            <section class="col-md-8 col-xs-8">
                                               
                                                
                                                   <div class="newboxes" id="newboxes1">   <p class="cata">Exclusively for you- Telugu Actresses</p></div>
                                            <div class="newboxes" id="newboxes2">   <p class="cata">பிரத்தியேகமாக நீங்கள் தெலுங்கு நடிகைகள்</p></div>
                                            <div class="newboxes" id="newboxes3">   <p class="cata">පමණක් නිශ්විත ඔබ තෙළිඟු නිළියන් සඳහා</p> </div>
                                                
                                                
                                            </section>
                                        </section>

                                    </section>
                                </section>

                            </section>


                            <!--categories area-->
                            <section class="categories-area">

                                <section class="cat-area">
                                    <section class="row">
<!--                                        <section class="cat-head">
                                            <section class="col-md-6 col-xs-6">
                                                <h3 style="text-align:left;">Tamil Stars</h3></section>
                                            <section class="col-md-6 col-xs-6">
                                                <a href="animation_cat.jsp?cat_type=Tamil Stars"><p style="text-align:right;color:#000;">View All</p></a>
                                            </section></section>-->




<section class="cat-head">
                                         <section class="col-md-6 col-xs-6">
                                        <div class="newboxes" id="newboxes1"><h3 style="text-align:left;">Tamil Stars</h3></div>
                                            <div class="newboxes" id="newboxes2"><h3 style="text-align:left;">தமிழ் நட்சத்திரங்கள்</h3></div>
                                            <div class="newboxes" id="newboxes3"><h3 style="text-align:left;">දෙමළ තරු</h3></div>
                                          </section>
                                         
                <section class="col-md-6 col-xs-6">
                    <a href="animation_cat.jsp?cat_type=Tamil Stars" style="padding: 0px;">  <div class="newboxes" id="newboxes1"><p style="text-align:right; color:#E34043;font-weight:bold;">View All</p></div>
                                             <div class="newboxes" id="newboxes2"><p style="text-align:right; color:#E34043;font-weight:bold;">அனைத்து பார்வையிட</p></div>
                                              <div class="newboxes" id="newboxes3"><p style="text-align:right; color:#E34043;font-weight:bold;">දැක්ම සියලු</p></div></a>

                                        </section>
                                        </section>

                                        <section class="cat-set">
                                            <%
                                                image_name = "Animation/Kirti_Chawala_1.gif";
                                            %>
                                            <section class="col-md-4 col-xs-4">
                                                <img src="<%=path + image_name%>"/>
                                            </section>
                                            <section class="col-md-8 col-xs-8">
                                               
                                                
                                                   <div class="newboxes" id="newboxes1">   <p class="cata">Top 10 Stars from Tollywood</p></div>
                                            <div class="newboxes" id="newboxes2">   <p class="cata">டோலிவுட் இருந்து சிறந்த 10 நட்சத்திரங்கள்</p></div>
                                            <div class="newboxes" id="newboxes3">   <p class="cata">දෙමළ චිත්රපට කර්මාන්තය ඉහළ තරු 10</p> </div>
                                                
                                                
                                            </section>
                                        </section>

                                    </section>
                                </section>

                            </section>





                            <!--categories area-->
                            <section class="categories-area">

                                <section class="cat-area">
                                    <section class="row">
<!--                                        <section class="cat-head">
                                            <section class="col-md-6 col-xs-6">
                                                <h3 style="text-align:left;">Kannada Stars</h3></section>
                                            <section class="col-md-6 col-xs-6">
                                                <a href="animation_cat.jsp?cat_type=Kannada Stars"><p style="text-align:right;color:#000;">View All</p></a>
                                            </section></section>-->


<section class="cat-head">
                                         <section class="col-md-6 col-xs-6">
                                        <div class="newboxes" id="newboxes1"><h3 style="text-align:left;">Kannada Stars</h3></div>
                                            <div class="newboxes" id="newboxes2"><h3 style="text-align:left;">கன்னடம் நட்சத்திரங்கள்</h3></div>
                                            <div class="newboxes" id="newboxes3"><h3 style="text-align:left;">කන්නඩ තරු</h3></div>
                                          </section>
                                         
                <section class="col-md-6 col-xs-6">
                    <a href="animation_cat.jsp?cat_type=Kannada Stars" style="padding: 0px;">  <div class="newboxes" id="newboxes1"><p style="text-align:right; color:#E34043;font-weight:bold;">View All</p></div>
                                             <div class="newboxes" id="newboxes2"><p style="text-align:right; color:#E34043;font-weight:bold;">அனைத்து பார்வையிட</p></div>
                                              <div class="newboxes" id="newboxes3"><p style="text-align:right; color:#E34043;font-weight:bold;">දැක්ම සියලු</p></div></a>

                                        </section>
                                        </section>



                                        <section class="cat-set">
                                            <%
                                                image_name = "Animation/Ramya_22.gif";
                                            %>
                                            <section class="col-md-4 col-xs-4">
                                                <img src="<%=path + image_name%>"/>
                                            </section>
                                            <section class="col-md-8 col-xs-8">
                                               
                                                
                                                   <div class="newboxes" id="newboxes1">   <p class="cata">Watch Kannada Stars here...</p></div>
                                            <div class="newboxes" id="newboxes2">   <p class="cata">இங்கே கன்னடம் நட்சத்திரங்கள் பார்க்க ...</p></div>
                                            <div class="newboxes" id="newboxes3">   <p class="cata">කන්නඩ තරු මෙහි නැරඹීමට ...</p> </div>
                                                
                                            </section>
                                        </section>

                                    </section>
                                </section>

                            </section>





                            <!--categories area-->
                            <section class="categories-area">

                                <section class="cat-area">
                                    <section class="row">
<!--                                        <section class="cat-head">
                                            <section class="col-md-6 col-xs-6">
                                                <h3 style="text-align:left;">Ultra Hot Babes</h3></section>
                                            <section class="col-md-6 col-xs-6">
                                                <a href="animation_cat.jsp?cat_type=Ultra Hot Babes"><p style="text-align:right;color:#000;">View All</p></a>
                                            </section></section>-->




<section class="cat-head">
                                         <section class="col-md-6 col-xs-6">
                                        <div class="newboxes" id="newboxes1"><h3 style="text-align:left;">Ultra Hot Babes</h3></div>
                                            <div class="newboxes" id="newboxes2"><h3 style="text-align:left;">அல்ட்ரா சூடான பேப்ஸ்</h3></div>
                                            <div class="newboxes" id="newboxes3"><h3 style="text-align:left;">අල්ට්රා උණුසුම් ළදරුවන්ගේ</h3></div>
                                          </section>
                                         
                <section class="col-md-6 col-xs-6">
                    <a href="animation_cat.jsp?cat_type=Ultra Hot Babes" style="padding: 0px;">  <div class="newboxes" id="newboxes1"><p style="text-align:right; color:#E34043;font-weight:bold;">View All</p></div>
                                             <div class="newboxes" id="newboxes2"><p style="text-align:right; color:#E34043;font-weight:bold;">அனைத்து பார்வையிட</p></div>
                                              <div class="newboxes" id="newboxes3"><p style="text-align:right; color:#E34043;font-weight:bold;">දැක්ම සියලු</p></div></a>

                                        </section>
                                        </section>
                                        <section class="cat-set">
                                            <%
                                                image_name = "Animation/GG_Lindsey_white_C_pic1.gif";
                                            %>
                                            <section class="col-md-4 col-xs-4">
                                                <img src="<%=path + image_name%>"/>
                                            </section>
                                            <section class="col-md-8 col-xs-8">
<!--                                                <p class="cata">Watch Ultra Hot webcam dancing Girls!</p>-->
                                                
                                                
                                                   <div class="newboxes" id="newboxes1">   <p class="cata">Watch Ultra Hot webcam dancing Girls!</p></div>
                                            <div class="newboxes" id="newboxes2">   <p class="cata">அல்ட்ரா சூடான வெப்கேம் நடனம் பெண்கள் பார்க்க!</p></div>
                                            <div class="newboxes" id="newboxes3">   <p class="cata">අල්ට්රා උණුසුම් වෙබ් කැමරාව නැටුම් බාලිකා බලන්න!</p> </div>
                                                
                                            </section>
                                        </section>

                                    </section>
                                </section>

                            </section>



                            <!--categories area-->
                            <section class="categories-area">

                                <section class="cat-area">
                                    <section class="row">
<!--                                        <section class="cat-head">
                                            <section class="col-md-6 col-xs-6">
                                                <h3 style="text-align:left;">Sinhala Art</h3></section>
                                            <section class="col-md-6 col-xs-6">
                                                <a href="animation_cat.jsp?cat_type=Sinhala Art"><p style="text-align:right;color:#000;">View All</p></a>
                                            </section></section>-->


<section class="cat-head">
                                         <section class="col-md-6 col-xs-6">
                                        <div class="newboxes" id="newboxes1"><h3 style="text-align:left;">Sinhala Art</h3></div>
                                            <div class="newboxes" id="newboxes2"><h3 style="text-align:left;">சிங்களம் கலை</h3></div>
                                            <div class="newboxes" id="newboxes3"><h3 style="text-align:left;">සිංහල කලාව</h3></div>
                                          </section>
                                         
                <section class="col-md-6 col-xs-6">
                    <a href="animation_cat.jsp?cat_type=Sinhala Art" style="padding: 0px;">  <div class="newboxes" id="newboxes1"><p style="text-align:right; color:#E34043;font-weight:bold;">View All</p></div>
                                             <div class="newboxes" id="newboxes2"><p style="text-align:right; color:#E34043;font-weight:bold;">அனைத்து பார்வையிட</p></div>
                                              <div class="newboxes" id="newboxes3"><p style="text-align:right; color:#E34043;font-weight:bold;">දැක්ම සියලු</p></div></a>

                                        </section>
                                        </section>

                                        <section class="cat-set">
                                            <%
                                                image_name = "Animation/Srilankanladies.gif";
                                            %>
                                            <section class="col-md-4 col-xs-4">
                                                <img src="<%=path + image_name%>"/>
                                            </section>
                                            <section class="col-md-8 col-xs-8">
                                                
                                                
                                                   <div class="newboxes" id="newboxes1">   <p class="cata">Statue Art on Sinhalese from renowned Sri Lankan Artists</p></div>
                                            <div class="newboxes" id="newboxes2">   <p class="cata">புகழ்பெற்ற இலங்கை கலைஞர்கள் இருந்து சிங்களம் மீது சிலை கலை</p></div>
                                            <div class="newboxes" id="newboxes3">   <p class="cata">සිංහල ප්රතිමාව කලාව පූජිත කලාකරුවන් සිට</p> </div>
                                                
                                            </section>
                                        </section>

                                    </section>
                                </section>

                            </section>



                            <!--categories area-->
                            <section class="categories-area">

                                <section class="cat-area">
                                    <section class="row">
<!--                                        <section class="cat-head">
                                            <section class="col-md-6 col-xs-6">
                                                <h3 style="text-align:left;">Bollywood Stars</h3></section>
                                            <section class="col-md-6 col-xs-6">
                                                <a href="animation_cat.jsp?cat_type=Bollywood Stars"><p style="text-align:right;color:#000;">View All</p></a>
                                            </section></section>-->

<section class="cat-head">
                                         <section class="col-md-6 col-xs-6">
                                        <div class="newboxes" id="newboxes1"><h3 style="text-align:left;">Bollywood Stars</h3></div>
                                            <div class="newboxes" id="newboxes2"><h3 style="text-align:left;">பாலிவுட் நட்சத்திரங்கள்</h3></div>
                                            <div class="newboxes" id="newboxes3"><h3 style="text-align:left;">බොලිවුඩ් තරු</h3></div>
                                          </section>
                                         
                <section class="col-md-6 col-xs-6">
                    <a href="animation_cat.jsp?cat_type=Bollywood Stars" style="padding: 0px;">  <div class="newboxes" id="newboxes1"><p style="text-align:right; color:#E34043;font-weight:bold;">View All</p></div>
                                             <div class="newboxes" id="newboxes2"><p style="text-align:right; color:#E34043;font-weight:bold;">அனைத்து பார்வையிட</p></div>
                                              <div class="newboxes" id="newboxes3"><p style="text-align:right; color:#E34043;font-weight:bold;">දැක්ම සියලු</p></div></a>

                                        </section>
                                        </section>


                                        <section class="cat-set">
                                            <%
                                                image_name = "Animation/Lisa_Kareena.gif";
                                            %>
                                            <section class="col-md-4 col-xs-4">
                                                <img src="<%=path + image_name%>"/>
                                            </section>
                                            <section class="col-md-8 col-xs-8">
<!--                                                <p class="cata">Best Bollywood Actors of All Times!!</p>-->
                                                
                                                
                                                   <div class="newboxes" id="newboxes1">   <p class="cata">Best Bollywood Actors of All Times!!</p></div>
                                            <div class="newboxes" id="newboxes2">   <p class="cata">அனைத்து டைம்ஸ் சிறந்த பாலிவுட் நடிகர்கள் !!</p></div>
                                            <div class="newboxes" id="newboxes3">   <p class="cata">සියලු ටයිම්ස් හොඳම බොලිවුඩ් නළු !!</p> </div>
                                                
                                            </section>
                                        </section>

                                    </section>
                                </section>

                            </section>



                            <!--categories area-->
                            <section class="categories-area">

                                <section class="cat-area">
                                    <section class="row">
<!--                                        <section class="cat-head">
                                            <section class="col-md-6 col-xs-6">
                                                <h3 style="text-align:left;">Jacqueline Fernandez</h3></section>
                                            <section class="col-md-6 col-xs-6">
                                                <a href="animation_cat.jsp?cat_type=Jacqueline Fernandez"><p style="text-align:right;color:#000;">View All</p></a>
                                            </section></section>-->





<section class="cat-head">
                                         <section class="col-md-6 col-xs-6">
                                        <div class="newboxes" id="newboxes1"><h3 style="text-align:left;">Jacqueline Fernandez</h3></div>
                                            <div class="newboxes" id="newboxes2"><h3 style="text-align:left;">ஜாக்குலின் பெர்னாண்டஸ்</h3></div>
                                            <div class="newboxes" id="newboxes3"><h3 style="text-align:left;">ජැකලින් ෆර්නැන්ඩස්</h3></div>
                                          </section>
                                         
                <section class="col-md-6 col-xs-6">
                    <a href="animation_cat.jsp?cat_type=Jacqueline Fernandez" style="padding: 0px;">  <div class="newboxes" id="newboxes1"><p style="text-align:right; color:#E34043;font-weight:bold;">View All</p></div>
                                             <div class="newboxes" id="newboxes2"><p style="text-align:right; color:#E34043;font-weight:bold;">அனைத்து பார்வையிட</p></div>
                                              <div class="newboxes" id="newboxes3"><p style="text-align:right; color:#E34043;font-weight:bold;">දැක්ම සියලු</p></div></a>

                                        </section>
                                        </section>
                                        <section class="cat-set">
                                            <%
                                                image_name = "Animation/Jacquline_Sonal.gif";
                                            %>
                                            <section class="col-md-4 col-xs-4">
                                                <img src="<%=path + image_name%>"/>
                                            </section>
                                            <section class="col-md-8 col-xs-8">
                                               
                                                
                                                
                                                   <div class="newboxes" id="newboxes1">   <p class="cata">Miss Universe Sri Lanka pageant- Jacqueline Fernandez</p></div>
                                            <div class="newboxes" id="newboxes2">   <p class="cata">மிஸ் யுனிவர்ஸ் இலங்கை அலங்கார அணிவகுப்பு ஜாக்குலின் பெர்னாண்டஸ்</p></div>
                                            <div class="newboxes" id="newboxes3">   <p class="cata">මිස් යුනිවර්ස් ශ්රී ලංකා රූ රැජන ජැකලින් ෆර්නැන්ඩස්</p> </div>
                                                
                                            </section>
                                        </section>

                                    </section>
                                </section>

                            </section>



                            <!--categories area-->
                            <section class="categories-area">

                                <section class="cat-area">
                                    <section class="row">
<!--                                        <section class="cat-head">
                                            <section class="col-md-6 col-xs-6">
                                                <h3 style="text-align:left;">Bollywood Actors</h3></section>
                                            <section class="col-md-6 col-xs-6">
                                                <a href="animation_cat.jsp?cat_type=Bollywood Actors"><p style="text-align:right;color:#000;">View All</p></a>
                                            </section></section>-->


<section class="cat-head">
                                         <section class="col-md-6 col-xs-6">
                                        <div class="newboxes" id="newboxes1"><h3 style="text-align:left;">Bollywood Actors</h3></div>
                                            <div class="newboxes" id="newboxes2"><h3 style="text-align:left;">பாலிவுட் நடிகர்கள்</h3></div>
                                            <div class="newboxes" id="newboxes3"><h3 style="text-align:left;">බොලිවුඩ් නළු</h3></div>
                                          </section>
                                         
                <section class="col-md-6 col-xs-6">
                    <a href="animation_cat.jsp?cat_type=Bollywood Actors" style="padding: 0px;">  <div class="newboxes" id="newboxes1"><p style="text-align:right; color:#E34043;font-weight:bold;">View All</p></div>
                                             <div class="newboxes" id="newboxes2"><p style="text-align:right; color:#E34043;font-weight:bold;">அனைத்து பார்வையிட</p></div>
                                              <div class="newboxes" id="newboxes3"><p style="text-align:right; color:#E34043;font-weight:bold;">දැක්ම සියලු</p></div></a>

                                        </section>
                                        </section>

                                        <section class="cat-set">
                                            <%
                                                image_name = "Animation/Ronit_Sonakshi.gif";
                                            %>
                                            <section class="col-md-4 col-xs-4">
                                                <img src="<%=path + image_name%>"/>
                                            </section>
                                            <section class="col-md-8 col-xs-8">
<!--                                                <p class="cata">Get Bollywood Actors directory here...</p>-->
                                                
                                                
                                                   <div class="newboxes" id="newboxes1">   <p class="cata">Get Bollywood Actors directory here...</p></div>
                                            <div class="newboxes" id="newboxes2">   <p class="cata">இங்கே பாலிவுட் நடிகர்கள் அடைவு பெற ...</p></div>
                                            <div class="newboxes" id="newboxes3">   <p class="cata">බොලිවුඩ් නළු බහලුම මෙතන ලබා ගන්න ...</p> </div>
                                                
                                            </section>
                                        </section>

                                    </section>
                                </section>

                            </section>




                            <!--categories area-->
                            <section class="categories-area">

                                <section class="cat-area">
                                    <section class="row">
<!--                                        <section class="cat-head">
                                            <section class="col-md-6 col-xs-6">
                                                <h3 style="text-align:left;">Holy Deities</h3></section>
                                            <section class="col-md-6 col-xs-6">
                                                <a href="animation_cat.jsp?cat_type=Holy Deities"><p style="text-align:right;color:#000;">View All</p></a>
                                            </section></section>-->


<section class="cat-head">
                                         <section class="col-md-6 col-xs-6">
                                        <div class="newboxes" id="newboxes1"><h3 style="text-align:left;">Holy Deities</h3></div>
                                            <div class="newboxes" id="newboxes2"><h3 style="text-align:left;">பரிசுத்த தெய்வங்களின்</h3></div>
                                            <div class="newboxes" id="newboxes3"><h3 style="text-align:left;">ශුද්ධ වැඳීම</h3></div>
                                          </section>
                                         
                <section class="col-md-6 col-xs-6">
                    <a href="animation_cat.jsp?cat_type=Holy Deities" style="padding: 0px;">  <div class="newboxes" id="newboxes1"><p style="text-align:right; color:#E34043;font-weight:bold;">View All</p></div>
                                             <div class="newboxes" id="newboxes2"><p style="text-align:right; color:#E34043;font-weight:bold;">அனைத்து பார்வையிட</p></div>
                                              <div class="newboxes" id="newboxes3"><p style="text-align:right; color:#E34043;font-weight:bold;">දැක්ම සියලු</p></div></a>

                                        </section>
                                        </section>
                                        <section class="cat-set">
                                            <%
                                                image_name = "Animation/Krishna_Dattaterya.gif";
                                            %>
                                            <section class="col-md-4 col-xs-4">
                                                <img src="<%=path + image_name%>"/>
                                            </section>
                                            <section class="col-md-8 col-xs-8">
<!--                                                <p class="cata">Most popular deities in our Holy Hit Parade</p>-->

   <div class="newboxes" id="newboxes1">   <p class="cata">Most popular deities in our Holy Hit Parade</p></div>
                                            <div class="newboxes" id="newboxes2">   <p class="cata">எங்கள் பரிசுத்த ஹிட் பரேட் மிகப் பிரபலமாக தெய்வங்கள்</p></div>
                                            <div class="newboxes" id="newboxes3">   <p class="cata">අපගේ ශුද්ධ හිට් විසිර යාමේ පෙළපාලියේ දී වඩාත් ජනප්රිය දේවතාවන්</p> </div>
                                                


                                            </section>
                                        </section>

                                    </section>
                                </section>

                            </section>

                            <section class="categories-area">

                                <section class="cat-area">
                                    <section class="row">
<!--                                        <section class="cat-head">
                                            <section class="col-md-6 col-xs-6">
                                                <h3 style="text-align:left;">Sri Lanka Stars</h3></section>
                                            <section class="col-md-6 col-xs-6">
                                                <a href="animation_cat.jsp?cat_type=Sri Lanka Stars"><p style="text-align:right;color:#000;">View All</p></a>
                                            </section></section>-->

<section class="cat-head">
                                         <section class="col-md-6 col-xs-6">
                                        <div class="newboxes" id="newboxes1"><h3 style="text-align:left;">Sri Lanka Stars</h3></div>
                                            <div class="newboxes" id="newboxes2"><h3 style="text-align:left;">இலங்கை நட்சத்திரங்கள்</h3></div>
                                            <div class="newboxes" id="newboxes3"><h3 style="text-align:left;">ශ්රී ලංකා තරු</h3></div>
                                          </section>
                                         
                <section class="col-md-6 col-xs-6">
                    <a href="animation_cat.jsp?cat_type=Sri Lanka Stars" style="padding: 0px;">  <div class="newboxes" id="newboxes1"><p style="text-align:right; color:#E34043;font-weight:bold;">View All</p></div>
                                             <div class="newboxes" id="newboxes2"><p style="text-align:right; color:#E34043;font-weight:bold;">அனைத்து பார்வையிட</p></div>
                                              <div class="newboxes" id="newboxes3"><p style="text-align:right; color:#E34043;font-weight:bold;">දැක්ම සියලු</p></div></a>

                                        </section>
                                        </section>






                                        <section class="cat-set">
                                            <%
                                                image_name = "Animation/Dinakshie-Priyasad-charming-sri-lankan-beauty-80.gif";
                                            %>
                                            <section class="col-md-4 col-xs-4">
                                                <img src="<%=path + image_name%>"/>
                                            </section>
                                            <section class="col-md-8 col-xs-8">
<!--                                                <p class="cata">Watch popular Sri Lankan Actors & Artists!!</p>-->
                                                
                                                
                                                   <div class="newboxes" id="newboxes1">   <p class="cata">Watch popular Sri Lankan Actors & Artists!!</p></div>
                                            <div class="newboxes" id="newboxes2">   <p class="cata">பிரபலமான இலங்கை நடிகர்கள் மற்றும் கலைஞர்கள் பார்க்க !!</p></div>
                                            <div class="newboxes" id="newboxes3">   <p class="cata">ජනප්රිය ශ්රී ලංකා ක්රියාකාරීන් සහ කලාකරුවන් නැරඹීමට !!</p> </div>
                                                
                                            </section>
                                        </section>

                                    </section>
                                </section>

                            </section>


                            <section class="categories-area">

                                <section class="cat-area">
                                    <section class="row">
<!--                                        <section class="cat-head">
                                            <section class="col-md-6 col-xs-6">
                                                <h3 style="text-align:left;">Cricket Stars</h3></section>
                                            <section class="col-md-6 col-xs-6">
                                                <a href="animation_cat.jsp?cat_type=Cricket Stars"><p style="text-align:right;color:#000;">View All</p></a>
                                            </section></section>-->





<section class="cat-head">
                                         <section class="col-md-6 col-xs-6">
                                        <div class="newboxes" id="newboxes1"><h3 style="text-align:left;">Cricket Stars</h3></div>
                                            <div class="newboxes" id="newboxes2"><h3 style="text-align:left;">கிரிக்கெட் நட்சத்திரங்கள்</h3></div>
                                            <div class="newboxes" id="newboxes3"><h3 style="text-align:left;">ක්රිකට් තරු</h3></div>
                                          </section>
                                         
                <section class="col-md-6 col-xs-6">
                    <a href="animation_cat.jsp?cat_type=Cricket Stars" style="padding: 0px;">  <div class="newboxes" id="newboxes1"><p style="text-align:right; color:#E34043;font-weight:bold;">View All</p></div>
                                             <div class="newboxes" id="newboxes2"><p style="text-align:right; color:#E34043;font-weight:bold;">அனைத்து பார்வையிட</p></div>
                                              <div class="newboxes" id="newboxes3"><p style="text-align:right; color:#E34043;font-weight:bold;">දැක්ම සියලු</p></div></a>

                                        </section>
                                        </section>
                                        <section class="cat-set">
                                            <%
                                                image_name = "Animation/Chandimal_500x500_1.gif";
                                            %>
                                            <section class="col-md-4 col-xs-4">
                                                <img src="<%=path + image_name%>"/>
                                            </section>
                                            <section class="col-md-8 col-xs-8">
<!--                                                <p class="cata">Cricket All-Stars</p>-->
                                                <div class="newboxes" id="newboxes1">   <p class="cata">Cricket All-Stars</p></div>
                                            <div class="newboxes" id="newboxes2">   <p class="cata">கிரிக்கெட் அனைத்து நட்சத்திரங்கள்</p></div>
                                            <div class="newboxes" id="newboxes3">   <p class="cata">ක්රිකට් සියලුම තරු</p> </div>
                                                
                                            </section>
                                        </section>

                                    </section>
                                </section>

                            </section>

                            <section class="banner-cat">
                                <a href="subscription.jsp"> <img src="images/SUBSCRIPTION.png"/>
                            </section>


                        </section>

                       <%@include file="footer/footer.jsp" %>

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
        </section>



        <!-- JS includes -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script> 
        <!-- Include all compiled plugins (below), or include individual files as needed --> 
         <script>
$(function() {
 $(".navi li").on("click", function() {
   $(".navi li").removeClass("active");
   $(this).addClass("active");
 });
 
});

</script>
        <script src="scripts/bootstrap.js"></script>
        <script src="scripts/change.js"></script>
 </div>
    </body>
</html>
