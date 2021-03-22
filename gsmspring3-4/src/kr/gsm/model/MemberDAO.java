package kr.gsm.model;
// JDBC API
import java.sql.*;
public class MemberDAO {
   private Connection conn; //  연결객체
   private PreparedStatement ps; // SQL문장(전송객체)
   private ResultSet rs; //  select SQL->결과를 저장하는객체
   // 연결객체를 생성하는 동작
   public void getConnect() {
	   String url="jdbc:mysql://localhost:3306/gsm4"; // DB접속URL
	   String user="root";
	   String password="12345";
	   //---------------------------------------------
   }   
}
