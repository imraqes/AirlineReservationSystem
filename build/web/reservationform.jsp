
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
            <%@page errorPage="error_page.jsp" %>
            <% if (session.getAttribute("id") != null) {%>
            <h1>Reservation form</h1>
            <br>
            <b>User: </b><%=session.getAttribute("name")%>
            <br><br>

            <form action="reservation_form_res.jsp" method="post">


                <b>Flight No.             :</b><input type="text" name="flightno" placeholder="Flight no"/><br>
                
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
