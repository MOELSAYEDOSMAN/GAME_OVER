<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="FINAL_NETWORK.login_and_reqister.register" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Style/Login.css">
    <title>Creat Email</title>
</head>
<body>
    
        <section class="active">
        
            <div class="container active">
    
    
                <div class="user signupBx">
                    
                    <div class="formBx">
                        <form id="form1" runat="server">
                            <h2>Create an account </h2>
                            
                            <asp:TextBox ID="TextBox1" runat="server" placeholder="Username"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="UserName reqired" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="TextBox2" runat="server"  placeholder="Email Address"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="email error" ControlToValidate="TextBox2" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            <asp:TextBox ID="TextBox3" runat="server" placeholder="Create Password" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="password reqired" ControlToValidate="TextBox3" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="TextBox4" runat="server" placeholder="Confim Password" TextMode="Password"></asp:TextBox>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="password not same" ControlToCompare="TextBox3" ControlToValidate="TextBox4" ForeColor="Red"></asp:CompareValidator>
                            <br><asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                            <asp:Button ID="Button1" runat="server" Text="sign up" OnClick="Button1_Click"  />
                            <asp:LinkButton ID="LinkButton1" runat="server" BorderStyle="None" OnClick="LinkButton1_Click" PostBackUrl="~/login.aspx" ></asp:LinkButton>
                            <p class="signup">Already have an account ?<asp:HyperLink ID="linkgo1" runat="server" href="https://localhost:44376/login%20and%20reqister/login.aspx">Login.</asp:HyperLink></p>
                        </form>
                    </div>
                    <div class="imgBx"><img src="Images/p4.jpg"></div>
                </div> 
    
    
            </div>
        
        </section>
        
       
    
    </body>

</html>
