using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace FINAL_NETWORK.login_and_reqister
{
    public partial class register : System.Web.UI.Page
    {
        AspDataEntities db = new AspDataEntities();

        private void LinkButton1_Click()
        {

        }

        private static void NewMethod()
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var chaek = db.AspTaples.SingleOrDefault(x => x.email == TextBox2.Text);
            if (chaek != null)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Email Already exists❌')", true);


            }
            else
            {
                MD5 md5 = new MD5CryptoServiceProvider();
                md5.ComputeHash(ASCIIEncoding.ASCII.GetBytes(TextBox3.Text));
                byte[] result = md5.Hash;
                StringBuilder strBuilder = new StringBuilder();
                for (int i = 0; i < result.Length; i++)
                {
                    strBuilder.Append(result[i].ToString("x2"));
                }
                AspTaple US = new AspTaple
                {
                    UserName = TextBox1.Text,
                    email = TextBox2.Text,
                    password = strBuilder.ToString()
                };
                db.AspTaples.Add(US);
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('DONE✅')", true);
                db.SaveChanges();
                Server.Transfer("~/login and reqister/login.aspx");

            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}
