
<%@include file="header_reservation.jsp"%>    
    <link rel ="stylesheet" href = "main.css"/>
    <div id = "new_div">
    <section id = "main_section">
    <article>
<%@page errorPage="error_page.jsp" %>
<%@page import="org.hibernate.Session"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.raka.hibernate.util.HBServices"%>
<%@page import="org.raka.hibernate.entity.*"%>
<%
    if (session.getAttribute("id") != null) {%>
<h1>Your Cancellation Result :</h1>
<br>
<%
    Session s = HBServices.getSession();
    int pnr = Integer.parseInt(request.getParameter("pnr"));

    Criteria ct = s.createCriteria(PassengerReservationDetails.class);
    ct.add(Restrictions.eq("pnrNo", pnr));
    ct.add(Restrictions.eq("enable", 1));
    List<PassengerReservationDetails> l = ct.list();
    if (l.size() == 0) {

        out.print("Your PNR does not exit :");
    } else {
        int classid = 0;
        int flightno = 0;
        for (PassengerReservationDetails pd : l) {
            pd.setEnable(0);
            s.save(pd);
            s.beginTransaction().commit();
            classid = pd.getClassId();
            flightno = pd.getFlightNo();

        }

        Criteria cff = s.createCriteria(FlightFareMap.class);
        cff.add(Restrictions.eq("flightNo", flightno));
        cff.add(Restrictions.eq("classId", classid));
        List<FlightFareMap> lff = cff.list();

        for (FlightFareMap ffm : lff) {
            int a = ffm.getNo_of_seats();
            ffm.setNo_of_seats(a + 1);
            s.save(ffm);
            s.beginTransaction().commit();
        }
        out.print("Your Reservation is calciled");
    }
%> 
<%} else {%>
    <h1> you are not login</h1>
    TO Use This page Login First<br/>
    <a href="login.jsp"> LOGIN here</a>
<% }%>
    </article>
    </section>
    </div>
    <%@include file="footer.html" %>
