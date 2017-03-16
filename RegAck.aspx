        <%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="RegAck.aspx.cs" Inherits="OnlineExamSystem.RegAck" %>
        <asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
        
      <title> Online Examination Page </title>
      
      <style type="text/css">
              html { 
                    background: url("http://www.recruitcheck.com/media/1438036/Employment-Personality-Test.png") no-repeat center center fixed; 
                    -webkit-background-size: cover;
                    -moz-background-size: cover;
                    -o-background-size: cover;
                     background-size: cover;
                   }
          
         .style1
         {  
            width: 156px;
         }
         .style2
         {
            width: 332px;
         }
      </style>
      
        </asp:Content>

        <asp:Content ID="Content2" ContentPlaceHolderID="MainSection" runat="server">
        <form runat="server" role="form">
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Firebrick"
        Style="z-index: 100; left: 168px; position: absolute; top: 424px" Text="your registered number is:"
        Width="224px"></asp:Label>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Firebrick"
        Style="z-index: 101; left: 422px; position: absolute; top: 434px"
        Width="136px"></asp:Label>
        <br />
        <strong><span style="font-size: 32pt;
        color: darkseagreen; font-family: Monotype Corsiva"> &nbsp; Successfully  Registered
       <br />
        </span></strong>
        <asp:Button ID="Button1" runat="server" ForeColor="#004000" PostBackUrl="~/Index.aspx"
        Style="z-index: 103; left: 280px; position: absolute; top: 512px" Text="Click   To    Login"
        Width="224px" OnClick="Button1_Click" />
        </form>
        </asp:Content>
