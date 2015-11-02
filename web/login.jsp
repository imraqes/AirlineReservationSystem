

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
input[type="password"] {
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
<%@include file="header.jsp"%>



    <link rel ="stylesheet" href = "main.css"/>
    <div id = "new_div">
    <section id = "main_section">
    <article>
<%@page errorPage="error_page.jsp" %>
<h1>LOG-IN </h1>

<br>


<form action="authentic.jsp" method="post">
    User Id   :   <input type="text" name="id" placeholder="Enter user id"/><br>
    Password  :   <input type="password" name="pass" placeholder="Enter password"/><br>
    <input type="submit" value="LoGIN" />        <input type="reset" value="reset" /> 
</form>

</article>
    </section>
    </div>
    <%@include file="footer.html" %>

    
    
    
    
    
    
    
    
    