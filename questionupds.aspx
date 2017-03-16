<%@ Page Title="" Language="C#" MasterPageFile="~/Instructor.Master" AutoEventWireup="true" CodeBehind="questionupds.aspx.cs" Inherits="OnlineExamSystem.questionupds" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lblID" runat="server" ForeColor="Green"></asp:Label>
 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="qid" Height="264px" Width="928px" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit1" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing1" OnRowUpdating="GridView1_RowUpdating1" style="z-index: 1; width: 928px; height: 264px; position: absolute; top: 273px; left: 31px">
    <Columns>
       <%-- <asp:BoundField DataField="qid" HeaderText="Question ID" />--%>
        <asp:BoundField DataField="Qn" HeaderText="Question" />
        <asp:BoundField DataField="Options1" HeaderText="Option1" />
        <asp:BoundField DataField="Options2" HeaderText="Option2" />
        <asp:BoundField DataField="Options3" HeaderText="Option3" />
        <asp:BoundField DataField="Options4" HeaderText="Option4" />
        <asp:BoundField DataField="ActualAnswers" HeaderText="Answer" />
        <asp:CommandField ShowEditButton="true" />
        <asp:CommandField ShowDeleteButton="true" />
        </Columns>
     <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
     <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
     <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
     <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
     <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
     <SortedAscendingCellStyle BackColor="#F1F1F1" />
     <SortedAscendingHeaderStyle BackColor="#594B9C" />
     <SortedDescendingCellStyle BackColor="#CAC9C9" />
     <SortedDescendingHeaderStyle BackColor="#33276A" />
    </asp:GridView>




   

    </asp:Content>
