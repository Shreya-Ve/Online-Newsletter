using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Threading.Tasks;
using System.Data.Entity.Core.Common.CommandTrees.ExpressionBuilder;


namespace newsletter
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        String mname, musername, mpassword, Emailmsg, ToEmail, Emailsubj;
       


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [Obsolete]
        protected void SubmitButton(object sender, EventArgs e)
        {
            string connectionstring = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=master;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            mname = name.Text;
            musername = username.Text;
            mpassword = password.Text;
            ToEmail = emailid.Text;
            Emailsubj = "Online newsletter: sign up!";
            Emailmsg = "Hello new user! <br/> Thank you for signing up, here are your entered details:<br/>NAME: " + mname + "<br/>USERNAME: " + musername + "<br/>PASSWORD: " + mpassword + "<br/>Regards<br/>Online Newsletter.";
            //add sql connection.
            SqlConnection connct;
            SqlCommand command;
                connct = new SqlConnection(connectionstring);
                connct.Open();
                string query;
                query = "select * from Newsfeed.dbo.newsletter where username=\'" + musername + "\';";
                command = new SqlCommand(query, connct);
                SqlDataReader reader = command.ExecuteReader();


                if (reader.HasRows)
                {
                    command.Dispose();
                    connct.Close();
                    username.Text = "username already exists";
                    password.Text = "";
                    reader.Close();
                }
                else
                {
                    reader.Close();
                    query = "INSERT INTO Newsfeed.dbo.newsletter VALUES(\'" + musername + "\',\'" + ToEmail + "\',\'" + mpassword + "\');";
                    command = new SqlCommand(query, connct);
                    command.ExecuteNonQuery();
                    command.Dispose();
                    connct.Close();
                    name.Text = "";
                    age.Text = "";
                    date.Text = "";
                    month.Text = "";
                    year.Text = "";
                    number.Text = "";
                    emailid.Text = "";
                    username.Text = "created!";
                    password.Text = "";
                    gender1.Checked = false;
                    gender2.Checked = false;
                    gender3.Checked = false;
                    gender4.Checked = false;

                    SendEmail.Email_Without_Attachment(ToEmail, Emailsubj, Emailmsg);
                }
        }
        protected void ResetButton(object sender, EventArgs e)
        {
            name.Text = "";
            age.Text = "";
            date.Text = "";
            month.Text = "";
            year.Text = "";
            number.Text = "";
            emailid.Text = "";
            username.Text = "";
            password.Text = "";
            gender1.Checked = false;
            gender2.Checked = false;
            gender3.Checked = false;
            gender4.Checked = false;
        }
    }
}