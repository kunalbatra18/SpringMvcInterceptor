package lanka.downloadContent;


import java.io.*;
import java.sql.*;
public class checkMobileMime
{
     Boolean flag = false ;
     wapdb wapdb = new wapdb() ;
     Statement stmt = null ;
	public Boolean checkMime(String urlst,String mime)
	{
	 
		try{
			FileOutputStream fw=new FileOutputStream("/root/waplogs/new_waplogs_cvps.txt",true);
			PrintWriter pw=new PrintWriter(fw,true);
			pw.println("Searching for Model.......................................................");
                        urlst = urlst.trim();
			pw.println("Mime%%"+mime+" Urlst%%"+urlst) ;
			while(true)
			{
				pw.println("###Starting new Search In Database###");
				stmt=wapdb.getStatement();
				ResultSet rs=stmt.executeQuery("select * from model_mime where profile='"+urlst+"' "); 
				if(rs.first())
				{
					pw.println("Model Found In the Database......");
					rs=stmt.executeQuery("select * from model_mime where profile='"+urlst+"' and mime='"+mime+"'");
					if(rs.first())
					{
						pw.println("Model Mime Found In the Database......");
						return true ;
					}
                                           else 
                                         {
						pw.println("Model Mime not Found In the Database......");
						return false ;
					 } 
				}
				else
				{
					pw.println("Model %%%Not Found In the Database......");
					mobileMime mm =new mobileMime();
					flag=mm.getMobileMime(urlst);
					pw.println("Model Found In the Url......");
                                        if (!flag)
                                        return flag ;
				}
				
				pw.println("@@@Starting new Search@@@");
			}
			
		}
		catch(Exception e)
		{
			System.out.println("Error from checkmobileMime->checkMime "+e);
		}
		
		return false ;
	}
	public String getScreenSize(String urlst)
	{
		String scr="50x50";
		
		try{
			
			stmt=wapdb.getStatement();
			ResultSet rs=stmt.executeQuery("select mime from model_mime where profile='"+urlst+"' and descrip='scr' "); 
			if(rs.first())
			{
				scr=rs.getString(1);
			}
			return(scr);
		    }
		catch(Exception e)
		{
			System.out.println("Error from checkmobileMime->getScreenSize "+e);
		}
		
		return(scr);
	}
        
       public String getScreenSizebyUseragent(String urlst) {
        String scr = "50x50";

        try {

            stmt = wapdb.getStatement();
            String str = "select mime from user_agent_mime where user_agent like '" + urlst+"'";
            System.out.println(" checking  size from user_agent "+str);
            ResultSet rs = stmt.executeQuery(str);
            
            if(!rs.isBeforeFirst()){
                insertUseragent(urlst);
            }
            if (rs.first()) {
                scr = rs.getString(1);
            }
            return (scr);
        } catch (Exception e) {
            System.out.println("Error from checkmobileMime->getScreenSizebyUseragent " + e);
        }

        return (scr);
    }

    public void insertUseragent(String urlst) {

        try {

            stmt = wapdb.getStatement();
            String in="insert into wapsite.user_agent_mime(user_agent) values('" + urlst+"')";
            System.out.println(" inserting new user_agent "+in);
            stmt.executeUpdate(in);

        } catch (Exception e) {
            System.out.println("Error from checkmobileMime->insertUseragent " + e);
        }
        
        
    }
        
        
}
