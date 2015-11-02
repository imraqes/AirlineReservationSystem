
    <%@include file="header2.jsp"%>    



    <link rel ="stylesheet" href = "main.css"/>
    <div id = "new_div">
        <section id = "main_section">
            <article>




                <%@page errorPage="error_page.jsp" %>
                <%@page import="org.hibernate.Transaction"%>
                <%@page import="java.util.List"%>
                <%@page import="org.hibernate.criterion.Restrictions"%>
                <%@page import="org.hibernate.Criteria"%>
                <%@page import="org.raka.hibernate.util.HBServices"%>
                <%@page import="org.raka.hibernate.entity.*"%>
                <%@page import="org.hibernate.Session"%>


                <% if (session.getAttribute("id") != null) {%>

                <h1>Flight adding result:</h1>
                <hr>



                <b>Admin: </b><%=session.getAttribute("name")%>
                <%
                    String companynames[] = {"Indian Airlinse", "KingFisher", "Indigo", "AirIndia", "Deccan"};
                    String aerodrumname[] = {"Kochi", "Jaipur", "Delhi", "Nagpur", "Guwahati", "Allahabad", "Mumbai", "Chennai", "Srinagar", "Jammu", "Kolkata", "Ranchi", "Raipur", "Bengleru", "Port", " Blair", "Patna", "Agra", "Lucknow"};
                    String days[] = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"};
                    String classes[] = {"First Class", "Business Class", "Icconomic Class"};

                %> 
                <%


                    int flightno = Integer.parseInt(request.getParameter("flightno"));
                    String companyname = request.getParameter("companyname");
                    String source = request.getParameter("source");
                    String destination = request.getParameter("destination");
                    String arivaltime = request.getParameter("arivaltime");
                    String departuretime = request.getParameter("departuretime");
                    String day[] = request.getParameterValues("days");


                    // out.print(flightno+"  "+companyname+"  "+source+"  "+destination+" "+arivaltime+"  "+departuretime);

                    Session s = HBServices.getSession();

                    Criteria c = s.createCriteria(FlightMaster.class);
                    c.add(Restrictions.eq("flightNo", flightno));
                    List<FlightMaster> fl = c.list();
                    if (fl.size() != 0) {
                        out.print("<h1>This flight no is already exit:Give Another FLIGHTNO<h1>");
                    } else {

                        FlightMaster fm = new FlightMaster();

                        fm.setFlightNo(flightno);
                        fm.setEnable(1);
                        fm.setDepartureTime(departuretime);
                        fm.setArrivalTime(arivaltime);






                        Criteria cas = s.createCriteria(AerodrumMaster.class);
                        cas.add(Restrictions.eq("city", source));
                        List<AerodrumMaster> ls = cas.list();
                        int sourceid = 0;
                        for (AerodrumMaster amc : ls) {
                            sourceid = amc.getAerodrumId();
                        }
                        fm.setSourceId(sourceid);

                        Criteria cad = s.createCriteria(AerodrumMaster.class);
                        cad.add(Restrictions.eq("city", destination));
                        List<AerodrumMaster> ld = cad.list();
                        int destinationid = 0;
                        for (AerodrumMaster amc : ld) {
                            destinationid = amc.getAerodrumId();
                        }
                        fm.setDestinationId(destinationid);


                        Criteria com = s.createCriteria(CompanyMaster.class);
                        com.add(Restrictions.eq("companyName", companyname));
                        List<CompanyMaster> lm = com.list();
                        int companyid = 0;
                        for (CompanyMaster amc : lm) {
                            companyid = amc.getCompanyId();
                        }

                        fm.setCompanyId(companyid);











                        String name[] = {"first", "second", "third"};
                        ClassMaster clm[] = new ClassMaster[classes.length];


                        FlightFareMap ffm[] = new FlightFareMap[classes.length];
                        for (int i = 0; i < classes.length; i++) {


                            ffm[i] = new FlightFareMap();

                            ffm[i].setNo_of_seats(10);
                            ffm[i].setClassId(i + 1);
                            ffm[i].setFlightNo(flightno);

                            String st = name[i];

                            int fare = Integer.parseInt(request.getParameter(st));

                            ffm[i].setFare(fare);
                            s.save(ffm[i]);

                        }




            //String day[]=request.getParameterValues("days");
                        int selecteddayid[] = new int[days.length];
                        for (int i = 0; i < day.length; i++) {
                            Criteria cd = s.createCriteria(DayMaster.class);
                            cd.add(Restrictions.eq("dayName", day[i]));
                            List<DayMaster> ldd = cd.list();

                            for (DayMaster ddm : ldd) {
                                selecteddayid[i] = ddm.getDayId();
                            }

                        }

                        FlightDayMap fdm[] = new FlightDayMap[day.length];
                        for (int i = 0; i < day.length; i++) {
                            fdm[i] = new FlightDayMap();
                            fdm[i].setEnable(1);
                            fdm[i].setFlightNo(flightno);
                            fdm[i].setDayId(selecteddayid[i]);
                            s.save(fdm[i]);

                        }

                        s.save(fm);
                        s.beginTransaction().commit();
                %>

                <h1>1 Flight Is Added </h1>

                <%}
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
