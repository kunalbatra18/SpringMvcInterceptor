<%-- 
    Document   : wallpaper
    Created on : Feb 6, 2016, 2:49:05 PM
    Author     : sushil
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="lanka.services.GetLogs"%>
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
    <!--   <body onload="javascript:showonlyone('newboxes1');">-->

    <%
        if (session.getAttribute("divVal") == null || session.getAttribute("divVal") == "") {
            System.out.println("Session value in animation " + session.getAttribute("divVal"));
    %>
    <body onload="javascript:showonlyone('newboxes1', '<%=request.getParameter("cli")%>');">
        <%} else {%>
    <body onload="javascript:showonlyone('<%=session.getAttribute("divVal")%>', '<%=request.getParameter("cli")%>');">

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
                          <!--  <section class="col-md-4 col-xs-4">
                                <div style="padding:10px;">
                                    <select style="float:right;" onchange="javascript:showonlyone(this.value);">
                                        <option value="newboxes1" id="newboxes1s" selected="">English</option>
                                        <option value="newboxes2" id="newboxes2s" selected="">Tamil</option>
                                        <option value="newboxes3" id="newboxes3s" selected="">Sinhala</option>
                                    </select>

                                </div>

                            </section> -->
                        </section>
                        <!--categories area-->
                        <section class="tabbed" style="padding:5px; text-align:center;margin-bottom:5px; color:#fff;background-color: #333;">
                            <h3>Subscription Packages</h3>
                        </section>
                        <section class="selection">

                            <!-- Code by Altmish Editing
                             <div class="newboxes" id="newboxes1">English </div>
                            <div class="newboxes" id="newboxes3">Sinhala </div>
                            <div class="newboxes" id="newboxes2">Tamil </div> -->
                            <div class="newboxes" id="newboxes1">
                                <section class="row">



                                    <form method="post" action="subs_consent.jsp">
                                        <a href="consentPage.jsp?service_id=59797A001" class="hvr-curl-top-right" style="text-align:center;padding:5px;background:#ff8c61;font-weight: bold;margin:0px;margin-bottom:5px;">Wallpapers(3 wallpaper) for 3Rs. 3 Days</a>
                                        <a href="consentPage.jsp?service_id=59797A002" class="hvr-curl-top-right" style="text-align:center;padding:5px;background:#ff8c61;font-weight: bold;margin:0px;margin-bottom:5px;">Screensavers(5 animation) for 5Rs. 5 Days</a>
                                        <a href="consentPage.jsp?service_id=59797A003" class="hvr-curl-top-right" style="text-align:center;padding:5px;background:#ff8c61;font-weight: bold;margin:0px;margin-bottom:5px;">Super Models Club(2 wallpaper+5 video) for 7Rs. 7 Days</a>
                                        <a href="consentPage.jsp?service_id=59797A004" class="hvr-curl-top-right" style="text-align:center;padding:5px;background:#ff8c61;font-weight: bold;margin:0px;margin-bottom:5px;">New Arrivals(4 wallpaper+2 video+4 animation) for 10Rs. 10 Days</a>
                                        <a href="consentPage.jsp?service_id=59797A005" class="hvr-curl-top-right" style="text-align:center;padding:5px;background:#ff8c61;font-weight: bold;margin:0px;margin-bottom:5px;">New Arrivals(2 animation) for 2Rs. 2 Days</a>
                                        <a href="consentPage.jsp?service_id=59797A006" class="hvr-curl-top-right" style="text-align:center;padding:5px;background:#ff8c61;font-weight: bold;margin:0px;margin-bottom:5px;">SL Treasure(8 wallpaper+5 video+1 ringtone+1 game+5 animation) for 20Rs. 20 Days</a>
                                        <a href="consentPage.jsp?service_id=59797A007" class="hvr-curl-top-right" style="text-align:center;padding:5px;background:#ff8c61;font-weight: bold;margin:0px;margin-bottom:5px;">Fun Zone(3 game) for 3Rs. 3 Days</a>
                                        <a href="consentPage.jsp?service_id=59797A008" class="hvr-curl-top-right" style="text-align:center;padding:5px;background:#ff8c61;font-weight: bold;margin:0px;margin-bottom:5px;">WhatsUp Colombo(5 animation) for 5Rs. 5 Days</a>
                                        <a href="consentPage.jsp?service_id=59797A009" class="hvr-curl-top-right" style="text-align:center;padding:5px;background:#ff8c61;font-weight: bold;margin:0px;margin-bottom:5px;">Sinhalese Special(5 wallpaper+2 animation) for 7Rs. 7 Days</a>
                                        <a href="consentPage.jsp?service_id=59797A010" class="hvr-curl-top-right" style="text-align:center;padding:5px;background:#ff8c61;font-weight: bold;margin:0px;margin-bottom:5px;">Sinhalese Special(5 wallpaper+5 animation) for 10Rs. 10 Days </a>
                                        <a href="consentPage.jsp?service_id=59797A011" class="hvr-curl-top-right" style="text-align:center;padding:5px;background:#ff8c61;font-weight: bold;margin:0px;margin-bottom:5px;">Videos(10 video) for 10Rs. 10 Days</a>
                                        <a href="consentPage.jsp?service_id=59797A012" class="hvr-curl-top-right" style="text-align:center;padding:5px;background:#ff8c61;font-weight: bold;margin:0px;margin-bottom:5px;">Applications(1 game) for 15Rs. 15 Days</a>
                                        <a href="consentPage.jsp?service_id=59797A013" class="hvr-curl-top-right" style="text-align:center;padding:5px;background:#ff8c61;font-weight: bold;margin:0px;margin-bottom:5px;">NewU(5 wallpaper) for 5Rs. 5 Days</a>
                                        <a href="consentPage.jsp?service_id=59797A014" class="hvr-curl-top-right" style="text-align:center;padding:5px;background:#ff8c61;font-weight: bold;margin:0px;margin-bottom:5px;">Videos(7 video) for 7Rs. 7 Days</a>
                                        <a href="consentPage.jsp?service_id=59797A015" class="hvr-curl-top-right" style="text-align:center;padding:5px;background:#ff8c61;font-weight: bold;margin:0px;margin-bottom:5px;">SL Treasure(5 game) for 5Rs. 5 Days</a>
                                    </form>


                                </section>
                            </div>
                            <div class="newboxes" id="newboxes2"> 

                                <a href="consentPage.jsp?service_id=59797A001" class="hvr-curl-top-right" style="text-align:center;padding:5px;background:#ff8c61;font-weight: bold;margin:0px;margin-bottom:5px;">3RS வால்பேப்பர்கள் (3D வால்பேப்ப                  </a>
                                <a href="consentPage.jsp?service_id=59797A002" class="hvr-curl-top-right" style="text-align:center;padding:5px;background:#ff8c61;font-weight: bold;margin:0px;margin-bottom:5px;">5Rs க்கான மறைதிரை (5 அனிமேஷன்)                           </a>
                                <a href="consentPage.jsp?service_id=59797A003" class="hvr-curl-top-right" style="text-align:center;padding:5px;background:#ff8c61;font-weight: bold;margin:0px;margin-bottom:5px;">சூப்பர்மாடல்ஸ் கிளப் (2 வால்பேப்பர் + 5: வீடியோ) 7RS ஐந்து. 7 நாட்கள்      </a>
                                <a href="consentPage.jsp?service_id=59797A004" class="hvr-curl-top-right" style="text-align:center;padding:5px;background:#ff8c61;font-weight: bold;margin:0px;margin-bottom:5px;">புதிய வரவுகள் (4 வால்பேப்பர் +2 வீடியோ + 4 அனிமேஷன்) 10 ரூ. 10 நாட்கள்   </a>
                                <a href="consentPage.jsp?service_id=59797A005" class="hvr-curl-top-right" style="text-align:center;padding:5px;background:#ff8c61;font-weight: bold;margin:0px;margin-bottom:5px;">புதிய வரவுகள் (2 அனிமேஷன்) 2Rs ஐந்து. 2 நாட்கள்                                </a>
                                <a href="consentPage.jsp?service_id=59797A006" class="hvr-curl-top-right" style="text-align:center;padding:5px;background:#ff8c61;font-weight: bold;margin:0px;margin-bottom:5px;">இலங்கை பொக்கிஷம் 20 ரூ (8 வால்பேப்பர் + 5: வீடியோ + 1 ரிங்டோன் +1 விளை</a>
                                <a href="consentPage.jsp?service_id=59797A007" class="hvr-curl-top-right" style="text-align:center;padding:5px;background:#ff8c61;font-weight: bold;margin:0px;margin-bottom:5px;">3RS வேடிக்கை மண்டலம் (3 விளையாட்டு). 3 நாட்கள்                               </a>
                                <a href="consentPage.jsp?service_id=59797A008" class="hvr-curl-top-right" style="text-align:center;padding:5px;background:#ff8c61;font-weight: bold;margin:0px;margin-bottom:5px;">5Rs, Whatsapp கொழும்பு (5 அனிமேஷன்). 5 நாட்கள்                                 </a>
                                <a href="consentPage.jsp?service_id=59797A009" class="hvr-curl-top-right" style="text-align:center;padding:5px;background:#ff8c61;font-weight: bold;margin:0px;margin-bottom:5px;">சிங்களம் சிறப்பு (5 வால்பேப்பர் +2 அனிமேஷன்) 7RS ஐந்து. 7 நாட்கள்            </a>
                                <a href="consentPage.jsp?service_id=59797A010" class="hvr-curl-top-right" style="text-align:center;padding:5px;background:#ff8c61;font-weight: bold;margin:0px;margin-bottom:5px;">சிங்களம் சிறப்பு 10 ரூ (5 வால்பேப்பர் + 5: அனிமேஷன்). 10 நாட்கள்              </a>
                                <a href="consentPage.jsp?service_id=59797A011" class="hvr-curl-top-right" style="text-align:center;padding:5px;background:#ff8c61;font-weight: bold;margin:0px;margin-bottom:5px;">வீடியோக்கள் (10 வீடியோ) 10 ரூ. 10 நாட்கள்                                     </a>
                                <a href="consentPage.jsp?service_id=59797A012" class="hvr-curl-top-right" style="text-align:center;padding:5px;background:#ff8c61;font-weight: bold;margin:0px;margin-bottom:5px;">பயன்பாடுகள் 15 ரூ (1 விளையாட்டு). 15 நாட்கள்                                   </a>
                                <a href="consentPage.jsp?service_id=59797A013" class="hvr-curl-top-right" style="text-align:center;padding:5px;background:#ff8c61;font-weight: bold;margin:0px;margin-bottom:5px;">NewU (5 வால்பேப்பர்) 5Rs ஐந்து. 5 நாட்கள்                                           </a>
                                <a href="consentPage.jsp?service_id=59797A014" class="hvr-curl-top-right" style="text-align:center;padding:5px;background:#ff8c61;font-weight: bold;margin:0px;margin-bottom:5px;">7RS வீடியோக்கள் (7 வீடியோ). 7 நாட்கள்                                          </a>
                                <a href="consentPage.jsp?service_id=59797A015" class="hvr-curl-top-right" style="text-align:center;padding:5px;background:#ff8c61;font-weight: bold;margin:0px;margin-bottom:5px;">இலங்கை பொக்கிஷம் (5 விளையாட்டு) 5Rs ஐந்து. 5 நாட்கள்  </a>




                            </div>

                            <div class="newboxes" id="newboxes3"> 
                                <a href="consentPage.jsp?service_id=59797A001" class="hvr-curl-top-right" style="text-align:center;padding:5px;background:#ff8c61;font-weight: bold;margin:0px;margin-bottom:5px;">3Rs සඳහා Wallpapers (3d ෙවෝල් ෙප්පර්). දින 3                     </a>
                                <a href="consentPage.jsp?service_id=59797A002" class="hvr-curl-top-right" style="text-align:center;padding:5px;background:#ff8c61;font-weight: bold;margin:0px;margin-bottom:5px;">Screensavers (5 සජීවීකරණ) 5Rs සඳහා. දින 5                          </a>
                                <a href="consentPage.jsp?service_id=59797A003" class="hvr-curl-top-right" style="text-align:center;padding:5px;background:#ff8c61;font-weight: bold;margin:0px;margin-bottom:5px;">7Rs සඳහා Supermodels සමාජය (2 ෙවෝල් ෙප්පර් + 5 වීඩියෝ). දින 7   </a>
                                <a href="consentPage.jsp?service_id=59797A004" class="hvr-curl-top-right" style="text-align:center;padding:5px;background:#ff8c61;font-weight: bold;margin:0px;margin-bottom:5px;">නව පැමිණීම් (4 ෙවෝල් ෙප්පර් + 2 වීඩියෝ + 4 සජීවීකරණ) 10 සඳහා රු. </a>
                                <a href="consentPage.jsp?service_id=59797A005" class="hvr-curl-top-right" style="text-align:center;padding:5px;background:#ff8c61;font-weight: bold;margin:0px;margin-bottom:5px;">2Rs සඳහා නව පැමිණීම් (2 සජීවීකරණ). දින 2                           </a>
                                <a href="consentPage.jsp?service_id=59797A006" class="hvr-curl-top-right" style="text-align:center;padding:5px;background:#ff8c61;font-weight: bold;margin:0px;margin-bottom:5px;">ශ්රී ලංකා නිධානය 20 සඳහා රු (8 ෙවෝල් ෙප්පර් + 5 වීඩියෝ + 1 රිගින්</a>
                                <a href="consentPage.jsp?service_id=59797A007" class="hvr-curl-top-right" style="text-align:center;padding:5px;background:#ff8c61;font-weight: bold;margin:0px;margin-bottom:5px;">විනෝද කලාපය (3 තරගය) 3Rs සඳහා. දින 3                              </a>
                                <a href="consentPage.jsp?service_id=59797A008" class="hvr-curl-top-right" style="text-align:center;padding:5px;background:#ff8c61;font-weight: bold;margin:0px;margin-bottom:5px;">WhatsApp කොළඹ (5 සජීවීකරණ) 5Rs සඳහා. දින 5                        </a>
                                <a href="consentPage.jsp?service_id=59797A009" class="hvr-curl-top-right" style="text-align:center;padding:5px;background:#ff8c61;font-weight: bold;margin:0px;margin-bottom:5px;">7Rs සඳහා සිංහල විශේෂ (5 ෙවෝල් ෙප්පර් + 2 සජීවීකරණ). දින 7        </a>
                                <a href="consentPage.jsp?service_id=59797A010" class="hvr-curl-top-right" style="text-align:center;padding:5px;background:#ff8c61;font-weight: bold;margin:0px;margin-bottom:5px;">සිංහල විශේෂ (5 ෙවෝල් ෙප්පර් + 5 සජීවීකරණ) 10 සඳහා රු. දින 10     </a>
                                <a href="consentPage.jsp?service_id=59797A011" class="hvr-curl-top-right" style="text-align:center;padding:5px;background:#ff8c61;font-weight: bold;margin:0px;margin-bottom:5px;">10 සඳහා රු වීඩියෝ (10 වීඩියෝ). දින 10                             </a>
                                <a href="consentPage.jsp?service_id=59797A012" class="hvr-curl-top-right" style="text-align:center;padding:5px;background:#ff8c61;font-weight: bold;margin:0px;margin-bottom:5px;">15 රුපියල් සඳහා අයදුම්පත් (1 තරගය). දින 15                           </a>
                                <a href="consentPage.jsp?service_id=59797A013" class="hvr-curl-top-right" style="text-align:center;padding:5px;background:#ff8c61;font-weight: bold;margin:0px;margin-bottom:5px;">NewU (5 ෙවෝල් ෙප්පර්) 5Rs සඳහා. දින 5                            </a>
                                <a href="consentPage.jsp?service_id=59797A014" class="hvr-curl-top-right" style="text-align:center;padding:5px;background:#ff8c61;font-weight: bold;margin:0px;margin-bottom:5px;">7Rs සඳහා වීඩියෝ දර්ශන (7 වීඩියෝ). දින 7                           </a>
                                <a href="consentPage.jsp?service_id=59797A015" class="hvr-curl-top-right" style="text-align:center;padding:5px;background:#ff8c61;font-weight: bold;margin:0px;margin-bottom:5px;">ශ්රී ලංකා නිධානය (5 තරගය) 5Rs සඳහා. දින 5                          </a>

                            </div>
                        </section>



                    </section>

                   
                </section>
 <%@include file="footer/footer.jsp" %>
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
