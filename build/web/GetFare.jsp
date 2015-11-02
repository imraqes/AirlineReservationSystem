
<%@include file="header.jsp"%>

<style>
    select {
	padding: 10px;
	width: 100%;
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




<h1>Get fare panel</h1>
        
        
<%! String aerodrum[] = {"Kochi", "Jaipur", "Delhi", "Nagpur", "Guwahati", "Allahabad", "Mumbai", "Chennai", "Srinagar", "Jammu", "Kolkata", "Ranchi", "Raipur", "Bengleru", "Port", " Blair", "Patna", "Agra", "Lucknow"};
    int flightno[] = {1001, 1002, 1003, 1004, 1005};
%>

    <table>
        <tr>
            <td>
                <form action="getfareristrictions.jsp" method="post">
                    


     <b>Class  : </b>  <select name="class">
                <option value="none">---select---</option>
               <option value="First Class">First Class</option>
               <option value="Business Class">Business Class</option>
               <option value="Icconomic Class">Economic Class</option>
               </select>

<br>
     <b>source :</b>  <select name="soure">
               <option value="none">---select---</option>
                            <% for (int i = 0; i < aerodrum.length; i++) {%>
                <option value="<%=aerodrum[i]%>"><%=aerodrum[i]%></option>
                            <%}%>
               </select><br />

 
  <b> Destination : </b><select name="destinition">
               <option value="none">---select---</option>
                            <% for (int i = 0; i < aerodrum.length; i++) {%>
                <option value="<%=aerodrum[i]%>"><%=aerodrum[i]%></option>
                            <%}%>
               </select><br />


          <input type="submit" name="Submit">         <input type="reset" name="RESET">
                    
                </form>
            </td>

            <td>
            </td>
        </tr>
    </table>

               
               
               
                   </article>
    </section>
    </div>
    <%@include file="footer.html" %>
