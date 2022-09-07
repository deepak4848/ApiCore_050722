<%@ Page Title="" Language="C#" MasterPageFile="~/UI/Admin/Admin.master" AutoEventWireup="true" CodeFile="Admin Dashboard.aspx.cs" Inherits="UI_Admin_Admin_Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div id="wrapper">
           
         
        <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h3>Admin Dashboard</h3>   
                        <h5>Welcome Jhon Deo , Love to see you back. </h5>
                    </div>
                </div>              
                 
                  <hr/>
                <h5>New Notifications</h5>
                <div class="row">
                <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <span class="icon-box bg-color-blue set-icon">
                    <i class="fa fa-bell-o"></i>
                </span>
                <div class="text-box">
                    <p class="main-text">120 New</p>
                    <p class="text-muted">Notifications</p>
                </div>
             </div>
		     </div>
                    <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <span class="icon-box bg-color-black set-icon">
                    <i class="fa fa-exclamation-circle"></i>
                </span>
                <div class="text-box">
                    <p class="main-text">30</p>
                    <p class="text-muted">Errors</p>
                </div>
             </div>
		     </div>
                    
                    			</div>
                <hr />
               
                <h5>Staff Details</h5>
                 <div class="row">
                <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <span class="icon-box bg-color-red set-icon">
                    <i class="fa fa-user"></i>
                </span>
                <div class="text-box">
                    <p class="main-text">2</p>
                    <p class="text-muted">Reporters</p>
                </div>
             </div>
		     </div>
                    <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <span class="icon-box bg-color-black set-icon">
                    <i class="fa fa-user"></i>
                </span>
                <div class="text-box">
                    <p class="main-text">3</p>
                    <p class="text-muted">Editors</p>
                </div>
             </div>
		     </div>
                    <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <span class="icon-box bg-color-red set-icon">
                    <i class="fa fa-gift"></i>
                </span>
                <div class="text-box">
                    <p class="main-text">2</p>
                    <p class="text-muted">Birthdays</p>
                </div>
             </div>
		     </div>
                     <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <span class="icon-box bg-color-red set-icon">
                    <i class="fa fa-glass"></i>
                </span>
                <div class="text-box">
                    <p class="main-text">1</p>
                    <p class="text-muted">Anniversary</p>
                </div>
             </div>
		     </div>
                    			</div>
                <hr />
                <h5>Pendings</h5>
                 <div class="row">
                <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <span class="icon-box bg-color-red set-icon">
                    <i class="fa fa-exclamation-triangle"></i>
                </span>
                <div class="text-box">
                    <p class="main-text">10</p>
                    <p class="text-muted">News Errors</p>
                </div>
             </div>
		     </div>
                    <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <span class="icon-box bg-color-black set-icon">
                    <i class="fa fa-comments"></i>
                </span>
                <div class="text-box">
                    <p class="main-text">3</p>
                    <p class="text-muted">Message/Reply</p>
                </div>
             </div>
		     </div>
                    
                    			</div>
                <hr />
                <h5>Most Visited News Today</h5>
                 <div class="row">
                <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <span class="icon-box bg-color-red set-icon">
                    <i class="fa fa-bolt"></i>
                </span>
                <div class="text-box">
                    <p class="main-text">12</p>
                    <p class="text-muted">India News</p>
                </div>
             </div>
		     </div>
                    <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <span class="icon-box bg-color-black set-icon">
                    <i class="fa fa-globe"></i>
                </span>
                <div class="text-box">
                    <p class="main-text">3</p>
                    <p class="text-muted">World News</p>
                </div>
             </div>
		     </div>
                    <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <span class="icon-box bg-color-red set-icon">
                    <i class="fa fa-music"></i>
                </span>
                <div class="text-box">
                    <p class="main-text">5 New</p>
                    <p class="text-muted">Entertainment News</p>
                </div>
             </div>
		     </div>
                     <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <span class="icon-box bg-color-red set-icon">
                    <i class="fa fa-life-ring"></i>
                </span>
                <div class="text-box">
                    <p class="main-text">12 </p>
                    <p class="text-muted">Sports News</p>
                </div>
             </div>
		     </div>
                    			</div>
                     </div>
            
            </div>
        
        </div>
</asp:Content>

