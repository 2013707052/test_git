package com.kh.member.controller;

import java.io.IOException;
import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.kh.member.model.service.MemberService;
import com.kh.member.model.vo.Member;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

/**
 * Servlet implementation class JoinServlet
 */
@WebServlet(name = "Join", urlPatterns = { "/join" })
public class JoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JoinServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("joinServlet 연결쓰");
		
		
		if(!ServletFileUpload.isMultipartContent(request)) { //이 요청이 파일업로드 요청이 맞는지 확인하는 메소드
			request.setAttribute("msg", "[enctype]확인하세요");
			request.setAttribute("loc", "/");
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/common/msg.jsp");
			rd.forward(request, response);
			return; //요청이 파일업로드 요청이 아닐경우 이 서블릿을 여기서 종료시켜버림.
		}
		
		
		
		//파일업로드 준비
		//1) 파일업로드 경로 지정
		String root = getServletContext().getRealPath("/"); //WebContent의 절대경로를 가져옴
		String saveDirectory = root+"upload/photoProfile"; //파일이 저장될 경로를 지정
				
		//2) 파일 최대크기 지정
		//cos 라이브러리 무료 최대 사이즈는 10MB
		int maxSize = 10*1024*1024; //byte 단위로 써야해서 이렇게 표현
		
		//3) request -> MultipartRequest
		//원래 다른 서블릿에서는 값 가져오려면 request썼는데, 파일업로드 부분에선 MultipartRequest 사용
		//DefaultFileRenamePolicy : 파일명 같을 경우 뒤에 숫자 붙여줌 
		MultipartRequest mRequest = new MultipartRequest(request, saveDirectory, maxSize, "UTF-8", new DefaultFileRenamePolicy());
		//이 윗줄이 파일 업로드된 시점
		
		
		
		
		String id = mRequest.getParameter("id");
		String pw = mRequest.getParameter("pw");
		String name = mRequest.getParameter("name");
		/*DateFormat d = new SimpleDateFormat("yyyyMMdd");
		Date date = d.parse(request.getParameter("birth"));*/
		String birthStr = mRequest.getParameter("birth");
		Date birth = null;
		if(birthStr.length() != 0) {
			birth = java.sql.Date.valueOf(birthStr);
		}
		//java.sql.Date birth = java.sql.Date.valueOf(birthStr);
		String gender = mRequest.getParameter("gender");
		String phone = mRequest.getParameter("phone");
		String email = mRequest.getParameter("email");
		String city = mRequest.getParameter("city");
		//String photoname = request.getParameter("photoname");

		int age = 0;
		if(birthStr.length() != 0) {
			age = 2019-(Integer.parseInt(birthStr.substring(0,4)))+1;
		}
		System.out.println("id는 "+id);
		System.out.println("나이는 "+age );
		
		
		//실제로 올린 파일명
		String photoname = mRequest.getOriginalFileName("photoname");
		
		//서버에 올라올때 파일명. 만약 똑같은 이름의 파일 여러개 올라오면 여기에는 파일명 뒤에 넘버링 돼서 올라옴
		String photopath = mRequest.getFilesystemName("photoname");
		
		System.out.println("photoname : "+photoname);
		System.out.println("photopath : "+photopath);
		
		
		
		Member m = new Member(id, pw, name, birth, gender, phone, email, city, "standard", null, age, 0, photopath, photoname); 
		
		MemberService service = new MemberService();
		int result = service.insertMember(m);
		
		if(result>0) {
			request.setAttribute("msg", "회원가입 성공");
		}else {
			request.setAttribute("msg", "회원가입 실패");
		}
		request.setAttribute("loc", "/");
		RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/views/common/msg.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
