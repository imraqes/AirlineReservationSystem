
<%@include file="header_reservation.jsp"%>
<link rel ="stylesheet" href = "main.css"/>
<div id = "new_div">
    <section id = "main_section">
        <article>
            <%@page errorPage="error_page.jsp" %>
            <% if (session.getAttribute("id") != null) {%>
            <%@page import="java.util.Date"%>
            <%
                String flightno = request.getParameter("flightno");
                if (flightno.equals("")) {
                    out.print("<h1>Please Enter Flight Number<h1>");
                } else {%>
            <jsp:forward page="reservation form.jsp"/>
            <%}
                }
            else {%>

            <h1> you are not login</h1>
            TO Use This page Login First<br>
            <a href="login.jsp"> LOGIN here</a>


            <% }%>



        </article>
    </section>
</div>
<%@include file="footer.html" %>
