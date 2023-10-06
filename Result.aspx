<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Result.aspx.cs" Inherits="BootstrapForm__CRUDOP.Result" %>

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
            max-width: 800px; /* Adjust the max-width as needed */
            margin-left: auto;
            margin-right: auto;
        }

        .transparent-password {
            background: none;
            border: none;
            border-bottom: 1px solid #000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-5 custom-container">
            <div class="row">
                <div class="col-md-12">
                    <h2>Result Page</h2>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" OnRowCommand="GridView1_RowCommand">
                        <Columns>
                            <asp:BoundField DataField="ID" HeaderText="ID" />
                            <asp:BoundField DataField="Name" HeaderText="Name" />
                            <asp:BoundField DataField="Username" HeaderText="Username" />
                            <asp:BoundField DataField="Email" HeaderText="Email" />

                            <asp:TemplateField HeaderText="Action">
                                <ItemTemplate>
                                    <asp:Button runat="server" Text="Update" CommandName="UpdateRow" CommandArgument='<%# Bind("ID") %>' CssClass="btn btn-warning" ID="btnUpdate" />
                                    <asp:Button runat="server" Text="Delete" CommandName="DeleteRow" CommandArgument='<%# Bind("ID") %>' CssClass="btn btn-danger" ID="btnDelete" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    
                    <asp:Label ID="lblMessage" runat="server" CssClass="text-success"></asp:Label> <!-- Add this line -->
                </div>
            </div>
        </div>
    </form>
</body>
</html>
