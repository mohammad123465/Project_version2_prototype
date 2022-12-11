<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductPage.aspx.cs" Inherits="WebApplication2.ProductPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <div> <h1>Product id :<asp:TextBox ID="txt_prod_id" runat="server"></asp:TextBox>
            </h1></div>
        <div><h1>Product name :<asp:TextBox ID="txt_prod_name" runat="server"></asp:TextBox>
            </h1></div>
        <div><h1>Publish date:</h1><asp:Calendar ID="Calendar1" runat="server"></asp:Calendar></div>
            
        <div><h1>availble:</h1></div>

        
    </div>
    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
        <asp:ListItem>yes</asp:ListItem>
        <asp:ListItem>no</asp:ListItem>
    </asp:RadioButtonList>
    <asp:Button ID="btn_add" runat="server" onclick="btn_add_Click" Text="Add " />
    <asp:Button ID="btn_del" runat="server" Text="delete" />
    <asp:GridView ID="GridView1_prod" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="ID_PRODUCT" DataSourceID="SqlDataSource1" BackColor="White" 
        BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="ID_PRODUCT" HeaderText="ID_PRODUCT" ReadOnly="True" 
                SortExpression="ID_PRODUCT" />
            <asp:BoundField DataField="NAME_PRODUCT" HeaderText="NAME_PRODUCT" 
                SortExpression="NAME_PRODUCT" />
            <asp:BoundField DataField="PUBLISH_DATE_P" HeaderText="PUBLISH_DATE_P" 
                SortExpression="PUBLISH_DATE_P" />
            <asp:BoundField DataField="IS_VALIBLE" HeaderText="IS_VALIBLE" 
                SortExpression="IS_VALIBLE" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [product_tb]"></asp:SqlDataSource>
    </form>
</body>
</html>
