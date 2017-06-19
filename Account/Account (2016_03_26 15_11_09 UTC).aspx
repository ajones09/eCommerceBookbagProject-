<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Account.aspx.cs" Inherits="Account" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Account</title>
    <link rel="stylesheet" href="../Style/General.css" />
    <link rel="stylesheet" href="../Style/Account.css" />


</head>
<body>
    <form id="form1" runat="server">
        <div class="main">
            <asp:AccessDataSource runat="server" DataFile="~/App_Data/BookbagDB.mdb" ID="userDataSource"></asp:AccessDataSource>
            
            <!-- place holder -->
            <!--begin Copy here part 1 -->
            <!------>
            <div id="imageDiv">
                <asp:Image runat="server" AlternateText="Placeholder" ID="Banner" />
            </div>
            <hr id="topBar" />
            <div id="menuBar">
                <!-- class styles are created using ."className"-->
                
                <hr />
                <p id="loginStatus">
                    <a href="Account.aspx" id="usersName"><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></a>
                </p>
                <hr />
                <ul id="menuList">
                    <li class="listItem"><a href="Home.aspx" class="menuLink">Not Set</a></li>
                    <li class="listItem"><a href="Home.aspx" class="menuLink">Not Set 2</a></li>
                    <li class="listItem"><a href="Home.aspx" class="menuLink">Not Set 3</a></li>
                    <li class="listItem"><a href="Home.aspx" class="menuLink">Not Set 4</a></li>
                    <li class="listItem"><a href="Home.aspx" class="menuLink">Not Set 5</a></li>
                    <li class="listItem"><a href="Home.aspx" class="menuLink">Not Set 6</a></li>
                    <li class="listItem"><a href="Home.aspx" class="menuLink">Not Set 7</a></li>
                </ul>
            </div>
            <div>
                <hr id="midBar" />
            </div>
            <!------>
            <!--end Copy here -->
            <!-- This is the first table that is visible when a user goes to this page -->
            <asp:Table class="uneditableTableUET" runat="server" GridLines="Both" ID="UET">
                <asp:TableRow ID="accountNumberRowUET">
                    <asp:TableCell>
                        <asp:Label ID="acctNumLbl" runat="server"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="NumLbl" runat="server"></asp:Label>
                    </asp:TableCell>

                </asp:TableRow>
                <asp:TableRow ID="nameRowUET">
                    <asp:TableCell>
                        <asp:Label ID="NameLbl" runat="server"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="name" runat="server"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="usernameRowUET">
                    <asp:TableCell>
                        <asp:Label ID="usrNmeLbl" runat="server"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="userNameUET" runat="server"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="emailAddressRowUET">
                    <asp:TableCell>
                        <asp:Label ID="emailAddressLbl1" runat="server" Text="Email Address"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="emailAddress" runat="server" Text="Label"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="joinDateRowUET">
                    <asp:TableCell>
                        <asp:Label ID="JoinDtLbl" runat="server"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="JoinDate" runat="server"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="birthdayRowUET">
                    <asp:TableCell>
                        <asp:Label ID="BdayLbl" runat="server"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="bDay" runat="server"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="streetAddressRowUET">
                    <asp:TableCell>
                        <asp:Label ID="strAddLbl" runat="server"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="strAddr" runat="server"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="cityRowUET">
                    <asp:TableCell>
                        <asp:Label ID="CtyLbl" runat="server"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="city" runat="server"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="stateRowUET">
                    <asp:TableCell>
                        <asp:Label ID="StateLbl" runat="server">

                        </asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="State" runat="server"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="zipCodeRowUET">
                    <asp:TableCell>
                        <asp:Label ID="ZipCodeLbl" runat="server"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="zipCode" runat="server"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="phoneNumberRowUET">
                    <asp:TableCell>
                        <asp:Label ID="phoneNumLbl" runat="server"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="phoneNumbers" runat="server"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="lastLoginRow">
                    <asp:TableCell>
                        <asp:Label ID="lastLoginLbl" runat="server"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="LastLogin" runat="server"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableFooterRow ID="ButtonRowsUET">
                    <asp:TableCell CssClass="tblBttns" ColumnSpan="2" HorizontalAlign="Center">
                        <asp:Button class="editBttn" ID="editBttn" runat="server" Text="Edit" OnClick="edit_Click" />
                        <asp:Button class="Button1" runat="server" Text="Button" />
                    </asp:TableCell>
                </asp:TableFooterRow>
            </asp:Table>
            <!--table to be copied to Employee account page -->
            <!--This is the table that they use to edit the information that is editable -->
            <asp:Table class="editableTable" runat="server" Visible="False" GridLines="Both" HorizontalAlign="Center" ID="EDT">
                <asp:TableRow ID="accountNumberRow">
                    <asp:TableCell>
                        <asp:Label ID="acctNumLbl1" runat="server"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="accountNumber" runat="server"></asp:Label>
                    </asp:TableCell>

                </asp:TableRow>
                <asp:TableRow ID="firstNameRow">
                    <asp:TableCell>
                        <asp:Label ID="fstNameLbl" runat="server" Text="First Name:"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="firstNameTxtBox" runat="server" MaxLength="10"></asp:TextBox>
                        *
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="midIntRow">
                    <asp:TableCell>
                        <asp:Label ID="midintLbl" runat="server" Text="Middle Initial:"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="MidInt" runat="server" MaxLength="2"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="lastNameRow">
                    <asp:TableCell>
                        <asp:Label ID="LstNameLbl" runat="server" Text="Last Name:"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="lastNameTxtBox" runat="server" MaxLength="10"></asp:TextBox>
                        *
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow CssClass="hiddenRow" ID="validatorsNameRow">
                    <asp:TableCell ColumnSpan="2">
                        <asp:RequiredFieldValidator ID="firstNameValidator" runat="server" ValidationGroup="nameValidationGroup"
                            ErrorMessage="RequiredFieldValidator" ControlToValidate="firstNameTxtBox" CssClass="errorMsg"></asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="LastNameValidator" runat="server" ControlToValidate="lastNameTxtBox"
                            ErrorMessage="RequiredFieldValidator" CssClass="errorMsg" ValidationGroup="nameValidationGroup"></asp:RequiredFieldValidator>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="userNameRow">
                    <asp:TableCell>
                        <asp:Label ID="usrNmeLbl1" runat="server"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <!--username should be made up of 6 characters A-Z and 2 numbers  
                         validator to ensure that usernames follows guide lines-->
                        <asp:TextBox ID="userNameTxtBox" runat="server" MaxLength="8" OnTextChanged="userNameTxtBox_TextChanged"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="usernameValidator" runat="server" ControlToValidate="userNameTxtBox"
                            ErrorMessage="RequiredFieldValidator" CssClass="errorMsg">*</asp:RequiredFieldValidator>
                         <asp:Label ID="error1" runat="server"></asp:Label>
                        
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="emailAddressRow">
                    <asp:TableCell>
                        <asp:Label ID="emailAddressLbl2" runat="server"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="error3" runat="server"></asp:Label>
                        <asp:TextBox ID="emailAddressTxtBox" runat="server" OnTextChanged="emailAddressTxtBox_TextChanged"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="emailValidator" runat="server" ControlToValidate="emailAddressTxtBox"
                            ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="passwordRow1">
                    <asp:TableCell>
                        <asp:Label ID="passwordChngLbl1" runat="server"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <!-- The password should be made up of 8 characters A-Z, 2 numbers, and a special character  
                         use a validator to ensure that password follows guide lines -->
                        <asp:TextBox ID="changePasswordTxtBox1" runat="server" MaxLength="11" TextMode="Password"
                            OnTextChanged="changePasswordTxtBox1_TextChanged"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="passwordValidator" runat="server" ControlToValidate="changePasswordTxtBox1"
                            ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                        <asp:Label ID="error2" runat="server"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="passwordRow2">
                    <asp:TableCell>
                        <asp:Label ID="passwordChngLbl2" runat="server"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="changePasswordTxtBox2" runat="server" MaxLength="11" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="changePaswordValidator" runat="server" ControlToValidate="changePasswordTxtBox2"
                            ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                        <!--Ensures that the both the passwords entered are the same -->
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="changePasswordTxtBox1"
                            ControlToCompare="changePasswordTxtBox2" ErrorMessage="CompareValidator" CssClass="errorMsg"></asp:CompareValidator>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="joinDateRow">
                    <asp:TableCell>
                        <asp:Label ID="JoinDtLbl1" runat="server"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="joinDate2" runat="server" Text="Label"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="birthdayMonthRow">
                    <asp:TableCell>
                        <asp:Label ID="BdayLbl1" runat="server"></asp:Label>
                        <asp:Label ID="monthLbl" runat="server" Text="Month: "></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:DropDownList ID="monthDDL" runat="server" CssClass="editableTableDDL"
                           OnSelectedIndexChanged="DDL_SelectedIndexChanged" AutoPostBack="True">
                        </asp:DropDownList>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="DayRow">
                    <asp:TableCell>
                        <asp:Label ID="dayLbl" runat="server" Text="Day: "></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:DropDownList ID="dayDDL" runat="server" CssClass="editableTableDDL"></asp:DropDownList>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="YearRow">
                    <asp:TableCell>
                        <asp:Label ID="yearLbl" runat="server" Text="Year:"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:DropDownList ID="YearDDL" runat="server" CssClass="editableTableDDL"
                            OnSelectedIndexChanged="DDL_SelectedIndexChanged">
                        </asp:DropDownList>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="stateRow">
                    <asp:TableCell>
                        <asp:Label ID="StateLbl1" runat="server">
                        </asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:DropDownList ID="StateDDL" runat="server" CssClass="editableTableDDL"
                            OnSelectedIndexChanged="StateDDL_SelectedIndexChanged" AutoPostBack="true">
                        </asp:DropDownList>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="cityRow">
                    <asp:TableCell>
                        <asp:Label ID="CtyLbl1" runat="server"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:DropDownList ID="CityDDL" runat="server" CssClass="editableTableDDL"></asp:DropDownList>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="streetAddressRow">
                    <asp:TableCell>
                        <asp:Label ID="strAddLbl1" runat="server"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="strAddrTxtBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="strAddrValidator" runat="server" ControlToValidate="strAddrTxtBox"
                            ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="zipCodeRow">
                    <asp:TableCell>
                        <asp:Label ID="ZipCodeLbl1" runat="server"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="zipCodeTxtBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="zipCodeTxtBox"
                            ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="zipCodeTxtBox"
                            MinimumValue="500" MaximumValue="99999" ErrorMessage="RangeValidator" Visible="False"></asp:RangeValidator>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="phoneNumberRow">
                    <asp:TableCell>
                        <asp:Label ID="phoneNumLbl1" runat="server"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>

                        <p>
                            (<asp:TextBox ID="areaCodeTxtBox" runat="server" TextMode="SingleLine" MaxLength="3"></asp:TextBox>
                            ) - 
                    <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="areaCodeTxtBox"
                        MinimumValue="100" MaximumValue="999" ErrorMessage="RangeValidator" Visible="False"></asp:RangeValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="areaCodeTxtBox"
                                ErrorMessage="RequiredFieldValidator" Visible="False"></asp:RequiredFieldValidator>

                            <asp:Label ID="firstThreeLbl" runat="server" Text="Label"></asp:Label>
                            <asp:TextBox ID="firstThreeTxtBox" runat="server" MaxLength="3"></asp:TextBox>
                            <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="firstThreeTxtBox"
                                MinimumValue="0" MaximumValue="999" ErrorMessage="RangeValidator"></asp:RangeValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="firstThreeTxtBox"
                                ErrorMessage="RequiredFieldValidator" Visible="False"></asp:RequiredFieldValidator>

                            <asp:Label ID="lastFourLbl" runat="server" Text="Label"></asp:Label>
                            <asp:TextBox ID="lastFourTxtBox" runat="server"></asp:TextBox>
                            <asp:RangeValidator ID="RangeValidator4" runat="server" ControlToValidate="lastFourTxtBox"
                                MinimumValue="0" MaximumValue="9999" ErrorMessage="RangeValidator" Visible="False"></asp:RangeValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="lastFourTxtBox"
                                ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                        </p>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="requiredRow">
                    <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                        <asp:Label runat="server" ID="requiredLbl"> * Required field</asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableFooterRow ID="buttonRows">
                    <asp:TableCell CssClass="tblBttns" ColumnSpan="2" HorizontalAlign="Center">
                    <asp:Button class="saveBttn" runat="server" Text="Save" OnClick="save_Click" />
                    <asp:Button class="cancelBttn" runat="server" Text="Cancel" />
                    </asp:TableCell>

                </asp:TableFooterRow>
            </asp:Table>
            <!-- end table coppy -->
        </div>
    </form>
</body>
</html>