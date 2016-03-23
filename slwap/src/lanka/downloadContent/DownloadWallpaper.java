/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lanka.downloadContent;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Kunal
 */
public class DownloadWallpaper extends HttpServlet {

    ServletOutputStream out;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String wallpaper_name = request.getParameter("content_name");

        //response.setContentType("image/gif");
response.setContentType("application/octet-stream");
        response.setHeader("Content-Disposition",
                "attachment;filename=" + wallpaper_name);
        String msisdn = "", profile = "", accpt = "", size = "", filepath = "", format = "";
        java.util.Enumeration e = request.getHeaderNames();
        boolean isProfilebyAgent = false;
        while (e.hasMoreElements()) {
            String key = (String) e.nextElement();
            key = key.trim();
           
           
            if ((key.indexOf("msisdn") > -1) || (key.indexOf("MSISDN") > -1)) {
               msisdn = request.getHeader(key);
                if (msisdn.length() > 12) {
                    msisdn = (msisdn.substring(msisdn.indexOf("919"))).trim();
                }
            }
            if (key.equals("x-wap-profile")) {
               
                String val = request.getHeader(key);
                profile = val.substring(val.indexOf("http"), val.length());
                profile = profile.replaceAll("\"", "");
              
            }
            if (key.indexOf("accept-") < 0 && key.indexOf("accept") > -1) {
                String val = request.getHeader(key);
                accpt = val;
                
            }
        }

        System.out.println(" value of profile before checking user_agent  " + profile);
        if (profile.equalsIgnoreCase("") || profile.length() == 0) {
            isProfilebyAgent = true;
            profile = request.getHeader("user-agent");
          }

        checkMobileMime cmm = new checkMobileMime();
      
        if (isProfilebyAgent) {
            size = cmm.getScreenSizebyUseragent(profile);
        } else {
            size = cmm.getScreenSize(profile);
        }

        format = ".jpg";
        String path = "";
        String name_without_format = nameWithoutFormat(wallpaper_name);
        name_without_format = name_without_format.replaceAll("Wallpaper", "");
        path = "/usr/local/apache-tomcat-8.0.27/webapps/m4u/CMS/Content/Wallpaper/" + size + name_without_format + ".jpg";
        File file = new File(path);
        if (!file.exists()) {
            System.out.println(" file doesnt exists setting default size ");
            size = "480x320";
            path = "/usr/local/apache-tomcat-8.0.27/webapps/m4u/CMS/Content/Wallpaper/" + size  + name_without_format + ".jpg";
        }
        System.out.println("  full path is "+path);
      out = response.getOutputStream();
  File file2 = new File(path);
        try {
            if (file2.exists()) {
              
                FileInputStream fileIn = new FileInputStream(file2);

                byte[] outputByte = new byte[(int) file2.length()];

                int file_size = outputByte.length;
                
               
                //copy binary contect to output stream
                while (fileIn.read(outputByte, 0, file_size) != -1) 
                {
                   
                    out.write(outputByte, 0, file_size);
                }
               
            } else {
                System.out.println(" file doesnopt exists " + file2);
            }
            
           System.out.println(" step- 6");
        } catch (Exception ex) {
            System.out.println(" exception in DownloadImage in doget method " + ex);
        }

    }

    public String nameWithoutFormat(String image_name) {
        int length = image_name.length();
        int last_dot = image_name.lastIndexOf(".");
        String name = image_name.substring(0, last_dot);
        return name;
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
