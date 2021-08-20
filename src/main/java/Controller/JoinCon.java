package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MemberDAO;
import model.MemberDTO;

@WebServlet("/JoinCon")
public class JoinCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String university = request.getParameter("university");
		String gender = request.getParameter("gender");
		String tel = request.getParameter("tel");
		String birth = request.getParameter("birth");
		String address = request.getParameter("address");
		//System.out.println("안녕:"+id+pw+name+university+gender+tel+birth+address);
		MemberDAO dao = new MemberDAO();
		MemberDTO dto = new MemberDTO(id, pw, name, university, gender, tel, birth, address);
		int cnt = dao.join(dto);
		//System.out.println("cnt:"+cnt);
		//System.out.println("CNT실행");

		if (cnt > 0) { // select한 데이터가 있다면
			// request 영역에 email 정보를 저장
			request.setAttribute("id", id);

			// forward 방식
			RequestDispatcher dispatcher = request.getRequestDispatcher("join_success.jsp");
			dispatcher.forward(request, response);
			// response.sendRedirect("join_success.jsp");
		} else {
			response.sendRedirect("join.jsp");
		}
	}

}
