package mypkg.controller.member;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mypkg.controller.SuperController;
import mypkg.model.BookingList;
import mypkg.model.BookingList_Dao;
import mypkg.utility.Paging;

public class BookingListController implements SuperController {

	@Override
	public void doProcess(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		BookingList_Dao bdao = new BookingList_Dao();
		String pageNumber = request.getParameter("pageNumber") ;
		String pageSize = request.getParameter("pageSize") ;
		int totalCount = bdao.SelectTotalCount(); //1008 ;
		System.out.println( "ÅäÅ»  Ä«¿îÅÍ : " + totalCount);
				
		String contextPath = request.getContextPath()  ;
		String myurl = contextPath + "/MiniShopCtrl?command=meList" ;
		
		String mode = null ;
		String keyword = null ;
		Paging pageInfo = 
				new Paging(pageNumber, pageSize, totalCount, myurl, mode, keyword) ;
		
		List<BookingList> lists 
		= bdao.SelectDataList(pageInfo.getBeginRow(), pageInfo.getEndRow()) ;		
		
		request.setAttribute("lists", lists);
		request.setAttribute("pagingHtml", pageInfo.getPagingHtml());
		request.setAttribute("pagingStatus", pageInfo.getPagingStatus());
		
		String url = "/member/meList.jsp";  
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
