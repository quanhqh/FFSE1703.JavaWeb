package quanlisinhvien;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;

import com.mysql.jdbc.Driver;

public class connectDb {
	public static Connection getConnect()
	{
	Connection conn = null;
	String strConnect ="jdbc:mysql://"+"localhost"+"/"+"ffse1703011_qlsv"+"?useUnicode=true&characterEncoding=utf-8";
	Properties pro = new Properties();
	pro.put("user", "ducthach123");
	pro.put("password", "123456");
	try
	{
	com.mysql.jdbc.Driver driver=new Driver();
	conn = driver.connect(strConnect, pro);
    System.err.println("keggssshshsj");
	}
	catch (SQLException ex)
	{
		ex.printStackTrace();
	}
	return conn;
	}

}