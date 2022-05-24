using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FINAL_NETWORK.show_game
{
    public partial class MyGame : System.Web.UI.Page
    {
        AspDataEntities db = new AspDataEntities();

        protected void DataList1_ItemCreated(object sender, DataListItemEventArgs e)
        {
            /*
             SELECT ID_GAME_FATORA,ID_USER_FATORA,id,img1
            FORM FATORA F,GAME G
            WHERE (F.ID_USER_FATORA=usr) AND(F.ID_GAME_FATORA=G.id);

             */
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=MOHAMED;Initial Catalog=AspData;Integrated Security=True");
            SqlDataAdapter sb;
            int usr = (int)Session["usr"];
            sb = new SqlDataAdapter("SELECT ID_GAME_FATORA, ID_USER_FATORA,'game.id', img1 from FATORA F join GAME G on (F.ID_USER_FATORA = " + usr + ") AND(F.ID_GAME_FATORA = G.id); ", con);


            DataTable dt = new DataTable();
            con.Open();
            sb.Fill(dt);
            DataList1.DataSourceID = null;
            DataList1.DataSource = dt;
            DataList1.DataBind();
            con.Close();

        }
    }
}
