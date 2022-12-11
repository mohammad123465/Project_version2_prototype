<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="WebApplication2.Pages_Show.Users" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="lbl_FirstName" runat="server" Text="Full Name"></asp:Label>
&nbsp;:<asp:TextBox ID="txt_fname" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="User Name"></asp:Label>
        :<asp:TextBox ID="txt_username" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Password :"></asp:Label>
        <asp:TextBox ID="txt_password" runat="server" style="margin-bottom: 0px"></asp:TextBox>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Type"></asp:Label>
&nbsp;:<asp:DropDownList ID="drop_userType" runat="server">
            <asp:ListItem>Admin</asp:ListItem>
            <asp:ListItem>Emp_categore</asp:ListItem>
            <asp:ListItem>Emp_product</asp:ListItem>
            <asp:ListItem>Emp_Type_Product</asp:ListItem>
            <asp:ListItem>HOS</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Button ID="btn_regiser" runat="server" Text="Registeration" 
            onclick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    </div>
    </form>
</body>
</html>
