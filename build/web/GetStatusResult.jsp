
<%@include file="header.jsp"%>    


    <link rel ="stylesheet" href = "main.css"/>
    <div id = "new_div">
    <section id = "main_section">
    <article>






<%@page errorPage="error_page.jsp" %>

<%@page import="java.util.List"%>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="org.raka.hibernate.util.HBServices"%>
<%@page import="org.raka.hibernate.entity.*"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Criteria"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<h1>GET STATUS RESULT :</h1>
<hr>
<%

    String source = null;
    String destination = null;
    String arrivaltime = null;
    String departuretime = null;


    int flightno = Integer.parseInt(request.getParameter("flightno"));
    Session s = HBServices.getSession();

    Criteria c = s.createCriteria(FlightMaster.class);

    c.add(Restrictions.eq("flightNo", flightno));
    c.add(Restrictions.eq("enable", 1));
    List<FlightMaster> l = c.list();
    if (l.size() == 0) {
        out.print("Their is no flight on this flight no:");
    } else {
        for (FlightMaster fm : l) {


            arrivaltime = fm.getArrivalTime();
            departuretime = fm.getDepartureTime();

            int soureid = fm.getSourceId();

            Criteria cs = s.createCriteria(AerodrumMaster.class);

            cs.add(Restrictions.eq("aerodrumId", soureid));

            List<AerodrumMaster> ls = cs.list();
            for (AerodrumMaster asm : ls) {
                source = asm.getCity();
            }



            int destinationid = fm.getDestinationId();
            Criteria cd = s.createCriteria(AerodrumMaster.class);

            cd.add(Restrictions.eq("aerodrumId", destinationid));

            List<AerodrumMaster> ld = cd.list();
            for (AerodrumMaster asm : ld) {
                destination = asm.getCity();
            }


        }
        //out.print("<br /> "+source+ "  " +destination+"  "+arrivaltime+"   "+departuretime+"  ");

%>
    <table border="2px,black,solid" height="100" width=50%>
        <tr>
            <th>Flight No</th>
            <th>Source</th>
            <th>Destination</th>
            <th>Arrival time</th>
            <th>Departure time</th>   
        </tr>
        <tr>
            <td><%=flightno%></td>
            <td><%=source%></td>
            <td><%=destination%></td>
            <td><%=arrivaltime%></td>
            <td><%=departuretime%></td>   
        </tr>



    </table>
<%}%>



    </article>
    </section>
    </div>
    <%@include file="footer.html" %>
