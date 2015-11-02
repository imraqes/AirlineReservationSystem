 <%@page errorPage="error_page.jsp" %> 
<%@page import="java.util.Date"%>

<center>
    <%@include file="header.jsp"%>
    <link rel ="stylesheet" href = "main.css"/>
    <div id = "new_div">
        <section id = "main_section">
            <article>
                <%
                    String dt = request.getParameter("date");
                    if (dt.equals("")) {
                        out.print("please Enter Date");
                    } else {
                        Date d = new Date(request.getParameter("date"));
                        String source = request.getParameter("soure");
                        String destination = request.getParameter("destinition");
                        Date date = new Date();
                        if (d.before(date)) {
                            out.print("please enter future date");
                        } else {
                            if (source.equals("none"))
                                out.print("Please select any Source");
                            else {
                                if (destination.equals("none"))
                                    out.print("Please select any destination");
                                else {%>
                <jsp:forward page="serchresult.jsp"/>
                <%}
                            }
                        }
                    }

                %>
            </article>
        </section>
    </div>
    <%@include file="footer.html" %>
</center>