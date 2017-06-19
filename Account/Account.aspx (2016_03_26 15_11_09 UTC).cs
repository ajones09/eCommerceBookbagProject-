using System;
using System.Data;
using System.Web.UI;

public partial class Account : System.Web.UI.Page
{
    bool cookieExists;
    /*
     Custom Drop down list boxes that generate and fill in regular drom down list boxes
    */

    customDDL monthCustDLL = new customDDL();
    customDDL dayCustDLL = new customDDL();
    customDDL yearCustDLL = new customDDL();
    customDDL stateCustDLL = new customDDL();
    customDDL cityCustDLL = new customDDL();
    protected void Page_Load(object sender, EventArgs e)
    {
        //if not logged in redirect to login page.
        //Response.Redirect("../login.aspx");
        if (Request.Cookies["userAccount"] == null)
        {
            Request.Url.ToString().Replace("http", "https");
            Response.Redirect("../login.aspx");
        }

        if (!IsPostBack)
        {
            if (!(Request.Cookies["userAccount"] == null))
            {
                userDataSource.SelectCommand = "SELECT * FROM[Customer] WHERE([Account Number] = '"
                   + Request.Cookies["userAccount"].Value + "'";
            }
            //Static Labels
            acctNumLbl1.Text = acctNumLbl.Text = "Account Number:";
            emailAddressLbl1.Text = emailAddressLbl2.Text = "Email Address:";
            NameLbl.Text = "Name:";
            usrNmeLbl.Text = usrNmeLbl1.Text = "Username:";
            passwordChngLbl1.Text = "Enter Password:";
            passwordChngLbl2.Text = "Confirm Password:";
            JoinDtLbl1.Text = JoinDtLbl.Text = "Join Date:";
            BdayLbl1.Text = BdayLbl.Text = "Birthday:";
            strAddLbl1.Text = strAddLbl.Text = "Street Address:";
            CtyLbl1.Text = CtyLbl.Text = "City:";
            StateLbl1.Text = StateLbl.Text = "State:";
            ZipCodeLbl1.Text = ZipCodeLbl.Text = "Zip Code:";
            phoneNumLbl1.Text = phoneNumLbl.Text = "Phone Number:";
            phoneNumLbl1.Text = phoneNumLbl1.Text + "*";
            lastLoginLbl.Text = "Last Logged in:";
            //Dynamic Labels
            userNameUET.Text = NumLbl.Text = " ";
            emailAddress.Text = name.Text = " ";
            LastLogin.Text = bDay.Text = JoinDate.Text = joinDate2.Text = "01/01/01";
            strAddr.Text = city.Text = State.Text = " ";
            zipCode.Text = "00000";
            phoneNumbers.Text = "000-000-0000";
        }
    }
    protected void edit_Click(object sender, EventArgs e)
    {
        Name customerName = new Name();
        customerName = customerName.toName(name.Text);
        firstNameTxtBox.Text = customerName.firstName;
        MidInt.Text = customerName.middleInt;
        lastNameTxtBox.Text = customerName.lastName;
        userNameTxtBox.Text = userNameUET.Text;
        emailAddressTxtBox.Text = emailAddress.Text;
        StateDDL = stateCustDLL.setStates(StateDDL);
        monthDDL = monthCustDLL.setMonth(monthDDL);
        YearDDL = yearCustDLL.setYearRange(YearDDL);
        strAddrTxtBox.Text = strAddr.Text;
        zipCodeTxtBox.Text = zipCode.Text;
        phoneNumber z = new phoneNumber();
        z.toPhoneNumber(phoneNumbers.Text);
        UET.Visible = false;
        EDT.Visible = true;
    }
    protected void save_Click(object sender, EventArgs e)
    {

    }

