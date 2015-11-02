
<%@page import="org.hibernate.Session"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.raka.hibernate.util.HBServices"%>
<%@page import="org.raka.hibernate.entity.*"%>
<h1>Search result</h1>
<hr />

<%@page import="java.util.Date"%>
<%
    Date d = new Date(request.getParameter("date"));
    String day = String.format("%tA", d);
    out.print(day);
    String source = request.getParameter("soure");
    String destination = request.getParameter("destinition");

    Session s = HBServices.getSession();

    Criteria cas = s.createCriteria(AerodrumMaster.class);
    cas.add(Restrictions.eq("city", source));
    List<AerodrumMaster> ls = cas.list();
    int sourceid = 0;
    for (AerodrumMaster cm : ls) {
        sourceid = cm.getAerodrumId();
    }
    out.print("<br />source" + sourceid);


    Criteria cad = s.createCriteria(AerodrumMaster.class);
    cad.add(Restrictions.eq("city", destination));
    List<AerodrumMaster> ld = cad.list();
    int destinationid = 0;
    for (AerodrumMaster cm : ld) {
        destinationid = cm.getAerodrumId();
    }
    out.print("<br />source" + destinationid);

    Criteria cday = s.createCriteria(DayMaster.class);
    cday.add(Restrictions.eq("dayName", day));
    List<DayMaster> lday = cday.list();
    int dayid = 0;
    for (DayMaster dm : lday) {

        dayid = dm.getDayId();
    }
    out.print("<br />day" + dayid);

    Criteria cf = s.createCriteria(FlightMaster.class);


    cf.add(Restrictions.eq("sourceId", sourceid));
    cf.add(Restrictions.eq("destinationId", destinationid));
    List<FlightMaster> lf = cf.list();
    int lsize = lf.size();
    int i = 0;
    int flightno[] = new int[lsize];
    for (FlightMaster fm : lf) {

        flightno[i] = fm.getFlightNo();
        out.print("<br />" + flightno[i]);
        i++;


    }



    int dayflights[] = new int[i];
    Criteria fdm = s.createCriteria(FlightDayMap.class);
    fdm.add(Restrictions.eq("dayId", dayid));
    List<FlightDayMap> fl = fdm.list();
    int k = 0;
    for (FlightDayMap fd : fl) {
        for (int fn : flightno) {
            if (fn == fd.getFlightNo()) {
                dayflights[k] = fd.getFlightNo();
                out.print("<br />" + dayflights[k]);
                k++;
            }
        }

    }
    int flightno_seat[][] = new int[dayflights.length][3];
    for (int x = 0; x < dayflights.length; x++) {



        for (int y = 0; y < 3; y++) {
            Criteria ffm = s.createCriteria(FlightFareMap.class);
            ffm.add(Restrictions.eq("flightNo", dayflights[x]));
            ffm.add(Restrictions.eq("classId", y + 1));
            List<FlightFareMap> ffl = ffm.list();
            for (FlightFareMap fm : ffl) {
                flightno_seat[x][y] = fm.getNo_of_seats();
            }
            out.print(flightno_seat[x][y]);
        }
        out.print(" <br/>   ");

    }

%>