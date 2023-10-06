<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="BootstrapForm__CRUDOP.Update" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-5">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header text-center">Update Record</div>
                        <div class="card-body">
                            <asp:TextBox ID="txtName" CssClass="form-control mb-2" runat="server" placeholder="New Name"></asp:TextBox>
                            <asp:TextBox ID="txtUsername" CssClass="form-control mb-2" runat="server" placeholder="New Username"></asp:TextBox>
                            <asp:TextBox ID="txtPassword" CssClass="form-control mb-2" runat="server" TextMode="Password" placeholder="New Password"></asp:TextBox>
                            <asp:TextBox ID="txtEmail" CssClass="form-control mb-2" runat="server" placeholder="New Email"></asp:TextBox>
                            <asp:Button ID="btnUpdate" CssClass="btn btn-primary btn-block" runat="server" Text="Update" OnClick="btnUpdate_Click" />
                            <asp:Label ID="lblMessage" runat="server" CssClass="text-success"></asp:Label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
