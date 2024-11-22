  package com.notice;
 

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/EnterNoticeServlet")
public class EnterNoticeServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    	String noticeID = request.getParameter("noticeID");
        String title = request.getParameter("title");
        String postDate = request.getParameter("postDate");
        String expiryDate = request.getParameter("expiryDate");
        String notice = request.getParameter("notice");
        String author = request.getParameter("author");
        
       

        List<Notice> noticeDetails = EnterNoticeDBUtil.insertNotice1(noticeID,title,postDate,expiryDate,notice,author);
        request.setAttribute("noticeDetails", noticeDetails);
        
        
        
         
        RequestDispatcher dispatcher = request.getRequestDispatcher("View.jsp");
        dispatcher.forward(request, response);
    }
}
    
