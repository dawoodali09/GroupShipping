using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DB;

namespace GroupShipping
{
    public partial class Register : System.Web.UI.Page
    {
        DB.GroupShippingEntities context = new GroupShippingEntities();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            
            string Error = GetErrorMsg();
            if (String.IsNullOrEmpty(Error))
            {
                // go ahead and insert the stuff
                divError.Visible = false ;
                litMsg.Text = "";
                User user = new User() { Active = true, Created = DateTime.UtcNow, Deleted = null, FirstName = txtFirstName.Text, Password = txtPassword.Text, Surname = txtSurname.Text, UserName = txtEmailAddress.Text, Title = ddlTitle.SelectedItem.Text, Subscribed = cbSubscriber.Checked };
                if(ddlTitle.SelectedIndex > 1)
                {
                    user.Gender = "Female";
                }
                else
                {
                    user.Gender = "Male";
                }
                context.Users.Add(user);
                context.SaveChanges();
                Response.Redirect("Login.aspx");
            }
            else
            {
                divError.Visible = true;
                litMsg.Text = Error;
            }
        }

        public string GetErrorMsg()
        {
            if (string.IsNullOrEmpty(txtEmailAddress.Text))
            {
                return "Email Address can't be empty or null !";
            }
            else if (context.Users.Where(x => x.UserName.ToLower() == txtEmailAddress.Text.ToLower() && x.Deleted == null).Any())
            {
                return "Email Address already used please try different email or login to your account !";
            }
            else if (string.IsNullOrEmpty(txtPassword.Text))
            {
                return "Password can't be empty !";
            }
            else if (string.IsNullOrEmpty(txtFirstName.Text))
            {
                return "First Name can't be empty !";
            }
            else if (string.IsNullOrEmpty(txtSurname.Text))
            {
                return "Surname can't be empty !";
            }
            else if (!cbAgreed.Checked)
            {
                return "Please Agreed to our terms & conditions !";
            }
            else
            {
                return string.Empty;
            }

        }
    }
}