
    <%@include file="header.jsp"%>



    <link rel ="stylesheet" href = "main.css"/>
    <div id = "new_div">
        <section id = "main_section">
            <article>

                <%@page errorPage="error_page.jsp" %>
                <%@page import="java.util.Date"%>

                <%

                    String clas = request.getParameter("class");

                    String source = request.getParameter("soure");

                    String destination = request.getParameter("destinition");

                    if (clas.equals("none")) {
                        out.print("please Enter Class :");
                    } else {
                        if (source.equals("none"))
                            out.print("<b>Please select any Source<b>");
                        else {
                            if (destination.equals("none"))
                                out.print("<b>Please select any destination</b>");
                            else {%>
                <jsp:forward page="GetFareResult.jsp"/>

                <%}
                        }
                    }

                %>


            </article>
        </section>
    </div>
    <%@include file="footer.html" %>
