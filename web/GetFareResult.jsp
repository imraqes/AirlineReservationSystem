

<%@include file="header.jsp"%>    


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

<%@page import="org.raka.hibernate.util.HBServices"%>
<%@page import="org.raka.hibernate.entity.*"%>
<%@page errorPage="error_page.jsp" %>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="org.hibernate.Criteria"%>

<%@page import="org.hibernate.Session"%>
<h1> GET Fare Result</h1>

<hr>

<%
//int flightno=Integer.parseInt(request.getParameter("flightno"));

    String class1 = request.getParameter("class");
    String source = request.getParameter("soure");
    String destination = request.getParameter("destinition");

//out.print(class1 + flightno +source +destination);

    Session s = HBServices.getSession();
    Criteria cc = s.createCriteria(ClassMaster.class);
    cc.add(Restrictions.eq("className", class1));
    List<ClassMaster> l = cc.list();
    int classid = 0;
    for (ClassMaster cm : l) {
        classid = cm.getClassId();
    }
//out.print(classid);


    Criteria cas = s.createCriteria(AerodrumMaster.class);
    cas.add(Restrictions.eq("city", source));
    List<AerodrumMaster> ls = cas.list();
    int sourceid = 0;
    for (AerodrumMaster cm : ls) {
        sourceid = cm.getAerodrumId();
    }
//out.print("<br />source"+sourceid);

    Criteria cad = s.createCriteria(AerodrumMaster.class);
    cad.add(Restrictions.eq("city", destination));
    List<AerodrumMaster> ld = cad.list();
    int destinationid = 0;
    for (AerodrumMaster cm : ld) {
        destinationid = cm.getAerodrumId();
    }





    Criteria cf = s.createCriteria(FlightMaster.class);


    cf.add(Restrictions.eq("sourceId", sourceid));
    cf.add(Restrictions.eq("destinationId", destinationid));
    cf.add(Restrictions.eq("enable", 1));
    List<FlightMaster> lf = cf.list();
    if (lf.size() == 0) {
        out.print("Their is no flight Available between the given stations");

    } else {
        int lsize = lf.size();
        int i = 0;
        int flightno[] = new int[lsize];
        for (FlightMaster fm : lf) {

            flightno[i] = fm.getFlightNo();
            i++;

        }%>
    <table class="bordered">
        <thead>
        <tr>
        
            <th>Flight_NO</th>
            <th>source</th>

            <th>Destination</th>
            <th>class</th>
            <th>fare</th>
            
        </tr>
        </thead>

        <% int no_of_seat = 0;
            FlightMaster fm[] = new FlightMaster[flightno.length];
            int flightfare = 0;
            for (int k = 0; k < flightno.length; k++) {
                Criteria cff = s.createCriteria(FlightFareMap.class);





                cff.add(Restrictions.eq("flightNo", flightno[k]));
                cff.add(Restrictions.eq("classId", classid));
                List<FlightFareMap> lff = cff.list();

                for (FlightFareMap ffm : lff) {
                    flightfare = ffm.getFare();
                    no_of_seat = ffm.getNo_of_seats();
                }%> 

        <tr>
            <td><%= flightno[k]%></td>
            <td><%= source%></td>
            <td><%=destination%></td>
            <td><%= class1%></td>
            <td><%=flightfare%></td>
        </tr>

        <%}%>
    </table>

<%}%>



    </article>
    </section>
    </div>
    <%@include file="footer.html" %>
