<%@ page import="java.util.List" %>
<%@ page import="com.example.model.KhachHang" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <title>JSP - Hello World</title>
</head>
<body>
<h2 style="text-align: center" >Danh Sach Cac Em Yeu</h2>
<%
    List<KhachHang> list = new ArrayList<>();
    list.add(new KhachHang(1,"Linh","03-07-2001","Ha Noi","img_1.png"));
    list.add(new KhachHang(2,"Chinh","02-01-2001","Ha Noi","img_3.png"));
    pageContext.setAttribute("list",list);

%>
<table border="1" style="width: 100%">
    <tr>
        <th>ID</th>
        <th>NAME</th>
        <th>DATE</th>
        <th>ADDRESS</th>
        <th>IMAGE</th>
    </tr>
    <c:forEach var="st" items="#{list}">
        <tr>
            <td>
                <c:out value="${st.id}"></c:out>
            </td>
            <td>
                <c:out value="${st.name}"></c:out>
            </td>
            <td><c:out value="${st.date}"></c:out></td>
            <td><c:out value="${st.address}"></c:out></td>
            <td style="width: 100%"><img src="image/${st.image}" ></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>