<%@ page pageEncoding="utf-8" %>
<section class="search-bar">
  <section class="row">
   <section class="col-md-2 col-xs-2">
   <section class="logo">
  <img src="images/airtel-logo-vector.png"/>
   </section>
   </section>
  <section class="col-md-5 col-xs-5">
  <section class="search_area">
     <form class="navbar-form" role="search" method="post" action="search-rslt.jsp"  name="search_form" onsubmit="return validateSearch()">
        <div class="form-group">
          <input type="text" class="form-control sear" placeholder="Search" name="users_keyword" required="">
                     <button type="submit" class="btn btn-default sear_btn"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>
     </div>
                     
 
      
      </form></section></section>
      
      
      
       <section class="col-md-5 col-xs-5">
       <section class="logo_trans">
          <section class="trans">
<!--    <form>
   <input type="button" value="A" class="bk">
   </form>-->

<div class="set">
                                    <select style="float:right; padding:5px;" onchange="javascript:showonlyone(this.value);">
                                        <option value="newboxes1" id="newboxes1s" selected="">English</option>
                                        <option value="newboxes2" id="newboxes2s" selected="">Tamil</option>
                                        <option value="newboxes3" id="newboxes3s" selected="">Sinhala</option>
                                    </select>

                                </div>




   </section>
   <section class="logoT">
   <img src="images/Tesync.png"/>
   </section>
   </section>
      </section>
      </section></section><br><br><br>
<section class="banner">
    <section class="slide-wap">
        <div id="carousel1" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carousel1" data-slide-to="0" class="active"></li>
                <li data-target="#carousel1" data-slide-to="1"></li>
                <li data-target="#carousel1" data-slide-to="2"></li>

            </ol>
            <div class="carousel-inner" role="listbox">
                <div class="item active"><img src="images/entainment.png" alt="First slide image" class="center-block"> </div>
                <div class="item"><img src="images/cricket.png" alt="Second slide image" class="center-block"> </div>
                <div class="item"><img src="images/newfm.png" alt="Third slide image" class="center-block"> </div>

            </div>
            <a class="left carousel-control" href="#carousel1" role="button" data-slide="prev"> <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span class="sr-only">Previous</span></a> <a class="right carousel-control" href="#carousel1" role="button" data-slide="next"> <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> <span class="sr-only">Next</span></a> </div>
    </section>
</section>

<section class="header">
   <ul class="navbar">
  <li id="home">
      
          <a href="sriWap.jsp?cli=home"><div class="newboxes" id="newboxes1"> <span>Home</span></div>
              <div class="newboxes" id="newboxes2"><span style="font-size:.6em;">வீட்டில்</span></div>
       <div class="newboxes" id="newboxes3"><span>ගෙදර</span></div></a>
          
    
   </li>
   <li id="img">
    
           <a href="wallpaper.jsp?cli=img"><div class="newboxes" id="newboxes1"><span>Images</span></div>
     <div class="newboxes" id="newboxes2"><span style="font-size:.6em;">படங்கள்</span></div>
      <div class="newboxes" id="newboxes3"><span>රූප</span></div></a>
          
    
   </li>
   <li id="vid">
    
         
              <a href="video.jsp?cli=vid"><div class="newboxes" id="newboxes1"><span>Videos</span></div>
     <div class="newboxes" id="newboxes2"><span style="font-size:.6em;">வீடியோக்கள்</span></div>
      <div class="newboxes" id="newboxes3"><span>වීඩියෝ දර්ශන</span></div></a>
      
   </li>
   <li id="anim">
    
          
             <a href="animation.jsp?cli=anim"> <div class="newboxes" id="newboxes1">  <span>Animations</span></div>
    <div class="newboxes" id="newboxes2"><span style="font-size:.6em;">அனிமேஷன்கள்</span></div>
     <div class="newboxes" id="newboxes3"><span>සජිවිකරණය</span></div></a>
    
   </li>
<li id="game">
     
              <a href="game.jsp?cli=game"><div class="newboxes" id="newboxes1"> <span>Games</span></div>
     <div class="newboxes" id="newboxes2"><span style="font-size:.6em;">விளையாட்டு மண்டலம்   </span></div>
      <div class="newboxes" id="newboxes3"><span>ක්රීඩාව</span></div></a>
   
   </li>
    <li id="music">
     
         <a href="ring.jsp?cli=music"><div class="newboxes" id="newboxes1"> <span>Music</span></div>
     <div class="newboxes" id="newboxes2"><span style="font-size:.6em;"> இசை </span></div>
      <div class="newboxes" id="newboxes3"><span>සංගීතය </span></div></a>
    
   </li>
</ul>
</section>
