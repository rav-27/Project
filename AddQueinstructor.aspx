<%@ Page Title="" Language="C#" MasterPageFile="~/Instructor.Master" AutoEventWireup="true" CodeBehind="AddQueinstructor.aspx.cs" Inherits="OnlineExamSystem.AddQueinstructor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1"  runat="server">
   
        <table style="width: 968px; z-index: 1; left: 98px; top: 234px; position: absolute; height: 245px;">
           
            <tr>
                <td style="height:17px; width=323px">
                    <asp:Label ID="selectlbl" runat="server" > Select Subject : </asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlsub" runat="server" style="z-index: 1; left: 330px; top: 3px; position: absolute; height: 21px; width: 103px; right: 527px" AutoPostBack="true" OnSelectedIndexChanged="ddlsub_SelectedIndexChanged"/>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="ddlsub" ErrorMessage="Choose a subject" ForeColor="Red" style="z-index: 1; left: 626px; top: 3px; position: absolute"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
        <tr>
            <td style="height: 17px; width: 323px">
                <asp:Label ID="Label1" runat="server" For="txtAdd"> Add question : </asp:Label></td>
                <td>
                    <asp:TextBox ID="txtAdd" TextMode="MultiLine" runat="server" Width="256px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAdd" ErrorMessage="Enter the question" ForeColor="Red" style="z-index: 1; left: 626px; top: 29px; position: absolute; height: 28px; width: 121px"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 17px; width: 323px">
                <asp:Label ID="Label2" runat="server" For="txtOption1"> Option1 : </asp:Label>
                <td>
                    <asp:TextBox ID="txtOption1" TextMode="MultiLine" runat="server" Width="256px"></asp:TextBox>            
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Option 1" style="z-index: 1; left: 626px; top: 74px; position: absolute; height:28px; width: 147px" ControlToValidate="txtOption1" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </td>
        </tr>
        <tr>
            <td style="height: 17px; width: 323px">
                <asp:Label ID="Label3" runat="server" For="txtOption2"> Option2 : </asp:Label>
                <td>
                    <asp:TextBox ID="txtOption2" runat="server" TextMode="MultiLine" Width="256px"></asp:TextBox>            
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Option 2" ControlToValidate="txtOption2" ForeColor="Red" style="z-index: 1; left: 625px; top: 118px; position: absolute; width: 150px"></asp:RequiredFieldValidator>
                </td>
            </td>
        </tr>
        <tr>
            <td style="height: 17px; width: 323px">
                <asp:Label ID="Label4" runat="server" For="txtOption3" > Option3 : </asp:Label>
                <td>
                    <asp:TextBox ID="txtOption3" runat="server" TextMode="MultiLine" Width="256px"></asp:TextBox>            
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Option 3" ControlToValidate="txtOption3" ForeColor="Red" style="z-index: 1; left: 626px; top: 157px; position: absolute; width: 148px"></asp:RequiredFieldValidator>
                </td>
            </td>
        </tr>
        <tr>
            <td style="height: 17px; width: 323px">
                <asp:Label ID="Label5" runat="server" For="txtOption4"> Option4 : </asp:Label>
                <td>
                    <asp:Label ID="lblSubName" runat="server" style="z-index: 1; left: -89px; top: -35px; position: absolute; width: 90px; height: 21px" ></asp:Label><br />
                    <asp:TextBox ID="txtOption4" runat="server" TextMode="MultiLine" Width="256px"></asp:TextBox>            
                    <asp:Label ID="lblMessage1" runat="server" style="z-index: 1; left: 774px; top: -38px; position: absolute; height: 25px; width: 165px"  ForeColor="#33cc33"></asp:Label>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter Option  4" ControlToValidate="txtOption4" ForeColor="Red" style="z-index: 1; left: 625px; top: 198px; position: absolute; width: 152px"></asp:RequiredFieldValidator>
                </td>
            </td>
        </tr>
        <tr>
            <td style="height: 17px; width: 323px">
                <asp:Label ID="Label6" runat="server" For="txtAnswer"> Answer : </asp:Label>
                <td>
                    <asp:TextBox ID="txtAnswer" runat="server" TextMode="MultiLine" Width="256px"></asp:TextBox>            
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter the Answer" ControlToValidate="txtAnswer" ForeColor="Red" style="z-index: 1; left: 625px; top: 236px; position: absolute"></asp:RequiredFieldValidator>
                    <asp:Label ID="lblMessage2" runat="server" style="z-index: 1; left: 777px; top: -13px; position: absolute; width: 92px" ForeColor="Red" ></asp:Label>
                </td>
            </td>
        </tr>
        <tr>
            <td style="height: 17px; width: 323px">
                <td>
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" ForeColor ="Green" Font-Bold="true" BorderStyle="Solid" OnClick="btnSubmit_Click" />
                    &nbsp;
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" ForeColor ="Red" Font-Bold="true" BorderStyle="Solid" OnClick="btnCancel_Click" />
                </td>
            </td>
        </tr>
    </table>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="qid" Height="264px" Width="928px" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None"  style="z-index: 1; width: 928px; height: 264px; position: absolute; top: 573px; left: 149px">
    <Columns>
       <%-- <asp:BoundField DataField="qid" HeaderText="Question ID" />--%>
        <asp:BoundField DataField="Qn" HeaderText="Question" />
        <asp:BoundField DataField="Options1" HeaderText="Option1" />
        <asp:BoundField DataField="Options2" HeaderText="Option2" />
        <asp:BoundField DataField="Options3" HeaderText="Option3" />
        <asp:BoundField DataField="Options4" HeaderText="Option4" />
        <asp:BoundField DataField="ActualAnswers" HeaderText="Answer" />
        
        </Columns>
     <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
     <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
     <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
     <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
     <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
     <SortedAscendingCellStyle BackColor="#F1F1F1" />
     <SortedAscendingHeaderStyle BackColor="#594B9C" />
     <SortedDescendingCellStyle BackColor="#CAC9C9" />
     <SortedDescendingHeaderStyle BackColor="#33276A" />
    </asp:GridView>

</asp:Content>
