
<%@include file="header_reservation.jsp"%>    



<style>
input[type="submit"] {
	background: #E24425;
	color: #FFF;
	font-size: 1em;
	padding: 0.7em 1.2em;
	transition: 0.5s all;
	-webkit-transition: 0.5s all;
	-moz-transition: 0.5s all;
	-o-transition: 0.5s all;
	display: inline-block;
	text-transform: uppercase;
	border:none;
	outline:none;
}
body {
    width: 600px;
    margin: 40px auto;
    font-family: 'trebuchet MS', 'Lucida sans', Arial;
    font-size: 14px;
    color: #444;
}

table {
    *border-collapse: collapse; /* IE7 and lower */
    border-spacing: 0;
    width: 100%;    
}

.bordered {
    border: solid #ccc 1px;
    -moz-border-radius: 6px;
    -webkit-border-radius: 6px;
    border-radius: 6px;
    -webkit-box-shadow: 0 1px 1px #ccc; 
    -moz-box-shadow: 0 1px 1px #ccc; 
    box-shadow: 0 1px 1px #ccc;         
}

.bordered tr:hover {
    background: #fbf8e9;
    -o-transition: all 0.1s ease-in-out;
    -webkit-transition: all 0.1s ease-in-out;
    -moz-transition: all 0.1s ease-in-out;
    -ms-transition: all 0.1s ease-in-out;
    transition: all 0.1s ease-in-out;     
}    
    
.bordered td, .bordered th {
    border-left: 1px solid #ccc;
    border-top: 1px solid #ccc;
    padding: 10px;
    text-align: left;    
}

