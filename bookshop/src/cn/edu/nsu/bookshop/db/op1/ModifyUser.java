/**
 * 
 */
package cn.edu.nsu.bookshop.db.op1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * @author ZhangXiaohua
 *
 */
public class ModifyUser extends DBMain
{
	/**
	 * @param args
	 */
	public static void main(String[] args) 
	{
		ModifyUser modifyUser = new ModifyUser();
		modifyUser.modifyUser();
	}
	
	private void modifyUser()
	{

		try {
			//��װSQL
			String sql = "update users set roles_id=?,users_name=?,users_sex=?,users_idNum=?,users_mobile=?,users_address=?,users_postcode=?,users_portraitImg=?,users_passwor=? where users_id=?";
			 pst = getPrepareStatement(sql);
			//������
			pst.setInt(1,2);
			pst.setString(2, "������");
			pst.setString(3, "Ů");
			pst.setString(4, "510181200912030123");
			pst.setString(5, "13408568561");
			pst.setString(6, "�������б���Сѧ");
			pst.setString(7, "611830");
			pst.setString(8, null);
			pst.setString(9, "123456");
			pst.setInt(10, 2);
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
				release();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
	
	}

}