    protected void userNameTxtBox_TextChanged(object sender, EventArgs e)
    {

        if (userNameTxtBox.Text.Length == 8)
        {
            char[] d = userNameTxtBox.Text.ToCharArray();
            for (int z = 0; z == 8; z++)
            {
                int chars = 0;
                int nums = 0;

                if (char.IsLetter(d[z]))
                {
                    chars++;
                    if (chars > 6)
                    {
                        error1.Text = "You have entered to many letters";
                        error1.Visible = true;
                        break;
                    }
                }
                if (char.IsNumber(d[z]))
                {
                    nums++;
                    if (nums > 2)
                    {
                        error1.Text = "You have entered to many numbers";
                        error1.Visible = true;
                        break;
                    }
                }
                else
                {
                    error1.Text = "You have entered an invalid character please try again";
                    error1.Visible = true;
                    break;
                }
            }
            if (error1.Visible == true)
            {
                error1.Text = error1.Text + "A user name is made up of 6 letters A-Z and 2 numbers 0-9";

            }
        }
    }
    protected void changePasswordTxtBox1_TextChanged(object sender, EventArgs e)
    {
        char[] pass = changePasswordTxtBox1.Text.ToCharArray();
        for (int z = 0; z <= 11; z++)
        {
            int chars = 0;
            int nums = 0;
            int specChar = 0;

            if (Char.IsLetter(pass[z]))
            {
                chars++;
                if (chars > 8)
                {
                    error2.Text = "You have entered to many letters";
                    error2.Visible = true;
                    break;
                }
            }
            if (Char.IsNumber(pass[z]))
            {
                nums++;
                if (nums > 2)
                {
                    error2.Text = "You have entered to many numbers";
                    error2.Visible = true;
                    break;
                }
            }
            if ((pass[z] == '#') || (pass[z] == '@') || (pass[z] == '$') || (pass[z] == '%') ||
                (pass[z] == '-') || (pass[z] == '_') || (pass[z] == '*'))
            {
                specChar++;
                if (specChar > 1)
                {
                    error2.Text = "You have enter to many special charaters";
                }
            }

        }
        if (error2.Visible == true)
        {
            error2.Text = error1.Text + "Passowrds are made up of 8 letters A-Z, 2 numbers 0-9, and 1 special character #,$,%,-,_ , *, @";

        }
    }
    protected void DDL_SelectedIndexChanged(object sender, EventArgs e)
    {
        dayDDL.Items.Clear();
        string x = monthDDL.SelectedItem.Text;
        string y = YearDDL.SelectedItem.Text;
        int mh, yr;
        mh = Convert.ToInt32(x.Substring(0, 2));
        yr = Convert.ToInt32(y);
        dayDDL = dayCustDLL.setDays(mh, yr, dayDDL);
    }
    protected void emailAddressTxtBox_TextChanged(object sender, EventArgs e)
    {
        char at = '@', period = '.';
        int pos1, pos2;
        pos1 = emailAddressTxtBox.Text.IndexOf(at);
        pos2 = emailAddressTxtBox.Text.IndexOf(period);
        if ((pos1 < 0) || (pos2 < 0))
        {
            error3.Text = "Please enter a valid email address";
        }
        else
        {
            if (pos1 > pos2)
            {
                error3.Text = "Please enter a valid email address";
            }
        }


    }
    //17 @students.ecu.edu
    protected void StateDDL_SelectedIndexChanged(object sender, EventArgs e)
    {
        CityDDL.Items.Clear();
        DataView cityTbl = (DataView)userDataSource.Select(DataSourceSelectArguments.Empty);
        cityTbl.RowFilter = "State = '" + StateDDL.SelectedItem.Text + "'";
        DataRowView row;
        string cityName;
        if (cityTbl.Count != 0)
        {
            for (int i = 0; i < cityTbl.Count; i++)
            {
                row = (DataRowView)cityTbl[i];
                cityName = row["City"].ToString();
                CityDDL.Items.Add(cityName);
            }
            CityDDL.DataBind();

        }

    }