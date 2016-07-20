package mypkg.controller.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mypkg.controller.SuperController;

	public class MemberInsertFormController implements SuperController {

		@Override
		public void doProcess(HttpServletRequest request,
				HttpServletResponse response) throws ServletException, IOException {
			
			System.out.println( this.getClass() );
			
			String url = "/member/InsertForm.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
		}

	}

