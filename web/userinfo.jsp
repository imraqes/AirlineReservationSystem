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


    <%@include file="header2.jsp"%>
    <link rel ="stylesheet" href = "main.css"/>
    <div id = "new_div">
        <section id = "main_section">
            <article>
                <%@page errorPage="error_page.jsp" %>
                <% if (session.getAttribute("id") != null) {%>
                <h1> ADMIN PANEL</h1><br><br>
                <b>Admin:</b><%=session.getAttribute("name")%><br><br>
                
                Enter User name to get User info<br><br>
                <form action="userinfo_result.jsp" method="post">
                    User Name :<br><br><input type="text" name="name" placeholder="username"/><br><br>
                    <input type="submit" value="Get INFO"/>
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
