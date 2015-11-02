<%@page errorPage="error_page.jsp" %>


<%@page import="java.util.List"%>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.raka.hibernate.util.HBServices"%>
<%@page import="org.raka.hibernate.entity.*"%>
<%@page import="org.hibernate.Session"%>
<%
    String id = request.getParameter("id");
    String pass = request.getParameter("pass");
    session.setAttribute("id", id);
    Session s = HBServices.getSession();
    Criteria ca = s.createCriteria(Admindetails.class);
    ca.add(Restrictions.eq("adminid", id));
    ca.add(Restrictions.eq("password", pass));
    ca.add(Restrictions.eq("enable", 1));
    List<Admindetails> al = ca.list();

    out.print("admin:" + al.size());
    
    Criteria cs = s.createCriteria(Userdetails.class);
    cs.add(Restrictions.eq("userid", id));
    cs.add(Restrictions.eq("password", pass));
    cs.add(Restrictions.eq("enable", 1));
    List<Userdetails> ul = cs.list();
    
    out.print("  user :" + ul.size());

    if (al.size() != 0) {
        for (Admindetails admin : al) {
            session.setAttribute("name", admin.getName());
        }

        response.sendRedirect("AdminPanal.jsp");

%>

<%} else if (ul.size() != 0) {
    for (Userdetails user : ul) {


        session.setAttribute("name", user.getName());
        session.setAttribute("pass", pass);
    }

    response.sendRedirect("reservationpanel.jsp");
%>

<% } else {%>
<h1> wrong user name or password </h1>
Please login to use this page
<br />
<a href="login.jsp"> LOGIN here</a>
<%}%>