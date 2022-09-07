<%@ Page Title="Add Person" Language="C#" MasterPageFile="~/UI/Admin/Admin.master" AutoEventWireup="true" CodeFile="AddReporterEditor.aspx.cs" Inherits="UI_Admin_AddReporterEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="wrapper">
        
                   <div id="page-wrapper">
                  <h3 style="color:green;">  <i class="fa fa-plus-square-o" style="color:green;"></i>&nbsp Add Person</h3>
                       <br />
                       
                                     <div class="input-group" >
                <span class="input-group-addon">Available Person</span>
                <asp:DropDownlist ID="ddlavailableperson" CssClass="form-control" runat="server">
                    
                </asp:DropDownlist>
          </div>
                       <br />
                       <div class="input-group" >
                <span class="input-group-addon">Person Type</span>
                <asp:DropDownlist ID="ddlpersontype" CssClass="form-control" runat="server">
                     <asp:ListItem Value="0">Select</asp:ListItem>
                     <asp:ListItem Value="1">Editor</asp:ListItem>
                     <asp:ListItem Value="2">Reporter</asp:ListItem>
                     
                </asp:DropDownlist>
          </div>
                       <br />
                       <div class="input-group" >
                <span class="input-group-addon">Select Editor</span>
                <asp:DropDownlist ID="ddlselecteditor" CssClass="form-control" runat="server">
                    
                </asp:DropDownlist>
          </div>
                       <br />
                       <div class="input-group">
                
                              <span class="input-group-addon">Person Name</span>
                <asp:textbox id="txtpersonname" cssclass="form-control" runat="server"></asp:textbox>
                        
                            <span class="input-group-addon"></span>                </div>
                       <br />
                       <div class="input-group" >
                <span class="input-group-addon">Place</span>
                <asp:DropDownlist ID="ddlplace" CssClass="form-control" runat="server">
                    
                </asp:DropDownlist>
          </div>
                       <br />
                            <div class="input-group">
                
                              <span class="input-group-addon">Mobile</span>
                <asp:Textbox id="txtmobile" cssclass="form-control" runat="server"></asp:Textbox>
                                 <span class="input-group-addon"></span>
                                        </div>
                       <br />
                            <div class="input-group">
                
                              <span class="input-group-addon">E-Mail Id</span>
                <asp:Textbox id="txtemail" textmode="Email" cssclass="form-control" runat="server"></asp:Textbox>
                                 <span class="input-group-addon"></span>
                                        </div>
                       <br />
                            <div class="input-group">
                
                              <span class="input-group-addon">Correspondence Address</span>
                <asp:Textbox id="txtcorresadd"  textmode="MultiLine" cssclass="form-control" runat="server"></asp:Textbox>
                                 <span class="input-group-addon"></span>
                                        </div>
                       <br />
                            <div class="input-group">
                
                              <span class="input-group-addon">Permanent Address</span>
                <asp:Textbox id="txtpermadd" cssclass="form-control" TextMode="MultiLine" runat="server"></asp:Textbox>
                                 <span class="input-group-addon"><asp:Checkbox  runat="server"/>&nbsp Same as above.</span>
                                        </div>
                       <br />
                            <div class="input-group">
                
                              <span class="input-group-addon">Date Of Joining</span>
                <asp:Textbox id="txtdoj" textmode="Date" cssclass="form-control" runat="server"></asp:Textbox>
                                        
                             <span class="input-group-addon"></span></div>
                       <br />
                            <div class="input-group">
                
                              <span class="input-group-addon">Date Of Birth</span>
                <asp:Textbox id="txtdob" TextMode="Date" cssclass="form-control" runat="server"></asp:Textbox>
                                        
                             <span class="input-group-addon"></span></div>
                       <br />
                                 <div class="input-group" >
                <span class="input-group-addon">Gender</span>
                <asp:DropDownlist ID="ddlgender" CssClass="form-control" runat="server">
                     <asp:ListItem Value="0">Select</asp:ListItem>
                     <asp:ListItem Value="1">M</asp:ListItem>
                     <asp:ListItem Value="2">F</asp:ListItem>
                    </asp:DropDownlist>
                          
                                     </div>
                                     <br />

                            <div class="input-group">
                
                              <span class="input-group-addon">Anniversary</span>
                <asp:Textbox id="txtanniversary" textmode="Date" cssclass="form-control" runat="server"></asp:Textbox>
                                 <span class="input-group-addon"></span>
                                        </div>
                       <br />
                       
                       <asp:Label id="lblimg"  runat="server" text="Person Image"></asp:Label>
                       <div class="input-group">
                       <asp:FileUpload  id ="fueditorimg" runat="server" CssClass="form-control"></asp:FileUpload>
                       <span class="input-group-addon"></span>  
                       </div>
                        

                       
                       <br />
                       <asp:Label id="lbleditordescription" runat="server" text="Person Description"></asp:Label>
                       <div class="input-group">
                        
                       <asp:FileUpload  id ="fueditordescription" runat="server" CssClass="form-control"></asp:FileUpload>
                         <span class="input-group-addon"></span>
                           </div>
                       <br />
                       <asp:linkbutton id="btnaddperson" runat="server" cssclass="btn btn-block btn-success">
                           <i class="fa fa-plus-square"></i> &nbsp Add Person
                       </asp:linkbutton> 
             
                       
                </div>
                
        
        </div>
</asp:Content>

