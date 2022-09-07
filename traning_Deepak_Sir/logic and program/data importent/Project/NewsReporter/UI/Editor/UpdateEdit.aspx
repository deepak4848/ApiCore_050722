<%@ Page Title="" Language="C#" MasterPageFile="~/UI/Editor/Editor.master" AutoEventWireup="true" CodeFile="UpdateEdit.aspx.cs" Inherits="UI_Editor_UpdateEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="wrapper">
        
                   <div id="page-wrapper">
                       <h4>Update News</h4>
                       
            <div class="input-group" >
                <span class="input-group-addon">News Date</span>
               <asp:Textbox ID="txtnewsdate" cssclass="form-control" runat="server" placeholder="dd-mm-yyyy"></asp:Textbox>
                
                        </div>
            <br />
                         
            <div class="input-group" >
                <span class="input-group-addon">News Type</span>
                <asp:DropDownlist ID="ddlnewstype" CssClass="form-control" runat="server">
                   
                </asp:DropDownlist>
                 
                            
            
            </div>
            <br />
            
            <div class="input-group" >
                <span class="input-group-addon">News Category</span>
                <asp:DropDownlist ID="ddlnewscategory" CssClass="form-control" runat="server">
                   
                </asp:DropDownlist>
                 
                
            
            
            </div>
            <br />
                       
            <div class="input-group" >
                <span class="input-group-addon">News Heading</span>
               <asp:Textbox ID="txtheading" cssclass="form-control" runat="server"></asp:Textbox>
                
                
                        </div>
            <br />
                     <div class="col-md-6">
                       
                   <div class="panel-body" style="border:1px solid grey;"     
                 <asp:Label ID="lblnewsimgdesc" CssClass="control-label" runat="server" Text="News Image/Description"></asp:Label>
                         <h6>News Image</h6>
                         <asp:textbox id="txtnewsimg" textmode="multiline" runat="server"></asp:textbox>
                         <asp:fileupload id="fuimagedesc" runat="server"></asp:fileupload>
                         <asp:button id="btnupdateimg" runat="server" text="Update Image"/>
                         <br />
                         <div class="form-group">
                <asp:label id="updatenewsdescription" runat="server" text="News Description"></asp:label>
                <textarea class="form-control" rows="3"></textarea>
                                        </div>
                         <asp:fileupload id="fuuploadnewsdescription" runat="server"></asp:fileupload>
                         <asp:button id="btnupdatedescription" runat="server" text="Update Description"/>
                         <br />                      
                             </div>  
                             </div>
                     <div class="col-md-6">
                         <div class="panel-body" style="border:1px solid grey;"
                        <asp:Label ID="lblnewsdetails" CssClass="control-label" runat="server" Text="News Details"></asp:Label>
                         <h6>Sub Heading</h6>
                            <div class="input-group" >
                
               <asp:Textbox ID="txtsubheadingupdate" cssclass="form-control" runat="server"></asp:Textbox>
                                <br />
                                <br />
                     <asp:Label ID="lblreporterlabel" CssClass="control-label" runat="server" text="Reporter::Label"></asp:Label>
            <div class="input-group" >
               
                <asp:DropDownlist ID="ddlreporterlabel" CssClass="form-control" runat="server">
                     <asp:ListItem Value="0">Select</asp:ListItem>
                     <asp:ListItem Value="1">1</asp:ListItem>
                     <asp:ListItem Value="2">2</asp:ListItem>
                     <asp:ListItem Value="3">2</asp:ListItem>
                     <asp:ListItem Value="4">3</asp:ListItem>
                     <asp:ListItem Value="5">5</asp:ListItem>
                </asp:DropDownlist>
            </div>
            <br />
            <asp:Label ID="lbleditorlabel" CssClass="control-label" runat="server" text="Editor::Label"></asp:Label>
            <div class="input-group" >
               
                <asp:DropDownlist ID="ddleditorlabel" CssClass="form-control" runat="server">
                     <asp:ListItem Value="0">Select</asp:ListItem>
                     <asp:ListItem Value="1">1</asp:ListItem>
                     <asp:ListItem Value="2">2</asp:ListItem>
                     <asp:ListItem Value="3">2</asp:ListItem>
                     <asp:ListItem Value="4">3</asp:ListItem>
                     <asp:ListItem Value="5">5</asp:ListItem>
                </asp:DropDownlist>     
            </div>
            <br />
              <asp:Label ID="lblplacelabel" CssClass="control-label" runat="server" text="Place::Label"></asp:Label>
            <div class="input-group" >
                     <asp:DropDownlist ID="ddlplacelabel" CssClass="form-control" runat="server">
                     <asp:ListItem Value="0">Select</asp:ListItem>
                     <asp:ListItem Value="1">1</asp:ListItem>
                     <asp:ListItem Value="2">2</asp:ListItem>
                     <asp:ListItem Value="3">2</asp:ListItem>
                     <asp:ListItem Value="4">3</asp:ListItem>
                     <asp:ListItem Value="5">5</asp:ListItem>
                </asp:DropDownlist>
                 </div>
            <br />
                  <asp:Label ID="lblprioritylabel" CssClass="control-label" runat="server" text="Priority::Label"></asp:Label>
            <div class="input-group" >
               
                <asp:DropDownlist ID="ddlprioritylabel" CssClass="form-control" runat="server">
                     <asp:ListItem Value="0">Select</asp:ListItem>
                     <asp:ListItem Value="1">1</asp:ListItem>
                     <asp:ListItem Value="2">2</asp:ListItem>
                     <asp:ListItem Value="3">2</asp:ListItem>
                     <asp:ListItem Value="4">3</asp:ListItem>
                     <asp:ListItem Value="5">5</asp:ListItem>
                </asp:DropDownlist>
                <br />
                <asp:checkbox id="chkaccept" runat="server" text="  I Accept for Updates."></asp:checkbox>
                <asp:button id="Button1" runat="server" cssclass="btn btn-success btn-block" text="Update"/>
                </div>
                                </div>
            <br />                               
                          </div>               
                                <br />                        
            <br />
                    </div>
                       <br />
               
                   
                </div>
            </div>
</asp:Content>

