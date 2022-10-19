package ex03;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/***
 * DB connection, select, insert
 * 
 * @author sh990
 *
 */
public class DBconn {
	/*
	 * DB JDBC 연동 1. jdbc 다운 빋기 2. 프로젝트에 라이브러리로 넣어주기(classPath에 넣어주기)
	 */
	private Connection conn;// 자바와 DB를 연결해줄 통로
	private PreparedStatement pstmt;// sql 문장을 가지고 다니는 객체
	private Statement stmt;
	private ResultSet rs;// 결과를 가지고 오는 객체
	
	String url = "jdbc:mariadb://localhost:3306/test";

	// 생성자
	public DBconn() {
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			System.out.println("드라이버 로딩 성공");
			
			conn = DriverManager.getConnection(url, "root", "root");
			System.out.println("DB 접속 성공");
			
		} catch (ClassNotFoundException e) {
			System.out.println("드라이버 로딩 실패");
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("DB 접속 실패");
			e.printStackTrace();
		}
	}
	
	public void save(int id, String name) {
		try {
			String sql = "INSERT INTO testTable VALUES(?, ?)";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, id); //1번 물음표에 id를 넣어줌
			pstmt.setString(2, name); //2번 물음표에 name를 넣어줌
			
			pstmt.executeUpdate();
			System.out.println("DB 저장 성공");
		} catch (SQLException e) {
			System.out.println("DB 저장 실패");
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				System.out.println("db연결 종료");
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		
		
	}
	
	public void findAll() {
		//testTable의 SELECT * FROM testTable;
		//sysout으로 출력
		String sql = "SELECT * FROM testTable";
		try {
			//pstmt = conn.prepareStatement(sql);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			int id = 0;
			String name = "";
//			
//			while(rs.next()) {
//				id = rs.getInt(1);
//				name = rs.getString(2);
//				System.out.println(id);
//				System.out.println(name);
//			}
			
			for(int i = 0; rs.next(); i++) {
				id = rs.getInt(1);
				name = rs.getString(2);
				System.out.println(id);
				System.out.println(name);
			}
			
			System.out.println("DB 정보 불러오기 성공");
			
		} catch (SQLException e) {
			System.out.println("DB 정보 불러오기 실패");
			e.printStackTrace();
		}finally {
			try {
				rs.close();
				stmt.close();
				System.out.println("db연결 종료");
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	public void disConnect() {
		try {
			conn.close();
			System.out.println("DB 연결 종료");
		} catch (SQLException e) {
			System.out.println("DB 연결 종료 실패");
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args) {
		DBconn db = new DBconn();
		//db.save(1, "tester1");
		db.findAll();
		db.disConnect();
		
	}

}
