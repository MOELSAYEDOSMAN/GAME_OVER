<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="FINAL_NETWORK.login_and_reqister.login" %>

<!DOCTYPE html>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Style/Login.css">
    <title>log in</title>
</head>
<body>
    <section>
    
        <div class="container">


            <div class="user signinBx">
                <div class="imgBx"><img src="Images/p1-game.jpg" class="p1"></div>
                <div class="formBx">
                    <form id="form1" runat="server">
                        <h2>Log In</h2>
                        <asp:TextBox ID="TextBox1" runat="server" placeholder="Username"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="email reqired" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="TextBox2" runat="server" placeholder="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="password reqird" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        <br> <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click"  />
                        
                        <p class="signup">don't have an account ? <a href="https://localhost:44376/login%20and%20reqister/register.aspx" >Registr.</a></p>
                    </form>
                </div>
            </div>
        </div>
    </section>
</body>
</html>
