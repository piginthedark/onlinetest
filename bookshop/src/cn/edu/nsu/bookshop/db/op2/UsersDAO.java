/**
 * 
 */
package cn.edu.nsu.bookshop.db.op2;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * @author ZhangXiaohua
 *
 */
public class UsersDAO extends DBMain
{
	public ResultSet getAllUser() throws ClassNotFoundException, SQLException
	{

		//��װSQL
		String sql = "select * from users";
		 pst = getPrepareStatement(sql);
		//������
		//pst.setInt(1, 1);
		//ִ��SQL
		 rst = pst.executeQuery();
		//����������
		//�ر�DB����
		 //release();
		 
		 return rst;
	}
	public ResultSet getUserById(int users_id) throws ClassNotFoundException, SQLException
	{
		//��װSQL
		String sql = "select * from users where users_id=?";
		 pst = getPrepareStatement(sql);
		//������
		pst.setInt(1, users_id);
		//ִ��SQL
		 rst = pst.executeQuery();
		//����������
		//�ر�DB����
		 return rst;
	}
	public void addUser(int roles_id,
			String users_name,
			String users_sex,
			String users_idNum,
			String users_mobile,
			String users_address,
			String users_postcode,
			String users_portraitImg,
			String users_password) throws ClassNotFoundException, SQLException
	{

		//��װSQL
		String sql = "INSERT into users(roles_id,users_name,users_sex,users_idNum,users_mobile,users_address,users_postcode,users_portraitImg,users_password) VALUES(?,?,?,?,?,?,?,?,?)";
		 pst = getPrepareStatement(sql);
		//������
		pst.setInt(1,roles_id);
		pst.setString(2, users_name);
		pst.setString(3, users_sex);
		pst.setString(4, users_idNum);
		pst.setString(5, users_mobile);
		pst.setString(6, users_address);
		pst.setString(7, users_postcode);
		pst.setString(8, users_portraitImg);
		pst.setString(9, users_password);
		//ִ��SQL
	    pst.executeUpdate();
		//����������			
		//�ر�DB����	
	
	}
	public void modifyUser(int roles_id,
			String users_name,
			String users_sex,
			String users_idNum,
			String users_mobile,
			String users_address,
			String users_postcode,
			String users_portraitImg,
			String users_password,
			int users_id) throws ClassNotFoundException, SQLException
	{

		//��װSQL
		String sql = "update users set roles_id=?,users_name=?,users_sex=?,users_idNum=?,users_mobile=?,users_address=?,users_postcode=?,users_portraitImg=?,users_passwor=? where users_id=?";
		 pst = getPrepareStatement(sql);
		//������
		 pst.setInt(1,roles_id);
			pst.setString(2, users_name);
			pst.setString(3, users_sex);
			pst.setString(4, users_idNum);
			pst.setString(5, users_mobile);
			pst.setString(6, users_address);
			pst.setString(7, users_postcode);
			pst.setString(8, users_portraitImg);
			pst.setString(9, users_password);
		pst.setInt(10, users_id);
		//ִ��SQL
	    pst.executeUpdate();
		//����������			
		//�ر�DB����	
	
	}
	public void deleteUser(int users_id) throws ClassNotFoundException, SQLException
	{

		//��װSQL
		String sql = "DELETE FROM users WHERE users_id=?";
		 pst = getPrepareStatement(sql);
		//������
		pst.setInt(1,users_id);
		//ִ��SQL
	    pst.executeUpdate();
		//����������			
		//�ر�DB����	
	
	}
}
