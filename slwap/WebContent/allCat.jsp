<%@page import="java.sql.ResultSet"%>
<%@page import="lanka.content.GetContent"%>
<!DOCTYPE html>
<html class="html" lang="en-US">

    <head>

        <script type="text/javascript">
            if (typeof Muse == "undefined")
                window.Muse = {};
            window.Muse.assets = {"required": ["jquery-1.8.3.min.js", "museutils.js", "webpro.js", "musewpslideshow.js", "jquery.museoverlay.js", "touchswipe.js", "jquery.musemenu.js", "jquery.watch.js", "index.css"], "outOfDate": []};
        </script>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-type" content="text/html;charset=UTF-8"/>
        <title>Home</title>
        <meta name="viewport" content="width=600"/>
        <!-- CSS -->
        <link rel="stylesheet" type="text/css" href="css/site_global.css?3854026573"/>
        <link rel="stylesheet" type="text/css" href="css/index.css?4208396945" id="pagesheet"/>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
        <link rel="stylesheet" type="text/css" href="css/style.css"/>
        <!-- Other scripts -->
        <script type="text/javascript">
            document.documentElement.className += ' js';
        </script>
    </head>
    <body>

        <section class="container">
            <section class="sri-area">
                <section class="row">
                    <section class="cat-wall">
                        
                        <%
                        
                           String path="../m4u/CMS/Preview/";
//                          String cat_type = "english";
                            String cat_type = request.getParameter("cat_type");
                            //session.setAttribute("cat_type", cat_type);
                            String root_path = "http://wap.tesync.net/m4u/CMS/Preview/";
                            String cat = request.getParameter("cat");
                            GetContent gc = new GetContent();
                            ResultSet rs = gc.getContentCatWise( "wallpaper",cat_type, "9");

//                          String  URI = getUri(URI);
                            //session.setAttribute("previous_page", URI);
                            while (rs.next()) {
                                System.out.println(" in resultset ********srlanka " + rs.getString(2));
                          %>
                           
                            
                            
                        <section class="col-md-4 col-xs-4">
                            <section class="wall-pic">
                               <img src="<%= path+rs.getString(2) %>"/>

                            </section>
                        </section>
                          
                          <%}%>
<!--                        <section class="col-md-4 col-xs-4">
                            <section class="wall-pic">
                                <img src="images/monthly plan.png"/>


                            </section>
                        </section>
                        <section class="col-md-4 col-xs-4">
                            <section class="wall-pic">
                                <img src="images/monthly plan.png"/>


                            </section>
                        </section>

                    </section>
                    <section class="cat-wall">
                        <section class="col-md-4 col-xs-4">
                            <section class="wall-pic">
                                <img src="images/monthly plan.png"/>


                            </section>
                        </section>
                        <section class="col-md-4 col-xs-4">
                            <section class="wall-pic">
                                <img src="images/monthly plan.png"/>


                            </section>
                        </section>
                        <section class="col-md-4 col-xs-4">
                            <section class="wall-pic">
                                <img src="images/monthly plan.png"/>


                            </section>
                        </section>

                    </section>-->

