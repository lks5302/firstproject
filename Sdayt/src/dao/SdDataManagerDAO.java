package dao;
import java.sql.DriverManager;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import dto.SdmemberInfo;



public class SdDataManagerDAO {
	Connection conn = null;
	String url = "jdbc:mysql://localhost:3306/sdmember";
	String user = "root";
	String pass = "mysql";
	
	private Connection openConnection(){
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = (Connection)DriverManager.getConnection(url,user,pass);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	private void closssConnection() {
		try {
			if(conn !=null) {
				conn.close();
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public int insertSdmember(SdmemberInfo sdmember) {
		
		PreparedStatement pstm = null;
		String query = "insert into 회원 values(?,?,?,?,?,?,?);";
		int res=0;
		
		openConnection();
		try {
			
			pstm = (PreparedStatement)conn.prepareStatement(query);
				pstm.setString(1, sdmember.getId());
				pstm.setString(2, sdmember.getPass());
				pstm.setString(3, sdmember.getName());
				pstm.setString(4, sdmember.getYear());
				pstm.setString(5, sdmember.getGender());
				pstm.setString(6, sdmember.getEmail());
				pstm.setString(7, sdmember.getPhone());
				res=pstm.executeUpdate();
				
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			closssConnection();
		}
		return res;
	}

	public int removeSdmember(String id) {
		PreparedStatement pstm = null;
		String query = "delete from 회원 where id= ?;";
		int res = 0;
		
		openConnection();
		try {
			
			pstm = (PreparedStatement)conn.prepareStatement(query);
			pstm.setString(1, id);
			res = pstm.executeUpdate();			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			closssConnection();
		}
		return res;
	}
	public int updateSdmember(SdmemberInfo sdmember) {
		PreparedStatement pstm = null;
		String query = "update 회원 set pass=?, name=?, year=?, gender=?, email=?, phone=? where id =?;";
		int res=0;
		
		openConnection();
		try {
			pstm=(PreparedStatement)conn.prepareStatement(query);
				
				
				pstm.setString(1, sdmember.getPass());
				pstm.setString(2, sdmember.getName());
				pstm.setString(3, sdmember.getYear());
				pstm.setString(4, sdmember.getGender());
				pstm.setString(5, sdmember.getEmail());
				pstm.setString(6, sdmember.getPhone());
				pstm.setString(7, sdmember.getId());
			res=pstm.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			closssConnection();
		}
		return res;
	}
	

	public boolean isSdmember(String id, String pass) {
		PreparedStatement pstm = null;
		boolean res = false;
		String query = "select * from 회원 where id=? and pass =?;";
			
		openConnection();
		try {
			pstm = (PreparedStatement)conn.prepareStatement(query);
			pstm.setString(1, id);
			pstm.setString(2, pass);
			
			ResultSet rs = pstm.executeQuery();
			res = rs.next();
			rs.close();
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			closssConnection();
		}
		return res;
	
}

	public SdmemberInfo getSdmember(String id) {
		SdmemberInfo sdmember = new SdmemberInfo();
		PreparedStatement pstm = null;
		String query = "select * from 회원 where id=?;";
		
		openConnection();
		try {
			pstm = (PreparedStatement)conn.prepareStatement(query);
			pstm.setString(1, id);
			
			ResultSet rs = pstm.executeQuery();
			if(rs.next()) {
				sdmember.setId(rs.getString("id"));
				sdmember.setPass(rs.getString("pass"));
				sdmember.setName(rs.getString("name"));
				sdmember.setYear(rs.getString("year"));
				sdmember.setGender(rs.getString("gender"));
				sdmember.setEmail(rs.getString("email"));
				sdmember.setPhone(rs.getString("phone"));
			}
			rs.close();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			closssConnection();
		}
		return sdmember;
	}
	public ArrayList<SdmemberInfo> getDBList(){
		
		ArrayList<SdmemberInfo> datas= new ArrayList<>();
		String query = "select * from 회원 order by id desc;";
		Statement stmt;
		ResultSet rs;
		
		openConnection();
		try {
			
			stmt = conn.createStatement();
			rs= stmt.executeQuery(query);
			
			while(rs.next()) {
				SdmemberInfo sdmember= new SdmemberInfo();
				
				sdmember.setId(rs.getString("id"));
				sdmember.setPass(rs.getString("pass"));
				sdmember.setName(rs.getString("name"));
				sdmember.setYear(rs.getString("year"));
				sdmember.setGender(rs.getString("gender"));
				sdmember.setEmail(rs.getString("email"));
				sdmember.setPhone(rs.getString("phone"));
				
				datas.add(sdmember);
			}
			rs.close();
			stmt.close();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			closssConnection();
		}
		return datas;
	}
}
