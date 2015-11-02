
<%@include file="header2.jsp" %>
<link rel ="stylesheet" href = "main.css"/>

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


<div id = "new_div">
  <section id = "main_section">
        <article>
            <header>
                <hgroup>
                    <h1 align="center">Update this form</h1>
                 
                </hgroup>
            </header>
<%
    String aerodrum[]={"Kochi","Jaipur","Delhi","Nagpur","Guwahati","Allahabad","Mumbai","Chennai","Srinagar","Jammu","Kolkata","Ranchi","Raipur","Bengleru","Port"," Blair","Patna","Agra","Lucknow"};
   String companynames[]={"Indian Airlinse","KingFisher","Indigo","AirIndia","Deccan"} ;
   //String days[] = {"Sunday", "Monday", "Tuesday", "Wedsnday", "Thursday", "Friday", "Saturday"};
    int flightno=Integer.parseInt(request.getParameter("fn"));
    //out.print(flightno);
    String cmpname=request.getParameter("c");
    //out.print("<br/>"+cmpname);
    String source=request.getParameter("s");
   // out.print("<br/>"+source);
    String destination=request.getParameter("d");
   // out.print("<br/>"+destination);
    String arivaltime=request.getParameter("at");
   // out.print("<br/>"+arivaltime);
    String departuretime=request.getParameter("dt");
   // out.print("<br/>"+departuretime);
    //String dayname = request.getParameter("dn");
    
    %>
    
 <pre>
<form action="flightschedulation.jsp" method="post" >
Flight no       :<input type="text" readonly="true" value="<%=flightno  %>" name="fn"><br/>

Company name    :<select name="companyname" >
                   <option value="<%= cmpname %>"><%= cmpname %></option>
               <% for(int i=0;i<companynames.length;i++)
               {%>
                           <option value="<%=companynames[i]%>"><%=companynames[i]%></option>
                  <%}%>
                       </select><br>
Source          :<select name="s" >
               <option value="<%=source  %>"><%=source  %></option>
               <% for(int i=0;i<aerodrum.length;i++)
               {%>
                <option value="<%=aerodrum[i]%>"><%=aerodrum[i]%></option>
                <%}%>
                </select><br>
Destination     :<select name="d" >
               <option value="<%=destination  %>"><%=destination  %></option>
               <% for(int i=0;i<aerodrum.length;i++)
               {%>
                <option value="<%=aerodrum[i]%>"><%=aerodrum[i]%></option>
                <%}%>
                </select>
                    
Arrival time     :<input type="text" value="<%= arivaltime %>" name="at"><br/>
Departure time  :<input type="text" value="<%= departuretime %>" name="dt"><br/>

<%-- Day             :<select name="dn">
    <option value="<%=dayname%>"><%=dayname%></option>
     <% for(int i=0;i<days.length;i++)
               {%>
                <option value="<%=days[i]%>"><%=days[i]%></option>
                <%}%>
                 </select><br>--%>
<input type="submit" value="update" />
</form>
</pre>
    
    </article>
    </section>
</div>
                       
<%@include file="footer.html" %>
