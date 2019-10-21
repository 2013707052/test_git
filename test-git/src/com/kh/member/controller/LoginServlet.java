package com.kh.member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.member.model.service.MemberService;
import com.kh.member.model.vo.Member;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet(name = "Login", urlPatterns = { "/login" })
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		//3. 비지니스로직 처리
		MemberService service = new MemberService();
		Member m = service.login(id, pw);
		
		//4. view처리
		if(m!=null) {
			HttpSession session = request.getSession(); /*session 생성(jsp에선 session이 내장객체라 자동으로 만들어지지만 servlet에선 session이 내장객체가 아니므로 만들어줘야됨)*/
			session.setAttribute("member", m);
			request.setAttribute("msg", "로그인 성공");
			
		}else {
			request.setAttribute("msg", "로그인 실패");
		}
		request.setAttribute("loc", "/");	//로그인 성공하던 실패하던 무조건 /index.jsp로 이동
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/common/msg.jsp"); //메세지 처리를 위해 이동할 페이지
		rd.forward(request, response); //페이지 이동. request와 respnse를 들고 페이지 이동, response는 큰 의미는 모르겠는데 매개변수로 반드시 있어야함.
		//주소창에서도 msg.jsp가 나오지 않고 requestDisatcher를 호출한 이곳의 주소만 나온다.
		//WEB-INF 아래에 작성한 페이지들은 일반적인 방법(url을 통한 이동)으로는 접근할 수 없고, requestDispatcher나 include를 통해서만 가능하다.
		//보안성을 위해 접근하지 못하게 자동으로 설정되어있다.
		
		System.out.println("로그인 Servlet 끝");
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
