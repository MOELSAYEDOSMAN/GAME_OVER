﻿ <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyGame.aspx.cs" Inherits="FINAL_NETWORK.show_game.MyGame" %>


<!DOCTYPE html>
<html lang="en">
<head>
    
    <!-- Basic Page Needs
	================================================== -->
    <title>GameOver - Mygame</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    

    <!-- Favicons
	================================================== -->
    <link rel="shortcut icon" href="assets/img/favicons/favicon.ico">
    <link rel="apple-touch-icon" sizes="120x120" href="assets/img/favicons/favicon-120.png">
    <link rel="apple-touch-icon" sizes="152x152" href="assets/img/favicons/favicon-152.png">

    <!-- Mobile Specific Metas
	================================================== -->
    <meta name="viewport" content="width=device-width,initial-scale=1.0">

    <!-- Google Web Fonts
	================================================== -->
    <link href="https://fonts.googleapis.com/css?family=Rajdhani:300,400,500,600,700" rel="stylesheet">
    <script src="https://kit.fontawesome.com/22a24d17be.js" crossorigin="anonymous"></script>

    <!-- CSS
	================================================== -->
    <!-- Vendor CSS -->
    <link href="assets/vendor/magnific-popup/css/magnific-popup.css" rel="stylesheet">
    <link href="assets/vendor/slick/css/slick.css" rel="stylesheet">
    <link href="assets/vendor/nanoscroller/css/nanoscroller.css" rel="stylesheet">
    <link href="assets/vendor/fontawesome/css/brands.css" rel="stylesheet">

    <!-- Template CSS-->
    <link href="assets/css/Home.css" rel="stylesheet">
    
</head>
<body id="body2">
    
    <!-- Header
	================================================== -->
    <header class="header-home-page">

        <div class="header-logo-home">
            <a href="index.html"><img src="assets/img/logo-re1.png"  width="150px" height="150px" alt="game over"></a>
        </div>

        <nav class="nav-bar-home-page">
            <ul>
               <li style="color:green;"><a href="#">HOME</a></li>
               <li><a href="#photo-home">TEAMS</a></li>
               <li><a href="#">NEWS</a></li>
               <li><a href="#">CALL US</a></li>
               <li><a href="#">MY GAMES</a></li>
            </ul>
        </nav>
        
        


    </header>




    <form id="pageGameshow" runat="server" style="margin-top:120px;margin-left:50px;">

<!-- data list -->
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" OnItemCreated="DataList1_ItemCreated" RepeatColumns="4" CellSpacing="15">
            <ItemTemplate>
                
                <asp:Image ID="Image1" runat="server"  ImageUrl='<%# Eval("img1") %>' Width="350px" Height="350px" />
             
            </ItemTemplate>
        </asp:DataList>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AspDataConnectionString4 %>" SelectCommand="SELECT [img1] FROM [GAME]"></asp:SqlDataSource>

    </form>
   <!-- footer -->
    <footer class="footer-section">
      <div class="container">
          <div class="footer-cta pt-5 pb-5">
              <div class="row">
                  <div class="col-xl-4 col-md-4 mb-30">
                      <div class="single-cta">
                          <i class="fas fa-map-marker-alt"></i>
                          <div class="cta-text">
                              <h4>Find us</h4>
                              <span>Kafer_ALsheakh</span>
                          </div>
                      </div>
                  </div>
                  <div class="col-xl-4 col-md-4 mb-30">
                      <div class="single-cta">
                          <i class="fas fa-phone"></i>
                          <div class="cta-text">
                              <h4>Call us</h4>
                              <span>010*******</span>
                          </div>
                      </div>
                  </div>
                  <div class="col-xl-4 col-md-4 mb-30">
                      <div class="single-cta">
                          <i class="far fa-envelope-open"></i>
                          <div class="cta-text">
                              <h4>Mail us</h4>
                              <span>mail@info.com</span>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
          <div class="footer-content pt-5 pb-5">
              <div class="row">
                  <div class="col-xl-4 col-lg-4 mb-50">
                      <div class="footer-widget">
                          <div class="footer-logo">
                              <a href="index.html"><img src="assets/img/logo-re1.png" class="img-fluid" alt="logo"></a>
                          </div>
                          <div class="footer-text">
                              <p>The strongest site for selling and developing games <br>Allows you to download games very easily and develop them as well,<br>Lorem ipsum dolor sit amet.</p>
                          </div>
                          <div class="footer-social-icon">
                              <span>Follow us</span>
                              <a href="#"><i class="fab fa-facebook-f facebook-bg"></i></a>
                              <a href="#"><i class="fab fa-twitter twitter-bg"></i></a>
                              <a href="#"><i class="fab fa-google-plus-g google-bg"></i></a>
                          </div>
                      </div>
                  </div>
                  <div class="col-xl-4 col-lg-4 col-md-6 mb-30">
                      <div class="footer-widget2">
                          <div class="footer-widget-heading">
                              <h3>Useful Links</h3>
                          </div>
                          <ul>
                              <li><a href="#">Home</a></li>           
                              <li><a href="#">Teame</a></li>                             
                              <li><a href="#">About Us</a></li>                              
                              <li><a href="#">Call Us</a></li>
                          
                              <li><a href="#">SHOP</a></li>
                             
                          </ul>
                      </div>
                  </div>
                  <div class="col-xl-4 col-lg-4 col-md-6 mb-50">
                      <div class="footer-widget1">
                          <div class="footer-widget-heading">
                              <h3>Subscribe</h3>
                          </div>
                          <div class="footer-text mb-25">
                              <p>Don’t miss to subscribe to our new feeds, kindly fill the form below.</p>
                          </div>
                          <div class="subscribe-form">
                              <form action="#">
                                  <input type="text" placeholder="Email Address">
                                  <button><i class="fab fa-telegram-plane"></i></button>
                              </form>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
      </div>
      <div class="copyright-area">
          <div class="container">
              <div class="row">
                  <div class="col-xl-6 col-lg-6 text-center text-lg-left">
                      <div class="copyright-text">
                          <p>Copyright &copy; 2022, All Right Reserved <a href="#">Game Over</a></p>
                      </div>
                  </div>
              </div>
          </div>
      </div>
  </footer>
    
    
    













    <!-- Javascript Files
	================================================== -->
    <!-- JS -->
    <script src="assets/vendor/jquery/jquery.min.js"></script>
    <script src="assets/js/init.js"></script>
    

</body>
</html>