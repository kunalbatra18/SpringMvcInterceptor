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
 * @author Kunal Batra - Java Developer
 */
public class DownloadAll extends HttpServlet {

    ServletOutputStream out;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String content_name = request.getParameter("content_name");
        String name_without_format = nameWithoutFormat(content_name);
       String format = "";
       
        String cat_type =getContentType(content_name);
        if(cat_type.equalsIgnoreCase("wallpaper")){
            format = ".jpg";
        }
        if(cat_type.equalsIgnoreCase("animation")){
            format = ".gif";
        }
        if(cat_type.equalsIgnoreCase("game")){
            format = ".jar";
        }
        if(cat_type.equalsIgnoreCase("ringtone")){
            format = ".wav";
        }
        if(cat_type.equalsIgnoreCase("Ringtone")){
            format = ".wav";
        }
		if(cat_type.equalsIgnoreCase("video")){
            format = ".3gp";
        }
        
        //response.setContentType("image/gif");
        response.setContentType("application/octet-stream");
        response.setHeader("Content-Disposition", "attachment;filename=" + name_without_format+format);
        System.out.println(" ca;;ing downloading content ");

        String msisdn = "", profile = "", accpt = "", size = "", filepath = "";
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


      GetSendingContent gs =  new GetSendingContent();
     
      
        String path = gs.getContentFullPath(cat_type, content_name, profile, isProfilebyAgent);
        System.out.println("  full path is " + path);
        out = response.getOutputStream();

        File file2 = new File(path);
        try {
            if (file2.exists()) {

                FileInputStream fileIn = new FileInputStream(file2);

                byte[] outputByte = new byte[(int) file2.length()];

                int file_size = outputByte.length;

                //copy binary contect to output stream
                while (fileIn.read(outputByte, 0, file_size) != -1) {

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

    
    public String getContentType(String content_name){
         int  i = content_name.indexOf("/");
      content_name  = content_name.substring(0,i);
      return content_name;
    }
    
    
    public  String nameWithoutFormat(String image_name) {
        int length = image_name.length();
        int last_dot = image_name.lastIndexOf(".");
        System.out.println(" last _dot" + last_dot);
        String name = image_name.substring(0, last_dot);
        System.out.println("name " + name);
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
