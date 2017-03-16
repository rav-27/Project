<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="OnlineExamSystem.Registration" %>

<%--<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">--%>

<html xmlns="http://www.w3.org/1999/xhtml" >

   <head runat="server">
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
      
   </head>
    <body>
        <form id="form1" runat="server" role="form" >
            <asp:Panel ID="Panel1" runat="server" style="margin-left: 166px" Width="687px">
            </asp:Panel>
   
            <div style="text-align:center;">
               
               <table style="width: 100%; z-index: 1; left: 0px; top: 37px; position: absolute; height: 68px;">
                    <tr>

                        <td class="auto-style1">
                            <asp:Label ID="lblUser" runat="server" Text="User Name : " Font-Bold="True" Font-Italic="True" ForeColor="Black" ></asp:Label>
                        </td>
                     
                        <td class="auto-style3">
                            <asp:TextBox ID="txtUser" runat="server" ToolTip="UserName"  Width="333px" ></asp:TextBox>
                        </td>
                       <td>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Username Necessary" ControlToValidate="txtUser" Font-Bold="True" Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>
                       </td>
                    </tr>
                  
                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="lblDob" runat="server" Text="D.O.B : " Font-Bold="True" Font-Italic="True" ForeColor="Black"></asp:Label>
                        </td>
                        <td class="auto-style3">
                            <asp:TextBox ID="txtDob" runat="server" TextMode="Date" ToolTip="D.O.B" Width="334px" ></asp:TextBox>
                        </td>
                        <td>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Field is necessary" ControlToValidate="txtDob" Font-Bold="True" Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>
                       </td>
                        
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="lblGender" runat="server" Text="Please Specify your Gender : " Font-Bold="True" Font-Italic="True" ForeColor="Black" ></asp:Label>
                        </td>
                        <td class="auto-style3">
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server"  RepeatDirection="Horizontal"  Font-Bold="true" Height="111px"  TextAlign="Right" Width="338px" EnableTheming="True" ForeColor="Red" Font-Italic="true" >
                               <asp:ListItem Text="Male"  />
                                <asp:ListItem Text="Female" />
                            </asp:RadioButtonList>
                            <td>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Field is necessary" ControlToValidate="RadioButtonList1" Font-Bold="True" Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>
                       </td>
                        
                        
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="lblCollege" runat="server" Text="College : " Font-Bold="True" Font-Italic="True" ForeColor="Black"></asp:Label>
                        </td>
                        <td class="auto-style3">
                            <asp:TextBox ID="txtCollege" runat="server" ToolTip="Enter the University Name" Width="333px"></asp:TextBox>
                        </td>
                        <td>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Field is necessary" ControlToValidate="txtCollege" Font-Bold="True" Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>
                       </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="lblUserId" runat="server" Text="User ID :" Font-Bold="True" Font-Italic="True" ForeColor="Black"></asp:Label>
                        </td>
                        <td class="auto-style3">
                            <asp:TextBox ID="txtUserId" runat="server" ToolTip="Enter User ID : " Width="83px" ></asp:TextBox>
                        </td>
                       <td>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Field is necessary" ControlToValidate="txtUserId" Font-Bold="True" Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>
                       </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="lblpwd" runat="server" Text="Password : " Font-Bold="True" Font-Italic="True" ForeColor="Black"></asp:Label>
                        </td>
                        <td class="auto-style3">
                            <asp:TextBox ID="txtpwd" runat="server" TextMode="Password" ToolTip="Password" Width="333px" ></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" CssClass="auto-style1" Display="Dynamic" ErrorMessage="Password Needed" Font-Bold="True" Font-Italic="True" ForeColor="Red" ControlToValidate="txtpwd"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="lblrpwd" runat="server" Text="Retype-Password" Font-Bold="True" Font-Italic="True" ForeColor="Black"></asp:Label>
                        </td>
                        <td class="auto-style3">
                            <asp:TextBox ID="txtrpwd" runat="server" TextMode="Password" ToolTip="Retype-Password" CssClass="auto-style" Width="333px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Retype your password" ControlToValidate="txtrpwd" Font-Bold="True" Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password do not match" ControlToCompare="txtpwd" ControlToValidate="txtrpwd" CssClass="auto-style" Font-Bold="True" Font-Italic="True" ForeColor="Red"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="lblUsertype" runat="server" Text="User Type : " Font-Bold="True" Font-Italic="True" ForeColor="Black"></asp:Label>
                        </td>
                        <td class="auto-style3">
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style1" Font-Bold="true" Font-Italic="true" ForeColor="#990000">
                                   <asp:ListItem Text="--Select--"  Selected="True" />
                                    <asp:ListItem Text="Admin" />
                                <asp:ListItem Text="Instructor" />
                                <asp:ListItem Text="Student" />
                            </asp:DropDownList>
                            
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Filed is necessary" Font-Bold="True" Font-Italic="True" ForeColor="Red" ControlToValidate="DropDownList1"></asp:RequiredFieldValidator>
                        </td>
                       
                        
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="lblSecurityqn" runat="server" Text="Security Question : " Font-Bold="True" Font-Italic="True" ForeColor="Black" ></asp:Label>
                        </td>
                        <td class="auto-style3">
                            <asp:DropDownList ID="DropDownList2" runat="server" Font-Bold="true" Font-Italic="true" ForeColor="#800000" CssClass="auto-style1" >
                            <asp:ListItem Text="--Select--" Selected="True" />
                                <asp:ListItem Text="WHAT IS MOTHER'S MAIDEN NAME?" />
                                <asp:ListItem  Text="WHAT IS YOUR PET NAME?"  />
                                <asp:ListItem Text="WHO IS YOUR FAVORITE ACTOR?"  />
                            </asp:DropDownList>
                        </td>
                       <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Field is necessary" ControlToValidate="DropDownList2" Font-Bold="True" Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    
                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="lblanswer" runat="server" Text="Answer :" Font-Bold="True" Font-Italic="True" ForeColor="Black"></asp:Label>
                        &nbsp;</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="txtanw" runat="server" Width="332px" Font-Italic="false"></asp:TextBox>
                            &nbsp;</td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="DropDownList2" Font-Bold="True" Font-Italic="True" ForeColor="Red">Field is necessary</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                   
                </table>
            </div>
          
            <asp:Button ID="txtSubmit" runat="server" style="z-index: 1; left: 345px; top: 422px; position: absolute" Text="SUBMIT" Font-Bold="True" Font-Italic="True" Font-Size="Small" ForeColor="Black" OnClick="txtSubmit_Click" BorderStyle="Solid" />
            <asp:Button ID="txtCancel" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="Red" OnClick="txtCancel_Click" style="z-index: 1; left: 428px; top: 423px; position: absolute" Text="CANCEL" BorderStyle="Solid" />
         
            <asp:HyperLink ID="hplHomepage" runat="server" NavigateUrl="~/Index.aspx" Font-Bold="True" Font-Italic="True" style="z-index: 1; left: 311px; top: 472px; position: absolute; width: 232px; height: 23px;" BorderStyle="Solid" ForeColor="Black"> CLICK TO GOTO HOMEPAGE </asp:HyperLink>
        </form>
    </body>
</html>