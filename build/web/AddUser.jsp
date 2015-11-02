
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
<%@include file="header.jsp"%>



    <link rel ="stylesheet" href = "main.css"/>
    <div id = "new_div">
    <section id = "main_section">
    <article>

<%@page errorPage="error_page.jsp" %>

<h1>Fill This Form Registration : </h1>
        <br>
        
         <script>
        function ctd()
        {
            var cnf=confirm("Congratulation ,Your Account is created !!!!!!!");
            if(cnf==true)
            {
                return true;
            }
            else
                return false;
        }
        
        </script>
 

<form action="user adding.jsp" method="post">
    User Id       :  <input type="text" name="useid" placeholder="userid used for LOGIN"/>
<br><br>
Password      :  <input type="password" name="password" placeholder="password"/>
<br><br>
Name          :  <input type="text" name="name" placeholder="Name "/>
<br><br>
Age           :  <input type="text" name="age" placeholder="AGE"/>
<br><br>
Gender        :  Male   <input type="radio" name="gender" value="male" />
                 Female <input type="radio" name="gender" value="female" />
<br><br>
Address       :  <input type="text" name="address" placeholder="address"/>
<br><br>
Email         :  <input type="text" name="email" placeholder="email"/>
<br><br>
Contact NO    :  <input type="text" name="contectno" placeholder="contact no"/>
<br><br>

<input type="submit" value="SignUp" onclick="return ctd()" />   <input type="reset" value="RESET"/>
        </form>
</article>
    </section>
    </div>

        
    <%@include file="footer.html" %>
