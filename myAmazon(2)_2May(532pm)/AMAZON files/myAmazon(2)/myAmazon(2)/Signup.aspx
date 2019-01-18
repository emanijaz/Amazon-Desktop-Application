<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="myAmazon_2_.Signup1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  
    <div>
    <h1>Create Your Account</h1>
        <p>
            <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="fname" runat="server"></asp:TextBox>
        &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="fname" ErrorMessage="Required!" style="color: #FF0000"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="lname" runat="server"></asp:TextBox>
        &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="lname" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Label ID="Label9" runat="server" Text="UserID"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="Uid" runat="server"></asp:TextBox>
        &nbsp;
            <asp:Label ID="LabelUID" runat="server" Text="This UserID already exists! Try a different one!" style="color: #FF0000" Visible="False"></asp:Label>
        &nbsp;&nbsp;
        </p>
        <p>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Uid" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="email" runat="server"></asp:TextBox>
        &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="email" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
        &nbsp;</p>
        <p><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="Enter Email address in correct format!" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            
        </p>
        <p>
            <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="pass" runat="server" TextMode="Password"></asp:TextBox>
        &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="pass" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Label ID="Label5" runat="server" Text="Confirm Password"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="cpass" runat="server" TextMode="Password"></asp:TextBox>
        &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="cpass" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
        &nbsp;&nbsp;
        </p>
        <p>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="pass" ControlToValidate="cpass" ErrorMessage="Enter the same password!" ForeColor="Red"></asp:CompareValidator>
        </p>
        <p>
            <asp:Label ID="Label6" runat="server" Text="Phone"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="phone" runat="server"></asp:TextBox>
        &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="phone" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="phone" ErrorMessage="Digits only!" ForeColor="Red" ValidationExpression="^[01]?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$"></asp:RegularExpressionValidator>
        </p>
        <p>
            Gender</p>
        <p>
            <asp:DropDownList ID="gender" runat="server" Height="16px" Width="73px">
                <asp:ListItem Value="M">Male</asp:ListItem>
                <asp:ListItem Value="F">Female</asp:ListItem>
                <asp:ListItem Value="O">Other</asp:ListItem>
            </asp:DropDownList>
        &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="gender" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            City</p>
        <p>
            <asp:DropDownList ID="city" runat="server" Width="95px">
                <asp:ListItem>Lahore</asp:ListItem>
                <asp:ListItem>Karachi</asp:ListItem>
                <asp:ListItem>Islamabad</asp:ListItem>
                <asp:ListItem>Faisalabad</asp:ListItem>
                <asp:ListItem>Sialkot</asp:ListItem>
                <asp:ListItem>Murree</asp:ListItem>
                <asp:ListItem>Quetta</asp:ListItem>
                <asp:ListItem>Peshawar</asp:ListItem>
            </asp:DropDownList>
        &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="city" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            Country</p>
        <p>
            <asp:DropDownList ID="country" runat="server">
                <asp:ListItem>America</asp:ListItem>
                <asp:ListItem>Canada</asp:ListItem>
                <asp:ListItem>China</asp:ListItem>
                <asp:ListItem>Dubai</asp:ListItem>
                <asp:ListItem>England</asp:ListItem>
                <asp:ListItem>France</asp:ListItem>
                <asp:ListItem>Germany</asp:ListItem>
                <asp:ListItem>Holand</asp:ListItem>
                <asp:ListItem>Ireland</asp:ListItem>
                <asp:ListItem>India</asp:ListItem>
                <asp:ListItem>Japan</asp:ListItem>
                <asp:ListItem>Korea</asp:ListItem>
                <asp:ListItem>Pakistan</asp:ListItem>
                <asp:ListItem>Russia</asp:ListItem>
                <asp:ListItem>Entartica</asp:ListItem>
            </asp:DropDownList>
        &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="country" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Label ID="Label8" runat="server" Text="Address"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="adrs" runat="server" Height="22px"></asp:TextBox>
        &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="adrs" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" style="color: #FFFFFF; font-weight: 700; background-color: #000000" Text="Create Account" OnClick="Button1_Click" />
        </p>
    </div>

</asp:Content>
