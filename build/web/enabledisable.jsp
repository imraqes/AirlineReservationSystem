
    <%@include file="header2.jsp"%>
    <link rel ="stylesheet" href = "main.css"/>
    <div id = "new_div">
    <section id = "main_section">
    <article>


<%@page errorPage="error_page.jsp" %>





<style>
input[type="text"] {
	padding: 10px;
	width: 37.5%;
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
</style>





<%@page import="java.util.List"%>
<%@page import="org.hibernate.criterion.Restrictions"%>

<%@page import="org.hibernate.Criteria"%>
<%@page import="org.raka.hibernate.util.HBServices"%>
<%@page import="org.raka.hibernate.entity.*"%>
<%@page import="org.hibernate.Session"%>
  
<%
       if(session.getAttribute("id") != null)    
        {%>



        <b>User:</b> <%=session.getAttribute("name")%>
  <br><br>
        <h1>ALL Available Flights</h1>
        <br><br>
        <table border=1px,blue,solid width=50%>
            <tr>
                <td>Flight NO</td>
                <td>Company Name</td>
                <td>Source</td>
                <td>Destination</td>
                <td>STATUS</td>
            <tr/>

<%   
    String Companyname=null;String source=null;String destination=null;String st=null;
    Session s=HBServices.getSession();
    Criteria c=s.createCriteria(FlightMaster.class);
    //c.add(Restrictions.eq("classId",1));
    List <FlightMaster>ls=c.list();
    for(FlightMaster fm:ls)
    {
       int companyid=fm.getCompanyId();
       
       Criteria cmp=s.createCriteria(CompanyMaster.class);
         cmp.add(Restrictions.eq("companyId",companyid));
         List<CompanyMaster> cl=cmp.list();
         
         for(CompanyMaster cm:cl )
            Companyname=cm.getCompanyName();
         
        int sourceid=fm.getSourceId();
         Criteria cs=s.createCriteria(AerodrumMaster.class);
         cs.add(Restrictions.eq("aerodrumId",sourceid));
         List<AerodrumMaster> las=cs.list();
         for(AerodrumMaster as:las)
           source=as.getCity();
         
                 int destinationid=fm.getDestinationId();
         Criteria cd=s.createCriteria(AerodrumMaster.class);
         cd.add(Restrictions.eq("aerodrumId",destinationid));
         List<AerodrumMaster> lad=cd.list();
         for(AerodrumMaster ad:lad)
           destination=ad.getCity();
         
         int status=fm.getEnable();
         if(status==1)
           st="ENABLED";
         else
             st="DISABLED";
         
         %>
         
         
         
   
    <tr>
        <td> <%= fm.getFlightNo()   %> </td>
        <td> <%= Companyname  %>  </td>
        <td><%= source  %></td>
        <td><%=  destination    %>  </td>
        <td><%= st%>
    
    <tr/>
    <%}%>
    </table>
 
    
    <br><br><br>
    
    <script>
        function ctd()
        {
            var cnf=confirm("Are yoy sure to change the status");
            if(cnf==true)
            {
                return true;
            }
            else
                return false;
        }
        
        </script>
    
    
  
    <h3>Enter the flight number To change the Flight status</h3>
    <br>
    <form action="enabledisable_ristriction.jsp" method="post">
        <input type=text name="flight no" placeholder="Enter flight no"/><br/><br/>
      <input type="submit" value="CLICK TO Change THE STATUS OF FLIGHT" onclick="return ctd()" />
        
        
    </form>
    
   
   
  
<%}
   else
   {%>
  
 <h1> you are not login</h1>
             TO Use This page Login First<br/>
              <a href="login.jsp"> LOGIN here</a>
  
   
  <% }%>

  
  
  </article>
    </section>
    </div>
    <%@include file="footer.html" %>
