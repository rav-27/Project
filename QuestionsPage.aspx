<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QuestionsPage.aspx.cs" Inherits="OnlineExamSystem.QuestionsPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Online Examination Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Label ID="lblUser" runat="server" style="z-index: 1; left: 12px; top: 15px; position: absolute; height: 24px; width: 92px" Font-Bold  ="true" ForeColor="#ff0000">
    </asp:Label>
    </div>

        <asp:GridView runat="server" ID="Gridview1" style="z-index: 1; left: 46px; top: 156px; position: absolute; height: 288px; width: 909px" AutoGenerateColumns="False" AllowPaging="True" CellPadding="4" PageSize="1" HorizontalAlign="Center" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellSpacing="2">
            <Columns>
                <asp:TemplateField Visible="False">
                    <HeaderTemplate>Question Id</HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblQuestionid" runat="server" Text='<%#Eval("Qid")%>' Visible="false">
                        </asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
              
                <asp:TemplateField>
            <HeaderTemplate>Questions</HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblQuestions" runat="server" Text='<%#Eval("Qn")%>' ></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <HeaderTemplate>Options</HeaderTemplate>
                    <ItemTemplate>
                        <asp:RadioButton ID="rbOption1" Text='<%#Eval("options1") %>' runat="server" />
                        <asp:RadioButton ID="rbOption2" Text='<%#Eval("options2") %>' runat="server" />
                        <asp:RadioButton ID="rbOption3" Text='<%#Eval("options3") %>' runat="server" />
                        <asp:RadioButton ID="rbOption4" Text='<%#Eval("options4") %>' runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerSettings PageButtonCount="1" Visible="False" />

           
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
          
        </asp:GridView>
        
        <asp:Button ID="btnNxt" runat="server" style="z-index: 1; left: 805px; top: 475px; position: absolute; width: 73px;" Text="Next" OnClick="btnNxt_Click" />
        <asp:Button ID="btnPrev" runat="server" style="z-index: 1; left: 181px; top: 476px; position: absolute; " Text="Previous" OnClick="btnPrev_Click" />
        <asp:Label ID="lblSub" runat="server" style="z-index: 1; left: 280px; top: 86px; position: absolute; width: 145px" Text="Choose your subject : "></asp:Label>
        <asp:DropDownList ID="ddlSub" runat="server" style="z-index: 1; left: 434px; top: 82px; position: absolute; width: 125px" Font-Size="Small" ForeColor="#0066ff" AutoPostBack="true" OnSelectedIndexChanged="ddlSub_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:Button ID="btnSubmit" runat="server" style="z-index: 1; left: 475px; top: 546px; position: absolute; width: 87px" Text="Submit" OnClick="btnSubmit_Click" />
    </form>
</body>
</html>
