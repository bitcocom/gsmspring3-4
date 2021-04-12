package kr.gsm.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.gsm.model.MemberDAO;
import kr.gsm.model.MemberVO;
@WebServlet("/memberList.do")
public class MemberListController extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) 
		  	  throws ServletException, IOException {
		// (DAO)모델과 연동
		MemberDAO dao=new MemberDAO();
		List<MemberVO> list=dao.memberList();
		// 요청한 클라이언트로 응답하기(JSP)
		// Gson API -> JSON
		request.setAttribute("list", list);
		RequestDispatcher rd=request.getRequestDispatcher("member/memberList.jsp");
		rd.forward(request, response);	
	}
}