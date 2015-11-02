<%@page import="org.raka.hibernate.entity.*"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.raka.hibernate.util.HBServices"%>
<%@page import="org.hibernate.Session"%>
<%
    int flightno = Integer.parseInt(request.getParameter("fn"));
    String cmpname = request.getParameter("companyname");
    String source = request.getParameter("s");
    String destination = request.getParameter("d");
    String arivaltime = request.getParameter("at");
    String departuretime = request.getParameter("dt");


    Session s = HBServices.getSession();

    Criteria cas = s.createCriteria(AerodrumMaster.class);
    cas.add(Restrictions.eq("city", source));
    List<AerodrumMaster> ls = cas.list();
    int sourceid = 0;
    for (AerodrumMaster cm : ls) {
        sourceid = cm.getAerodrumId();
    }
    out.print("<br>source" + sourceid);

    Criteria cad = s.createCriteria(AerodrumMaster.class);
    cad.add(Restrictions.eq("city", destination));
    List<AerodrumMaster> ld = cad.list();
    int destinationid = 0;
    for (AerodrumMaster cm : ld) {
        destinationid = cm.getAerodrumId();
    }
    out.print("<br>" + destinationid);

    Criteria cc = s.createCriteria(CompanyMaster.class);
    cc.add(Restrictions.eq("companyName", cmpname));
    List<CompanyMaster> lc = cc.list();
    int companyid = 0;
    for (CompanyMaster cm : lc) {
        companyid = cm.getCompanyId();

    }

    out.print("<br>" + companyid);
/*
Criteria critfdm = s.createCriteria(FlightDayMap.class);
    cc.add(Restrictions.eq("flightNo", flightno));
    List<FlightDayMap> critlist = critfdm.list();
    int dayid = 0;
    for (FlightDayMap fdm : critlist) {
        dayid = fdm.getDayId();
    }




    Criteria daycrit = s.createCriteria(DayMaster.class);
    daycrit.add(Restrictions.eq("dayId", dayid));
    List<DayMaster> daylist = daycrit.list();
    for (DayMaster daymaster : daylist) {
        daymaster.setDayName(dayname);
        //dayname=daymaster.getDayName();
        s.save(daymaster);
        s.beginTransaction().commit();
    }

*/




    
    Criteria cf = s.createCriteria(FlightMaster.class);
    cf.add(Restrictions.eq("flightNo", flightno));
    List<FlightMaster> lf = cf.list();
    for (FlightMaster fm : lf) {
        fm.setArrivalTime(arivaltime);
        fm.setDepartureTime(departuretime);
        fm.setSourceId(sourceid);
        fm.setDestinationId(destinationid);
        fm.setCompanyId(companyid);
        s.save(fm);
        s.beginTransaction().commit();

    }
 


%>
<jsp:forward page="flightscheduling.jsp" />