.bordered th {
    background-color: #dce9f9;
    background-image: -webkit-gradient(linear, left top, left bottom, from(#ebf3fc), to(#dce9f9));
    background-image: -webkit-linear-gradient(top, #ebf3fc, #dce9f9);
    background-image:    -moz-linear-gradient(top, #ebf3fc, #dce9f9);
    background-image:     -ms-linear-gradient(top, #ebf3fc, #dce9f9);
    background-image:      -o-linear-gradient(top, #ebf3fc, #dce9f9);
    background-image:         linear-gradient(top, #ebf3fc, #dce9f9);
    -webkit-box-shadow: 0 1px 0 rgba(255,255,255,.8) inset; 
    -moz-box-shadow:0 1px 0 rgba(255,255,255,.8) inset;  
    box-shadow: 0 1px 0 rgba(255,255,255,.8) inset;        
    border-top: none;
    text-shadow: 0 1px 0 rgba(255,255,255,.5); 
}

.bordered td:first-child, .bordered th:first-child {
    border-left: none;
}

.bordered th:first-child {
    -moz-border-radius: 6px 0 0 0;
    -webkit-border-radius: 6px 0 0 0;
    border-radius: 6px 0 0 0;
}

.bordered th:last-child {
    -moz-border-radius: 0 6px 0 0;
    -webkit-border-radius: 0 6px 0 0;
    border-radius: 0 6px 0 0;
}

.bordered th:only-child{
    -moz-border-radius: 6px 6px 0 0;
    -webkit-border-radius: 6px 6px 0 0;
    border-radius: 6px 6px 0 0;
}

.bordered tr:last-child td:first-child {
    -moz-border-radius: 0 0 0 6px;
    -webkit-border-radius: 0 0 0 6px;
    border-radius: 0 0 0 6px;
}

.bordered tr:last-child td:last-child {
    -moz-border-radius: 0 0 6px 0;
    -webkit-border-radius: 0 0 6px 0;
    border-radius: 0 0 6px 0;
}



/*----------------------*/

.zebra td, .zebra th {
    padding: 10px;
    border-bottom: 1px solid #f2f2f2;    
}

.zebra tbody tr:nth-child(even) {
    background: #f5f5f5;
    -webkit-box-shadow: 0 1px 0 rgba(255,255,255,.8) inset; 
    -moz-box-shadow:0 1px 0 rgba(255,255,255,.8) inset;  
    box-shadow: 0 1px 0 rgba(255,255,255,.8) inset;        
}

.zebra th {
    text-align: left;
    text-shadow: 0 1px 0 rgba(255,255,255,.5); 
    border-bottom: 1px solid #ccc;
    background-color: #eee;
    background-image: -webkit-gradient(linear, left top, left bottom, from(#f5f5f5), to(#eee));
    background-image: -webkit-linear-gradient(top, #f5f5f5, #eee);
    background-image:    -moz-linear-gradient(top, #f5f5f5, #eee);
    background-image:     -ms-linear-gradient(top, #f5f5f5, #eee);
    background-image:      -o-linear-gradient(top, #f5f5f5, #eee); 
    background-image:         linear-gradient(top, #f5f5f5, #eee);
}

.zebra th:first-child {
    -moz-border-radius: 6px 0 0 0;
    -webkit-border-radius: 6px 0 0 0;
    border-radius: 6px 0 0 0;  
}

.zebra th:last-child {
    -moz-border-radius: 0 6px 0 0;
    -webkit-border-radius: 0 6px 0 0;
    border-radius: 0 6px 0 0;
}

.zebra th:only-child{
    -moz-border-radius: 6px 6px 0 0;
    -webkit-border-radius: 6px 6px 0 0;
    border-radius: 6px 6px 0 0;
}

.zebra tfoot td {
    border-bottom: 0;
    border-top: 1px solid #fff;
    background-color: #f1f1f1;  
}

.zebra tfoot td:first-child {
    -moz-border-radius: 0 0 0 6px;
    -webkit-border-radius: 0 0 0 6px;
    border-radius: 0 0 0 6px;
}

.zebra tfoot td:last-child {
    -moz-border-radius: 0 0 6px 0;
    -webkit-border-radius: 0 0 6px 0;
    border-radius: 0 0 6px 0;
}

.zebra tfoot td:only-child{
    -moz-border-radius: 0 0 6px 6px;
    -webkit-border-radius: 0 0 6px 6px
    /* border-radius: 0 0 6px 6px */
}
  
</style>

    <link rel ="stylesheet" href = "main.css"/>
    <div id = "new_div">
    <section id = "main_section">
    <article>

<%@page errorPage="error_page.jsp" %>
<%@page import="org.raka.hibernate.util.HBServices"%>
<%@page import="org.raka.hibernate.entity.*"%>

<%@page import="org.hibernate.Session"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="java.util.Date"%>

<% if (session.getAttribute("id") != null) {%>

<h1>Your Flight Reservation Result : </h1>
TICKET INFO
<br>
        <%
            String name = request.getParameter("name");
            String passid = request.getParameter("passportid");
            int flightno = Integer.parseInt(request.getParameter("flightno"));
            String date = request.getParameter("date");
            int clas = Integer.parseInt(request.getParameter("class"));
            int source = Integer.parseInt(request.getParameter("soure"));
            int destination = Integer.parseInt(request.getParameter("destinition"));
            int flightfare = 0;
            int no_of_seat = 0;
            String classname = null;
            if (clas == 1) {
                classname = "FC";
            } else if (clas == 2) {
                classname = "BC";
            } else {
                classname = "IC";
            }
            Session s = HBServices.getSession();
            Criteria cas = s.createCriteria(AerodrumMaster.class);
            cas.add(Restrictions.eq("aerodrumId", source));
            List<AerodrumMaster> ls = cas.list();
            String sourcename = null;
            for (AerodrumMaster cm : ls) {
                sourcename = cm.getCity();
            }


            Criteria cad = s.createCriteria(AerodrumMaster.class);
            cad.add(Restrictions.eq("aerodrumId", destination));
            List<AerodrumMaster> ld = cad.list();
            String destinationename = null;
            for (AerodrumMaster cm : ld) {
                destinationename = cm.getCity();
            }
            int pnr = 0;
            boolean f = false;
            do {
                int a = 100000 + (int) (Math.random() * 899998);
                Criteria ct = s.createCriteria(PassengerReservationDetails.class);
                ct.add(Restrictions.eq("pnrNo", a));
                List<PassengerReservationDetails> l = ct.list();
                if (l.size() == 0) {
                    pnr = a;
                    f = true;
                }

            } while (f == false);




            Date d = new Date(date);
            String day = String.format("%tA", d);

            Criteria cday = s.createCriteria(DayMaster.class);
            cday.add(Restrictions.eq("dayName", day));
            List<DayMaster> lday = cday.list();
            int dayid = 0;
            for (DayMaster dm : lday) {

                dayid = dm.getDayId();
            }

            Criteria c = s.createCriteria(FlightDayMap.class);
            c.add(Restrictions.eq("dayId", dayid));
            c.add(Restrictions.eq("flightNo", flightno));
            c.add(Restrictions.eq("enable", 1));
            List<FlightDayMap> fl = c.list();
            if (fl.size() == 0) {
                out.print("Their is no flight at given date from given source to given Destination");
            } else {

                Criteria cff = s.createCriteria(FlightFareMap.class);
                cff.add(Restrictions.eq("flightNo", flightno));
                cff.add(Restrictions.eq("classId", clas));
                List<FlightFareMap> lff = cff.list();

                for (FlightFareMap ffm : lff) {
                    flightfare = ffm.getFare();
                    no_of_seat = ffm.getNo_of_seats();
                }
                if (no_of_seat == 0) {
                    out.println("Their is no seat available in this class");
                } else {
                    PassengerReservationDetails pr = new PassengerReservationDetails();

                    pr.setClassId(clas);
                    pr.setDate(date);
                    pr.setDestination(destination);
                    pr.setEnable(1);
                    pr.setFlightNo(flightno);
                    pr.setName(name);
                    pr.setPassportId((String) session.getAttribute("id"));
                    pr.setPnrNo(pnr);
                    pr.setSource(source);

                    String seatno = classname + "(" + no_of_seat + ")";

                    pr.setSeatNo(seatno);

                    s.save(pr);
                    s.beginTransaction().commit();
        %>
            <table  class="bordered">
                <thead>
                <tr>
                    <th>PNR NO</th>
                    <th>PASSENGER NAME</th>
                    <th>Flight NO</th>
                    <th>Source</th>
                    <th>Destination</th>
                    <th>Seat No</th>
                </tr>
                </thead>
                <tr>
                    <td><%= pnr%> </td>
                    <td><%= name%> </td>
                    <td><%= flightno%> </td>
                    <td><%=sourcename%> </td>
                    <td><%= destinationename%> </td>
                    <td><%=seatno%> </td>
                </tr>
            </table>
        <hr>
        <h1>Please Pay : <%= flightfare%>  </h1>
        <%
                    Criteria cf = s.createCriteria(FlightFareMap.class);
                    cf.add(Restrictions.eq("flightNo", flightno));
                    cf.add(Restrictions.eq("classId", clas));
                    List<FlightFareMap> lf = cf.list();

                    for (FlightFareMap ffm : lff) {
                        no_of_seat = ffm.getNo_of_seats();
                        ffm.setNo_of_seats(no_of_seat - 1);
                        s.save(ffm);
                        s.beginTransaction().commit();
                    }
                }
            }
        %>

        <%} else {%>
    
        <h1> you are not login</h1>
        TO Use This page Login First<br>
        <a href="login.jsp"> LOGIN here</a>
    

    <% }%>
    </article>
    </section>
    </div>
    <%@include file="footer.html" %>
