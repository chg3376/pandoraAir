package mypkg.controller.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mypkg.controller.SuperController;
import mypkg.model.Member;
import mypkg.model.MemberDao;

public class MemberLoginFormController implements SuperController{

	@Override
	public void doProcess(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		System.out.println("�α��� ��...");
		System.out.println( this.getClass() );
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		MemberDao mdao = new MemberDao();
		
		
		Member bean = mdao.SelectDataByPk(id);
		
		String url = null;
		String msg = "";
		
		
		if(bean == null){ //�������� �ʴ� ���̵�
			url = "/main.jsp";
			msg = "���̵� ��й�ȣ�� �� �� �Ǿ����ϴ�.";
			System.out.println("���̵��߸�");
			request.setAttribute("errmsg", msg);
		}else { //�����ϴ� ���̵�
			if(password.equals(bean.getPassword()) ){ //��й�ȣ ����
				url = "/main.jsp";
				msg = "�α��� ����.";
				HttpSession session = request.getSession();
				session.setAttribute("loginfo", bean);
				System.out.println("�α��μ���");
			}else{ //��й�ȣ Ʋ��
				url = "/main.jsp";
				msg = "���̵� ��й�ȣ�� �� �� �Ǿ����ϴ�.";
				System.out.println("���Ʋ��");
				request.setAttribute("errmsg", msg);
			}
		}	
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}