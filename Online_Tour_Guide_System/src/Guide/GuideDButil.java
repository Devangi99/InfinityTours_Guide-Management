package Guide;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class GuideDButil {
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stat = null;
	private static ResultSet rs = null;
	
	//validate
	
		public static boolean validate(String un, String pw) {
			
			try {
				con = DBconnection.getConnection();
				stat = con.createStatement();
				
				String sql = "select * from guide where username = '"+un+"' and password = '"+pw+"'";
				rs = stat.executeQuery(sql);
				
				if(rs.next()) {
					isSuccess = true;
				}
				else {
					isSuccess = false;
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			return isSuccess;
		}
	
//get by user name
		public static List<Guide> getGuideInfo(String uname){
			ArrayList<Guide> guide = new ArrayList<>();
			try {
				con = DBconnection.getConnection();
				stat = con.createStatement();
				String sql = "select * from guide where username = '"+uname+"'";
				rs = stat.executeQuery(sql);
				while(rs.next()) {
					int id = rs.getInt(1);
					String name = rs.getString(2);
					String nic = rs.getString(3);
					int age = rs.getInt(4);
					String lang = rs.getString(5);
					String tel = rs.getString(6);
					String town = rs.getString(7);
					String email = rs.getString(8);
					String un = rs.getString(9);
					String pw = rs.getString(10);
					String gender = rs.getString(11);
					
					Guide g = new Guide(id, name, nic, gender, age, lang, tel, town, email, un, pw);
					guide.add(g);
					
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
			return guide;
		}
		
	//insert
		public static boolean insertguide(String name, String nic, int age, String lang, String tel, String town, String email, String un, String pw, String gender) {
			
			isSuccess = false;
			try {
				con = DBconnection.getConnection();
				stat = con.createStatement();
														
				String sql = "Insert into guide values(0, '"+name+"', '"+nic+"', '"+age+"', '"+lang+"', '"+tel+"','"+town+"', '"+email+"', '"+un+"', '"+pw+"', '"+gender+"')";
				int rs = stat.executeUpdate(sql);
				
				if(rs > 0) {
					isSuccess = true;
				}
				else {
					isSuccess = false;
				}	
			}
			catch (Exception e) {
				e.printStackTrace();
			}
			
			return isSuccess;
		}
		
	//update	
		public static boolean updateguide(String id, String name, String nic, String age, String lang,  String tel, String town, String email, String un, String pw, String gender) {
			
			try {
				con = DBconnection.getConnection();
				stat = con.createStatement();
				
				String sql = "update guide set guide_name = '"+name+"', NIC = '"+nic+"', age = '"+age+"', language = '"+lang+"',  telephone = '"+tel+"', hometown = '"+town+"', email = '"+email+"', username = '"+un+"', password = '"+pw+"', gender = '"+gender+"' where id = '"+id+"'";
				int rs = stat.executeUpdate(sql);
				
				if(rs > 0) {
					isSuccess = true;
				}
				else {
					isSuccess = false;
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			return isSuccess;
		}
		
	//retrieve	
		public static List<Guide> retrieveguide(String id){
			
			int convertedID = Integer.parseInt(id);
			
			ArrayList<Guide> guide = new ArrayList<>();
			
			try {
				
				con = DBconnection.getConnection();
				stat = con.createStatement();
				
				String sql = "select * from guide where id = '"+convertedID+"'";
				rs = stat.executeQuery(sql);
				
				while(rs.next()) {
					int Id = rs.getInt(1);
					String name = rs.getString(2);
					String nic = rs.getString(3);
					int age = rs.getInt(4);
					String lang = rs.getString(5);
					String tel = rs.getString(6);
					String town = rs.getString(7);
					String email = rs.getString(8);
					String un = rs.getString(9);
					String pw = rs.getString(10);
					String gender = rs.getString(11);
					Guide g = new Guide(Id, name, nic, gender, age, lang, tel, town, email, un, pw);
					guide.add(g);
					
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			return guide;
		}
		
	//delete	
		public static boolean deleteguide(String id) {
			int convertedID = Integer.parseInt(id);
			
			try {
				con = DBconnection.getConnection();
				stat = con.createStatement();
				
				String sql = "delete from guide where id = '"+convertedID+"'";
				int rs = stat.executeUpdate(sql);
				
				
				if(rs > 0) {
					isSuccess = true;
				}
				else {
					isSuccess = false;
				}
				
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			return isSuccess;
		}
		
		////view all
		public static List<Guide> getallguides(){
			ArrayList<Guide> guide = new ArrayList<>();
			try {
				con = DBconnection.getConnection();
				stat = con.createStatement();
				String sql = "select * from guide";
				rs = stat.executeQuery(sql);
				while(rs.next()) {
					int Id = rs.getInt(1);
					String name = rs.getString(2);
					String nic = rs.getString(3);
					int age = rs.getInt(4);
					String lang = rs.getString(5);
					String tel = rs.getString(6);
					String town = rs.getString(7);
					String email = rs.getString(8);
					String un = rs.getString(9);
					String pw = rs.getString(10);
					String gender = rs.getString(11);
					
					Guide g = new Guide(Id, name, nic, gender, age, lang, tel, town, email, un, pw);
					guide.add(g);
					
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
			return guide;
		}
		

}
