<%@page errorPage="error_page.jsp" %>

<%@page import="org.hibernate.criterion.Restrictions"%>

<%@page import="org.hibernate.Criteria"%>
<%@page import="org.raka.hibernate.util.HBServices"%>
<%@page import="org.raka.hibernate.entity.*"%>
<%@page import="org.hibernate.Session"%>
<%
    String userid = request.getParameter("useid");
    String name = request.getParameter("name");
    String password = request.getParameter("password");
    String gender = request.getParameter("gender");
    int age = Integer.parseInt(request.getParameter("age"));
    String address = request.getParameter("address");
    String email = request.getParameter("email");
    String contect = request.getParameter("contectno");

    Session s = HBServices.getSession();

    Userdetails ud = new Userdetails();
    ud.setUserid(userid);
    ud.setName(name);
    ud.setPassword(password);
    ud.setGender(gender);
    ud.setAge(age);
    ud.setAddress(address);
    ud.setEmail(email);
    ud.setContect_no(contect);
    ud.setEnable(1);

    s.save(ud);
    s.beginTransaction().commit();

%>
<jsp:forward page="login.jsp"></jsp:forward>