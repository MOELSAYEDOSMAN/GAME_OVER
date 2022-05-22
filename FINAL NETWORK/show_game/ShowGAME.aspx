<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowGAME.aspx.cs" Inherits="FINAL_NETWORK.show_game.ShowGAME" %>


<!DOCTYPE html>
<html lang="en">
<head runat="server">
    
    <!-- Basic Page Needs
	================================================== -->
    <title>GameOver - Home</title>
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
    <style>
       .testtesttest{
           width: 100%;
    height: 1550px;
    margin-top: -530px;
    padding: 20px 100px;
       }
    </style>
</head>
<body id="body2">
    <form id="form1" runat="server">
    <!-- Header
	================================================== -->
    <header class="header-home-page">

        <div class="header-logo-home">
            <a href="index.html"><img src="assets/img/logo-re1.png"  width="110px" height="150px" alt="game over"></a>
        </div>

        <nav class="nav-bar-home-page">
            <ul>
               <li style="color:green;"><a href="#">HOME</a></li>
               <li ><a href="#photo-home">TEAMS</a></li>
               <li><a href="#">ABOUT US</a></li>
               <li><a href="https://localhost:44376/show_game/news.html">NEWS</a></li>
               <li><a href="#">CALL US</a></li>
               <li><a href="#">SHOP</a></li>
            </ul>
        </nav>
        
        <!--                 search             -->

        <div class="centerbox">
  
            <div class="main-form-container">
                 <asp:TextBox ID="TextBox1" runat="server" class="main-input main-name" name="GAMES"   Height="50px" placeholder="Search by games"></asp:TextBox>
                
                    <asp:DropDownList ID="DropDownList1" runat="server" class="main-btn">
                    <asp:ListItem Selected="True">None</asp:ListItem>
                    <asp:ListItem>Action</asp:ListItem>
                    <asp:ListItem>Adventure</asp:ListItem>
                    <asp:ListItem>Sports</asp:ListItem>
                    <asp:ListItem>Escape</asp:ListItem>
                    <asp:ListItem>Multiplayer</asp:ListItem>
                    <asp:ListItem>Fighting</asp:ListItem>
                    </asp:DropDownList>
          
                    <asp:Button ID="main_submit" runat="server" Text="Search" OnClick="main_submit_Click" />
        
            </div>
        </div>
                </header>
                   
        
        <!-- mobile submit -->
        <asp:Button ID="main_submit_mobile" runat="server" Text="Search" />
        



    </header>

    <div class="background-home-page">
        <div class="background-shadow-button">
            <div class="text-background">
                <p>We have come to</p>
                <h1>GAME OVER</h1>
                  <button  class="button-background" style="margin-top: 70px;">
                      <div></div>
                  </button>
            </div>
        </div>
    </div>

    
           <%-- '<%# Eval("name") %>'  '<%# Eval("price") %>'  '<%# Eval("type_game") %>' '<%# Eval("img1") %>' --%>
        <div class="all-list1-game" style="margin-top:55px;">
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" CssClass="all-games"    CellSpacing="3" RepeatColumns="4" ShowFooter="False" ShowHeader="False" OnItemCommand="Item_Command">
           
            <ItemTemplate>
    
        <article class="card card--1" style="width: 250px;margin-top: 50px;">
          <div class="card__info-hover">
             
            <svg class="card__like"  viewBox="0 0 24 24" ru">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <path fill="#000000" d="M12.1,18.55L12,18.65L11.89,18.55C7.14,14.24 4,11.39 4,8.5C4,6.5 5.5,5 7.5,5C9.04,5 10.54,6 11.07,7.36H12.93C13.46,6 14.96,5 16.5,5C18.5,5 20,6.5 20,8.5C20,11.39 16.86,14.24 12.1,18.55M16.5,3C14.76,3 13.09,3.81 12,5.08C10.91,3.81 9.24,3 7.5,3C4.42,3 2,5.41 2,8.5C2,12.27 5.4,15.36 10.55,20.03L12,21.35L13.45,20.03C18.6,15.36 22,12.27 22,8.5C22,5.41 19.58,3 16.5,3Z" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </svg>
                 
              <div class="card__clock-info">
                <svg class="card__clock"  viewBox="0 0 24 24"><path d="M12,20A7,7 0 0,1 5,13A7,7 0 0,1 12,6A7,7 0 0,1 19,13A7,7 0 0,1 12,20M19.03,7.39L20.45,5.97C20,5.46 19.55,5 19.04,4.56L17.62,6C16.07,4.74 14.12,4 12,4A9,9 0 0,0 3,13A9,9 0 0,0 12,22C17,22 21,17.97 21,13C21,10.88 20.26,8.93 19.03,7.39M11,14H13V8H11M15,1H9V3H15V1Z" />
                </svg><span class="card__time">15 min</span>
              </div> 
          </div>
          
             <div   class="card__img"  style="background-image:url('<%# Eval("img1") %>')"></div>
            
                <asp:LinkButton ID="LinkButton1" runat="server" class="card_link" >
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("name") %>' style="display:none;"></asp:Label>
             <div  class="card__img--hover"  style="background-image:url('<%# Eval("img1") %>')"></div>
           </asp:LinkButton>
                   
          
          
                 
             
           </a>
          <div class="card__info">
            <span class="card__category"> '<%# Eval("type_game") %>'</span>
            <h3 class="card__title">'<%# Eval("name") %>'  <br>|</h3>
            <span class="card__by"><a href="#" class="card__author" title="author"><h3> <%# Eval("price") %> $</h3></a></span>
          </div>
        </article>
            </ItemTemplate>
              
        </asp:DataList>   

         </div>




   
   
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AspDataConnectionString4 %>" SelectCommand="SELECT [name], [price], [type_game], [img1] FROM [GAME]"></asp:SqlDataSource>


       



   
   
<!-- end show game  -->


     
    <!--                   footer                 -->
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
    






</form>





    <!-- Javascript Files
	================================================== -->
    <!-- JS -->
    <script src="assets/vendor/jquery/jquery.min.js"></script>
    <script src="assets/js/init.js"></script>
    

</body>
</html>
