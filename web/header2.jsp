<%-- 
    Document   : header2
    Author     : Rakesh Chand
--%>
<!DOCTYPE HTML>
<HTML lang ="en">
    <HEAD>
        <meta charset = "utf-8"/>
        <TITLE> Admin Panel </TITLE>
        <link rel ="stylesheet" href = "main.css"/>
        <script type="text/javascript">
            var image1 = new Image();
            image1.src = "images/3.jpg";
            var image2 = new Image();
            image2.src = "images/4.jpg";
            var image3 = new Image();
            image3.src = "images/5.jpg";
            var image4 = new Image();
            image4.src = "images/6.jpg";
            var image5 = new Image();
            image5.src = "images/7.jpg";
            var image6 = new Image();
            image6.src = "images/8.jpg";
            var image7 = new Image();
            image7.src = "images/9.jpg";
            var image8 = new Image();
            image8.src = "images/10.jpg";
            var image9 = new Image();
            image9.src = "images/Wr4snFu.jpg";
        </script>
    </HEAD>
    <BODY background="images/Wr4snFu (3).jpg" >
        <div id ="big_wrapper">
            <nav id = "super_top">
                <ul>
                    <li><a href = "logout.jsp" >Log-Out</a></li>
                </ul>
            </nav>
            <header id = "top_header">
                <h1>Airplane Reservation - Admin Panel</h1>
            </header>
            <nav id = "top_menu">
                <ul>
                    <li><a href = "AdminPanal.jsp">Home</a></li>
                    <li><a href="addnewflight.jsp">Add New Flight</a></LI>
                    <li><a href="enabledisable.jsp">Enable/Disable a flight</a></LI>
                    <li><a href="flightscheduling.jsp">Flight Scheduling</a></LI>
                    <li><a href="reservepassenger.jsp">Reserve Passengers</a></LI>
                    <li><a href="advancetask.jsp">Advance Task</a></LI>
                </ul>
            </nav>
            <img src="images/3.jpg" name="slide" width="1000" height="350" />
            <script>
                var step = 1;
                function slideit() {
                    if (!document.images)
                        return;
                    document.images.slide.src = eval("image" + step + ".src");
                    if (step < 9)
                        step++;
                    else
                        step = 1;
                    setTimeout("slideit()", 25000);
                }
                slideit();
            </script>