using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace _02_Crud_webForm_AspNet_4_7_PaginaMaestra.Page
{
    public partial class Index : System.Web.UI.Page
    {
        readonly SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            CargarTabla();
        }
        void CargarTabla()
        {
            SqlCommand cmd = new SqlCommand("sp_load", con);
            //cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();
        }

        protected void BtnCreate_Click(object sender, EventArgs e)
        {
            //Response.Redirect("~/Page/CRUD.aspx?op=C");
        }

        //netos>
        protected void BtnCreate_Click1(object sender, EventArgs e)
        {
            Response.Redirect("~/Page/CRUD.aspx?op=C");
        }

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {
            string id;
            Button BtnConsultar = (Button)sender;
            GridViewRow selectedrow = (GridViewRow)BtnConsultar.NamingContainer;
            id = selectedrow.Cells[1].Text;
            Response.Redirect("~/Page/CRUD.aspx?id=" + id + "&op=U");
        }

        protected void BtnDelete_Click(object sender, EventArgs e)
        {
            string id;
            Button BtnConsultar = (Button)sender;
            GridViewRow selectedrow = (GridViewRow)BtnConsultar.NamingContainer;
            id = selectedrow.Cells[1].Text;
            Response.Redirect("~/Page/CRUD.aspx?id=" + id + "&op=D");

        }

        protected void BtnRead_Click(object sender, EventArgs e)
        {
            string id;
            Button BtnConsultar = (Button)sender;
            GridViewRow selectedrow = (GridViewRow)BtnConsultar.NamingContainer;
            id = selectedrow.Cells[1].Text;
            Response.Redirect("~/Page/CRUD.aspx?id=" + id + "&op=R");

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}