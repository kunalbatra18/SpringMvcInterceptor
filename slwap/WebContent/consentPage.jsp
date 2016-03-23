<%-- 
    Document   : wallpaper
    Created on : Feb 6, 2016, 2:49:05 PM
    Author     : sushil
--%>

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
        
          <script>
            function goBack() {
                window.history.back();
            }
        </script>

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

            <!--            <div class="verticalspacer"></div>-->
            <section class="container">
                <section class="sri-area">
                     <section id="wall-head">
                            <section class="col-md-4 col-xs-4">

                            </section>
                            <section class="col-md-4 col-xs-4">

                            </section>
                            <section class="col-md-4 col-xs-4">
                                 <div style="padding:10px;">
                                    <select style="float:right;" onchange="javascript:showonlyone(this.value);">
                                        <option value="newboxes1" id="newboxes1s" selected="">English</option>
                                        <option value="newboxes2" id="newboxes2s" selected="">Tamil</option>
                                        <option value="newboxes3" id="newboxes3s" selected="">Sinhala</option>
                                    </select>

                                </div>
<!--                                <div style="padding:10px;">
                                    <select style="float:right;" onchange="javascript:showonlyone(this.value);">
                                        <option value="newboxes1">English</option>
                                        <option value="newboxes2">Tamil</option>
                                        <option value="newboxes3">Sinhala</option>
                                    </select>

                                </div>-->
                            </section>
                        </section>

                    <section class="row">
                        <!--categories area-->
                        <section class="selection">
                             <%
                            String service_id = request.getParameter("service_id");
                            GetLogs gl = new GetLogs();
                            String service_details = gl.getSubscriptionService(service_id);
                        %>
                            
                            <section class="row">
                                <section class="tabbed">

                                </section>
                                
                                <div class="newboxes" id="newboxes1"><p style="text-align:center;">You are requested to subscribe for  <%=service_details%>. Click Yes to Subscribe!</p></div>
                                            <div class="newboxes" id="newboxes2"><p style="text-align:center;">நீங்கள் குழுசேர்வீர்கள் கேட்டுக்கொள்ளப்படுகிறார்கள்  <%=service_details%>. தொடர்ந்து சரி கிளிக்  </p></div>
                                            <div class="newboxes" id="newboxes3"><p style="text-align:center;">ඔබ වෙනුවෙන් ගෙවීමට ඉල්ලා සිටින  <%=service_details%>. දායකත්වය ලබා දීමට ඔව් ක්ලික් කරන්න!</p></div>
                                
                                
                                <div style="margin: auto; max-width:100px;">
                                    <button class="hvr-bounce-to-right" style="padding:5px;background:#00a65a;">YES</button>

                                </div>
                                <section class="im-div"><img src="images/Sinhala_Art_1.jpg"/></section>

                                <div style="margin: auto; max-width:100px;">
                                    <button class="hvr-buzz-out" style="padding:5px;background:#E34043;" onclick="history.go(-1);">NO</button>

                                </div>


                            </section>
                        </section>




                    </section>

                    

                       </section>

<!--                        <section class="back">
                            <form>
                                <input type="button" value="Back" class="bk" onclick="history.go(-1);">
                            </form>
                        </section>-->

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
        <script src="scripts/bootstrap.js"></script>
        <script src="scripts/change.js"></script>
</div>
    </body>
</html>
