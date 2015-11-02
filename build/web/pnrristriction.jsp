
    <%@include file="header_reservation.jsp"%>



    <link rel ="stylesheet" href = "main.css"/>
    <div id = "new_div">
        <section id = "main_section">
            <article>
                <%@page errorPage="error_page.jsp" %>
                <%
                    String pnr = null;
                    pnr = request.getParameter("pnr");
                    if (pnr.equals("")) {
                        out.print("Please Enter PNR");
                    } else {%>

                <jsp:forward page="pnrstatus.jsp"/>

                <% }%>

            </article>
        </section>
    </div>
    <%@include file="footer.html" %>
