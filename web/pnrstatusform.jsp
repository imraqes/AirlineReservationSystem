
    <%@include file="header_reservation.jsp"%>

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

    <link rel ="stylesheet" href = "main.css"/>
    <div id = "new_div">
        <section id = "main_section">
            <article>


                <%@page errorPage="error_page.jsp" %>

                <h1>Check Your PNR Status</h1>
        



                <h1>Enter PNR :</h1><br>
                <form action="pnrristriction.jsp" method="post">
                    <input type="text" name="pnr" placeholder="Enter pnr "/><br>
                    <input type="submit" value="CHECK PNR"/>
                </form>

            </article>
        </section>
    </div>
    <%@include file="footer.html" %>
