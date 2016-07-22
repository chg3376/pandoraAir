package mypkg.controller.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mypkg.controller.SuperController;
import mypkg.model.MemberDao;
import mypkg.utility.FlowParameters;

public class DeleteController implements SuperController {

	@Override
	public void doProcess(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
		
		FlowParameters parameters = new FlowParameters() ;
		parameters.setKeyword( request.getParameter("keyword") ); 
		parameters.setMode( request.getParameter("mode") ); 
		parameters.setPageNumber( request.getParameter("pageNumber") );
		parameters.setPageSize( request.getParameter("pageSize") );
		
		MemberDao bdao = new MemberDao() ;
		int cnt = -99999 ;
		cnt = bdao.DeleteData(id) ;
		
		//url 변수 : /url패턴?command=커맨드이름&FlowParameters객체.toString()
		
		String url = "/MiniShopCtrl?command=boList&" + parameters.toString() ;  
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);	
	}

}
