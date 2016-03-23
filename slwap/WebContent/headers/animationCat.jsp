
<%@ page pageEncoding="utf-8" %>

                <%
                    if (request.getParameter("cat_type") != null || request.getParameter("cat_type") != "") {
                %>
              
               
              





<section id="wall-head">
    <section class="col-md-6 col-xs-6">
        <div class="newboxes" id="newboxes1"><h2>Animations</h2></div>
        <div class="newboxes" id="newboxes2"><h2>அனிமேஷன்கள்</h2></div>
        <div class="newboxes" id="newboxes3"><h2>සජිවිකරණය</h2></div> 
    </section>
    <section class="col-md-6 col-xs-6">
        <div class="newboxes" id="newboxes1"><div style="padding:10px; float:left;width:100%;">
                <select style="width:100%; padding:5px;border:2px dotted #333;" name ="cat_name" onchange="showCon(this.value)">
                     <option><%=request.getParameter("cat_type")%></option>
                    <option id="Sri-Lanka-Stars">Sri Lanka Stars</option>
                    <option id="Tamil-Stars">Tamil Stars</option>
                    <option id="Ultra-Hot-Babes">Ultra Hot Babes</option>
                    <option id="Sinhala-Art">Sinhala Art</option>
                    <option id="Jacqueline-Fernandez">Jacqueline Fernandez</option>
                    <option id="Cricket-Stars">Cricket Stars</option>
                    <option id="Bollywood-Stars">Bollywood Stars</option>
                    <option id="Sunny-Leone">Sunny Leone</option>
                    <option id="Bikini-Babes">Bikini Babes</option>
                    <option id="Hollywood-Stars">Hollywood Stars</option>
                    <option id="Bollywood-Actors">Bollywood Actors</option>
                    <option id="Kannada-Stars">Kannada Stars</option>
                    <option id="Holy-Deities">Holy Deities</option>
                    <option id="Telugu-Beauties">Telugu Beauties</option>
                </select>
                    
            </div></div>
        <div class="newboxes" id="newboxes2"><div style="padding:10px; float:left;width:100%;">
                <select style="width:100%; padding:5px;border:2px dotted #333;" name ="cat_name" onchange="showCon(this.value)">
                    <option id="Tamil-Stars" value="Tamil Stars"> ஹாலிவுட் நட்சத்திரங்கள்  </option>
<option id="Ultra-Hot-Babes" value="Ultra Hot Babes">பிகினி பேப்ஸ்  </option>
<option id="Sinhala-Art" value="Sinhala Art">சன்னி லியோன்  </option>
<option id="Jacqueline-Fernandez" value="Jacqueline Fernandez">	தெலுங்கு அழகானவர்கள்  </option>
<option id="Bollywood-Stars" value="Bollywood Stars"> தமிழ் நட்சத்திரங்கள்  </option>
<option id="Sunny-Leone" value="Sunny Leone">கன்னடம் நட்சத்திரங்கள்  </option>
<option id="Bikini-Babes" value="Bikini Babes">	 அல்ட்ரா சூடான பேப்ஸ்  </option>
<option id="Hollywood-Stars" value="Hollywood Stars">சிங்களம் கலை</option>
<option id="Bollywood-Actors" value="Bollywood Actors">	 பாலிவுட் நட்சத்திரங்கள்  </option>
<option id="Kannada-Stars" value="Kannada Stars">ஜாக்குலின் பெர்னாண்டஸ் </option>
<option id="Holy-Deities" value="Holy Deities">	 பாலிவுட் நடிகர்கள்  </option>
<option id="Telugu-Beauties" value="Telugu Beauties">பரிசுத்த தெய்வங்களின்  </option>


                </select>
            </div></div>
        <div class="newboxes" id="newboxes3"><div style="padding:10px; float:left;width:100%;">
                <select style="width:100%; padding:5px;border:2px dotted #333;" name ="cat_name" onchange="showCon(this.value)">
                    <option id="Tamil-Stars" value="Tamil Stars">හොලිවුඩ් තරු </option>
<option id="Ultra-Hot-Babes" value="Ultra Hot Babes">උණුසුම් ළදරුවන්ගේ </option>
<option id="Sinhala-Art" value="Sinhala Art">සනී ලියෝන් </option>
<option id="Jacqueline-Fernandez" value="Jacqueline Fernandez">	තෙළිඟු අලංකාරයෙන් </option>
<option id="Bollywood-Stars" value="Bollywood Stars">දෙමළ තරු </option>
<option id="Sunny-Leone" value="Sunny Leone">කන්නඩ තරු </option>
<option id="Bikini-Babes" value="Bikini Babes">	අල්ට්රා උණුසුම් ළදරුවන්ගේ </option>
<option id="Hollywood-Stars" value="Hollywood Stars">සිංහල කලාව </option>
<option id="Bollywood-Actors" value="Bollywood Actors">බොලිවුඩ් තරු </option>
<option id="Kannada-Stars" value="Kannada Stars">ජැකලින් ෆර්නැන්ඩස් </option>
<option id="Holy-Deities" value="Holy Deities">	බොලිවුඩ් නළු </option>
<option id="Telugu-Beauties" value="Telugu Beauties">ශුද්ධ වැඳීම</option>

                </select>
            </div></div>
    </section>
    
    
    <!--  <section class="col-md-4 col-xs-4">
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
            <script>
                    document.getElementById("<%=request.getParameter("cat_type").replaceAll(" ", "-")%>").style.display = "none";
                </script>         
                    
                      <%
                    }
                %>