<%@ page language="java" contentType="text/html; charset=UTF-8"
    import="java.util.*"
    pageEncoding="UTF-8"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<c:set var="contextPath"  value="${pageContext.request.contextPath}" />
<jsp:useBean  id="hmp001_d003VO"  class="project.hm.hmp001_d003.vo.Hmp001_d003VO"  scope="request"/> 
<%
   request.setCharacterEncoding( "utf-8" );
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <script type="text/javascript">
	function frm_update() {
		alert('${p0003VO.id}');
		
		var frmPro = document.frm;
		frmPro.method = "post";
		frmPro.action = "${contextPath}/hm/hmp001_d003/updateMember.do"; 
		frmPro.submit();
	}
	
	function frm_add() {
		var frmPro = document.frm;
		frmPro.method = "post";
		frmPro.action = "${contextPath}/hm/hmp001_d003/insertMember.do"; 
		frmPro.submit();
	}	
   </script>
</head>
<body>
	<form name="frm" method="post" encType="UTF-8">
	제품ID :<input type="text" name="prod_id" value="${hmp001_d003VO.prod_id}"><br>
	공급업체ID :<input type="text" name="vend_id" value="${hmp001_d003VO.vend_id}"><br>
	제품이름 :<input type="text" name="prod_name" value="${hmp001_d003VO.prod_name}"><br>
	제품가격:<input type="text" name="prod_price" value="${hmp001_d003VO.prod_price}"><br>
	제품상세:<input type="text" name="prod_desc" value="${hmp001_d003VO.prod_desc}"><br>
	
<c:if test="${command=='modSearch'}" > 	
	<input type="submit" name='submit' value="수정" onclick = "frm_update()">
	<input type='hidden' name='command' value='modUpdate'   /> 
</c:if>

<c:if test="${command=='addSearch'}" > 	
	<input type="submit" name='submit' value="추가" onclick = "frm_add()"> 
	<input type='hidden' name='command' value='addUpdate'   />
</c:if>	
	</form>
</body>
</html>