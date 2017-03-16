<%@ Page Title="" Language="C#" MasterPageFile="~/Instructor.Master" AutoEventWireup="true" CodeBehind="ResultsInstructor.aspx.cs" Inherits="OnlineExamSystem.ResultsInstructor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
    <%--<asp:Panel ID="Panel1" runat="server" Style="z-index: 100; left: 391px;
        position: absolute; top: 287px; height: 305px;" Width="512px" BorderColor="MistyRose">
        &nbsp;&nbsp;
        <asp:GridView ID="GridView1" runat="server" Style="z-index: 100; left: 160px; position: absolute;
            top: 56px" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None">
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
        </asp:GridView>
         
        <span style="font-size: 24pt; color: #666699; font-family: Monotype Corsiva; text-decoration: underline">Results</span></asp:Panel>--%>

    <asp:Label ID="Label1" runat="server" Text="STUDENT RESULT " style="z-index: 1; left: 146px; top: 259px; position: absolute; width: 235px" ForeColor="#0066ff" Font-Bold="true" >
    </asp:Label>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" style="z-index: 1; left: 337px; top: 286px; position: absolute; height: 182px; width: 591px">
        <Columns>
            <asp:BoundField HeaderText="Subject Name">
            <ControlStyle BackColor="#009900" />
            </asp:BoundField>
            <asp:BoundField DataField="name" HeaderText="Student Name">
            <ControlStyle BackColor="#009900" />
            </asp:BoundField>
            <asp:BoundField DataField="Score" HeaderText="Score">
            <ControlStyle BackColor="#009900" />
            </asp:BoundField>
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

</asp:Content>
