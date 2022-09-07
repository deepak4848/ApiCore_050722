<%@ Page Title="Add News Type/Category" Language="C#" MasterPageFile="~/UI/Admin/Admin.master" AutoEventWireup="true" CodeFile="AdminAddNews.aspx.cs" Inherits="UI_Admin_AdminAddNews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="wrapper">
        
                 <div id="wrapper">
        
                   <div id="page-wrapper">
                       
                       <h2 style="color:green;">  <i class="fa fa-plus-
square-o" style="color:green;"></i>&nbsp Add News Type/Category</h2>
                       <div class="col-md-6">
                            <div class="panel-heading" >
                                <h4 class="panel-title" 
style="color:black;">News Type</h4>
                           </div>
                           <div class="panel-body" style="border:1px 
solid grey;">
                 
                           <div class="input-group" >
                <span class="input-group-addon">Available Title</span>
                <asp:DropDownlist ID="ddlavailabletitle" CssClass="form-
control" runat="server">
                    
                </asp:DropDownlist>
            </div>
                         <br />
                         <div class="input-group">
                
                              <span class="input-group-addon">News 
Title</span>
                <asp:Textbox cssclass="form-control" ID="txtTypeTitle" 
runat="server"></asp:Textbox>
                                        </div>
                           <br />
                <asp:button id="btnnewstypeadminupdate" runat="server" 
cssclass="btn btn-success btn-block" text="Add Type" 
OnClick="btnnewstypeadminupdate_Click"/>
                    </div>
                           </div>
                       <div class="col-md-6">
                           
                 <div class="panel-heading">
                     <h4 class="panel-title" style="color:black;">News 
Category</h4>
                 </div>
                           <div class="panel-body" style="border:1px 
solid grey;">
                              <div class="input-group" >
                <span class="input-group-addon">Available Category</span>
                <asp:DropDownlist ID="ddlavailablecategory"  
AutoPostBack="true" CssClass="form-control" runat="server">
                    
                </asp:DropDownlist>
                 
                
                        </div>
                           <br />  
                                     <div class="input-group">
                
                 <span class="input-group-addon">News Category</span>     
                   
                <asp:Textbox id="txtnewscategory" cssclass="form-control" 
runat="server"></asp:Textbox>
                                         </div>
                <br />
                <asp:button id="newscategoryupdateadmin"  CssClass="btn 
btn-block btn-success" runat="server" Text="Add Category" 
OnClick="newscategoryupdateadmin_Click">
                    
                </asp:button>
                         </div>
                         
                    </div>
                     
                
                </div>
        <br />
        </div>


</asp:Content>

