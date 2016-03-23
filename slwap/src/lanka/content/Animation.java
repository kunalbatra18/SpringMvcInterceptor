/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lanka.content;

import java.sql.ResultSet;
import lanka.db.MaharajaDb;

/**
 *
 * @author Kunal
 */
public class Animation extends Content{
     MaharajaDb db =null;

    public Animation() {
        db = MaharajaDb.create();
    }
    
    
    @Override
    ResultSet getContentPriceWise(String price, String limit) {
         String sql  = "select code,prv,pricetag from Scrsaver_s where pricetag like '"+price+"' order by rand() limit "+limit+"";
        ResultSet rs  = db.selectData(sql);
        return rs;
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    ResultSet getContentCatWise(String cat,String limit){
         String sql  = "select code,prv,pricetag from Scrsaver_s where cat like '"+cat+"' order by rand() limit "+limit+"";
        ResultSet rs  = db.selectData(sql);
        return rs;
       // throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    public  void showmsg(){
        System.out.println(" in animation");
    }

    @Override
    ResultSet getRandomContent(String limit) {
        String sql  = "select code,prv,pricetag from Scrsaver_s where cat not like 'Holy Deities'  order by rand() limit "+limit+"";
        ResultSet rs  = db.selectData(sql);
        return rs;
     }

    @Override
    ResultSet getDistinctCat() {
       String sql  = "select distinct(cat) from Scrsaver_s  order by rand()";
        ResultSet rs  = db.selectData(sql);
        return rs;
    }
}