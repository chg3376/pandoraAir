package mypkg.controller.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mypkg.controller.SuperController;

public class LoginController implements SuperController{

	@Override
	public void doProcess(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String url = "/common/Login.jsp";  
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}
	
}
