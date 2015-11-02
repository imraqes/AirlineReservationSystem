<%@page errorPage="error_page.jsp" %>
<script>
    window.history.forward(1);
</script>
<%
    if (session.getAttribute("id") != null) {


        session.invalidate();

        out.print("You are Log Out");
    } else {
        out.print("You are already Log out");
    }

%>
<jsp:forward page="main.jsp" ></jsp:forward>
