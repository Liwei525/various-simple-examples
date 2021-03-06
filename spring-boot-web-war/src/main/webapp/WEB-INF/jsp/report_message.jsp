<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="ctx" value="<%=request.getContextPath()%>" />
<script type="text/javascript">
//全局js变量，项目名
ctx = "<%=request.getContextPath()%>";
</script>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>预约信息报表</title>
</head>
<body>
    <div><a href="${ctx}/report/btnmes">查看浏览量点击数</a>&nbsp;&nbsp;<a href="${ctx}/report/excel">导出Excel</a></div>
    <table id = "linkTable" border="1" cellpadding="10">
    <tr style="text-align: center;"><td>序号</td><td>姓名</td><td>手机号</td><td>提交时间</td></tr>
    <c:forEach var="item" items="${tbcInfos}" varStatus="st">
    <tr>
    <td>${ st.index + 1 }</td>
    <td>${ item.name }</td>
    <td>${ item.telphone }</td>
    <td><fmt:formatDate value="${item.createTime}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
    </tr>
    </c:forEach>
    
    </table>

</body>

<%-- <script src="${ctx}/theme/js/jquery.min.js"></script> --%>
</html>