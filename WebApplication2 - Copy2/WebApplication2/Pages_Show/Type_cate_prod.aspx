<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Type_cate_prod.aspx.cs" Inherits="WebApplication2.Pages_Show.Type_cate_prod" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="choose categore name"></asp:Label>
        :
        <asp:DropDownList ID="drop_down_categore_name" runat="server" 
            AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="NAME_CATEGORY" 
            DataValueField="NAME_CATEGORY">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [NAME_CATEGORY] FROM [category_tb]">
        </asp:SqlDataSource>
        <asp:DropDownList ID="DropDownList1" runat="server" 
            DataSourceID="SqlDataSource4" DataTextField="ID_CATEGORY" 
            DataValueField="ID_CATEGORY">
        </asp:DropDownList>
        <br />
        <asp:Label ID="Label2" runat="server" Text="choose product name:"></asp:Label>
        <asp:DropDownList ID="drop_down_product_name" runat="server" 
            AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="NAME_PRODUCT" 
            DataValueField="NAME_PRODUCT">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [NAME_PRODUCT] FROM [product_tb]"></asp:SqlDataSource>
        <asp:DropDownList ID="DropDownList2" runat="server" 
            DataSourceID="SqlDataSource5" DataTextField="ID_PRODUCT" 
            DataValueField="ID_PRODUCT">
        </asp:DropDownList>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Enter Type"></asp:Label>
        :<asp:TextBox ID="txt_type_name" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Ener Id Type: "></asp:Label>
        <asp:TextBox ID="txt_id_type_tt" runat="server"></asp:TextBox>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [ID_CATEGORY] FROM [category_tb] WHERE ([NAME_CATEGORY] = @NAME_CATEGORY)">
            <SelectParameters>
                <asp:ControlParameter ControlID="drop_down_categore_name" Name="NAME_CATEGORY" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [ID_PRODUCT] FROM [product_tb] WHERE (([NAME_PRODUCT] = @NAME_PRODUCT) AND ([NAME_PRODUCT] = @NAME_PRODUCT2))">
            <SelectParameters>
                <asp:ControlParameter ControlID="drop_down_product_name" Name="NAME_PRODUCT" 
                    PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="drop_down_product_name" DefaultValue="j4" 
                    Name="NAME_PRODUCT2" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:Button ID="btn_add_type" runat="server" onclick="btn_add_type_Click" 
            Text="Add" />
        <asp:Button ID="btn_del" runat="server" Text="delete" />
        <br />
    
    </div>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
        BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        DataKeyNames="ID_TYPE_CAT_PRO" DataSourceID="SqlDataSource3">
        <Columns>
            <asp:BoundField DataField="ID_CATEGORE_TYPE" HeaderText="ID_CATEGORE_TYPE" 
                SortExpression="ID_CATEGORE_TYPE" />
            <asp:BoundField DataField="ID_PRODUCT_TYPE" HeaderText="ID_PRODUCT_TYPE" 
                SortExpression="ID_PRODUCT_TYPE" />
            <asp:BoundField DataField="TYPES_PRO" HeaderText="TYPES_PRO" 
                SortExpression="TYPES_PRO" />
            <asp:BoundField DataField="ID_TYPE_CAT_PRO" HeaderText="ID_TYPE_CAT_PRO" 
                ReadOnly="True" SortExpression="ID_TYPE_CAT_PRO" />
        </Columns>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="#7E0000" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [types_tb] WHERE [ID_TYPE_CAT_PRO] = @original_ID_TYPE_CAT_PRO AND (([ID_CATEGORE_TYPE] = @original_ID_CATEGORE_TYPE) OR ([ID_CATEGORE_TYPE] IS NULL AND @original_ID_CATEGORE_TYPE IS NULL)) AND (([ID_PRODUCT_TYPE] = @original_ID_PRODUCT_TYPE) OR ([ID_PRODUCT_TYPE] IS NULL AND @original_ID_PRODUCT_TYPE IS NULL)) AND (([TYPES_PRO] = @original_TYPES_PRO) OR ([TYPES_PRO] IS NULL AND @original_TYPES_PRO IS NULL))" 
        InsertCommand="INSERT INTO [types_tb] ([ID_CATEGORE_TYPE], [ID_PRODUCT_TYPE], [TYPES_PRO], [ID_TYPE_CAT_PRO]) VALUES (@ID_CATEGORE_TYPE, @ID_PRODUCT_TYPE, @TYPES_PRO, @ID_TYPE_CAT_PRO)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [types_tb]" 
        UpdateCommand="UPDATE [types_tb] SET [ID_CATEGORE_TYPE] = @ID_CATEGORE_TYPE, [ID_PRODUCT_TYPE] = @ID_PRODUCT_TYPE, [TYPES_PRO] = @TYPES_PRO WHERE [ID_TYPE_CAT_PRO] = @original_ID_TYPE_CAT_PRO AND (([ID_CATEGORE_TYPE] = @original_ID_CATEGORE_TYPE) OR ([ID_CATEGORE_TYPE] IS NULL AND @original_ID_CATEGORE_TYPE IS NULL)) AND (([ID_PRODUCT_TYPE] = @original_ID_PRODUCT_TYPE) OR ([ID_PRODUCT_TYPE] IS NULL AND @original_ID_PRODUCT_TYPE IS NULL)) AND (([TYPES_PRO] = @original_TYPES_PRO) OR ([TYPES_PRO] IS NULL AND @original_TYPES_PRO IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_ID_TYPE_CAT_PRO" Type="Int32" />
            <asp:Parameter Name="original_ID_CATEGORE_TYPE" Type="Int32" />
            <asp:Parameter Name="original_ID_PRODUCT_TYPE" Type="Int32" />
            <asp:Parameter Name="original_TYPES_PRO" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID_CATEGORE_TYPE" Type="Int32" />
            <asp:Parameter Name="ID_PRODUCT_TYPE" Type="Int32" />
            <asp:Parameter Name="TYPES_PRO" Type="String" />
            <asp:Parameter Name="ID_TYPE_CAT_PRO" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ID_CATEGORE_TYPE" Type="Int32" />
            <asp:Parameter Name="ID_PRODUCT_TYPE" Type="Int32" />
            <asp:Parameter Name="TYPES_PRO" Type="String" />
            <asp:Parameter Name="original_ID_TYPE_CAT_PRO" Type="Int32" />
            <asp:Parameter Name="original_ID_CATEGORE_TYPE" Type="Int32" />
            <asp:Parameter Name="original_ID_PRODUCT_TYPE" Type="Int32" />
            <asp:Parameter Name="original_TYPES_PRO" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </form>
</body>
</html>
