using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace FINAL_NETWORK.show_game
{
    public partial class ShowGAME : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=MOHAMED;Initial Catalog=AspData;Integrated Security=True");
        AspDataEntities db = new AspDataEntities();
        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void Item_Command(object source, DataListCommandEventArgs e)
        {
            DataList1.SelectedIndex = e.Item.ItemIndex;
            string ser = ((Label)DataList1.SelectedItem.FindControl("Label1")).Text;
            Session["game name"] = ser;
            TextBox1.Text = ser;

        }

        protected void main_submit_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(@"Data Source=MOHAMED;Initial Catalog=AspData;Integrated Security=True");
            SqlDataAdapter sb;
            if (DropDownList1.SelectedValue == "None")
            {
                sb = new SqlDataAdapter("Select * from GAME where name like '%" + TextBox1.Text + "%'", con);
            }
            else
            {
                sb = new SqlDataAdapter("Select * from GAME where (name like '%" + TextBox1.Text + "%') AND (type_game ='" + DropDownList1.SelectedValue + "')", con);
            }

            DataTable dt = new DataTable();
            con.Open();
            sb.Fill(dt);
            DataList1.DataSourceID = null;
            DataList1.DataSource = dt;
            DataList1.DataBind();
            con.Close();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            //datalist Action


        }


    }
}
