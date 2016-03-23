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
 * @author sushil
 */
public class DownloadRingtone extends HttpServlet {
   ServletOutputStream out;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String video_name = request.getParameter("content_name");
        response.setContentType("video/3gpp");
//        response.setHeader("Content-Disposition",
//                "attachment;filename=" + video_name+".3gp");
        String name_without_format = nameWithoutFormat(video_name);
        
        System.out.println("name_without_format is "+name_without_format);
        //name_without_format = name_without_format.replaceAll("Video", "");
        
        System.out.println(" caing downloading content ");
       
        out = response.getOutputStream();

        String path = "/usr/local/apache-tomcat-8.0.27/webapps/m4u/CMS/Content/" +name_without_format + ".wav";
        System.out.println("  full path is "+path);
        
         File file = new File(path);
        
        if (!file.exists()) {
            response.setHeader("Content-Disposition",
                "attachment;filename=" + name_without_format+".mp3");
            System.out.println(" file doesnt exists changing the format ");
          
            path = "/usr/local/apache-tomcat-8.0.27/webapps/m4u/CMS/Content/" +name_without_format + ".mp3";
        }else{
            response.setHeader("Content-Disposition",
                "attachment;filename=" + name_without_format+".wav");
        }
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
                  
             
       }catch (Exception ex) {
            System.out.println(" exception in DownloadImage in doget method " + ex);
        }
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
