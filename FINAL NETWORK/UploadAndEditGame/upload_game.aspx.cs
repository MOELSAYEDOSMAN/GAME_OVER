using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FINAL_NETWORK.UploadAndEditGame
{
    public partial class upload_game : System.Web.UI.Page
    {
        AspDataEntities db = new AspDataEntities();
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == null && TextBox2.Text == null && TextBox3.Text == null && FileUpload1 == null && DropDownList1.SelectedValue == "None")
            {
                Label1.Text = "Error in input";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                var ch = db.GAMEs.FirstOrDefault(x => x.name == TextBox1.Text);
                if (ch != null)
                {
                    Label1.Text = "Game Already exit";
                }
                else
                {

                    if (FileUpload1.HasFile)
                    {

                        string fileur = FileUpload1.PostedFile.FileName;
                        string copfile = "urlimg/" + FileUpload1.FileName;
                        FileUpload1.PostedFile.SaveAs(Server.MapPath("~/urlimg/") + fileur);


                        GAME gam = new GAME
                        {
                            name = TextBox1.Text,
                            price = int.Parse(TextBox2.Text),
                            description = TextBox3.Text,
                            time_upload = DateTime.Now,
                            img1 = copfile,
                            download_number = 0,
                            type_game = DropDownList1.SelectedValue
                        };
                        db.GAMEs.Add(gam);
                        db.SaveChanges();

                        Label1.Text = copfile;
                        Label1.ForeColor = System.Drawing.Color.Green;



                    }
                }

            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}
