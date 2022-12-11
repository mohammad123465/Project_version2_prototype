<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CategorePage.aspx.cs" Inherits="WebApplication2.Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Categore Page</title>
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
        }
        form {
            border: 3px solid #f1f1f1;
        }
        input[type=text], input[type=password] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }
        button:hover {
            opacity: 0.8;
        }
        .cnbtn {
            background-color: #ec3f3f;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 49%;
        }
        .lgnbtn {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 50%;
        }
        .imgcontainer {
            text-align: center;
            margin: 24px 0 12px 0;
        }
        img.avatar {
            width: 40%;
            border-radius: 50%;
        }
        .container {
            padding: 16px;
        }
        span.psw {
            float: right;
            padding-top: 16px;
        }
        /* Change styles for span and cancel button on extra small screens */
        @media screen and (max-width: 300px) {
            span.psw {
                display: block;
                float: none;
            }
            .cnbtn {
                width: 100%;
            }
        }
        .frmalg {
            margin: auto;
            width: 40%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="test_database" runat="server" onclick="test_database_Click" 
            Text="Connectin database" />
        <asp:Button ID="dis_conn" runat="server" Text="disconnection" 
            onclick="dis_conn_Click" />
    
        <asp:Label ID="lbl_ins" runat="server" Text="status inserte"></asp:Label>
    
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [category_tb]"></asp:SqlDataSource>
    <asp:Label ID="lbl_cat" runat="server" Text="ID_Category"></asp:Label>
    <asp:TextBox ID="txt_cate_id" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lbl_cat_name" runat="server" Text="categore name"></asp:Label>
    <asp:TextBox ID="txt_cat_name" runat="server"></asp:TextBox>
    <br />
    <asp:TextBox ID="txt_cat_pub" runat="server"></asp:TextBox>
    <asp:Label ID="lbl_pub_date" runat="server" Text="publish date"></asp:Label>
    <p>
        <asp:Button ID="btn_ins" runat="server" onclick="btn_ins_Click" Text="insert" 
            Width="87px" />
        <asp:Button ID="id_del" runat="server" onclick="id_del_Click" Text="delete" />
    </p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" CellSpacing="2" DataKeyNames="ID_CATEGORY" 
        DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="ID_CATEGORY" HeaderText="ID_CATEGORY" 
                ReadOnly="True" SortExpression="ID_CATEGORY" />
            <asp:BoundField DataField="NAME_CATEGORY" HeaderText="NAME_CATEGORY" 
                SortExpression="NAME_CATEGORY" />
            <asp:BoundField DataField="PUBLISH_DATE" HeaderText="PUBLISH_DATE" 
                SortExpression="PUBLISH_DATE" />
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
    </form>
</body>
</html>
