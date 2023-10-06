<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="BootstrapForm__CRUDOP.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

    <style>
        .custom-container {
            max-width: 500px; 
            margin-left: auto;
            margin-right: auto;
        }
    </style>
</head>
<body>

    
    <form id="form1" runat="server">
        <div class="container mt-5 custom-container">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header">Register</div>
                        <div class="card-body">
                            <asp:TextBox ID="txtName" CssClass="form-control mb-2" runat="server" placeholder="Name"></asp:TextBox>
                            <asp:TextBox ID="txtUsername" CssClass="form-control mb-2" runat="server" placeholder="Username"></asp:TextBox>
                            <asp:TextBox ID="txtPassword" CssClass="form-control mb-2" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
                            <asp:TextBox ID="txtConfirmPassword" CssClass="form-control mb-2" runat="server" TextMode="Password" placeholder="Confirm Password"></asp:TextBox>
                            <asp:TextBox ID="txtEmail" CssClass="form-control mb-2" runat="server" placeholder="Email"></asp:TextBox>
                            <asp:Button ID="btnRegister" CssClass="btn btn-primary btn-block" runat="server" Text="Register" OnClick="btnRegister_Click" />
                            <asp:Label ID="Label1" runat="server" CssClass="text-danger"></asp:Label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
