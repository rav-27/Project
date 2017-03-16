<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OPBasedQP.aspx.cs" Inherits="OnlineExamSystem.OPBasedQP" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Online Examination Page</title>


<%--<script>
    function startCountdown(timeLeft) {
        var interval = setInterval(countdown, 1000);
        update();

        function countdown() {
            if (--timeLeft > 0) {
                update();
            } else {
                clearInterval(interval);
                update();
                completed();
            }
        }

        function update() {
            hours = Math.floor(timeLeft / 3600);
            minutes = Math.floor((timeLeft % 3600) / 60);
            seconds = timeLeft % 60;

            document.getElementById('time-left').innerHTML = '' + hours + ':' + minutes + ':' + seconds;
        }

        function completed() {
            window.location = 'OPBasedscore.aspx';
        }
    }
</script>--%>

                <style type="text/css">
                        .auto-style1 {
                        position: absolute;
                        top: 546px;
                        left: 609px;
                        z-index: 1;
                                      }
                 </style>
                 </head>

   
<body onload="startCountdown(15);">
    <form id="form1" method="post" runat="server">
        <div>
            <%--<asp:ScriptManager ID="ScriptManager1" runat="server" ></asp:ScriptManager>--%>
		<div >
            <asp:Label ID="lblUser" runat="server" ForeColor="#009933"></asp:Label>
			<asp:UpdatePanel ID="UpdatePanel1" runat="server" >
			<ContentTemplate>
                <div  style="text-align:center"  >
                    <span id="time-left"></span>
			    <asp:Label ID="Label2" runat="server" Font-Bold="true" ForeColor="#000099" 
                    Style="z-index: 1; left: 16px; top: 79px; position: absolute; height: 26px; 
                    width: 107px;" Text="Label"></asp:Label>
			</ContentTemplate>
			</asp:UpdatePanel>
			</div>
            </div>

       
        <asp:GridView ID="GridView1" runat="server" Style="z-index: 100; left: 240px; position: absolute; top: 122px; width: 854px; height: 383px;"
            AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" 
            PageSize="1" PagerSettings-PageButtonCount="1" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" AllowSorting="true">

            <Columns>
                <asp:TemplateField>
                    <HeaderTemplate>Question ID</HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblQuestionId" Text='<%#Eval("qid")%>' runat="server"></asp:Label>
                    </ItemTemplate>
                    <ControlStyle Font-Bold="True" Font-Italic="False" />
                    <FooterStyle Font-Bold="True" Font-Italic="True" HorizontalAlign="Justify" />
                </asp:TemplateField>
                <asp:TemplateField>
                    <HeaderTemplate>Question</HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblQuestion" Text='<%#Eval("qn")%>' runat="server"></asp:Label>
                    </ItemTemplate>
                    <FooterStyle HorizontalAlign="Justify" />
                </asp:TemplateField>
                <asp:TemplateField>
                    <HeaderTemplate>Options</HeaderTemplate>
                    <ItemTemplate>
                        <asp:RadioButton ID="rbOption1" GroupName="GA1" Text='<%#Eval("options1") %>' runat="server" OnClientClick="return false" />
                        <asp:RadioButton ID="rbOption2" GroupName="GA1" Text='<%#Eval("options2") %>' runat="server" OnClientClick="return false" />
                        <asp:RadioButton ID="rbOption3" GroupName="GA1" Text='<%#Eval("options3") %>' runat="server" OnClientClick="return false" />
                        <asp:RadioButton ID="rbOption4" GroupName="GA1" Text='<%#Eval("options4") %>' runat="server" OnClientClick="return false" />
                    </ItemTemplate>
                    <FooterStyle HorizontalAlign="Justify" />
                </asp:TemplateField>
            </Columns>
            <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <FooterStyle BackColor="#CCCCCC" />
            <RowStyle BackColor="White" />
            <PagerSettings PageButtonCount="1" Mode="NextPreviousFirstLast" NextPageText="Next" PreviousPageText="Previous"></PagerSettings>
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
        <br />
        <br />
        <div>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" ForeColor="#ff0000" Font-Bold="true" CssClass="auto-style1" Font-Italic="true" OnClick="btnSubmit_Click1" /><br />
        </div>
        <asp:Label ID="Label1" runat="server" Style="z-index: 1; left: 1097px; top: 81px; position: absolute; height: 26px; width: 153px" Text="Label" Font-Bold="true" ForeColor="#000099"></asp:Label>
    </form>

</body>
</html>
