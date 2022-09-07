<%@ Page Title="AddNews" Language="C#" MasterPageFile="~/UI/Editor/Editor.master" AutoEventWireup="true" CodeFile="AddNews.aspx.cs" Inherits="UI_Editor_AddNews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="wrapper">
                   <div id="page-wrapper">
                        <p class="main-text">Add News</p>
            <asp:Label ID="lblnewstype" CssClass="control-label" runat="server" Text="News Type"></asp:Label>
            <div class="input-group" >
                <span class="input-group-addon"></span>
                <asp:DropDownlist ID="ddlnewstype" CssClass="form-control" runat="server">
                     
                    
                </asp:DropDownlist>
                <span class="input-group-addon"></span>
            </div>
            <br />
            <asp:Label ID="lblnewscategory" CssClass="control-label" runat="server" Text="News Category"></asp:Label>
            <div class="input-group" >
                <span class="input-group-addon"></span>
                <asp:DropDownlist ID="ddlnewscategory" CssClass="form-control" runat="server">
                     
                </asp:DropDownlist>
                <span class="input-group-addon"></span>
            </div>
            <br />
            <asp:Label ID="lblheading" CssClass="control-label" runat="server" Text="Heading"></asp:Label>
            <div class="input-group" >
                <span class="input-group-addon"></span>
               <asp:Textbox ID="txtheading" cssclass="form-control" runat="server" placeholder="Enter Heading"></asp:Textbox>
                <span class="input-group-addon"></span>
            </div>
            <br />
            <asp:Label ID="lblsubheading" CssClass="control-label" runat="server" Text="Sub Heading"></asp:Label>
        <div class="input-group" >
                <span class="input-group-addon"></span>
               <asp:Textbox ID="txtsubheading" cssclass="form-control" runat="server" placeholder="Enter SubHeading"></asp:Textbox>
                <span class="input-group-addon"></span>
            </div>
            <br />
             <asp:Label ID="lbldescription" CssClass="control-label" runat="server" text="Description"></asp:Label>
            <div class="input-group" >
                <span class="input-group-addon"></span>
                <asp:FileUpload ID="fudescription" CssClass="form-control" runat="server" />
                <span class="input-group-addon"></span>
                </div>
            <br />
            <asp:Label ID="lblreporterid" CssClass="control-label" runat="server" text="Reporter ID"></asp:Label>
            <div class="input-group" >
                <span class="input-group-addon"></span>
                <asp:DropDownlist ID="ddlreporterid" CssClass="form-control" runat="server">
                     <asp:ListItem Value="0">Select Repoter ID</asp:ListItem>
                     <asp:ListItem Value="1">1</asp:ListItem>
                     <asp:ListItem Value="2">2</asp:ListItem>
                     <asp:ListItem Value="3">2</asp:ListItem>
                     <asp:ListItem Value="4">3</asp:ListItem>
                     <asp:ListItem Value="5">5</asp:ListItem>
                </asp:DropDownlist>
                 
                <span class="input-group-addon"></span>
            </div>
            <br />
                <asp:Label ID="lblplace" CssClass="control-label" runat="server" Text="Place"></asp:Label>
        <div class="input-group" >
                <span class="input-group-addon"></span>
               <asp:Textbox ID="Textbox1" cssclass="form-control" runat="server"></asp:Textbox>
                 
                <span class="input-group-addon"></span>
            </div>
            <br />
                     <asp:Label ID="lblnewsdate" CssClass="control-label" runat="server" Text="News Date"></asp:Label>
        <div class="input-group" >
                <span class="input-group-addon"></span>
               <asp:Textbox ID="Textbox2" cssclass="form-control" runat="server"></asp:Textbox>
                 
                <span class="input-group-addon"></span>
            </div>
            <br />
                     <asp:Label ID="lbldateofadd" CssClass="control-label" runat="server" Text="Date-of-Add"></asp:Label>
        <div class="input-group" >
                <span class="input-group-addon"></span>
               <asp:Textbox ID="Textbox3" cssclass="form-control" runat="server"></asp:Textbox>
                <span class="input-group-addon"></span>
            </div>
            <br />
             <asp:Label ID="lblimg" CssClass="control-label" runat="server" text="Image"></asp:Label>
            <div class="input-group" >
                <span class="input-group-addon"><i class="fa fa-picture-o"></i></span>
                <asp:FileUpload ID="fuimg" CssClass="form-control" runat="server" />
                <span class="input-group-addon"></span>
                </div>
            <br />
             <asp:Label ID="lbleditorid" CssClass="control-label" runat="server" text="Editor ID"></asp:Label>
            <div class="input-group" >
                <span class="input-group-addon"></span>
                <asp:DropDownlist ID="ddleditorid" CssClass="form-control" runat="server">
                     <asp:ListItem Value="0">Select Editor ID</asp:ListItem>
                     <asp:ListItem Value="1">1</asp:ListItem>
                     <asp:ListItem Value="2">2</asp:ListItem>
                     <asp:ListItem Value="3">2</asp:ListItem>
                     <asp:ListItem Value="4">3</asp:ListItem>
                     <asp:ListItem Value="5">5</asp:ListItem>
                </asp:DropDownlist>
                <span class="input-group-addon"></span>
            </div>
            <br />
             <asp:Label ID="lblpriority" CssClass="control-label" runat="server" text="Priority"></asp:Label>
            <div class="input-group" >
                <span class="input-group-addon"><i class="fa fa-plus"></i></span>
                <asp:DropDownlist ID="ddlpriority" CssClass="form-control" runat="server">

                     <asp:ListItem Value="0">Select Priority</asp:ListItem>
                     <asp:ListItem Value="1">1</asp:ListItem>
                     <asp:ListItem Value="2">2</asp:ListItem>
                     <asp:ListItem Value="3">2</asp:ListItem>
                     <asp:ListItem Value="4">3</asp:ListItem>
                     <asp:ListItem Value="5">5</asp:ListItem>
                     <asp:ListItem Value="6">6</asp:ListItem>
                     <asp:ListItem Value="7">7</asp:ListItem>
                     <asp:ListItem Value="8">8</asp:ListItem>
                     <asp:ListItem Value="9">9</asp:ListItem>
                     <asp:ListItem Value="10">10</asp:ListItem>                     
                </asp:DropDownlist>
                <span class="input-group-addon"></span>
            </div>
            <br />



            <asp:linkButton id="btnsubmit" runat="server" cssclass="btn btn-block btn-success">
                 <i class="fa fa-reply"></i>&nbsp Submit</>
                
            </asp:linkButton>
        </div>
        </div>
</asp:Content>

