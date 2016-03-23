/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lanka.services;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import lanka.db.DynamicDb;

/**
 *
 * @author Kunal
 */
public class GetLogs {
    
    
    public  List<String> getAllSubscriptionid(){
         DynamicDb msdb = new DynamicDb("maharaja");
         List<String> service_id_list =  new ArrayList<String>();
         String service_id ="select service_id from services_details where action like 'subscription'";
         ResultSet rs = msdb.selectData(service_id);
         try {
             while (rs.next()) {
                 service_id_list.add(rs.getString(1));
             }
        } catch (Exception e) {
             System.out.println(" Exception in getAllSubscriptionid method of class getLogs "+e);
        }
         return service_id_list;
    }
    
    
     public  String getSubscriptionService(String service_id){
       DynamicDb msdb = new DynamicDb("maharaja");
      Map<String,String> service_details = new HashMap<String,String>();
      
        String  query= "select  wallpaper,video,ringtone,game,animation,price_point,service_id,service_name,day from  "
                + "pack_details where service_id like '"+service_id+"'";
        ResultSet rs = msdb.selectData(query);
        try {
          while(rs.next()){
            service_details.put("wallpaper", rs.getString(1));
            service_details.put("video", rs.getString(2));
            service_details.put("ringtone", rs.getString(3));
            service_details.put("game", rs.getString(4));
            service_details.put("animation", rs.getString(5));
            service_details.put("price_point", rs.getString(6));
            service_details.put("service_id", rs.getString(7));
            service_details.put("service_name", rs.getString(8));
            service_details.put("validity", rs.getString(9));
           }
        } catch (Exception e) {
            System.out.println(" Exception in getSubscriptionService method of class GetLogs"+e);
        }
        
        StringBuilder sb =  new StringBuilder();
        sb.append(service_details.get("service_name"));
        sb.append("(");
        if(!service_details.get("wallpaper").equalsIgnoreCase("0")){
            sb.append(service_details.get("wallpaper")+" wallpaper+");
        }
        if(!service_details.get("video").equalsIgnoreCase("0")){
            sb.append(service_details.get("video")+" video+");
        }
        if(!service_details.get("ringtone").equalsIgnoreCase("0")){
            sb.append(service_details.get("ringtone")+" ringtone+");
        }
        if(!service_details.get("game").equalsIgnoreCase("0")){
            sb.append(service_details.get("game")+" game+");
        }
        if(!service_details.get("animation").equalsIgnoreCase("0")){
            sb.append(service_details.get("animation")+" animation+");
        }
        sb.append(")");
          // System.out.println(" ");
        sb.replace(sb.length()-2, sb.length(), ")");
        sb.append(" for "+service_details.get("price_point")+"Rs. "+ service_details.get("validity")+" Days");
        
       
        
        return sb.toString();
    }
    
    
}
