<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPwd.aspx.cs" Inherits="OnlineExamSystem.ForgotPwd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Online Examination  Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server" Height="320px" Style="z-index: 100; left: 304px; position: absolute; top: 72px"
                Width="424px" BackImageUrl="~/pictures/imag1.jpg">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; <span style="text-decoration: underline">


                <span style="font-size: 24pt; color: #330033; font-family: Monotype Corsiva">Forgot Password ?</span>
            </span>

                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#004000" Style="z-index: 100; left: 16px; position: absolute; top: 80px"
                    Text="User Id"></asp:Label>
                <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="#004000" Style="z-index: 101; left: 16px; position: absolute; top: 136px"
                    Text="Question"></asp:Label>
                <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="#004000" Style="z-index: 102; left: 16px; position: absolute; top: 192px"
                    Text="Answer"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 103; left: 155px; position: absolute; top: 75px"
                    OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                <asp:Button ID="Button3" runat="server" Height="40px" OnClick="Button3_Click" Style="z-index: 104; left: 64px; position: absolute; top: 352px"
                    Text="Click to go to Home Page" Width="248px" />
                <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 105; left: 157px; position: absolute; top: 183px"
                    TextMode="MultiLine"></asp:TextBox>
                <asp:Label ID="Label4" runat="server" Style="z-index: 106; left: -86px; position: absolute; top: 152px"
                    Width="64px" Font-Bold="True" Font-Names="Monotype Corsiva" ForeColor="DodgerBlue"></asp:Label>
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Monotype Corsiva"
                    ForeColor="DodgerBlue" Style="z-index: 111; left: -284px; position: absolute; top: 152px"
                    Text="Your password is:" Width="176px"></asp:Label>
                &nbsp;
			&nbsp;&nbsp;
		<asp:DropDownList ID="DropDownList1" runat="server" Style="z-index: 108; left: 154px; position: absolute; top: 133px; height: 18px; width: 243px;"
         Font-Bold="true" Font-Italic="true" ForeColor="#cc0000"   OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem Text="--Select--" Selected="True" />
            <asp:ListItem Text="WHAT IS MOTHER'S MAIDEN NAME?" />
            <asp:ListItem Text="WHAT IS YOUR PET NAME?" />
            <asp:ListItem Text="WHO IS YOUR FAVORITE ACTOR?" />
        </asp:DropDownList>
                <asp:Button ID="Button1" runat="server" Style="z-index: 109; left: 88px; position: absolute; top: 264px"
                    Text="Submit" Height="30px" OnClick="Button1_Click" Width="70px" />
                <asp:Button ID="Button2" runat="server" Style="z-index: 110; left: 224px; position: absolute; top: 264px"
                    Text="Cancel" Height="30px" OnClick="Button2_Click" Width="70px" />
            </asp:Panel>

        </div>
    </form>
</body>
</html>
