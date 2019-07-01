package cn.edu.nsu.bookshop.db.last.buys;

import java.sql.SQLException;



public class BuysDAOTest {

	private static BuysDAO buysDAO = new BuysDAO();
	
	public static void main(String[] args) {
		try 
		{
			getAllTest();
			//getByIdTest();
			//addTest();
			//modifyTest();
			//deleteTest();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				buysDAO.release();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	}

	private static void getAllTest() throws ClassNotFoundException, SQLException
	{
		System.out.println(buysDAO.getAll());
	}
	
	private static void getByIdTest() throws ClassNotFoundException, SQLException
	{
		System.out.println(buysDAO.getById(1));
	}
	
	private static void addTest() throws ClassNotFoundException, SQLException
	{
		Buys dataObj = new Buys();
		
		dataObj.setBuys_id(2);
		dataObj.setBooks_id(1);
		dataObj.setUsers_id(1);
		dataObj.setBuys_num(5);
		
		buysDAO.add(dataObj);
	}

	private static void modifyTest() throws ClassNotFoundException, SQLException
	{
		Buys dataObj = new Buys();
		
		dataObj.setBuys_id(2);
		dataObj.setBooks_id(1);
		dataObj.setUsers_id(1);
		dataObj.setBuys_num(6);
		
		buysDAO.modify(dataObj);
	}

	private static void deleteTest() throws ClassNotFoundException, SQLException
	{
		buysDAO.delete(1);
	}

}
