<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OPBasedscore.aspx.cs" Inherits="OnlineExamSystem.OPBasedscore" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Online Examination Page</title>
</head>
<body background="pictures/img22.jpg">
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblUser" runat="server" ForeColor="#990000"></asp:Label>
    </div>
        <asp:GridView ID="GridView1" runat="server" HorizontalAlign="Center"  style="z-index: 1; left: 425px; top: 147px; position: absolute; height: 185px; width: 403px" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
            <Columns>
                <asp:BoundField DataField="NoQuestionAnswered" HeaderText="Questions Answered" HeaderStyle-HorizontalAlign="Center" >
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="NoCorrectAnswer" HeaderText="Correct Answers" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="NoWrongAnswer" HeaderText="Wrong Answers" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="TotalMarks" HeaderText="Total Marks" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                

            </Columns>
            <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
           
        </asp:GridView>
        <asp:Button ID="btnHome" runat="server" style="z-index: 1; left: 537px; top: 494px; position: absolute" ForeColor="#990000" Text="Click for Homepage" Font-Bold="true" OnClick="btnHome_Click" />
    &nbsp;</form>
</body>
</html>
