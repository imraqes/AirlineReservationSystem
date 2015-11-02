
<%@include file="header.jsp"%>



    <link rel ="stylesheet" href = "main.css"/>
    <div id = "new_div">
    <section id = "main_section">
    <article>

<%@page errorPage="error_page.jsp" %>


<%
    String pnr = null;
    pnr = request.getParameter("flightno");
    if (pnr.equals("")) {
        out.print("<h1>Please Enter Flight no</h1>");
    } else {%>

<jsp:forward page="GetStatusResult.jsp"/>

<% }%>


    </article>
    </section>
    </div>
    <%@include file="footer.html" %>
