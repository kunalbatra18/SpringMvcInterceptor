package lanka.downloadContent ;
import java.sql.*;
public class wapdb
{
        static Connection dbconn;
	public wapdb()
	{
		try
		{
		       
                         if(dbconn==null )
			dbconn = getConnection();
		        
                        else if(dbconn.isClosed())
			dbconn = getConnection();
			
		  
		}
		catch(Exception e)
		{
			System.out.println("Exception in Constructor"+e.toString());
		}
	}

	public Connection getConnection()
	{
		try
		{
			 //Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			 Class.forName("com.mysql.jdbc.Driver");
			 //dbconn = DriverManager.getConnection("jdbc:odbc:StarHub","","");
			 dbconn = DriverManager.getConnection("jdbc:mysql://localhost/wapsite","root","");
		}
		catch(Exception e)
		{
			System.out.println("Exception in Manager.getConnection() -> "+e.toString());
		}
			 return dbconn;
	}

	public void setDBConnection()
	{
		try
		{
			if(dbconn==null)
				this.dbconn = getConnection();
		}
		catch(Exception e)
		{
			System.out.println("Exception in DesiChatDB.setDBConnection ->"+e.toString());
		}
	}

	public Connection getDBConnection()
	{
		return dbconn;
	}

	public Statement getStatement()throws Exception
	{
             try
        {
            if(dbconn.isClosed())
            {
                dbconn= getConnection();
            }
        }
        catch(Exception exception)
        {
            System.out.println("Exception in IDesiChatDB.getStatement()->" + exception.toString());
        }
        return dbconn.createStatement();

	}
              public void close()
	{
	      try {
		 dbconn.close();
		   }
	      catch(Exception e)
		{
		 System.out.println("Exception in IDesiChatDB.closeStatement()->"+e.toString());
		}

	}

}
