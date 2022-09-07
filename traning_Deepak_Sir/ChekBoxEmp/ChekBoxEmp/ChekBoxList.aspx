<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChekBoxList.aspx.cs" Inherits="ChekBoxEmp.ChekBoxList" %>

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
            <td>NAME</td>
              <td><asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>
        </tr>
         <tr>
            <td>GENDER</td>
              <td><asp:RadioButtonList ID="rblgender" runat="server" RepeatColumns="3">
                  
                   <asp:ListItem Text="male" Value="1"></asp:ListItem>
                  <asp:ListItem Text="female" Value="2"></asp:ListItem>
                  <asp:ListItem Text="other" Value="3"></asp:ListItem>

                  </asp:RadioButtonList></td>
        </tr>
         <tr>
            <td>COURSE</td>
              <td><asp:DropDownList ID="ddlcourse" runat="server">
                  <asp:ListItem Text="---select---" Value="0"></asp:ListItem>
                  <asp:ListItem Text="MCA" Value="1"></asp:ListItem>
                   <asp:ListItem Text="BCA" Value="2"></asp:ListItem>
                   <asp:ListItem Text="B.Tech" Value="3"></asp:ListItem>
                   <asp:ListItem Text="M.Tech" Value="4"></asp:ListItem>
                  </asp:DropDownList></td>
        </tr>
         <tr>
            <td>HOBBIES</td>
              <td><asp:CheckBoxList ID="cblhobbies" runat="server" RepeatColumns="6">
                  <asp:ListItem Text="Cricket" Value="0"></asp:ListItem>
                   <asp:ListItem Text="Music" Value="1"></asp:ListItem>
                   <asp:ListItem Text="Reading" Value="2"></asp:ListItem>
                   <asp:ListItem Text="Cooking" Value="3"></asp:ListItem>
                   <asp:ListItem Text="Swmming" Value="4"></asp:ListItem>
                   <asp:ListItem Text="Coding" Value="5"></asp:ListItem>
                  </asp:CheckBoxList></td>
        </tr>
         <tr>
            <td></td>
              <td><asp:Button ID="btninsert" runat="server" Text="submit" OnClick="btninsert_Click" /></td>
        </tr>
         <tr>
            <td></td>
              <td><asp:GridView ID="grvstudent" OnRowCommand="grvstudent_RowCommand" runat="server" AutoGenerateColumns="false">
                  <Columns>

                      <asp:TemplateField HeaderText="student ID">
                          <ItemTemplate>
                              <%#Eval("id") %>
                          </ItemTemplate>
                      </asp:TemplateField>

                       <asp:TemplateField HeaderText="student Name">
                          <ItemTemplate>
                              <%#Eval("name") %>
                          </ItemTemplate>
                      </asp:TemplateField>


                       <asp:TemplateField HeaderText="student GENDER">
                          <ItemTemplate>
                       <%#Eval("gender").ToString()=="1" ? "male" :Eval("gender").ToString()=="2" ? "female" : "other" %>
                          </ItemTemplate>
                      </asp:TemplateField>

                       <asp:TemplateField HeaderText="student COURSE">
                          <ItemTemplate>
                              <%#Eval("course").ToString()=="1" ? "MCA" :Eval("course").ToString()=="2" ? "BCA":Eval("course").ToString()=="3" ? "B.Tech":"M.Tech" %>
                          </ItemTemplate>
                      </asp:TemplateField>

                       <asp:TemplateField HeaderText="student HOBBIES">
                          <ItemTemplate>
                              <%#Eval("hobbies") %>
                          </ItemTemplate>
                      </asp:TemplateField>

                       <asp:TemplateField >
                          <ItemTemplate>
                             <asp:Button ID="btndelete" runat="server" Text="delete" CommandName="A" CommandArgument='<%#Eval("id") %>' />
                              <asp:Button ID="btnedit" runat="server" Text="edit" CommandName="B" CommandArgument='<%#Eval("id") %>' />
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
