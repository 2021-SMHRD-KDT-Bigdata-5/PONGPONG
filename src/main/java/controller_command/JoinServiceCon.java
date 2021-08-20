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

		if (cnt > 0) { // select�� �����Ͱ� �ִٸ�
			// request ������ email ������ ����
			request.setAttribute("id", id);
			
			System.out.println("���� ����..");
			moveURL = "index1.jsp";
			// forward ���
			//RequestDispatcher dispatcher = request.getRequestDispatcher("join_success.jsp");
			//dispatcher.forward(request, response);
			// response.sendRedirect("join_success.jsp");
		} else {
			//response.sendRedirect("main.jsp");
			System.out.println("���� ����..");
			moveURL = "index1.jsp";
		}
		return moveURL;
	}

}
