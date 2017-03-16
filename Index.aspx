<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="OnlineExamSystem.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <title>Online Examination Page</title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 50%;
            left: 50%;
            margin: -150px 0 0 -150px;
            width: 350px;
            height: 300px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainSection" runat="server">
    <div class="auto-style1">
        <h1 >Login</h1>
        <form runat="server" role="form">

            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" ToolTip="Enter Password"></asp:TextBox><br />
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="btn-block" Height="36px" Font-Italic="true" Font-Bold="true" ForeColor="#800000">
                <asp:ListItem>--select--</asp:ListItem>
                <asp:ListItem>Admin</asp:ListItem>
                <asp:ListItem>Instructor</asp:ListItem>
                <asp:ListItem>Student</asp:ListItem>
            </asp:DropDownList><br />

            <asp:Button ID="btnSave" runat="server" Text="Submit" class="btn btn-primary btn-block btn-large" OnClick="btnSave_Click" />
            <br />
            <asp:Button ID="btnCancel" runat="server" Text="Cancel" class="btn btn-block btn-large" ForeColor="Red" OnClick="btnCancel_Click" /><br />

            <asp:HyperLink ID="hlSignup" runat="server" NavigateUrl="~/Registration.aspx" ForeColor="LightSteelBlue" Font-Bold="true" Font-Italic="true"> CLick Here to Register </asp:HyperLink><br />

            <asp:HyperLink ID="hlChangePassword" runat="server" NavigateUrl="~/ChangePwd.aspx" ForeColor="LightSteelBlue" Font-Bold="true" Font-Italic="true"> Click Here to Change Password </asp:HyperLink><br />

            <asp:HyperLink ID="hlForgotPassword" runat="server" NavigateUrl="~/ForgotPwd.aspx" ForeColor="LightSteelBlue" Font-Bold="true" Font-Italic="true"> Forgot Password? </asp:HyperLink><br />

        </form>
    </div>
   
    <asp:Label ID="lblError" runat="server" Font-Bold="true" Font-Italic="true" ForeColor="#ff0000" ></asp:Label>
   
</asp:Content>


