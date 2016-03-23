package lanka.downloadContent;
import java.net.*;
import java.io.*;
import java.util.*;
import java.sql.*;

public class mobileMime
{
        wapdb wapdb = new wapdb();
	public Boolean getMobileMime(String urlst)
	{
             //urlst = "http://wap.sonyericsson.com/UAprof/K310iR301.xml" ;
		if(urlst.length()>0){
		try{
		String  output="",screensize="",model="";
		ArrayList images=new ArrayList();
		ArrayList audios=new ArrayList();
		ArrayList videos=new ArrayList();
		ArrayList apps  =new ArrayList();
		URL url=new URL(urlst);
		URLConnection urlconn = url.openConnection();
		urlconn.setDoOutput(true);
                urlconn.setDoInput(true);
                urlconn.setUseCaches(false);
                urlconn.setDefaultUseCaches(false);                        
                BufferedReader in = new BufferedReader(new InputStreamReader(urlconn.getInputStream()));
                String inputLine;
                while ((inputLine = in.readLine()) != null)
                {
		      output="";
		      output=inputLine;
                      System.out.println("output:"+output);
                    try{	
                      if(output.indexOf(":ScreenSize>")>-1)
			{
				String temp=output;
				String temp1=temp.substring(output.indexOf(">")+1);
				temp1=temp1.substring(0,7);
				screensize=temp1;
                                System.out.println("screen:"+temp1);		
			}
                           }
                         catch(Exception e)
                           {
                          System.out.println("Error from getMobileMime->Screensize" +e ) ;
                             }
                     try {
		      if(output.indexOf(":Model>")>-1)
			{
				String temp=output;
				String temp1=temp.substring(output.indexOf(">")+1);
				temp1=temp1.substring(0,temp1.indexOf("</"));
				model=temp1;	
                                System.out.println("model:"+temp1);	
			}
                          }
                    catch(Exception e)
                     {
                       System.out.println("Error from getMobileMime->Model:" +e ) ;

                    }  
                     try
                        {
		      if(output.indexOf("image/")>-1)
			{
				String temp=output;
				String temp1=temp.substring(output.indexOf("image/"));
				temp1=temp1.substring(0,temp1.indexOf("</"));
				images.add(temp1);
				System.out.println(temp1);
			}
                         }
                         catch(Exception e)
                   {
                     System.out.println("Error from getMobileMime->Image:" +e ) ;

                     }
                       try
                       {
		      if(output.indexOf("audio/")>-1)
			{
				String temp=output;
				String temp1=temp.substring(output.indexOf("audio/"));
				temp1=temp1.substring(0,temp1.indexOf("</"));
				audios.add(temp1);
				System.out.println(temp1);
			}
                         }
                       catch(Exception e)
                 {
                   System.out.println("Error from getMobileMime->Audio:" +e ) ;

                 }    
                    try { 
		      if(output.indexOf("video/")>-1)
			{
				String temp=output;
				String temp1=temp.substring(output.indexOf("video/"));
				temp1=temp1.substring(0,temp1.indexOf("</"));
				videos.add(temp1);
				System.out.println(temp1);
			}
		      if(output.indexOf("application/")>-1)
			{
				String temp=output;
				String temp1=temp.substring(output.indexOf("application/"));
				temp1=temp1.substring(0,temp1.indexOf("</"));
				apps.add(temp1);
				System.out.println(temp1);
			}
                           }
                      catch(Exception e)
                      {
                       System.out.println("Error from getMobileMime->Video:" +e ) ;

                     }
			
                }
                in.close();
		
		Statement stmt= wapdb.getStatement();
		stmt.execute("insert into model_mime values ('"+model+"','"+screensize+"','scr','"+urlst+"' )");
	//	System.out.println(screensize);	
	//	System.out.println(model);
		if(images.size()!=0)
		{
			for(int i=0;i<images.size();i++)
			{
				stmt.execute("insert into model_mime values ('"+model+"','"+images.get(i)+"','image','"+urlst+"')");
			}
		}	
		if(audios.size()!=0)
		{
			for(int i=0;i<audios.size();i++)
			{
				stmt.execute("insert into model_mime value ('"+model+"','"+audios.get(i)+"','audio','"+urlst+"')" );
			}
		}
		if(videos.size()!=0)
		{
			for(int i=0;i<videos.size();i++)
			{
				stmt.execute("insert into model_mime value ('"+model+"','"+videos.get(i)+"','video','"+urlst+"' )");
			}
		}
		if(apps.size()!=0)
		{
			for(int i=0;i<apps.size();i++)
			{
				stmt.execute("insert into model_mime value ('"+model+"','"+apps.get(i)+"','apps','"+urlst+"')");
			}
		}		
		
		return true ;
		}
		catch(Exception e)
		{
			System.out.println("Error from getMobileMime->mobileMime "+e);
		}
		}
		return false;
	}
	public String getMobileModel(String urlst)
	{
		String  output="",model="";
		if(urlst.length()>0){
		while(model.length()<1)
		{
		try{
			FileOutputStream fw=new FileOutputStream("/root/waplogs/wapModelLogs.txt",true);
			PrintWriter pw=new PrintWriter(fw,true);
			pw.println("I am going to hit "+urlst);
			URL url=new URL(urlst);
			URLConnection urlconn = url.openConnection();
			urlconn.setDoOutput(true);
        	        urlconn.setDoInput(true);
               		urlconn.setUseCaches(false);
	                urlconn.setDefaultUseCaches(false);                        
       	        	BufferedReader in = new BufferedReader(new InputStreamReader(urlconn.getInputStream()));
	                String inputLine;
	                while ((inputLine = in.readLine()) != null)
	                {
			      output="";
			      output=inputLine;
                            try {
	                      if(output.indexOf(":Model>")>-1)
				{
					String temp=output;
					String temp1=temp.substring(output.indexOf(">")+1);
					temp1=temp1.substring(0,temp1.indexOf("</"));
					model=temp1;
					pw.println("I am found Model "+model);	
					break;
				}
                                  }
                                  catch(Exception e)
                              {
                                  System.out.println("Error from getMobileModel->Model:" +e ) ;

                                   }
			}
			pw.close();
			fw.close();
			return(model);
		}
		catch(Exception e)
		{
			System.out.println("Error from getmobileModel->mobileMime "+e);
		}
		}
		}
		return(model);
	}
                public static void main(String args[])
             {
                        mobileMime mm = new mobileMime();
                        mm.getMobileMime("http://nds1.nds.nokia.com/uaprof/N3110cr100.xml");
             }
}
