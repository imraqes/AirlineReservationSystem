
    <%@include file="header2.jsp"%>
    <link rel ="stylesheet" href = "main.css"/>
    <div id = "new_div">
    <section id = "main_section">
    <article>



<%@page errorPage="error_page.jsp" %>

<%
    if (session.getAttribute("id") != null) {%>

<%
    String pnr = null;
    pnr = request.getParameter("flight no");
    if (pnr.equals("")) {
        out.print("<h1>Please Enter Flight no</h1>");
    } else {%>

<jsp:forward page="enabledisableresult.jsp"/>

<% }%>



<%} else {%>

    <h1> you are not login</h1>
    TO Use This page Login First<br/>
    <a href="login.jsp"> LOGIN here</a>


<% }%>



</article>
    </section>
    </div>
    <%@include file="footer.html" %>
