/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

/**
 *
 * @author kosh
 */
public class accessor {
    
       public List<products> getproducts() {
        try {
            Connection cn = getVla().getConnection();
            String sql = "SELECT * FROM products";
            PreparedStatement pst = cn.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            ArrayList<products> ls = new ArrayList<products>();
            while(rs.next()) {
                products s = new products();
                s.setPk(rs.getInt("pk"));
                s.setName(rs.getString("name"));
                s.setOffer(rs.getBoolean("offer"));
                s.setOfferprice(rs.getDouble("offerprice"));
                s.setPrice(rs.getDouble("price"));
                s.setPic(rs.getString("pic"));
                s.setComments(rs.getString("comments"));
                ls.add(s);
            }
            return ls;
        }
        catch (Exception e) {
            String msg = e.getMessage();
        }
        return null;
    }
       public List<order> getorders() {
        try {
            Connection cn = getVla().getConnection();
            String sql = "SELECT * FROM orders";
            PreparedStatement pst = cn.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            ArrayList<order> ls = new ArrayList<order>();
            while(rs.next()) {
   
                order s = new order();
                s.setUser_id(rs.getInt( "user_id"));
                s.setProduct_id(rs.getInt("product_pk"));
                s.setDay(rs.getString("day"));
                s.setMobile(rs.getInt("mobile") );
                s.setProduct_name(rs.getString("product_name"));
                s.setUser_name(rs.getString("user_name"));
                s.setOffer(rs.getInt("offer"));
                s.setPrice(rs.getDouble("price"));
                s.setOfferprice(rs.getDouble("offerprice"));
                s.setReceived(rs.getInt("received"));
                ls.add(s);
            }
            return ls; 
        }
        catch (Exception e) {
            String msg = e.getMessage();
        }
        return null;
    }
        public user checkLogin(String usn, String pwd) {
      
        try{
            //creates a connection to the server
            Connection cn = getVla().getConnection();
            //prepare my sql string
            String sql = "SELECT * FROM user where name = ? and pass = ?";
            //create prepared statement
            PreparedStatement pst = cn.prepareStatement(sql);
            //set sql parameters
            pst.setString(1, usn);
            pst.setString(2, pwd);
            //call the statement and retrieve results
            ResultSet rs = pst.executeQuery();
            if(rs.next()) {//the usn pwd are correct
                user u = new user();
                u.setAdv(rs.getBoolean("mode"));
                u.setName(rs.getString("name"));
                u.setPass(rs.getString("pass"));
                u.setPk(rs.getInt("id"));
                u.setMobile(rs.getInt("mobile"));
                
                return u;
            }
        }
        catch (Exception e) {
            String msg = e.getMessage();
        }
        return null;
    }
    
