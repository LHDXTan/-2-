package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import util.ConnectionFactory;

public class BaseDaoImpl implements IBaseDao{

	@Override
	public boolean checkuser(String uname) {
		Connection con = ConnectionFactory.getConnection();
		  String sql = "select * from zhuce where uname =?";
		  PreparedStatement ps;
		  try {
			ps = con.prepareStatement(sql);
			ps.setString(1, uname);
			ResultSet rs = ps.executeQuery();
			if(rs.next()){
				return true;
			}else{
				return false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
		return false;
	}

	@Override
	public List getAllCity(String proNo) {
		// TODO Auto-generated method stub
		return null;
	}

}
