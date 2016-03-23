<%-- 
    Document   : singleMoLogs
    Created on : May 13, 2013, 1:41:05 PM
    Author     : Altmish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link REL="shortcut icon" HREF="vt.ico" TYPE="image/x-icon"/>
        <script>
            function showVal(zone){
                var ajaxRequest="";
                // var msisdn =  document.getElementById("msisdn").innerHTML;
                var msisdn =  document.forms['form']['msisdn'].value;
                // var service =  document.getElementById("service").innerHTML;
               //document.getElementById("logsResult").innerHTML=="please Wait";
	
                try{
                    ajaxRequest = new XMLHttpRequest();
                }catch (e){
                   
                    try{
                        ajaxRequest = new ActiveXObject("Msxml2.XMLHTTP");
                    }catch (e) {
                        try{
                            ajaxRequest = new ActiveXObject("Microsoft.XMLHTTP");
                        }catch (e){
                           
                            alert("Your browser broke!");
                            return false;
                        }
                    }
                }
                ajaxRequest.onreadystatechange = function(){
 document.getElementById("logsResult").innerHTML="Please Wait";
                    if(ajaxRequest.readyState == 4){
                                           
                        var res="";
                       
                       
                        document.getElementById("logsResult").innerHTML=ajaxRequest.responseText;
                        
                    }
                }
                
                ajaxRequest.open("GET", "http://wap.tesync.net/59797/serverRespLogsSingle.jsp?msisdn="+msisdn+"&zone="+zone, true);
                ajaxRequest.withCredentials = true;
                ajaxRequest.send(null); 
 
            }
        </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Single Mo Log</title>
        <%@ include file="headerMenu.jsp" %>
  
    <div class="Center-Wrap-right1">
  <br /><br />
    <form name="form" action="#">
        <center> MSISDN:<input type="text" name="msisdn" id ="msisdn" /><br /><br />
            Zone:<select name="Zone" onchange="showVal(this.value)">
                <option></option>
                <option>North</option>
                <option>East</option>
                <option>South</option>
                
           
            </select><br /><br />
            <div id="logsResult">

            </div>
        </center>
    </form>
    </div>
  