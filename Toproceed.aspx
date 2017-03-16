<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Toproceed.aspx.cs" Inherits="OnlineExamSystem.Toproceed" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Online Examination Page</title>

      <style type="text/css">
              html { 
                    background: url("http://www.lexiconconsultants.com/img/main-banner/online-exam.jpg") no-repeat center center fixed; 
                    -webkit-background-size: cover;
                    -moz-background-size: cover;
                    -o-background-size: cover;
                     background-size: cover;
                     background-position:center;
                   }
          
         .style1
         {  
            width: 576px;
         }
         .style2
         {
            width: 576px;
         }
      </style>

</head>
<body >
    <p>
        <br />
    </p>
    <form id="form1" runat="server">
        <div>
        </div>
    <div>
        <asp:Panel ID="Panel1" runat="server"    Style="z-index: 100;
            left: 6px; position: absolute; top: 14px; width: 160px; height: 87px;" BorderColor="#996633" >
        
            <p style="text-align: justify">
                <asp:Button ID="Button1" runat="server" BackColor="#3399FF" BorderColor="Yellow" BorderStyle="Groove" EnableTheming="True" 
                    Font-Bold="True" Font-Italic="False" Font-Names="Times New Roman" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" 
                    Font-Underline="False" ForeColor="White" Height="30px" OnClick="Button1_Click" Style="z-index: 101;
            left: 1063px; position: absolute; top: 398px; right: -1065px; width: 162px;" Text="Click To Proceed" />
                &nbsp;
                <asp:Label ID="lblUserId" runat="server" Font-Bold="true" ForeColor="#cc0000" > WELCOME </asp:Label>
            </p>
    </asp:Panel>
    </div>
    </form>
</body>
</html>