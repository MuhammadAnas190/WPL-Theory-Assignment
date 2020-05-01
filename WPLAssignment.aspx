<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WPLAssignment.aspx.cs" Inherits="WPL_Theory_Ass1.WPLAssignment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title><%: Page.Title %>- My ASP.NET Application</title>

    <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>

    <webopt:BundleReference runat="server" Path="~/Content/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
</head>
<body>
    <form runat="server" id="NewForm">
        <div class="jumbotron">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        <h1>Assignment - ADO.NET</h1>
                        <p class="lead">By: Mohammad Anas Saud</p>
                        <p>15140</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="row">

                <div class="col-md-12">
                    <h3>Add new Entries</h3>
                    <asp:Label ID="Label6" runat="server" Text="Label">Product ID</asp:Label>
                    <asp:TextBox ID="idNum" type="text" runat="server" class="form-control"/>
                    <asp:Label ID="Label1" runat="server" Text="Label">Product Name</asp:Label>
                    <asp:TextBox ID="PName" type="text" runat="server" class="form-control" aria-haspopup="False" aria-labelledby="Product Name" placeholder="Enter Product Name" />
                </div>
                <div class="col-md-12">
                    <asp:Label ID="Label2" runat="server" Text="Label">Product Quantity</asp:Label>
                    <asp:TextBox ID="PQuantity" type="number" runat="server" class="form-control" aria-haspopup="False" aria-labelledby="Product Quantity" placeholder="Enter Product Quantity" />
                </div>
                <div class="col-md-12">
                    <asp:Label ID="Label3" runat="server" Text="Label">Product Rate</asp:Label>
                    <asp:TextBox ID="PRate" type="number" runat="server" class="form-control" aria-haspopup="False" aria-labelledby="Product Quantity" placeholder="Enter Product Rate" />
                </div>
                <div class="col-md-12">
                    <asp:Label ID="Label4" runat="server" Text="Label">Date Of Product</asp:Label>
                    <asp:TextBox ID="PDate" type="date" runat="server" class="form-control" aria-haspopup="False" aria-labelledby="Date Of Product" placeholder="Enter Date Of Product" />
                </div>
                <div class="col-md-12">
                    Total Amount:
                    <asp:Label ID="rateval" runat="server"></asp:Label>
                </div>
                <div class="col-md-12">
                    <asp:Button ID="SubmitPd" runat="server" Text="Enter" CssClass="btn btn-success" OnClick="SubmitPd_Click" />
                    <asp:Button ID="updateBtn" runat="server" Text="UPDATE" CssClass="btn btn-default" OnClick="updateBtn_Click" />
                </div>

            </div>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h3>Add new Entries</h3>
                    <asp:Label ID="Label5" runat="server" Text="Label">Enter Delete ID</asp:Label>
                    <asp:TextBox ID="delID" type="text" runat="server" class="form-control"/>
                </div>
                <div class="col-md-12">
                    <asp:Button ID="delBtn" runat="server" Text="Enter" CssClass="btn btn-danger" OnClick="delBtn_Click"/>
                </div>
                <div class="col-md-12">
                    <asp:GridView ID="valGrid" runat="server"></asp:GridView>
                </div>
            </div>
        </div>


        <asp:ScriptManager runat="server">
            <Scripts>
                <%--To learn more about bundling scripts in ScriptManager see https://go.microsoft.com/fwlink/?LinkID=301884 --%>
                <%--Framework Scripts--%>
                <asp:ScriptReference Name="MsAjaxBundle" />
                <asp:ScriptReference Name="jquery" />
                <asp:ScriptReference Name="bootstrap" />
                <asp:ScriptReference Name="WebForms.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebForms.js" />
                <asp:ScriptReference Name="WebUIValidation.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebUIValidation.js" />
                <asp:ScriptReference Name="MenuStandards.js" Assembly="System.Web" Path="~/Scripts/WebForms/MenuStandards.js" />
                <asp:ScriptReference Name="GridView.js" Assembly="System.Web" Path="~/Scripts/WebForms/GridView.js" />
                <asp:ScriptReference Name="DetailsView.js" Assembly="System.Web" Path="~/Scripts/WebForms/DetailsView.js" />
                <asp:ScriptReference Name="TreeView.js" Assembly="System.Web" Path="~/Scripts/WebForms/TreeView.js" />
                <asp:ScriptReference Name="WebParts.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebParts.js" />
                <asp:ScriptReference Name="Focus.js" Assembly="System.Web" Path="~/Scripts/WebForms/Focus.js" />
                <asp:ScriptReference Name="WebFormsBundle" />
                <%--Site Scripts--%>
            </Scripts>
        </asp:ScriptManager>
    </form>
</body>
</html>
