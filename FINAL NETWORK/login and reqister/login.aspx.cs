using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FINAL_NETWORK.login_and_reqister
{

    public partial class login : System.Web.UI.Page
    {
        AspDataEntities db = new AspDataEntities();
        public int USID;

        protected void Button1_Click(object sender, EventArgs e)
        {
            MD5 md5 = new MD5CryptoServiceProvider();
            md5.ComputeHash(ASCIIEncoding.ASCII.GetBytes(TextBox2.Text));
            byte[] result = md5.Hash;
            StringBuilder strBuilder = new StringBuilder();
            for (int i = 0; i < result.Length; i++)
            {
                strBuilder.Append(result[i].ToString("x2"));
            }
            string pass = strBuilder.ToString();
            var chaek = db.admins.SingleOrDefault(x => x.email == TextBox1.Text && x.password == TextBox2.Text);
            if (chaek != null)
            {

                Server.Transfer("~/UploadAndEditGame/upload_game.aspx");
            }
            else
            {
                var S = db.AspTaples.SingleOrDefault(x => x.email == TextBox1.Text && x.password == pass);
                if (S != null)
                {
                    Session["usr"] = S.ID;
                    Server.Transfer("~/show_game/ShowGAME.aspx");

                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('error❌')", true);
                }

            }

        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}
