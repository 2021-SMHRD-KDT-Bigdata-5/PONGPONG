package controller_command;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import model.MemberDAO;
import model.MemberDTO;

public class JoinServiceCon implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse respose) {
		
		String moveURL = null;
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String university = request.getParameter("university");
		String gender = request.getParameter("gender");
		String tel = request.getParameter("tel");
		String birth = request.getParameter("birth");
		String address = request.getParameter("address");
		MemberDAO dao = new MemberDAO();
		MemberDTO dto = new MemberDTO(id, pw, name, university, gender, tel, birth, address);
		int cnt = dao.join(dto);

		if (cnt > 0) { // select한 데이터가 있다면
			// request 영역에 email 정보를 저장
			request.setAttribute("id", id);
			
			System.out.println("가입 성공..");
			moveURL = "index1.jsp";
			// forward 방식
			//RequestDispatcher dispatcher = request.getRequestDispatcher("join_success.jsp");
			//dispatcher.forward(request, response);
			// response.sendRedirect("join_success.jsp");
		} else {
			//response.sendRedirect("main.jsp");
			System.out.println("가입 실패..");
			moveURL = "index1.jsp";
		}
		return moveURL;
	}

}
