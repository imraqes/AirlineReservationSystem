
    <%@include file="header2.jsp"%>
    <link rel ="stylesheet" href = "main.css"/>
    <div id = "new_div">
    <section id = "main_section">
    <article>



<%@page errorPage="error_page.jsp" %>

<%@taglib  prefix="c" uri="http://java.sun.com/jstl/core" %>


<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.raka.hibernate.util.HBServices"%>
<%@page import="org.raka.hibernate.entity.*"%>

<%@page import="org.hibernate.Session"%>

<%
       if(session.getAttribute("id") != null)    
        {%>



<%
    int status=0;
    int flightno=Integer.parseInt(request.getParameter("flight no"));
    out.print(flightno);
 
   
    Session s=HBServices.getSession();
    Criteria c=s.createCriteria(FlightMaster.class);
    c.add(Restrictions.eq("flightNo",flightno));
   
    List <FlightMaster>ls=c.list();
   
  
    for(FlightMaster fm:ls)
    {
        
        Criteria fd=s.createCriteria(FlightDayMap.class);
        fd.add(Restrictions.eq("flightNo",flightno));
        List<FlightDayMap>dml=fd.list();
        
         status=fm.getEnable();
         if(status==1)
         {
             
             fm.setEnable(0);
             s.save(fm);
             s.beginTransaction().commit();
             for(FlightDayMap dm:dml)
             {
                 dm.setEnable(0);
                 s.save(dm);
                 s.beginTransaction().commit();
             }
             
         }
         else
         {
           fm.setEnable(1);
             s.save(fm);
             s.beginTransaction().commit();   
             
              for(FlightDayMap dm:dml)
             {
                 dm.setEnable(1);
                 s.save(dm);
                 s.beginTransaction().commit();
             }
         }
        
   
    }
   
    %>
    
       <jsp:forward page="enabledisable.jsp"/>
       
       
       
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
