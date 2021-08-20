package Controller;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MemberDTO;

/**
 * Servlet implementation class matchCon
 */
@WebServlet("/matchCon")
public class matchCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		String choiceNum = "non";

		
		choiceNum = request.getParameter("check");
		 
		System.out.println(choiceNum);
			



		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;

		try {


			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");

				// 로컬호스트 : oracle DB가 설치된 PC의 IP주소 설정
				String url = "jdbc:oracle:thin:@localhost:1521:xe";
				String user = "pong";
				String pass = "pong";

				// 데이터베이스 연결
				conn = DriverManager.getConnection(url, user, pass);
				System.out.println("연결성공");

			} catch (ClassNotFoundException e) {
				System.out.println("ojdbc6.jar 파일 또는 driver경로 확인!");
				e.printStackTrace();
			} catch (SQLException e) {
				System.out.println("DB연결 실패..");
				e.printStackTrace();
			}

		
			
			String sql = "select * from member where id=? and pw=?";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			psmt.setString(2, pw);

			rs = psmt.executeQuery();

			// next() : 다음 행으로 넘어가서 데이터 존재 여부 판단(true/false)
			if (rs.next()) { // select한 데이터가 있다면
				String getId = rs.getString(1);
	            String getPw = rs.getString(2);
	            String getName = rs.getString(3);
	            String getUniversity = rs.getString(4);
	            String getGender = rs.getString(5);
	            String getTel = rs.getString(6);
	            String getBirth = rs.getString(7);
	            String getAddress = rs.getString(8);
	            
	            member = new MemberDTO(getId, getPw, getName, 
	                  getUniversity, getGender, getTel, getBirth, getAddress);
			}
		} catch (SQLException e) {
			// DB관련 오류 발생시 실행되는 catch문
			e.printStackTrace();
		} finally {
			close();
		} // end

		return member;
	
		
	
	}

}
