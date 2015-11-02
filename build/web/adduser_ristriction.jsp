<%@page errorPage="error_page.jsp" %>
<%
    String userid = request.getParameter("useid");
    String name = request.getParameter("name");
    String password = request.getParameter("password");
    String gender = request.getParameter("gender");
    int age = Integer.parseInt(request.getParameter("age"));
    String address = request.getParameter("address");
    String email = request.getParameter("email");
    String contect = request.getParameter("contectno");
%>