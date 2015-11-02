
<%@include file="header.jsp" %>
<link rel ="stylesheet" href = "main.css"/>
    <div id = "new_div">
    <section id = "main_section">
    <article>



<%@page errorPage="error_page.jsp" %>
<%@page import="org.raka.hibernate.util.HBServices"%>
<%@page import="org.raka.hibernate.entity.*"%>
<%@page import="java.util.TreeSet"%>
<%@page import="java.util.SortedSet"%>

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



<h1>Search Flight Panel</h1>
<br>


<%! String aerodrum[] = {"Kochi", "Jaipur", "Delhi", "Nagpur", "Guwahati", "Allahabad", "Mumbai", "Chennai", "Srinagar", "Jammu", "Kolkata", "Ranchi", "Raipur", "Bengleru", "Port", " Blair", "Patna", "Agra", "Lucknow"};
%>


    <form action="searchingristrictions.jsp" method="post">
        
        <b>Date</b>       <br>     <input type="text" name="date" placeholder="Enter date of journey"><br>
<b>source    </b>   <br>   <select name="soure">
               <option value="none">----------select-----------</option>
                <% for (int i = 0; i < aerodrum.length; i++) {%>
                <option value="<%=aerodrum[i]%>"><%=aerodrum[i]%></option>
                <%}%>
               </select><br>
<b>Destination</b> <br>    <select name="destinition">
               <option value="none">-----------select----------</option>
                <% for (int i = 0; i < aerodrum.length; i++) {%>
                <option value="<%=aerodrum[i]%>"><%=aerodrum[i]%></option>
                <%}%>
               </select><br>
          <input type="submit" value="Search Flight">         <input type="reset" name="RESET">     
        
    </form>

               
               


    </article>
    </section>
    </div>
    <%@include file="footer.html" %>
