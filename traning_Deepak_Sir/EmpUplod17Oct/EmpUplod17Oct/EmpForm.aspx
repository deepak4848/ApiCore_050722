<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmpForm.aspx.cs" Inherits="EmpUplod17Oct.EmpForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
        <tr>
            <td>NAME:</td>
            <td><asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>GENDER:</td>          
            <td><asp:RadioButtonList ID="rblgender" runat="server" RepeatColumns="3">
               <asp:ListItem Text="male" value="1"></asp:ListItem>
                <asp:ListItem Text="female" value="2"></asp:ListItem>
                <asp:ListItem Text="other" value="3"></asp:ListItem>
                </asp:RadioButtonList></td>
        </tr>
        <tr>
            <td>Image Upload:</td>
            <td><asp:fileupload ID="fuimag" runat="server"></asp:fileupload></td>
        </tr>
        <tr>
            <td></td>
            <td><asp:Button ID="btninsert" runat="server" Text="submit" OnClick="btninsert_Click"></asp:Button></td>
        </tr>
         <tr>
            <td></td>
            <td><asp:GridView ID="gvemployee" runat="server" OnRowCommand="gvemployee_RowCommand"  AutoGenerateColumns="false">
                <Columns>
                    <asp:TemplateField HeaderText="employee id">
                        <ItemTemplate>
                            <%# Eval("id") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="employee name">
                        <ItemTemplate>
                            <%# Eval("name") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="employee gender">
                        <ItemTemplate>
                            <%# Eval("gender").ToString()=="1" ? "male" :Eval("gender").ToString()=="2" ? "female":"other" %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="employee image">
                        <ItemTemplate>
                            <asp:Image ID="imgg" runat="server" Width="50px" Height="40px" ImageUrl='<%#Eval("img","~/PICS/{0}") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                                          <asp:TemplateField>
                            <ItemTemplate>
                               <asp:Button ID="btndelete" runat="server" Text="delete" BackColor="Red" ForeColor="White" CommandName="A" CommandArgument='<%#Eval("id") %>' />
                                <asp:Button ID="btnedit" runat="server" Text="edit" BackColor="Blue" ForeColor="White" CommandName="B" CommandArgument='<%#Eval("id") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>

                </Columns>
                </asp:GridView></td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
