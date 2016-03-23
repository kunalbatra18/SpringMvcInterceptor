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
<!--                        <section id="wall-head">
                        </section>-->

                        <section class="row">
                            <!--categories area-->
                            <section class="categories-area">

                                <section class="cat-area">
                                    <section class="row">

                                       <section class="cat-head">
                                            <section class="col-md-6 col-xs-6">
                                                <div class="newboxes" id="newboxes1"><h3 style="text-align:left;">The Ramayana Epic</h3></div>
                                                <div class="newboxes" id="newboxes2"><h3 style="text-align:left;">ராமாயணம் காவிய</h3></div>
                                                <div class="newboxes" id="newboxes3"><h3 style="text-align:left;">රාමායනය එපික්</h3></div>
                                            </section>

                                            <section class="col-md-6 col-xs-6">
                                                    <a href="video_cat.jsp?cat_type=The Ramayana Epic" style="padding: 0px;">  <div class="newboxes" id="newboxes1"><p style="text-align:right; color:#E34043;font-weight:bold;">View All</p></div>
                                                    <div class="newboxes" id="newboxes2"><p style="text-align:right; color:#E34043;font-weight:bold;">அனைத்து பார்வையிட</p></div>
                                                    <div class="newboxes" id="newboxes3"><p style="text-align:right; color:#E34043;font-weight:bold;">දැක්ම සියලු</p></div></a>

                                            </section>
                                        </section>


                                        <section class="cat-set">
                                             <%
                                                String path = "../m4u/CMS/Preview/";
                                                String image_name = "Video/Ramayan_Kishkindha_Kand_11.gif";

                                            %>
                                            
                                            
                                            
                                            <section class="col-md-4 col-xs-4">
                                                <img src="<%=path + image_name%>"/>
                                            </section>
                                            <section class="col-md-8 col-xs-8">
                                                
                                                
                                                 <div class="newboxes" id="newboxes1">   <p class="cata">The Hindu Epic- The Story of Ramayana</p></div>
                                                <div class="newboxes" id="newboxes2">   <p class="cata">இராமாயணம் இந்து மதம் காவிய கதை</p></div>
                                                <div class="newboxes" id="newboxes3">   <p class="cata">රාමායණය හින්දු එපික් කතාව</p> </div>

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
                                                <div class="newboxes" id="newboxes1"><h3 style="text-align:left;">Ultra Hot Babes</h3></div>
                                                <div class="newboxes" id="newboxes2"><h3 style="text-align:left;">அல்ட்ரா சூடான பேப்ஸ்</h3></div>
                                                <div class="newboxes" id="newboxes3"><h3 style="text-align:left;">අල්ට්රා උණුසුම් ළදරුවන්ගේ</h3></div>
                                            </section>

                                            <section class="col-md-6 col-xs-6">
                                                <a href="video_cat.jsp?cat_type=Ultra Hot Babes" style="padding: 0px;">  <div class="newboxes" id="newboxes1"><p style="text-align:right; color:#E34043;font-weight:bold;">View All</p></div>
                                                    <div class="newboxes" id="newboxes2"><p style="text-align:right; color:#E34043;font-weight:bold;">அனைத்து பார்வையிட</p></div>
                                                    <div class="newboxes" id="newboxes3"><p style="text-align:right; color:#E34043;font-weight:bold;">දැක්ම සියලු</p></div></a>

                                            </section>
                                        </section>


                                        <section class="cat-set">
                                            
                                               <%
                                                    image_name = "Video/kanom.gif";
                                                %>
                                            <section class="col-md-4 col-xs-4">
                                                <img src="<%=path + image_name%>"/>
                                            </section>
                                            <section class="col-md-8 col-xs-8">

                                                
                                                 <div class="newboxes" id="newboxes1">   <p class="cata">Watch Ultra Hot webcam dancing Girls!</p></div>
                                                <div class="newboxes" id="newboxes2">   <p class="cata">அல்ட்ரா சூடான வெப்கேம் நடனம் பெண்கள் பார்க்க!</p></div>
                                                <div class="newboxes" id="newboxes3">   <p class="cata">අල්ට්රා උණුසුම් වෙබ් කැමරාව නැටුම් බාලිකා බලන්න!</p></div>

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
                                                <div class="newboxes" id="newboxes1"><h3 style="text-align:left;">Bikini Photoshoots</h3></div>
                                                <div class="newboxes" id="newboxes2"><h3 style="text-align:left;">நீச்சலுடை</h3></div>
                                                <div class="newboxes" id="newboxes3"><h3 style="text-align:left;">උණුසුම් අංකුර</h3></div>
                                            </section>

                                            <section class="col-md-6 col-xs-6">
                                                <a href="video_cat.jsp?cat_type=Bikini Photoshoots" style="padding: 0px;">  <div class="newboxes" id="newboxes1"><p style="text-align:right; color:#E34043;font-weight:bold;">View All</p></div>
                                                    <div class="newboxes" id="newboxes2"><p style="text-align:right; color:#E34043;font-weight:bold;">அனைத்து பார்வையிட</p></div>
                                                    <div class="newboxes" id="newboxes3"><p style="text-align:right; color:#E34043;font-weight:bold;">දැක්ම සියලු</p></div></a>

                                            </section>
                                        </section>
                                        <section class="cat-set">
                                               <%
                                                    image_name = "Video/Apex_bikini_Claudia_C_2m.gif";
                                                %>
                                            <section class="col-md-4 col-xs-4">
                                                <img src="<%=path + image_name%>"/>
                                            </section>
                                            <section class="col-md-8 col-xs-8">
                                               
                                                
                                                 <div class="newboxes" id="newboxes1">   <p class="cata">Exclusive hot bikini models Photoshoots pics</p></div>
                                                <div class="newboxes" id="newboxes2">   <p class="cata">பிரத்தியேக சூடான பிகினி மாதிரிகள் படங்கள்</p></div>
                                                <div class="newboxes" id="newboxes3">   <p class="cata">සහ ලකුණින් බැහැරව උණුසුම් ආකෘති චායාරූප</p> </div>

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
                                                <div class="newboxes" id="newboxes1"><h3 style="text-align:left;">Hot Webcam Girls</h3></div>
                                                <div class="newboxes" id="newboxes2"><h3 style="text-align:left;">சூடான வெப்கேம் பெண்கள்</h3></div>
                                                <div class="newboxes" id="newboxes3"><h3 style="text-align:left;">උණුසුම් වෙබ් කැමරාව බාලිකා</h3></div>
                                            </section>

                                            <section class="col-md-6 col-xs-6">
                                                <a href="video_cat.jsp?cat_type=Hot Webcam Girls" style="padding: 0px;">  <div class="newboxes" id="newboxes1"><p style="text-align:right; color:#E34043;font-weight:bold;">View All</p></div>
                                                    <div class="newboxes" id="newboxes2"><p style="text-align:right; color:#E34043;font-weight:bold;">அனைத்து பார்வையிட</p></div>
                                                    <div class="newboxes" id="newboxes3"><p style="text-align:right; color:#E34043;font-weight:bold;">දැක්ම සියලු</p></div></a>

                                            </section>
                                        </section>
                                        <section class="cat-set">
                                            
                                             <%
                                                image_name = "Video/mk_webcam_Amy_black_C_3m.gif";
                                            %>
                                            <section class="col-md-4 col-xs-4">
                                                <img src="<%=path + image_name%>"/>
                                            </section>
                                            <section class="col-md-8 col-xs-8">
                                             
                                                
                                                 <div class="newboxes" id="newboxes1">   <p class="cata">Watch Hot webcam dancing Girls!</p></div>
                                                <div class="newboxes" id="newboxes2">   <p class="cata">சூடான வெப்கேம் நடனம் பெண்கள் பார்க்க!</p></div>
                                                <div class="newboxes" id="newboxes3">   <p class="cata">උණුසුම් වෙබ් කැමරාව නැටුම් බාලිකා බලන්න!</p> </div>

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
                                                <div class="newboxes" id="newboxes1"><h3 style="text-align:left;">Top Teens Videos</h3></div>
                                                <div class="newboxes" id="newboxes2"><h3 style="text-align:left;">சிறந்த இளம் வயதினரை வீடியோக்கள்</h3></div>
                                                <div class="newboxes" id="newboxes3"><h3 style="text-align:left;">යෞවනයන්ට වීඩියෝ</h3></div>
                                            </section>

                                            <section class="col-md-6 col-xs-6">
                                                <a href="video_cat.jsp?cat_type=Top Teens Videos" style="padding: 0px;">  <div class="newboxes" id="newboxes1"><p style="text-align:right; color:#E34043;font-weight:bold;">View All</p></div>
                                                    <div class="newboxes" id="newboxes2"><p style="text-align:right; color:#E34043;font-weight:bold;">அனைத்து பார்வையிட</p></div>
                                                    <div class="newboxes" id="newboxes3"><p style="text-align:right; color:#E34043;font-weight:bold;">දැක්ම සියලු</p></div></a>

                                            </section>
                                        </section>
                                        <section class="cat-set">
                                            <%
                                                image_name = "Video/KM_BABE_Adele_chair_90sec_1.gif";
                                            %>
                                            <section class="col-md-4 col-xs-4">
                                                <img src="<%=path + image_name%>"/>
                                            </section>
                                            <section class="col-md-8 col-xs-8">

                                                
                                                 <div class="newboxes" id="newboxes1">   <p class="cata">A must see- The best TEEN video clips</p></div>
                                                <div class="newboxes" id="newboxes2">   <p class="cata">ஒரு சிறந்த டீன் வீடியோ கிளிப்புகள் பார்க்க வேண்டும்</p></div>
                                                <div class="newboxes" id="newboxes3">   <p class="cata">ඒ දැකිය යුතුය හොඳම යෞවනයෙකු වීඩියෝ ක්ලිප්</p> </div>

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
                                                <div class="newboxes" id="newboxes1"><h3 style="text-align:left;">Entertainment</h3></div>
                                                <div class="newboxes" id="newboxes2"><h3 style="text-align:left;">பொழுதுபோக்கு</h3></div>
                                                <div class="newboxes" id="newboxes3"><h3 style="text-align:left;">විනෝදාස්වාදය</h3></div>
                                            </section>

                                            <section class="col-md-6 col-xs-6">
                                                <a href="video_cat.jsp?cat_type=Entertainment" style="padding: 0px;">  <div class="newboxes" id="newboxes1"><p style="text-align:right; color:#E34043;font-weight:bold;">View All</p></div>
                                                    <div class="newboxes" id="newboxes2"><p style="text-align:right; color:#E34043;font-weight:bold;">அனைத்து பார்வையிட</p></div>
                                                    <div class="newboxes" id="newboxes3"><p style="text-align:right; color:#E34043;font-weight:bold;">දැක්ම සියලු</p></div></a>

                                            </section>
                                        </section>
                                            <%
                                                image_name = "Video/Auto_Vision.gif";
                                            %>
                                        <section class="cat-set">
                                            <section class="col-md-4 col-xs-4">
                                                <img src="<%=path + image_name%>"/>
                                            </section>
                                            <section class="col-md-8 col-xs-8">
                                                
                                            
                                            
                                                 <div class="newboxes" id="newboxes1">   <p class="cata">Get Full Entertainment here- News, Celebrity Gossips, Art and more...</p></div>
                                                <div class="newboxes" id="newboxes2">   <p class="cata">முழு பொழுதுபோக்கு இங்கே செய்திகள் , பிரபலங்கள், கலை மற்றும் இன்னும் பெற ...</p></div>
                                                <div class="newboxes" id="newboxes3">   <p class="cata">මෙහි පූර්ණ විනෝදාස්වාදය පුවත්, ප්රසිද්ධ , චිත්ර හා වඩා ලබා ගන්න ...</p> </div>

                                            
                                            </section>
                                        </section>

                                    </section>
                                </section>

                            </section>
                            <!--categories area-->
                            
                             <!--categories area-->
                             
                              <!--categories area-->
                            <section class="categories-area">

                                <section class="cat-area">
                                    <section class="row">

                                       <section class="cat-head">
                                            <section class="col-md-6 col-xs-6">
                                                <div class="newboxes" id="newboxes1"><h3 style="text-align:left;">Tamil TV</h3></div>
                                                <div class="newboxes" id="newboxes2"><h3 style="text-align:left;">தமிழ் தொலைக்காட்சி</h3></div>
                                                <div class="newboxes" id="newboxes3"><h3 style="text-align:left;">දමිළ රූපවාහිනී</h3></div>
                                            </section>

                                            <section class="col-md-6 col-xs-6">
                                                <a href="video_cat.jsp?cat_type=Tamil TV" style="padding: 0px;">  <div class="newboxes" id="newboxes1"><p style="text-align:right; color:#E34043;font-weight:bold;">View All</p></div>
                                                    <div class="newboxes" id="newboxes2"><p style="text-align:right; color:#E34043;font-weight:bold;">அனைத்து பார்வையிட</p></div>
                                                    <div class="newboxes" id="newboxes3"><p style="text-align:right; color:#E34043;font-weight:bold;">දැක්ම සියලු</p></div></a>

                                            </section>
                                        </section>
                                        <section class="cat-set">
                                            <%
                                                image_name = "Video/BHAIRAVI_GOSWAMI.gif";
                                            %>
                                            <section class="col-md-4 col-xs-4">
                                                <img src="<%=path + image_name%>"/>
                                            </section>
                                            <section class="col-md-8 col-xs-8">

                                                <div class="newboxes" id="newboxes1">   <p class="cata">Watch Tamil TV Shows & Serials online</p></div>
                                                <div class="newboxes" id="newboxes2">   <p class="cata">ஆன்லைன் தமிழ் டிவி நிகழ்ச்சிகள் & தொடர்களைப் பார்ப்பாயா</p></div>
                                                <div class="newboxes" id="newboxes3">   <p class="cata">වොච් දමිළ රූපවාහිනී ප්රදර්ශන සහ විද්යාව සමඟ අමුත්තන්</p> </div>

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
                                                <div class="newboxes" id="newboxes1"><h3 style="text-align:left;">Bollywood Clips</h3></div>
                                                <div class="newboxes" id="newboxes2"><h3 style="text-align:left;">பாலிவுட் கிளிப்கள்</h3></div>
                                                <div class="newboxes" id="newboxes3"><h3 style="text-align:left;">බොලිවුඩ් වල කොටස්</h3></div>
                                            </section>

                                            <section class="col-md-6 col-xs-6">
                                                <a href="video_cat.jsp?cat_type=Bollywood Clips" style="padding: 0px;">  <div class="newboxes" id="newboxes1"><p style="text-align:right; color:#E34043;font-weight:bold;">View All</p></div>
                                                    <div class="newboxes" id="newboxes2"><p style="text-align:right; color:#E34043;font-weight:bold;">அனைத்து பார்வையிட</p></div>
                                                    <div class="newboxes" id="newboxes3"><p style="text-align:right; color:#E34043;font-weight:bold;">දැක්ම සියලු</p></div></a>

                                            </section>
                                        </section>
                                        <section class="cat-set">
                                            <%
                                                image_name = "Video/TOP_10_Glamorous_Second_Wives_in_Bollywood.gif";
                                            %>
                                            <section class="col-md-4 col-xs-4">
                                                <img src="<%=path + image_name%>"/>
                                            </section>
                                            <section class="col-md-8 col-xs-8">

                                                <div class="newboxes" id="newboxes1">   <p class="cata">Download Bollywood gossips and amazing Video Clips now!!</p></div>
                                                <div class="newboxes" id="newboxes2">   <p class="cata">இப்போது பாலிவுட் கிசுகிசுக்கள் மற்றும் அற்புதமான வீடியோ கிளிப்கள் பதிவிறக்கம் !!</p></div>
                                                <div class="newboxes" id="newboxes3">   <p class="cata">දැන් බොලිවුඩ් ඕපාදූප හා පුදුම වීඩියෝ වල කොටස් බාගත !!</p> </div>

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
                                                <div class="newboxes" id="newboxes1"><h3 style="text-align:left;">Funny Videos</h3></div>
                                                <div class="newboxes" id="newboxes2"><h3 style="text-align:left;">வேடிக்கை வீடியோக்கள்</h3></div>
                                                <div class="newboxes" id="newboxes3"><h3 style="text-align:left;">විහිළුවක් වීඩියෝ</h3></div>
                                            </section>

                                            <section class="col-md-6 col-xs-6">
                                                <a href="video_cat.jsp?cat_type=Funny Videos" style="padding: 0px;">  <div class="newboxes" id="newboxes1"><p style="text-align:right; color:#E34043;font-weight:bold;">View All</p></div>
                                                    <div class="newboxes" id="newboxes2"><p style="text-align:right; color:#E34043;font-weight:bold;">அனைத்து பார்வையிட</p></div>
                                                    <div class="newboxes" id="newboxes3"><p style="text-align:right; color:#E34043;font-weight:bold;">දැක්ම සියලු</p></div></a>

                                            </section>
                                        </section>
                                        <section class="cat-set">
                                            <%
                                                image_name = "Video/Funny_19.gif";
                                            %>
                                            <section class="col-md-4 col-xs-4">
                                                <img src="<%=path + image_name%>"/>
                                            </section>
                                            <section class="col-md-8 col-xs-8">

                                                <div class="newboxes" id="newboxes1">   <p class="cata">Watch rib-tickling funny videos here....</p></div>
                                                <div class="newboxes" id="newboxes2">   <p class="cata">இங்கே விலா எலும்பு-கிசுகிசுமுட்டல் வேடிக்கை வீடியோக்கள் பார்க்க ....</p></div>
                                                <div class="newboxes" id="newboxes3">   <p class="cata">ඉල මෙතන විසුළු වීඩියෝ කවන්නට නැරඹීමට ....</p> </div>

                                            </section>
                                        </section>

                                    </section>
                                </section>

                            </section>




                            <section class="banner-cat">
                              <a href="subscription.jsp">   <img src="images/SUBSCRIPTION.png"/>
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
