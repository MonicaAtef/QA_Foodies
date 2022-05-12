﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddAdmin.aspx.cs" Inherits="Foodies_WebApp.AddAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <title>Add Admin Page</title>
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css'>
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Muli'>
    <link rel="stylesheet" href="CSS\form.css">

</head>
<body>
    <form id="submitForm" runat="server" action="#register" method="post" data-parsley-validate=" "
                            data-parsley-errors-messages-disabled="true" novalidate="" _lpchecked="1">
        <header>
    <div class="containerr">
     <img src="Images\FoodiesLogo.png" alt="logo" id="logo" style="height: 7%; width: 7%;">
    </div>
</header>
    <div class="pt-5">
        <div class="container">
            <div class="row">
                <div class="col-md-5 mx-auto">
                    <div class="card card-body">
                        <div>
                            <center><h4>Add Admin</h4></center>
                            <hr>
                        </div>
                        
                            <input id="TextBox1" runat="server"
                                type="hidden" name="_csrf" value="7635eb83-1f95-4b32-8788-abec2724a9a4"></input>
                            <div class="form-group required">
                                <asp:Label id="fullName" runat="server" Text="Label" for="FullName">Full Name </asp:Label>
                                <asp:TextBox id="FullName1" runat="server" type="text" class="form-control text-lowercase" required
                                    name="FullName" value=""></asp:TextBox>
                            </div>
                            <div class="form-group required">
                                <asp:label id="userName" runat="server" Text="Label" for="username">Username</asp:label>
                                <asp:TextBox id="username1" runat="server" type="text" class="form-control text-lowercase" required
                                    name="username" value=""></asp:TextBox>
                            </div>
                            <div class="form-group required">
                                <asp:label id="email" runat="server" Text="Label" for="email">Email</asp:label>
                                <asp:TextBox id="emailText" runat="server" type="email" class="form-control text-lowercase" required
                                    name="email" value=""></asp:TextBox>
                            </div>
                            <div class="form-group required">
                                <asp:label id="pass1Lab" runat="server" Text="Label" class="d-flex flex-row align-items-center" for="password">Password</asp:label>
                                <asp:TextBox id="pass1" runat="server" type="password" class="form-control" name="password"
                                   pattern="^(?=[a-zA-Z])(?=.*[0-9])(?=.*[#\$_])(?=.*[A-Z])(?=.*[a-z])(?!.*[^a-zA-Z0-9#\$_])(?!.*\s).{8,12}$" title="Pattern must match 8-12 character, numeric, and symbol combination 1) at least one uppercase letter, 2) at least on lowercase letter, 3) at least one number, 4) and one special charater, that is specified in advanced. The first character must be a character upper or lower, and no spaces allowed." value="" required></asp:TextBox>
                            </div>
                            <div class="form-group required">
                                <asp:label id="pass2" runat="server" Text="Label" class="d-flex flex-row align-items-center" for="password">Confirm Password</asp:label>                                   
                                <asp:TextBox id="pass22" runat="server" type="password" class="form-control" name="password2"
                                    value="" required></asp:TextBox>
                            </div>
                            <div class="form-group required">
                                <asp:label id="address1" runat="server" Text="Label" for="address">Address</asp:label>
                                <asp:TextBox id="address" runat="server" type="text" class="form-control text-lowercase" required
                                    name="address" value=""></asp:TextBox>
                            </div>
                            <div class="form-group required">
                                <asp:label id="phone1" runat="server" Text="Label" for="phone">Phone Number:</asp:label>
                                <asp:TextBox id="phone" runat="server" type="tel" class="form-control text-lowercase" required
                                    name="phone" value="" pattern="^01[0-2]\d{1,8}$"></asp:TextBox>
                            </div>
                            <div class="form-group pt-1">
                                <asp:Button id="AddAdminBtn" class="btn btn-primary btn-block" runat="server" Text="Add Admin" BorderStyle="Solid" ToolTip="Submit"/>  
                       
                            </div>
                        </form>
                          
                    </div>
                </div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>