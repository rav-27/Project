<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="questions.aspx.cs" Inherits="OnlineExamSystem.questions" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" Style="z-index: 100; left: 248px; position: absolute;
            top: 168px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        </asp:GridView>
        <asp:LinkButton ID="LinkButton1" runat="server" Style="z-index: 101; left: 272px;
            position: absolute; top: 352px" Width="128px" PostBackUrl="~/qustions1.aspx">next</asp:LinkButton>
    
    </div>
    </form>
</body>
</html>
