package com.kh.member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class CheckEmailAuthServelt
 */
@WebServlet(name = "CheckEmailAuth", urlPatterns = { "/checkEmailAuth" })
public class CheckEmailAuthServelt extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckEmailAuthServelt() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();
		
		String authNum = (String)session.getAttribute("authNum"); //SendEmailServelt에서 생성한 난수 인증번호
		System.out.println("authNum get!!!"+authNum);
		String emailAuth = request.getParameter("emailAuth"); //사용자가 입력한 인증번호
		
		System.out.println(authNum);
		System.out.println(emailAuth);
		
		PrintWriter out = response.getWriter();
		
		if(authNum.equals(emailAuth)) { //Servlet에서 만든 난수 인증번호와 사용자가 입력한 인증번호가 같을 경우 성공
			out.print(1);
		}else {
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
