using System;
using System.Collections.Generic;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace FINAL_NETWORK.game
{
    public partial class gameName : System.Web.UI.Page
    {
        AspDataEntities db = new AspDataEntities();
        int id_game_to_save;
        protected void Button1_Click(object sender, EventArgs e)
        {
            FATORA x = new FATORA
            {
                ID_GAME_FATORA = id_game_to_save,
                ID_USER_FATORA = (int)Session["usr"]

            };
            db.FATORAs.Add(x);
            var ed = db.GAMEs.SingleOrDefault(y => y.id == id_game_to_save);
            if (ed != null)
            {
                ed.download_number += 1;
            }
            db.SaveChanges();
        }
        protected void Page_Load(object sender, EventArgs e)
        {

            string x = (string)Session["game name"];
            var ck_GM = db.GAMEs.SingleOrDefault(a => a.name == x);
            if (ck_GM != null)
            {
                id_game_to_save = ck_GM.id;
                Image1.ImageUrl = ck_GM.img1;
                Label1.Text = ck_GM.name;
                Label2.Text = ck_GM.price.ToString();
                Label3.Text = ck_GM.download_number.ToString();
                Label4.Text = ck_GM.description;
            }
        }
    }
}
