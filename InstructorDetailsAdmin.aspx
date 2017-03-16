<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="InstructorDetailsAdmin.aspx.cs" Inherits="OnlineExamSystem.InstructorDetailsAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <br />
    <asp:Panel ID="Panel1" runat="server" BackColor="PapayaWhip" Height="384px" Style="z-index: 100;
        left: 16px; position: absolute; top: 208px" Width="976px" BorderStyle="Groove">
        &nbsp;&nbsp; 
    <asp:Image ID="Image1" runat="server" Height="112px" ImageUrl="~/pictures/img9.jpg"
         Width="200px" style="z-index: 102; left: 685px; position: absolute; top: 10px"  />
           <span style="font-size: 24pt; font-family: Monotype Corsiva">
           <span style="color: #000033; text-decoration: underline">Instructor
                Details</span></span>&nbsp;
    <asp:GridView ID="GridView1" runat="server" Style="z-index: 101; left: 0px; position: absolute;
        top: 136px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Font-Size="Large" ForeColor="MidnightBlue" Height="152px" Width="192px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
        &nbsp;
    </asp:Panel>
</asp:Content>
