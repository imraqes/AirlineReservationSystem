
<%@include file="header_reservation.jsp"%>
    <link rel ="stylesheet" href = "main.css"/>
    <div id = "new_div">
    <section id = "main_section">
    <article>
<%@page errorPage="error_page.jsp" %>
<% if (session.getAttribute("id") != null) {%>
<%@page import="java.util.Date"%>
<%
    String name = request.getParameter("name");
    String passid = request.getParameter("passportid");

    String flightno = request.getParameter("flightno");

    String date = request.getParameter("date");

    String clas = request.getParameter("class");

    String source = request.getParameter("soure");

    String destination = request.getParameter("destinition");





//Date d=new Date(request.getParameter("date"));


    if (name.equals("")) {
        out.print("<h1>Please Enter Passanger Name<h1>");
    } else {
        if (passid.equals(""))
            out.print("<h1>Please Enter Passort Number<h1>");
        else {
            if (flightno.equals(""))
                out.print("<h1>Please Enter Flight Number<h1>");
            else {
                if (date.equals(""))
                    out.print("<h1>Please Enter Date of journy <h1>");
                else {
                    Date d = new Date(request.getParameter("date"));
                    Date now = new Date();
                    if (d.before(now))
                        out.print("<h1>Please Enter Future Date of journey <h1>");
                    else {
                        if (clas.equals(""))
                            out.print("<h1>Please Enter CLASS <h1>");
                        else {
                            if (source.equals("none"))
                                out.print("<h1>Please Enter Source of journey <h1>");
                            else {
                                if (destination.equals("none"))
                                    out.print("<h1>Please Enter Destination of journey <h1>");
                                else {%>
<jsp:forward page="reservation.jsp"/>




<%}
                                     }
                                 }
                             }
                         }
                     }
                 }
             }%>



<%} else {%>
 
    <h1> you are not login</h1>
                TO Use This page Login First<br>
                <a href="login.jsp"> LOGIN here</a>


                <% }%>
                
                
                
                </article>
    </section>
    </div>
    <%@include file="footer.html" %>
