<%@page errorPage="error_page.jsp" %> 



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

    <%@include file="header.jsp" %>
    <link rel ="stylesheet" href = "main.css"/>
    <%@page import="org.raka.hibernate.util.HBServices"%>
    <%@page import="org.hibernate.Session"%>
    <%@page import="java.util.List"%>
    <%@page import="org.hibernate.criterion.Restrictions"%>
    <%@page import="org.hibernate.Criteria"%>
    <%@page import="org.raka.hibernate.entity.*"%>
    <div id = "new_div">
        <section id = "main_section">
            <article>
                <h1>Search result</h1>
                <%@page import="java.util.Date"%>
                <%
                    Date d = new Date(request.getParameter("date"));
                    String day = String.format("%tA", d);
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
                    Criteria cad = s.createCriteria(AerodrumMaster.class);
                    cad.add(Restrictions.eq("city", destination));
                    List<AerodrumMaster> ld = cad.list();
                    int destinationid = 0;
                    for (AerodrumMaster cm : ld) {
                        destinationid = cm.getAerodrumId();
                    }
                    Criteria cday = s.createCriteria(DayMaster.class);
                    cday.add(Restrictions.eq("dayName", day));
                    List<DayMaster> lday = cday.list();
                    int dayid = 0;
                    for (DayMaster dm : lday) {
                        dayid = dm.getDayId();
                    }
                    Criteria cf = s.createCriteria(FlightMaster.class);
                    cf.add(Restrictions.eq("sourceId", sourceid));
                    cf.add(Restrictions.eq("destinationId", destinationid));
                    cf.add(Restrictions.eq("enable", 1));
                    List<FlightMaster> lf = cf.list();
                    int lsize = lf.size();
                    int i = 0;
                    int flightno[] = new int[lsize];
                    for (FlightMaster fm : lf) {
                        flightno[i] = fm.getFlightNo();
                        i++;
                    }
                    int k = 0;
                    int dayflights[] = new int[i];
                    Criteria fdm = s.createCriteria(FlightDayMap.class);
                    fdm.add(Restrictions.eq("dayId", dayid));
                    fdm.add(Restrictions.eq("enable", 1));
                    List<FlightDayMap> fl = fdm.list();
                    for (FlightDayMap fd : fl) {
                        for (int fn : flightno) {
                            if (fn == fd.getFlightNo()) {
                                dayflights[k] = fd.getFlightNo();
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
                        }
                    }
                %><br>
                <table class="bordered">
                    <thead>
                    <tr>
                    <th>Flight N0.</th>
                    <th>Available seats</th>
                    </tr>
                    </thead>
                    <% for (int l = 0; l < dayflights.length; l++) {%>    
                    <tr>
                    <td> <%= dayflights[l]%> </td>
                    <td>
                        <table class="bordered">
                            <thead>
                            <tr>
                            <th>First Class</th>
                            <th>Business class</th>
                            <th>Economic class</th>
                            </tr>
                            </thead>
                            <tr>
                            <td> <%= flightno_seat[l][0]%> </td>
                            <td> <%= flightno_seat[l][1]%>  </td>
                            <td> <%= flightno_seat[l][2]%>  </td>
                            </tr>
                        </table>
                    </td>
                    </tr>
                    <%}%>
                </table>
            </article>
        </section>
    </div>
    <%@include file="footer.html" %>
