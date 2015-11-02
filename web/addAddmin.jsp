<%@page errorPage="error_page.jsp" %>
<%@page import="java.util.List"%>

<%@page import="org.hibernate.Criteria"%>

<%@page import="org.raka.hibernate.util.HBServices"%>
<%@page import="org.raka.hibernate.entity.*"%>
<%@page import="org.hibernate.Session"%>
<h1> Add New Admin</h1>
<hr>

<%
    Session s = HBServices.getSession();
    Criteria c = s.createCriteria(Admindetails.class);
    List<Admindetails> l = c.list();
    for (Admindetails ad : l) {
        String name = ad.getName();
    }

















%>        