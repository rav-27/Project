<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePwd.aspx.cs" Inherits="OnlineExamSystem.ChangePwd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Online Examination Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Panel ID="Panel1" runat="server" Height="360px" Style="z-index: 100; left: 200px;
            position: absolute; top: 40px" Width="520px" BackImageUrl="~/pictures/img34.jpg">
        <span style="font-size: 24pt;
                color: #003300; font-family: Monotype Corsiva; text-decoration: underline">Change
                Password</span>
        <asp:Label ID="Label1" runat="server" Style="z-index: 101; left: 32px; position: absolute;
            top: 96px" Text="User Id" Font-Bold="True"></asp:Label>
        <asp:Label ID="Label2" runat="server" Style="z-index: 102; left: 24px; position: absolute;
            top: 152px" Text="Old Password" Font-Bold="True"></asp:Label>
        <asp:Label ID="Label3" runat="server" Style="z-index: 103; left: 24px; position: absolute;
            top: 208px" Text="New Password" Font-Bold="True"></asp:Label>
        <asp:Label ID="Label4" runat="server" Style="z-index: 104; left: 24px; position: absolute;
            top: 248px" Text="Re-Enter New Password" Font-Bold="True"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" Style="z-index: 111; left: 248px; position: absolute;
            top: 240px" TextMode="Password"></asp:TextBox>
        &nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 106; left: 248px; position: absolute;
            top: 88px"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 107; left: 248px; position: absolute;
            top: 144px" TextMode="Password"></asp:TextBox>
        <asp:TextBox ID="TextBox3" runat="server" Style="z-index: 108; left: 248px; position: absolute;
            top: 192px" TextMode="Password"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Style="z-index: 109; left: 128px; position: absolute;
            top: 304px" Text="Change" Height="30px" OnClick="Button1_Click" Width="70px" />
        <asp:Button ID="Button2" runat="server" Style="z-index: 110; left: 288px; position: absolute;
            top: 304px" Text="Cancel" Height="30px" OnClick="Button2_Click" Width="70px" /></asp:Panel>
        <asp:Button ID="Button3" runat="server" Height="56px" OnClick="Button3_Click" Style="z-index: 102;
            left: 304px; position: absolute; top: 432px" Text="Click To GoTo Home Page" Width="272px" />
        &nbsp;&nbsp;</div>
    </form>
</body>
</html>
