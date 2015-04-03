package db;
import java.sql.*;

public class JavaToOracle {

	public static void main(String[] args) {
		JavaToOracle.getCon();
	}
	//D:\oraclexe\app\oracle\product\10.2.0\server\jdbc\lib
	public static Connection getCon(){
		
		Connection conn=null;
		
		try{
				Class.forName("oracle.jdbc.driver.OracleDriver");
				conn=DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe", "pds", "pdspass");
				System.out.println("Connected with DB Server Successfully.");
			
		}catch(Exception e){
			System.out.println(e);
		}
		
		return conn;
	}

}
