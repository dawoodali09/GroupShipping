<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="GroupShipping.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="wrapper wrapper-full-page responsive">
    
        
        <!--   you can change the color of the filter page using: data-color="blue | azure | green | orange | red | purple" -->
        <div class="full-page register-page section-image" data-color="azure"   data-image="~/assets/img/bg7.jpg">
            <div class="content">
                <div class="container">
                    <div class="card card-register card-plain text-center">
                        <div class="card-header ">
                            <div class="row  justify-content-center">
                                <div class="col-md-8">
                                    <div class="header-text">
                                        <h2 class="card-title">Please fill the form to create your account.</h2>
                                        <h4 class="card-subtitle">Register for free today</h4>
                                        <hr />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card-body ">
                            <div class="row">
                                <div class="col-md-5 ml-auto">
                                    <div class="media">
                                        <div class="media-left">
                                            <div class="icon">
                                                <i class="nc-icon nc-circle-09"></i>
                                            </div>
                                        </div>
                                        <div class="media-body">
                                            <h4>Free Account</h4>
                                            <p>Signup is Free and will always be free.</p>
                                        </div>
                                    </div>
                                    <div class="media">
                                        <div class="media-left">
                                            <div class="icon">
                                                <i class="nc-icon nc-preferences-circle-rotate"></i>
                                            </div>
                                        </div>
                                        <div class="media-body">
                                            <h4>Create a shipment group</h4>
                                            <p>You can always initiate a shipment group, and help others to get their items delivered to them.<br />
                                                And Ofcourse by Being a group master you can generate <B>extra Income</B> simply by helping others.</p>
                                        </div>
                                    </div>
                                    <div class="media">
                                        <div class="media-left">
                                            <div class="icon">
                                                <i class="nc-icon nc-planet"></i>
                                            </div>
                                        </div>
                                        <div class="media-body">
                                            <h4>Get your items delivered Globally</h4>
                                            <p>
                                                if you don't want to be a grouop manager, just join a group and save lots of money, Ofcourse you can always check the updates of the group and your
                                                Parcel.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4 mr-auto">
                                    <div>
                                        <div class="card card-plain">
                                            <div class="content">
                                                <div class="form-group" id="divError" runat="server" visible="false" >

                                                    <div class="alert alert-danger">
                                                        <button type="button" aria-hidden="true" class="close" data-dismiss="alert">
                                                            <i class="nc-icon nc-simple-remove"></i>
                                                        </button>
                                                        <span>
                                                            <asp:Literal ID="litMsg" runat="server" ></asp:Literal> </span>
                                                    </div>


                                                </div>

                                                <div class="form-group">                                                   
                                                    <asp:TextBox ID="txtEmailAddress" runat="server" AutoCompleteType="Email" TextMode="Email" type="email" placeholder="Enter email" class="form-control" required="required" ></asp:TextBox>
                                                </div>
                                                <div class="form-group">
                                                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" type="password" placeholder="Password" class="form-control" required="required" ></asp:TextBox>
                                                </div>
                                                <div class="form-group">
                                                 

                                                    <asp:DropDownList ID="ddlTitle" runat="server" class="form-control bootstrap-select dropdown-blue show">
                                                       <asp:ListItem>Mr.</asp:ListItem>
                                                        <asp:ListItem>Dr.</asp:ListItem> 
                                                        <asp:ListItem>Mrs.</asp:ListItem>
                                                         <asp:ListItem>Miss.</asp:ListItem>
                                                                                                              
                                                    </asp:DropDownList>
                                                </div>
                                                <div class="form-group">
                                                  
                                                    <asp:TextBox ID="txtFirstName" runat="server" AutoCompleteType="FirstName" TextMode="SingleLine" placeholder="Your First Name" class="form-control" required="required"></asp:TextBox>
                                                </div>
                                                <div class="form-group">
                                                   <asp:TextBox ID="txtSurname" runat="server" AutoCompleteType="LastName" TextMode="SingleLine" placeholder="Your Surname" class="form-control" required="required"></asp:TextBox>
                                       
                                                </div>

                                                <div class="form-group">
                                                    <label class="form-check-label text-white"> 
                                                        <asp:CheckBox ID="cbSubscriber" runat="server"  Checked="false" class="form-check-input" type="checkbox" />                                                        
                                                        <span class="form-check-sign"></span>
                                                      Subscribe me for Lastest NEWS & Updates 
                                                    </label>

                                                   
                                                </div>

                                                <div class="form-group">
                                                    <label class="form-check-label text-white"> 
                                                        <asp:CheckBox ID="cbAgreed" runat="server"  Checked="false" class="form-check-input" type="checkbox" required="required" />                                                        
                                                        <span class="form-check-sign"></span>
                                                        Agreed with term & conditions.
                                                    </label>                                                   
                                                </div>
                                                
                                            </div>
                                            <div class="footer text-center">                                                
                                                <asp:Button ID="btnSignup" runat="server" Text="Click here to register"  class="btn btn-fill btn-neutral btn-wd"  OnClick="btnSignup_Click" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

 </div>
 
</asp:Content>
