
    <%@include file="header2.jsp"%>
    
    
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
input[type="time"] {
	padding: 10px;
	width: 37.5%;
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


                <%@page errorPage="error_page.jsp" %>
                <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
                <%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>

                <%
    if (session.getAttribute("id") != null) {%>


                <%
                    String companynames[] = {"Indian Airlinse", "KingFisher", "Indigo", "AirIndia", "Deccan"};
                    String aerodrumname[] = {"Kochi", "Jaipur", "Delhi", "Nagpur", "Guwahati", "Allahabad", "Mumbai", "Chennai", "Srinagar", "Jammu", "Kolkata", "Ranchi", "Raipur", "Bengleru", "Port", " Blair", "Patna", "Agra", "Lucknow"};
                    String days[] = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"};
                    String classes[] = {"First Class", "Business Class", "Icconomic Class"};

                %>
                <h1>ADD NEW FLIGHT</h1><br>
                <b>Admin: </b><%=session.getAttribute("name")%> 
<br><br>

       <form action="addnewflight_ristrictions.jsp" method="post">
Flight no    :<input type="text" name="flightno" placeholder="Enter new flight no" />  <br>
Company name  :<select name="companyname">
                   <option value="">----Select---</option>
                            <% for (int i = 0; i < companynames.length; i++) {%>
                           <option value="<%=companynames[i]%>"><%=companynames[i]%></option>
                            <%}%>
                       </select><br>
Flight Source  :<select name="source">
                   <option value="">----Select---</option>
                            <% for (int i = 0; i < aerodrumname.length; i++) {%>
                           <option value="<%=aerodrumname[i]%>"><%=aerodrumname[i]%></option>
                            <%}%>
                       </select><br>
Flight Destination:<select name="destination">
                   <option value="">----Select---</option>
                            <% for (int i = 0; i < aerodrumname.length; i++) {%>
                           <option value="<%=aerodrumname[i]%>"><%=aerodrumname[i]%></option>
                            <%}%>
                       </select>
              <br>
Arrival time (i.e. 10:20 PM):<input type="time" name="arivaltime" >  <br>
Departure time (i.e. 11:20 PM) :<input type="time" name="departuretime">  <br>
<h3>Select the days which which join this Flight<h3><br>
Days:<select name="days" multiple="true">
                   <option value="none">----Select---</option>
                                    <% for (int i = 0; i < days.length; i++) {%>
                           <option value="<%=days[i]%>"><%=days[i]%></option>
                                    <%}%>
                       </select>
                       <br>
 <h4>ADD Fare To Different classes<h4> 
        
First class   :<input type="text" name="first" placeholder="First class fare"/>  <br>
Business class:<input type="text" name="second" placeholder="Business class fare"/><br>
Economic class:<input type="text" name="third" placeholder="Economic class fare"/><br>
        
       


<input type="submit" value="SUBMIT"/>             <input type="reset" value="RESET">
                 
                 
   
        </form>




                                        <%} else {%>

                                        <h1> <you are not login></h1>
                                                    TO Use This page Login First<br>
                                                    <a href="login.jsp"> LOGIN here</a>


                                                    <% }%>


                                                    </article>
                                                    </section>
                                                    </div>
                                                    <%@include file="footer.html" %>
