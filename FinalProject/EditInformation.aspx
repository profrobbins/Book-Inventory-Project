﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditInformation.aspx.cs" Inherits="FinalProject.EditInformation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Edit Book Information</title>
    <meta name="description" content="Group Project, Edit Information" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/main.css" rel="stylesheet" /> 
    <script src="scripts/jquery-3.3.1.min.js"></script>
    <script src="scripts/bootstrap.min.js"></script> 
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="col-md-12">
            <h1>
                <asp:Label ID="lblEditInfo" runat="server" Text="Edit Information:"></asp:Label>
            </h1>
        </div>
    <!--This is where the search feature will go... I was thinking of having a textbox with a 
        dropdown on the right side where we could choose how to search. Title, isbn, Last Name,
        ?Category? Once the search is completed, it will autofill the information for the other
        textboxes and the user can edit the information from there. -->
            <div class="col-md-12">
                <b><asp:Label ID="lblEditSearch" runat="server" Text="Search: "></asp:Label></b>
            </div>
            <div class="form-group">
                <div class="col-md-2 col-sm-2 col-xs-12">
                    <asp:DropDownList ID="dropDownEditSearch" runat="server" CssClass="form-control">
                        <asp:ListItem Value="ISBN"></asp:ListItem>
                        <asp:ListItem Value="Title"></asp:ListItem>    
                        <asp:ListItem Value="Author's Last Name"></asp:ListItem>    
                    </asp:DropDownList>                                    
                </div>
                <div class="col-md-10 col-md-10 col-xs-12">
                    <asp:TextBox ID="textEditSearch" runat="server" CssClass="form-control"></asp:TextBox>
                </div>    
                <br />  
                <br />   
            </div>             
        <div class="form-group">
            <div class="col-md-12">
                <b><asp:Label ID="lblEditTitle" runat="server" Text="Title: "></asp:Label></b>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="textEditTitle" Dispaly="Dynamic" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-12">
                <asp:TextBox ID="textEditTitle" runat="server" CssClass="form-control"></asp:TextBox>            
            </div>
        </div>
        <br />
        <div class="form-group">
            <div class="col-md-12">
                <b><asp:Label ID="lblEditFirstName" runat="server" Text="Author's First Name: "></asp:Label></b>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="textEditFirstName" Dispaly="Dynamic" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-12">
                <asp:TextBox ID="textEditFirstName" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <br />
        <div class="form-group">
            <div class="col-md-12">
                <b><asp:Label ID="lblEditLastName" runat="server" Text="Author's Last Name: "></asp:Label></b>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="textEditLastName" Dispaly="Dynamic" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-12">
                <asp:TextBox ID="textEditLastName" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <br />
        <div class="form-group">
            <div class="col-md-12">
                <b><asp:Label ID="lblEditCategory" runat="server" Text="Category: " ></asp:Label></b>
                <asp:Label ID="lblEditCategoryOptional" runat="server" Text="(optional)"></asp:Label> 
                <asp:CheckBoxList ID="cbEditCategory" runat="server" BackColor="beige" ForeColor="black" 
                    BorderStyle="Solid" BorderColor="Black" RepeatColumns="6" CellPadding="5" CellSpacing="5">
                    <asp:ListItem>Fiction</asp:ListItem>
                    <asp:ListItem>Non-Fiction</asp:ListItem>
                    <asp:ListItem>AutoBiography</asp:ListItem>
                    <asp:ListItem>Biography</asp:ListItem>
                    <asp:ListItem>Children's</asp:ListItem>
                    <asp:ListItem>Comedy</asp:ListItem>
                    <asp:ListItem>Drama</asp:ListItem>
                    <asp:ListItem>Fantasy</asp:ListItem>
                    <asp:ListItem>Foreign</asp:ListItem>
                    <asp:ListItem>History</asp:ListItem>
                    <asp:ListItem>Horror</asp:ListItem>
                    <asp:ListItem>Religious</asp:ListItem>
                    <asp:ListItem>Romance</asp:ListItem>
                    <asp:ListItem>Sci-Fi</asp:ListItem>
                    <asp:ListItem>Self-Help</asp:ListItem>
                    <asp:ListItem>Suspense</asp:ListItem>
                    <asp:ListItem>Textbook</asp:ListItem>
                    <asp:ListItem>Thriller</asp:ListItem>
                </asp:CheckBoxList>
                </div>
            </div>
            <br />
            <div class="form-group">
                <div class="col-md-12">
                    <b><asp:Label ID="lblEditRating" runat="server" Text="Rating: "></asp:Label></b>
                    <asp:Label ID="lblEditRatingOptional" runat="server" Text="(optional)"></asp:Label>
                </div>
                <div class="col-md-12">
                    <asp:DropDownList ID="DropDownQuestNum" runat="server" CssClass="form-control">
                        <asp:ListItem Value="N/A"></asp:ListItem>
                        <asp:ListItem Value="0"></asp:ListItem>
                        <asp:ListItem Value="0.5"></asp:ListItem>
                        <asp:ListItem Value="1.0"></asp:ListItem>
                        <asp:ListItem Value="1.5"></asp:ListItem>
                        <asp:ListItem Value="2.0"></asp:ListItem>
                        <asp:ListItem Value="2.5"></asp:ListItem>
                        <asp:ListItem Value="3.0"></asp:ListItem>
                        <asp:ListItem Value="3.5"></asp:ListItem>
                        <asp:ListItem Value="4.0"></asp:ListItem>
                        <asp:ListItem Value="4.5"></asp:ListItem>
                        <asp:ListItem Value="5.0"></asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <br />
            <div class="form-group">
                <div class="col-md-12">
                    <b><asp:Label ID="lblEditIsbn" runat="server" Text="ISBN: "></asp:Label></b>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                ControlToValidate="textEditIsbn" Dispaly="Dynamic" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div class="col-md-12">
                    <asp:TextBox ID="textEditIsbn" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="col-md-12">
                <asp:Button ID="btnEditSubmit" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btnEditSubmit_Click"/>
            </div>
            <br />
    </div>
    </form>
</body>
</html>
