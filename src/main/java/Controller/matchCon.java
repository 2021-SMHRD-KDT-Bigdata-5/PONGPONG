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

				// ����ȣ��Ʈ : oracle DB�� ��ġ�� PC�� IP�ּ� ����
				String url = "jdbc:oracle:thin:@localhost:1521:xe";
				String user = "pong";
				String pass = "pong";

				// �����ͺ��̽� ����
				conn = DriverManager.getConnection(url, user, pass);
				System.out.println("���Ἲ��");

			} catch (ClassNotFoundException e) {
				System.out.println("ojdbc6.jar ���� �Ǵ� driver��� Ȯ��!");
				e.printStackTrace();
			} catch (SQLException e) {
				System.out.println("DB���� ����..");
				e.printStackTrace();
			}

		
			
			String sql = "select * from member where id=? and pw=?";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			psmt.setString(2, pw);

			rs = psmt.executeQuery();

			// next() : ���� ������ �Ѿ�� ������ ���� ���� �Ǵ�(true/false)
			if (rs.next()) { // select�� �����Ͱ� �ִٸ�
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
			// DB���� ���� �߻��� ����Ǵ� catch��
			e.printStackTrace();
		} finally {
			close();
		} // end

		return member;
	
		
	
	}

}
