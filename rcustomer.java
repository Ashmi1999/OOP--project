package C.customer;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class rcustomer {
	
	private static boolean isSuccessful;
	private static Connection conn =null;
	private static Statement st =null;
	private static ResultSet rsu =null;
	
	public static boolean validate(String username,String password) {
		
		
		try {
			conn = databaseconnect.getConnection();
			st = conn.createStatement();
			String sql="select * from customer  where  username='"+username+"'and password='"+password+"'";
			rsu = st.executeQuery(sql);
			
			if(rsu.next())
			{
				isSuccessful=true;
				
				
			}else {
				isSuccessful=false;
			}
			
		}
		
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccessful;
		
	}
	   public static List<customer>getcustomer(String username){
		   ArrayList<customer> customer = new ArrayList<>();
		   
		   try {
			  
			   conn = databaseconnect.getConnection();
				st = conn.createStatement();
				String sql ="select * from customer where username='"+username+"'";
				rsu =st.executeQuery(sql);
				
				while(rsu.next()) {
					int id=rsu.getInt(1);
					String userU=rsu.getString(2);
					String passU=rsu.getString(3);
					String name=rsu.getString(4);
					String adress=rsu.getString(5);
					String phone=rsu.getString(6);
					String email=rsu.getString(7);
					
					customer cust =new customer(id,userU,passU,name,adress,phone,email);
					customer.add(cust);
					
				}
			   
		   }
		   catch(Exception e) {
			   e.printStackTrace();
		   }
		   return customer;
	   }
	    
   public static boolean insertcus(String username,String password,String name,String adress,String phone,String email) {
	
	boolean isSuccessful = false;
	
	
	try {
		conn = databaseconnect.getConnection();
		st = conn.createStatement();
       String sql= "insert into customer values (0,'"+username+"','"+password+"','"+name+"','"+adress+"','"+phone+"','"+email+"')";
		int rs = st.executeUpdate(sql);
		
		
		if(rs > 0) {
			isSuccessful = true;
		}else {
			    isSuccessful =false;
		}
		 
	}
	
	
	catch(Exception e) {
		e.printStackTrace();
	}
	
	
	return isSuccessful;
   }
   
	public static boolean updatecust(String id,String username,String password,String name,String adress, String phone, String email) {
		
		try {
			
			conn = databaseconnect.getConnection();
			st = conn.createStatement();
			String sql ="update customer set id='"+id+"', username='"+username+"', password='"+password+"',name='"+name+"',adress='"+adress+"',phone='"+phone+"',email='"+email+"'"+"where id='"+id+"'";
			int rsu =st.executeUpdate(sql);
			
			if(rsu>0) {
				isSuccessful =true;
			}
			else {
				isSuccessful =false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccessful;
		
	}
	
	public static List<customer> getCustomerDetails(String id){
		
		int convertedID = Integer.parseInt(id);
		ArrayList<customer> cust = new ArrayList<>();
		
try {
			
			conn = databaseconnect.getConnection();
			st = conn.createStatement();
			String sql= "select* from customer where id='"+convertedID+"' ";
			rsu =st.executeQuery(sql);
			
			while(rsu.next()) {
				int id1=rsu.getInt(1);
				String username=rsu.getString(2);
				String password=rsu.getString(3);
				String name=rsu.getString(4);
				String adress=rsu.getString(5);
				String phone=rsu.getString(6);
				String email=rsu.getString(7);
				
				customer cu =new customer(id1,username,password,name,adress,phone,email);
				cust.add(cu);
				
						
			}
			
				
			}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return cust;
		
	}
	
	public static boolean deletecust(String id) {
		
		int conid=Integer.parseInt(id);
		try {
			
			conn = databaseconnect.getConnection();
			st = conn.createStatement();
			String sql="delete from customer where id='"+conid+"'";
			int rsu=st.executeUpdate(sql);
			
			if(rsu>0) {
				isSuccessful=true;
			}
			else {
				isSuccessful=false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccessful;
	}
	 
}	
	

 

