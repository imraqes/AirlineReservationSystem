
    <%@page import="java.util.List"%>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="org.raka.hibernate.entity.FlightMaster"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.raka.hibernate.entity.AerodrumMaster"%>
<%@page import="org.raka.hibernate.util.HBServices"%>
<%@page import="org.hibernate.Session"%>
<%@include file="header_reservation.jsp"%>
    
    
    <style>
input[type="text"] {
	padding: 10px;
	width: 40%;
	color: #9198A3;
	font-size: 0.8125em;
	background: #fff;
	outline: none;
	display: block;
	border: 1px solid #eee;
}

select {
	padding: 10px;
	width: 40%;
	color: #9198A3;
	font-size: 0.8125em;
	background: #fff;
	outline: none;
	display: block;
	border: 1px solid #eee;
}

input[type="submit"] {
	display: inline-block;
	padding: 13px 25px;
	background: #fb4d01;
	color: #FFF;
	font-size: 1em;
	line-height: 18px;
	text-transform: uppercase;
	border: none;
	outline: none;
	transition: 0.2s;
	-webkit-transition: 0.2s;
	-moz-transition: 0.2s;
	-o-transition: 0.2s;
}
input[type="submit"]:hover{
	background:#26d2fc;	
}
input[type="reset"] {
	display: inline-block;
	padding: 13px 25px;
	background: #fb4d01;
	color: #FFF;
	font-size: 1em;
	line-height: 18px;
	text-transform: uppercase;
	border: none;
	outline: none;
	transition: 0.2s;
	-webkit-transition: 0.2s;
	-moz-transition: 0.2s;
	-o-transition: 0.2s;
}
input[type="reset"]:hover{
	background:#26d2fc;	
}

</style>

    <link rel ="stylesheet" href = "main.css"/>
    <div id = "new_div">
        <section id = "main_section">
            <article>
                
                <% if (session.getAttribute("id") != null) {%>
                <h1>Reservation form</h1>
                <br>
               <b>User: </b><%=session.getAttribute("name")%>
                <br><br>
           <%
                    int source = 0;
                    int destination = 0;
            int x = Integer.parseInt(request.getParameter("flightno"));
           Session s = HBServices.getSession();
           Criteria cas = s.createCriteria(FlightMaster.class);
           cas.add(Restrictions.eq("flightNo", x));
           
           List<FlightMaster> ls = cas.list();
           for (FlightMaster fm : ls) {
                source = fm.getSourceId();
                destination = fm.getDestinationId();
            }
           
           Criteria cass = s.createCriteria(AerodrumMaster.class);
            cass.add(Restrictions.eq("aerodrumId", source));
            List<AerodrumMaster> lss = cass.list();
            String sourcename = null;
            for (AerodrumMaster cms : lss) {
                sourcename = cms.getCity();
            }


            Criteria cad = s.createCriteria(AerodrumMaster.class);
            cad.add(Restrictions.eq("aerodrumId", destination));
            List<AerodrumMaster> ld = cad.list();
            String destinationename = null;
            for (AerodrumMaster cm : ld) {
                destinationename = cm.getCity();
            }
           
           %>
<form action="reservation_ristrictions.jsp" method="post">
<b>Passenger Name         :</b><input type="text" name="name" placeholder="Passenger name"/><br>
<b>Passport Id            :</b><input type="text" name="passportid" value="<%=(String) session.getAttribute("id")%>" readonly="true"/> <br>
<b>Flight No.             :</b><input type="text" name="flightno" value="<%=x%>" placeholder="Flight no"/><br>
<b>Date of Journey        :</b><input type="text" name="date" placeholder="Date of journey (i.e. MM/DD/YYYY)"/><br>
<b>CLASS                  :</b><select name="class">
                <option value="">---select---</option>
               <option value="1">First Class</option>
               <option value="2">Business Class</option>
               <option value="3">Economic Class</option>
               </select><br>
<b>Source                :</b><select name="soure">
               <option value="none">---select---</option>
                            
                <option value="1"><%=sourcename%></option>
                            
               </select><br>
<b>Destination           :</b><select name="destinition">
               <option value="none">---select---</option>
                            
                <option value="1"><%=destinationename%></option>
                            
                   </select><br>
                   <input type="submit" value="SUBMIT"/>         <input type="reset" value="RESET"/>
      </form> 
           

                <%} else {%>
                <h1> you are not login</h1>
                TO Use This page Login First<br>
                <a href="login.jsp"> LOGIN here</a>
                <% }%>
            </article>
        </section>
    </div>
    <%@include file="footer.html" %>
