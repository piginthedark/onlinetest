/**
 * 
 */
package cn.edu.nsu.bookshop.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * @author ZhangXiaohua
 *
 */
public class DeleteUser {

	/**
	 * @param args
	 */
	public static void main(String[] args) 
	{
		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rst = null;
		
		try {
			//����JDBC����
			Class.forName("com.mysql.cj.jdbc.Driver");
			//���DB����
			 con = DriverManager.getConnection("jdbc:mysql://172.17.130.84:3306/bookshop_info?useUnicode=true&characterEncoding=utf-8&serverTimezone=GMT%2B8&useSSL=false", "root", "zxh751106");
			//��װSQL
			String sql = "DELETE FROM users WHERE users_id=?";
			 pst = con.prepareStatement(sql);
			//������
			pst.setInt(1,2);
			//ִ��SQL
		    pst.executeUpdate();
			//����������			
			//�ر�DB����	
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally
		{
			try {
				if(rst != null)
				{
					rst.close();
				}
				if(pst != null)
				{
					pst.close();
				}
				if(con != null)
				{
					con.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
	}

}
