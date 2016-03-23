<%@page import="lanka.db.MaharajaDb"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
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
            function showCon(cat_type)
            {
//                var date1 = document.getElementById("date-pick").value;

                document.getElementById("wait").innerHTML = "Please Wait....";
                var xmlhttp;

                if (window.XMLHttpRequest)
                {
                    xmlhttp = new XMLHttpRequest();
                }
                else
                {
                    xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
                }
                xmlhttp.onreadystatechange = function ()
                {
                    if (xmlhttp.readyState == 4 && xmlhttp.status == 200)
                    {
                        document.getElementById("wait").innerHTML = xmlhttp.responseText;
                    }
                }
                xmlhttp.open("GET", "videoallCat.jsp?cat_type=" + cat_type, true);
                xmlhttp.send();
            }
        </script>

           <script>
         function func1(parameter1){
                  window.location = "http://122.160.233.120/slwap/DownloadVideo?content_name="+parameter1;
                   }
        </script>

    
        <%!
            public String getUri(String URI) {
                String match_index = "/arab/";
                String last_match_index = ".jsp";
                URI = URI.substring(URI.indexOf(match_index) + match_index.length());
                URI = URI.substring(0, URI.length());
                URI = URI.substring(0, URI.indexOf(last_match_index) + last_match_index.length());
                return URI;
            }
        %>



        <%        DateFormat dateFormat = new SimpleDateFormat("yyyy_MM");
            Date date = new Date();
            String today_dat = dateFormat.format(date);
            String msisdn = "", profile = "", accpt = "", URI = "";
            try {

//            FileOutputStream fw = new FileOutputStream("/root/waplogs/srilanka_wapLogs/waplog_" + today_dat + ".txt", true);
//            PrintWriter pw = new PrintWriter(fw, true);
                java.util.Enumeration e = request.getHeaderNames();
                while (e.hasMoreElements()) {
                    String key = (String) e.nextElement();
                    key = key.trim();
//                pw.println("values:" + key);
//                pw.println(request.getHeader(key));
//                pw.println("msisdn(host)" + request.getHeader(key));
                    if ((key.indexOf("msisdn") > -1) || (key.indexOf("MSISDN") > -1)) {
                        //pw.println("msisdn(host)cvxbxcvbxcvb" + request.getHeader(key));
                        msisdn = request.getHeader(key);
                        if (msisdn.length() > 12) {
                            msisdn = (msisdn.substring(msisdn.indexOf("919"))).trim();
                        }
                    }
                    if (key.equals("x-wap-profile")) {
                        //pw.println("values:::::::::::::::::::" + key) ;
                        String val = request.getHeader(key);
                        profile = val.substring(val.indexOf("http"), val.indexOf(".xml") + 4);
//                    pw.println(val);
//                    pw.println(profile);
                    }
                    if (key.indexOf("accept-") < 0 && key.indexOf("accept") > -1) {
                        String val = request.getHeader(key);
                        accpt = val;
                              //pw.println("val 1"+val);
                        //pw.println("accpt"+accpt);
                    }
                }
                boolean isProfilebyAgent = false;

                System.out.println(" value of profile before checking user_agent  " + profile);
                if (profile.equalsIgnoreCase("") || profile.length() == 0) {
                    System.out.println("  profie is zero  storing useragent  in ");
                    isProfilebyAgent = true;
                    System.out.println(" value of  isProfilebyAgent in if " + isProfilebyAgent);
                    profile = request.getHeader("user-agent");
//                pw.println(" storing user agent in profile " + profile);
                }

                String ipAddress = request.getRemoteAddr();
                URI = request.getRequestURI();
                String id = request.getParameter("id");
                String msdn = "";
                int zone = 0;

                MaharajaDb db = MaharajaDb.create();

                String query = "insert into waphit (msisdn,zone,url_hit,profile,ip)values ('" + msisdn + "','" + zone + "','" + URI + "','" + profile + "','" + ipAddress + "')";
                db.updateData(query);
//                        db.close();
            } catch (Exception exp) {
                System.out.println("ERROR in URI " + URI + "page" + exp);
            }


        %>



    </head>
<!--    <body onload="javascript:showonlyone('newboxes1');">-->
 <%
   if(session.getAttribute("divVal") == null || session.getAttribute("divVal") ==""){
       System.out.println("Session value in animation "+session.getAttribute("divVal"));
   %>
 <body onload="javascript:showonlyone('newboxes1');">
 <%} else {%>
 <body onload="javascript:showonlyone('<%=session.getAttribute("divVal")%>');">
 
 <%}%>
  <div id="mypage" style="visibility:hidden;" >

        <section class="container">
            <section class="sri-area">
                <%@include file="headers/header.jsp" %>

                <section class="container">
                    <section class="sri-area">
<%@include file="headers/videoCat.jsp" %>
                        <!-------end---------->
                   
                    <div id="wait">
<!--                        <section class="row">-->
                            <section class="cat-wall">
                                <%                              String path = "../m4u/CMS/Preview/";
      //                          String cat_type = "english";
                                    String cat_type = request.getParameter("cat_type");
                                    //session.setAttribute("cat_type", cat_type);
                                    String root_path = "http://wap.tesync.net/m4u/CMS/Preview/";
                                    String cat = request.getParameter("cat");
                                    GetContent gc = new GetContent();
                                    ResultSet rs = gc.getContentCatWise("video", cat_type, "9");

                                    URI = getUri(URI);
                                    session.setAttribute("previous_page", URI);
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


                     <%@include file="footer/footer.jsp" %>
                                   </section>
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
