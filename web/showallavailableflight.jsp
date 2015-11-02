

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
    <%@include file="header.jsp"%>
    <link rel ="stylesheet" href = "main.css"/>
    <div id = "new_div">
        <section id = "main_section">
            <article>
                <%@page errorPage="error_page.jsp" %>
                <%@page import="java.util.List"%>
                <%@page import="org.hibernate.criterion.Restrictions"%>
                <%@page import="org.hibernate.Criteria"%>
                <%@page import="org.raka.hibernate.util.HBServices"%>
                <%@page import="org.raka.hibernate.entity.*"%>
                <%@page import="org.hibernate.Session"%>
                <%
                    Session s = HBServices.getSession();
                    String Companyname = null;
                    String source = null;
                    String destination = null;
                    int dayId=0;
                    String dayName=null;
                    int fnum = 0;
                    Criteria cf = s.createCriteria(FlightMaster.class);
                    cf.add(Restrictions.eq("enable", 1));
                    List<FlightMaster> lf = cf.list();
                    if (lf.size() == 0) {
                        out.print("Their is no flight availabl");
                    } else {
                %>
                <h1>ALL Available Flights</h1>
                <table  class="bordered">
                    <thead>
                    <tr>
                        <th>Flight NO</th>
                        <th>Company Name</th>
                        <th>Source</th>
                        <th>Destination</th>
                        <th>Day</th>
                    </tr>
                    </thead>
                    <%for (FlightMaster fm : lf) {
                            int companyid = fm.getCompanyId();
                            Criteria cmp = s.createCriteria(CompanyMaster.class);
                            cmp.add(Restrictions.eq("companyId", companyid));
                            List<CompanyMaster> cl = cmp.list();
                            for (CompanyMaster cm : cl) {
                                Companyname = cm.getCompanyName();
                            }
                            int sourceid = fm.getSourceId();
                            Criteria cs = s.createCriteria(AerodrumMaster.class);
                            cs.add(Restrictions.eq("aerodrumId", sourceid));
                            List<AerodrumMaster> las = cs.list();
                            for (AerodrumMaster as : las) {
                                source = as.getCity();
                            }
                            int destinationid = fm.getDestinationId();
                            Criteria cd = s.createCriteria(AerodrumMaster.class);
                            cd.add(Restrictions.eq("aerodrumId", destinationid));
                            List<AerodrumMaster> lad = cd.list();
                            for (AerodrumMaster ad : lad) {
                                destination = ad.getCity();
                            }
                            fnum = fm.getFlightNo();
                            
                            Criteria criteria = s.createCriteria(FlightDayMap.class);
                            criteria.add(Restrictions.eq("flightNo", fnum));
                            List<FlightDayMap> ladu = criteria.list();
                            for (FlightDayMap fdm : ladu) {
                                dayId = fdm.getDayId();
                            }
                            
                            
                            
                            Criteria criteria1 = s.createCriteria(DayMaster.class);
                            criteria1.add(Restrictions.eq("dayId", dayId));
                            List<DayMaster> ladu1 = criteria1.list();
                            for (DayMaster fdm1 : ladu1) {
                                dayName = fdm1.getDayName();
                            }
                            
                    %>
                    <tr>
                        <td> <%= fnum%> </td>
                        <td> <%= Companyname%>  </td>
                        <td><%= source%></td>
                        <td><%=  destination%>  </td>
                        <td><%=  dayName%>  </td>
                    </tr>
                    <%}%>
                </table>
                <%}%>
            </article>
        </section>
    </div>
    <%@include file="footer.html" %>
