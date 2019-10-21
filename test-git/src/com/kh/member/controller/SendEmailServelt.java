package com.kh.member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.util.EmailConfirm;

/**
 * Servlet implementation class SendEmailServelt
 */
@WebServlet(name = "SendEmail", urlPatterns = { "/sendEmail" })

public class SendEmailServelt extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SendEmailServelt() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String email1 = request.getParameter("email1");
		String email2 = request.getParameter("email2");
		if (!email1.equals("")) {
			if (email2.equals("0")) {
				// 직접입력
				email = email1;
			} else {
				email = email1 + "@" + email2;
			}
		}
		// 위에서 작성한 java파일 객체 생성
		EmailConfirm emailconfirm = new EmailConfirm();
		String authNum = emailconfirm.connectEmail(email);
		
		PrintWriter out = response.getWriter();
		if(authNum.length() != 0) { //난수 생성하고 이메일 날림
			out.print(1);
			HttpSession session = request.getSession();
			session.setAttribute("authNum", authNum);
		}else { //이메일전송 실패
			out.print(0);
		}
		
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
