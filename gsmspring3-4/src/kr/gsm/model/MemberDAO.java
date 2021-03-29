package kr.gsm.model;
// JDBC API
import java.sql.*;
public class MemberDAO {
   private Connection conn; //  연결객체
   private PreparedStatement ps; // SQL문장(전송객체)
   private ResultSet rs; //  select SQL->결과를 저장하는객체
   // 연결객체를 생성하는 동작
   public void getConnect() {
	   String url="jdbc:mysql://localhost:3306/gsm4"; // DB접속URL(프로토콜)
	   String user="root";
	   String password="12345";
	   //---------------------------------------------
	   //=new com.mysql.jdbc.Driver();	      
	    try {
		// 동적로딩(실행시점에서 객체를 찾고->생성)   
		Class.forName("com.mysql.jdbc.Driver");
		conn=DriverManager.getConnection(url, user, password);
	    } catch (Exception e) {
		  e.printStackTrace();
	    } 
   }
   // 회원전체리스트(List<MemberVO>) 가져오기
   public void memberList() {
	   String SQL="select * from member";
	   getConnect(); // DB연결
	   
	   
   }
   
}
