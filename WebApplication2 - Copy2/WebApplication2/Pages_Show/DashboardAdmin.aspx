<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DashboardAdmin.aspx.cs" Inherits="WebApplication2.Pages_Show.DashboardAdmin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       
        <asp:HyperLink ID="cate_hyper" runat="server" 
            NavigateUrl="~/Pages_Show/CategorePage.aspx">Categore Page</asp:HyperLink>
        <br />
        <asp:HyperLink ID="HyperLink2" runat="server" 
            NavigateUrl="~/Pages_Show/ProductPage.aspx">Product Page</asp:HyperLink>
        <br />
        <asp:HyperLink ID="HyperLink3" runat="server" 
            NavigateUrl="~/Pages_Show/Type_cate_prod.aspx">Type Of categore </asp:HyperLink>
        <br />
        <asp:HyperLink ID="HyperLink4" runat="server" 
            NavigateUrl="~/Pages_Show/Users.aspx">Users</asp:HyperLink>
        
    </div>
    </form>
</body>
</html>
