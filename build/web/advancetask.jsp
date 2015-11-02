
    <%@include file="header2.jsp"%>
    <link rel ="stylesheet" href = "main.css"/>
    <div id = "new_div">
    <section id = "main_section">
    <article>


<%@page errorPage="error_page.jsp" %>

<%   if (session.getAttribute("id") != null) {%>


<h1> ADMIN PANEL</h1>
<b>Admin:</b><%=session.getAttribute("name")%> 

<hr/>


<a href="userinfo.jsp">User Informations</a><br /><br/>

<!--<a href="reservedTickets.jsp">Add New Admin </a>-->



<%} else {%>
 
    <h1> you are not login</h1>
    TO Use This page Login First<br/>
    <a href="login.jsp"> LOGIN here</a>


<% }%>


</article>
    </section>
    </div>
    <%@include file="footer.html" %>