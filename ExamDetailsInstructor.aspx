<%@ Page Title="" Language="C#" MasterPageFile="~/Instructor.Master" AutoEventWireup="true" CodeBehind="ExamDetailsInstructor.aspx.cs" Inherits="OnlineExamSystem.ExamDetailsInstructor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:Panel ID="Panel1" runat="server" Height="424px" Style="z-index: 100; left: 184px;
        position: absolute; top: 272px" Width="664px" BackColor="#E0E0E0">
   
       
        <asp:Image ID="Image1" runat="server" Height="128px"  Width="192px"  ImageUrl="~/pictures/img3.jpg" style="z-index: 102; left: 0px; position: absolute; top: 0px" />
    
       
       <span style="font-size: 24pt; color: #000099; font-family: Monotype Corsiva;
            text-decoration: underline">Exam Details</span></asp:Panel>
             <asp:GridView ID="GridView1" runat="server" Style="z-index: 101; left: 392px; position: absolute;
            top: 424px">
        </asp:GridView>
    <br />
  </asp:Content>