        public user registerUser(String usn, String pwd ,String mob) {
      
        try{
            Connection cn = getVla().getConnection();
            String sql = "SELECT * FROM user WHERE name = ?";
            PreparedStatement pst = cn.prepareStatement(sql);
            pst.setString(1, usn);
            ResultSet rs = pst.executeQuery();
            if(!rs.next()) {
                sql = "INSERT INTO user ( name, pass, mode ,mobile) "
                        + "VALUES ( ?, ?, ?,?)";
                pst = cn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);//need this option to get pk of new record
   
                pst.setString(1, usn);
                pst.setString(2, pwd);
                pst.setBoolean(3, false);
                pst.setInt(4,Integer.parseInt(mob));
                pst.execute();
                rs = pst.getGeneratedKeys();//returns a resultset with the generated keys of the pst execution
                rs.next();
                user u = new user();
                u.setAdv(false);
                u.setName(usn);
                u.setPk(rs.getInt(1));
                return u;
            }
        }
        catch(Exception e) {
            String msg = e.getMessage();
        }
        
     
        return null;
    }
  
  
   public boolean addProduct(String pic ,String nm, Double price,String comm,Boolean offer,Double offerprice ) {
      
        try{
            Connection cn = getVla().getConnection();
              String sql = "SELECT * FROM products WHERE pk = ?";
            PreparedStatement pst = cn.prepareStatement(sql);
            pst.setString(1, null);
            ResultSet rs = pst.executeQuery();
            if(!rs.next()) {
                 sql = "INSERT INTO products ( pic, name, price ,comments,offer,offerprice) "
                        + "VALUES ( ?, ?, ?,?,?,?)";
                pst = cn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);//need this option to get pk of new record
   
              pst.setString(1, pic);
              pst.setString(2, nm);
              pst.setDouble(3, price);
              pst.setString(4, comm);
              pst.setBoolean(5, offer);
              pst.setDouble(6, offerprice);
              pst.execute();
           
           
                return true;
            }
    
      return true;
      }
        catch(Exception e) {
            String msg = e.getMessage();  return false;
        }
       
        //TODO
     
    }
   

   
     public boolean delComment(int cid) {
        try {
            Connection cn = getVla().getConnection();
            String sql = "DELETE FROM products WHERE pk = ?";
            PreparedStatement pst = cn.prepareStatement(sql);
            pst.setInt (1, cid);
            pst.execute();
            return true;
        }
        catch(Exception e) {}
        return false;
    }
        
    public products getproduct(int cid) {
        try{
            Connection cn = getVla().getConnection();
            String sql = "SELECT c.pk, c.name, c.comments, c.price, c.offer, c.offerprice, c.pic"
                    + " FROM products c "
                    + " WHERE c.pk = ?";
            PreparedStatement pst = cn.prepareStatement(sql);
            pst.setInt(1, cid);
            ResultSet rs = pst.executeQuery();
            if(rs.next()) {
                products c = new products();
               c.setName(rs.getString("name"));
                c.setComments(rs.getString("comments"));
               c.setPrice(rs.getDouble("price"));
               c.setOffer(rs.getBoolean("offer"));
               c.setOfferprice(rs.getDouble("offerprice"));
               c.setPic(rs.getString("pic"));
                return c;
            }
        }
        catch (Exception e) {}
        return null;
    }
    
  
                    
    public boolean updproduct(String cid, String nm, String comm,Double price, String pic,  Boolean offer, Double offerprice ) {
        try {
            Connection cn = getVla().getConnection();
            String sql = "UPDATE products SET name = ?, comments = ?, price = ? , pic=?, offer=? , offerprice=?  "
                    + " WHERE pk = ?";
            PreparedStatement pst = cn.prepareStatement(sql);
         pst.setString(1,comm ); 
         pst.setString(2, pic); 
           pst.setDouble(3, price); 
            pst.setString(4, nm); 
            pst.setBoolean(5, offer); 
            pst.setDouble(6, offerprice); 
            pst.setInt (7, Integer.parseInt(cid));
            pst.execute();
            return true;
        }
        catch(Exception e) {}
        return false;
        
    }
   public boolean storeOrder(String cid, Integer uid, String name,String productname,Boolean offer,Double price,Double offerprice,Integer mobile){
   try{
             Connection cn = getVla().getConnection();
                String sql = "INSERT INTO orders ( user_id, product_pk,product_name,user_name,offer,price,offerprice,mobile,day,received)"
                        + "VALUES ( ?, ?, ?,?,?,?,?,?,?,?)";
                PreparedStatement pst = cn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);//need this option to get pk of new record
   
              pst.setInt(1, uid);
              pst.setInt(2,Integer.parseInt( cid));
              pst.setString(3, productname);
              pst.setString(4, name);
              pst.setBoolean(5, offer);
               pst.setDouble(6, price);
              pst.setDouble(7, offerprice);
              pst.setInt(8, mobile);
            java.sql.Date date = getCurrentDatetime();
            pst.setDate(9,date);
            pst.setInt(10, 0);
              pst.execute();
          
           
                return true;
   }
   catch(Exception e) {
            String msg = e.getMessage();  return false;
        }
       
   
   }
   
   
   public List<order> getsearch(int mob) {
        try{ 
            Connection cn = getVla().getConnection();
            String sql = "SELECT c.user_id, c.product_pk, c.day, c.product_name, c.user_name, c.offer, c.price,c.offerprice,c.received, c.opk, c.mobile"
                    + " FROM orders c "
                    + " WHERE c.mobile = ?";
            PreparedStatement pst = cn.prepareStatement(sql);
            pst.setInt(1, mob);
            ResultSet rs = pst.executeQuery();
            ArrayList<order> ls = new ArrayList<order>();
           
                 while(rs.next()) {
                order c = new order();
                c.setReceived(rs.getInt("received"));
                 c.setOffer(rs.getInt("offer"));
               c.setProduct_name(rs.getString("product_name"));
               c.setUser_name(rs.getString("user_name"));
               c.setPrice(rs.getDouble("price"));
               c.setOfferprice(rs.getDouble("offerprice"));
               c.setDay(rs.getString("day"));
               c.setOpk(rs.getInt("opk") );
               c.setMobile(rs.getInt("mobile"));
                ls.add(c);
            }
            return ls; 
            
        }
        catch (Exception e) {}
        return null;
    }
   
     public boolean updorder( String cid) {
        try {
            Connection cn = getVla().getConnection();
            String sql = "UPDATE orders SET received = ? "
                    + " WHERE opk = ?";
            PreparedStatement pst = cn.prepareStatement(sql);
             pst.setInt(1, 1); 
            pst.setInt(2,Integer.parseInt(cid )); 
        
           
            pst.execute();
            return true;
        }
        catch(Exception e) {}
        return false;
        
    }
     
         public List<order>  getorderuser(String cid) {
        try{
            Connection cn = getVla().getConnection();
            String sql = "SELECT  c.day, c.product_name, c.user_name, c.offer, c.price,c.offerprice,c.received"
                    + " FROM orders c "
                    + " WHERE c.user_id = ?";
            PreparedStatement pst = cn.prepareStatement(sql);
            pst.setInt(1, Integer.parseInt(cid));
            ResultSet rs = pst.executeQuery();
               
            ArrayList<order> ls = new ArrayList<order>();
           
                 while(rs.next()) {
                order c = new order();
                c.setReceived(rs.getInt("received"));
                 c.setOffer(rs.getInt("offer"));
               c.setProduct_name(rs.getString("product_name"));
               c.setUser_name(rs.getString("user_name"));
               c.setPrice(rs.getDouble("price"));
               c.setOfferprice(rs.getDouble("offerprice"));
               c.setDay(rs.getString("day"));
                ls.add(c);
            }
            return ls; 
            
        }
        catch (Exception e) {}
        return null;
    }
 
   
    private DataSource getVla() throws NamingException {
        Context c = new InitialContext();
        return (DataSource) c.lookup("java:comp/env/vla");
    }

 public java.sql.Date getCurrentDatetime() {
    java.util.Date today = new java.util.Date();
    return new java.sql.Date(today.getTime());
}
}
