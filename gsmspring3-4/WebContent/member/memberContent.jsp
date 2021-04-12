<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="kr.gsm.model.*" %>    
 <%
     MemberVO vo=(MemberVO)request.getAttribute("vo");
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
    function goList(){
       location.href="/m4/memberList.do";	
    }  
  </script>
</head>
<body>
<table class="table table-bordered">
  <tr>
    <td>번호</td>
    <td><%=vo.getNum()%></td>
  </tr>
  <tr>
    <td>아이디</td>
    <td><%=vo.getId()%></td>
  </tr>  
    <tr>
    <td>비밀번호</td>
    <td><%=vo.getPass()%></td>
  </tr>
   <tr>
    <td>이름</td>
    <td><%=vo.getName()%></td>
  </tr> 
    <tr>
    <td>나이</td>
    <td><%=vo.getAge()%></td>
  </tr>
   <tr>
    <td>전화번호</td>
    <td><%=vo.getPhone()%></td>
  </tr> 
    <tr>
    <td>이메일</td>
    <td><%=vo.getEmail()%></td>
  </tr>
  <tr>
    <td colspan="2" align="center">
       <input type="button" value="수정"  class="btn btn-primary"/>
       <input type="button" value="취소"  class="btn btn-warning"/>
       <input type="button" value="목록"  class="btn btn-success"  onclick="goList()"/>
    </td>
  </tr>
</table>
</body>
</html>