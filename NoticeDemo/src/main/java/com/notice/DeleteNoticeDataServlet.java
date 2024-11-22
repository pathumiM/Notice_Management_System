package com.notice;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DeleteNoticeDataServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String noticeID = request.getParameter("noticeID");
        boolean isSuccess;

        isSuccess = EnterNoticeDBUtil.deleteNotice(noticeID);

        if (isSuccess) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("EnterNotice.jsp");
            dispatcher.forward(request, response);
        } else {
            RequestDispatcher dispatcher = request.getRequestDispatcher("u.jsp");
            dispatcher.forward(request, response);
        }
    }
}
