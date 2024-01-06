package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class KetNoi {
	public Connection cn;
	public void ketnoi() throws Exception {
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		String url = "jdbc:sqlserver://LAPTOP-MRG49O2U\\SQLEXPRESS2012:1433;databaseName=QLGiay;user=sa;password=123;encrypt=false";
		cn = DriverManager.getConnection(url);
		System.out.println("Da Ket Noi");
	}
}
