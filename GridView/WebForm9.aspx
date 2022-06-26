<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm9.aspx.cs" Inherits="GridView.WebForm9" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="font-family:Arial">
<asp:Button ID="btnDelete" runat="server" Text="Delete" 
    onclick="btnDelete_Click" />
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:TemplateField>
            <HeaderTemplate>
                <asp:CheckBox ID="cbDeleteHeader" runat="server" 
                    AutoPostBack="True" 
                    oncheckedchanged="cbDeleteHeader_CheckedChanged" />
            </HeaderTemplate>
            <ItemTemplate>
                <asp:CheckBox ID="cbDelete" runat="server" 
                    AutoPostBack="true" 
                    oncheckedchanged="cbDelete_CheckedChanged" />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Id">
            <ItemTemplate>
                <asp:Label ID="lblEmployeeId" runat="server" 
                     Text='<%# Bind("EmployeeId") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="Name" HeaderText="Name" />
        <asp:BoundField DataField="Gender" HeaderText="Gender" />
        <asp:BoundField DataField="City" HeaderText="City" />
    </Columns>
    <EditRowStyle BackColor="#2461BF" />
    <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#2461BF" />
    <RowStyle BackColor="#EFF3FB" />
    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" 
        ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F5F7FB" />
    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
    <SortedDescendingCellStyle BackColor="#E9EBEF" />
    <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>
<asp:Label ID="lblMessage" runat="server" Font-Bold="true">
</asp:Label>
</div>
    </form>
</body>
</html>
