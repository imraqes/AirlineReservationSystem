<%@page errorPage="error_page.jsp" %>

<%
       if(session.getAttribute("id") != null)    
        {%>
            
            
<center><h1>USER PANEL</h1></center>

<hr />
<center><b>User: </b><%=session.getAttribute("name")%> </center>
<hr/>
<a href="showallavailableflight.jsp">All available flights</a><br/><br/><br/>
<a href="SearchFlight.jsp">SEARCH Flights</a> <br /><br/><br/>
<a href="GetStatus.jsp">Get Flight Status</a> <br /><br/><br/>
<a href="GetFare.jsp">Get Fare</a> <br /><br/><br/>
<a href="pnrstatusform.jsp">PNR STATUS</a><br /><br/><br/>
<a href="reservation form.jsp">Ticket Reservation</a> <br /><br/><br/>
<a href="cancilationform.jsp">cancellation</a><br /><br/><br/>
<a href="bookinghistery.jsp">Booking History</a><br /><br/><br/>
<a href="logout.jsp">LOG OUT</a>

<%}
   else
   {%>
     < center> 
 <h1> <you are not login><h1>
             TO Use This page Login First<br/>
              <a href="login.jsp"> LOGIN here</a>
   </center>
   
  <% }%>