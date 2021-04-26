<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="kr.gsm.model.*" %>   
<%
        List<MemberVO> list=(List<MemberVO>)request.getAttribute("list");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script type="text/javascript">
      // jQuery API(*)
     function goInput() {
		  location.href="member/memberRegister.html";
	 }
      function goDel(num){
    	  location.href="/m42/memberDelete.do?num="+num;
      }
      function goView(num){
    	  location.href="/m42/memberContent.do?num="+num;
      }
  </script>
</head>
<body>

<div class="container">
  <h2>회원관리시스템</h2>
  <div class="panel panel-default">
    <div class="panel-heading">
     <form class="form-inline" action="" method="post">
		  <div class="form-group">
		    <label for="id">ID:</label>
		    <input type="text" class="form-control" id="id" name="id">
		  </div>
		  <div class="form-group">
		    <label for="pwd">PW:</label>
		    <input type="password" class="form-control" id="pass" name="pass">
		  </div>
		  <button type="submit" class="btn btn-default">로그인</button>
   </form>
    </div>
    <div class="panel-body">
      <div class="table-responsive">          
  <table class="table">
    <thead>
      <tr>
	     <th>번호</th>
	     <th>아이디</th>
	     <th>비밀번호</th>
	     <th>이름</th>
	     <th>나이</th>
	     <th>전화번호</th>
	     <th>이메일</th>
	     <th>삭제</th>
    </tr>
    </thead>
    <tbody>
      <% for(MemberVO vo :  list) {%>
	 <tr>
	     <td><%=vo.getNum()%></td>
	     <td><a href="javascript:goView( <%=vo.getNum()%>)"><%=vo.getId()%></a></td>
	     <td><%=vo.getPass() %></td>
	     <td><%=vo.getName()%></td>
	     <td><%=vo.getAge()%></td>
	     <td><%=vo.getPhone()%></td>
	     <td><%=vo.getEmail()%></td>
	     <td><input type="button" value="삭제"  class="btn btn-warning" onclick="goDel(<%=vo.getNum()%>)" disabled="disabled"/></td>
	   </tr>
	 <% } %>
	 <tr>
	   <td colspan="8" align="right">
	       <input type="button" value="회원가입" class="btn btn-primary"   onclick="goInput()"/>
	   </td>
	 </tr>
    </tbody>
  </table>
  </div>
    </div>
  </div>
</div>
</body>
</html>