<!--                    <section class="cat-wall">
                        <section class="col-md-4 col-xs-4">
                            <section class="wall-pic">
                                <img src="images/monthly plan.png"/>


                            </section>
                        </section>
                        <section class="col-md-4 col-xs-4">
                            <section class="wall-pic">
                                <img src="images/monthly plan.png"/>


                            </section>
                        </section>
                        <section class="col-md-4 col-xs-4">
                            <section class="wall-pic">
                                <img src="images/monthly plan.png"/>
                            </section>
                        </section>
                    </section>-->
                </section>
            </section>
        </section>


        <!--        </div>-->

        <!-- JS includes -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script> 
        <!-- Include all compiled plugins (below), or include individual files as needed --> 
        <script src="scripts/bootstrap.js"></script>
        <script type="text/javascript">
            if (document.location.protocol != 'https:')
                document.write('\x3Cscript src="http://musecdn2.businesscatalyst.com/scripts/4.0/jquery-1.8.3.min.js" type="text/javascript">\x3C/script>');
        </script>
        <script type="text/javascript">
            window.jQuery || document.write('\x3Cscript src="scripts/jquery-1.8.3.min.js" type="text/javascript">\x3C/script>');
        </script>
        <script src="scripts/museutils.js?275725342" type="text/javascript"></script>
        <script src="scripts/webpro.js?3883484123" type="text/javascript"></script>
        <script src="scripts/musewpslideshow.js?360574455" type="text/javascript"></script>
        <script src="scripts/jquery.museoverlay.js?342093292" type="text/javascript"></script>
        <script src="scripts/touchswipe.js?4218319045" type="text/javascript"></script>
        <script src="scripts/jquery.musemenu.js?4042164668" type="text/javascript"></script>
        <script src="scripts/jquery.watch.js?3999102769" type="text/javascript"></script>
        <!-- Other scripts -->
        <script type="text/javascript">
            $(document).ready(function () {
                try {
                    (function () {
                        var a = {}, b = function (a) {
                            if (a.match(/^rgb/))
                                return a = a.replace(/\s+/g, "").match(/([\d\,]+)/gi)[0].split(","), (parseInt(a[0]) << 16) + (parseInt(a[1]) << 8) + parseInt(a[2]);
                            if (a.match(/^\#/))
                                return parseInt(a.substr(1), 16);
                            return 0
                        };
                        (function () {
                            $('link[type="text/css"]').each(function () {
                                var b = ($(this).attr("href") || "").match(/\/?css\/([\w\-]+\.css)\?(\d+)/);
                                b && b[1] && b[2] && (a[b[1]] = b[2])
                            })
                        })();
                        (function () {
                            $("body").append('<div class="version" style="display:none; width:1px; height:1px;"></div>');
                            for (var c = $(".version"), d = 0; d < Muse.assets.required.length; ) {
                                var f = Muse.assets.required[d], g = f.match(/([\w\-\.]+)\.(\w+)$/), k = g && g[1] ? g[1] : null, g = g && g[2] ? g[2] : null;
                                switch (g.toLowerCase()) {
                                    case "css":
                                        k = k.replace(/\W/gi, "_").replace(/^([^a-z])/gi, "_$1");
                                        c.addClass(k);
                                        var g = b(c.css("color")), h = b(c.css("background-color"));
                                        g != 0 || h != 0 ? (Muse.assets.required.splice(d, 1), "undefined" != typeof a[f] && (g != a[f] >>> 24 || h != (a[f] & 16777215)) && Muse.assets.outOfDate.push(f)) : d++;
                                        c.removeClass(k);
                                        break;
                                    case "js":
                                        k.match(/^jquery-[\d\.]+/gi) &&
                                                typeof $ != "undefined" ? Muse.assets.required.splice(d, 1) : d++;
                                        break;
                                    default:
                                        throw Error("Unsupported file type: " + g);
                                }
                            }
                            c.remove();
                            if (Muse.assets.outOfDate.length || Muse.assets.required.length)
                                c = "Some files on the server may be missing or incorrect. Clear browser cache and try again. If the problem persists please contact website author.", (d = location && location.search && location.search.match && location.search.match(/muse_debug/gi)) && Muse.assets.outOfDate.length && (c += "\nOut of date: " + Muse.assets.outOfDate.join(",")), d && Muse.assets.required.length && (c += "\nMissing: " + Muse.assets.required.join(",")), alert(c)
                        })()
                    })();
                    /* body */
                    Muse.Utils.transformMarkupToFixBrowserProblemsPreInit();/* body */
                    Muse.Utils.prepHyperlinks(true);/* body */
                    Muse.Utils.initWidget('#slideshowu1746', function (elem) {
                        $(elem).data('widget', new WebPro.Widget.ContentSlideShow(elem, {heroFitting: 'fillFrameProportionally', autoPlay: true, displayInterval: 3500, slideLinkStopsSlideShow: false, transitionStyle: 'fading', lightboxEnabled_runtime: false, shuffle: false, transitionDuration: 500, enableSwipe: true, elastic: 'fullWidth', resumeAutoplay: true, resumeAutoplayInterval: 3000, playOnce: false, autoActivate_runtime: false}));
                    });/* #slideshowu1746 */
                    Muse.Utils.initWidget('.MenuBar', function (elem) {
                        return $(elem).museMenu();
                    });/* unifiedNavBar */
                    Muse.Utils.resizeHeight()/* resize height */
                    Muse.Utils.fullPage('#page');/* 100% height page */
                    Muse.Utils.showWidgetsWhenReady();/* body */
                    Muse.Utils.transformMarkupToFixBrowserProblems();/* body */
                } catch (e) {
                    if (e && 'function' == typeof e.notify)
                        e.notify();
                    else
                        Muse.Assert.fail('Error calling selector function:' + e);
                }
            });
        </script>
    </body>
</html>
