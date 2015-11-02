
    <%@include file="header2.jsp"%>
    <link rel ="stylesheet" href = "main.css"/>
    <div id = "new_div">
    <section id = "main_section">
    <article>


<%@page errorPage="error_page.jsp" %>
<% if (session.getAttribute("id") != null) {%>
<%
    String flightno = request.getParameter("flightno");
    String companyname = request.getParameter("companyname");
    String source = request.getParameter("source");
    String destination = request.getParameter("destination");
    String arivaltime = request.getParameter("arivaltime");
    String departuretime = request.getParameter("departuretime");
    String day[] = request.getParameterValues("days");


    String first = request.getParameter("first");
    String second = request.getParameter("second");
    String third = request.getParameter("third");





    if (flightno.equals("")) {
        out.print("<h1>Please Enter Flight no<h1>");
    } else {
        if (companyname.equals(""))
            out.print("<h1>Please Select Company name<h1>");
        else {
            if (source.equals(""))
                out.print("<h1>Please Select Source of Flight<h1>");
            else {
                if (destination.equals(""))
                    out.print("<h1>Please Select Destination of flight <h1>");
                else {
                    if (arivaltime.equals(""))
                        out.print("<h1>Please Enter Arrival time of Flight<h1>");
                    else {
                        if (departuretime.equals(""))
                            out.print("<h1>Please Enter Departure Time of Flight <h1>");
                        /*  else
                         {
                         if(day[0].equals("none"))
                         out.print("<h1>Please Select days of Flight <h1>");*/
                        else {
                            if (first.equals(""))
                                out.print("<h1>Please Enter Fare of First class</h1>");
                            else {
                                if (second.equals(""))
                                    out.print("<h1>Please Enter Fare of Business class</h1>");
                                else {
                                    if (third.equals(""))
                                        out.print("<h1>Please Enter Fare of Iconomic class</h1>");
                                    else {%>
<jsp:forward page="flightaddingresult.jsp"/>




<%}
                                         }
                                     }
                                 }
                             }
                         }
                     }
                 }
             }%>


<%} else {%>

    <h1> you are not login</h1>
                TO Use This page Login First<br/>
                <a href="login.jsp"> LOGIN here</a>


                <% }%>







</article>
    </section>
    </div>
    <%@include file="footer.html" %>
    