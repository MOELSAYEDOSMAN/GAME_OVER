using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FINAL_NETWORK.UploadAndEditGame
{
    public partial class Edit : System.Web.UI.Page
    {
        //database varbel=>
        AspDataEntities db = new AspDataEntities();

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1 == null && TextBox2.Text == null && TextBox3 == null)
            {

                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Null')", true);
            }
            else
            {
                var ck = db.GAMEs.SingleOrDefault(x => x.name == TextBox1.Text);
                if (ck != null)
                {
                    if (FileUpload1.HasFile)
                    {

                        string fileur = FileUpload1.PostedFile.FileName;
                        string copfile = "UploadAndEditGame/img_gam/" + FileUpload1.FileName;
                        FileUpload1.PostedFile.SaveAs(Server.MapPath("~UploadAndEditGame/img_gam/") + fileur);
                        ck.price = int.Parse(TextBox2.Text);
                        ck.description = TextBox3.Text;
                        ck.type_game = DropDownList1.SelectedValue;
                        ck.img1 = copfile;
                    }
                    else
                    {
                        ck.price = int.Parse(TextBox2.Text);
                        ck.description = TextBox3.Text;
                        ck.type_game = DropDownList1.SelectedValue;

                    }
                }
                db.SaveChanges();

                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Done Edit')", true);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            var ck = db.GAMEs.SingleOrDefault(x => x.name == TextBox1.Text);
            if (ck != null)
            {
                db.GAMEs.Remove(ck);
                db.SaveChanges();
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Done Delet')", true);

            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (TextBox4 != null)
            {
                DataList1.CssClass = "dals";
                SqlConnection con = new SqlConnection(@"Data Source=MOHAMED;Initial Catalog=AspData;Integrated Security=True");
                SqlDataAdapter sb;
                sb = new SqlDataAdapter("Select * from GAME where name like '%" + TextBox4.Text + "%'", con);
                DataTable dt = new DataTable();
                con.Open();
                sb.Fill(dt);
                DataList1.DataSourceID = null;
                DataList1.DataSource = dt;
                DataList1.DataBind();
                con.Close();
            }

        }
        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {

            DataList1.SelectedIndex = e.Item.ItemIndex;
            string ser = ((Image)DataList1.SelectedItem.FindControl("Image1")).ImageUrl;
            var serca = db.GAMEs.SingleOrDefault(x => x.img1 == ser);
            if (serca != null)
            {
                TextBox1.Text = serca.name;
                TextBox2.Text = serca.price.ToString();
                TextBox3.Text = serca.description;
                DropDownList1.Text = serca.type_game.ToString();
            }
        }

        protected void Image1_DataBinding(object sender, EventArgs e)
        {

        }
        protected void Item_Command(object source, DataListCommandEventArgs e)
        {
            DataList1.SelectedIndex = e.Item.ItemIndex;
            string ser = ((Label)DataList1.SelectedItem.FindControl("Label1")).Text;
            Button l = new Button();
            var serca = db.GAMEs.SingleOrDefault(x => x.name == ser);
            if (serca != null)
            {
                TextBox1.Text = serca.name;
                TextBox2.Text = serca.price.ToString();
                TextBox3.Text = serca.description;
                DropDownList1.Text = serca.type_game.ToString();

            }
            else
            {
                TextBox4.Text = "NO";
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selected(object sender, SqlDataSourceStatusEventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}
