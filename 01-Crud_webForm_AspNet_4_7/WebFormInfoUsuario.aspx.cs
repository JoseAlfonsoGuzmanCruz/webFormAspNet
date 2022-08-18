using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _01_Crud_webForm_AspNet_4_7
{
    public partial class WebFormInfoUsuario : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString); 
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into empleados values('" + txtNombre.Text + "','" + txtApellidoP.Text + "','" + txtApellidoM.Text + "','" + txtArea.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            lblMensaje.Text = "Data has been inserted";
            GridViewInfoUsuarios.DataBind();
            txtNombre.Text = "";
            txtApellidoP.Text = "";
            txtApellidoM.Text = "";
            txtArea.Text = "";
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            SqlCommand cmd_Update = new SqlCommand("update empleados set nombre='" + txtNombreUpdate.Text + "', apellido_paterno='" + txtApellidoPUpdate.Text + "',apellido_materno='" + txtApellidoMUpdate.Text + "',area_trabajo='" + txtAreaUpdate.Text + "' where Id='" + txtIdUpdate.Text + "'", con);
            cmd_Update.ExecuteNonQuery();
            lblMensaje.Text = "Data has been updated";
            GridViewInfoUsuarios.DataBind();
            con.Close();
            txtIdUpdate.Text = "";
            txtNombreUpdate.Text = "";
            txtApellidoPUpdate.Text = "";
            txtApellidoMUpdate.Text = "";
            txtAreaUpdate.Text = "";
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("delete from empleados where id='" + Convert.ToInt32(txtSearch.Text).ToString() + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            lblMensaje.Text = "Data has been Delete";
            GridViewInfoUsuarios.DataBind();
            txtNombre.Text = "";
            txtApellidoP.Text = "";
            txtApellidoM.Text = "";
            txtArea.Text = "";

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            //string find = "select * from empleados where (id like '%' +@id+ '%')";
            //SqlCommand cmd = new SqlCommand(find, con);
            //cmd.Parameters.Add("@id", SqlDbType.NVarChar).Value = txtSearch.Text;
            //cmd.ExecuteNonQuery();

            //SqlDataAdapter da = new SqlDataAdapter();
            //da.SelectCommand = cmd;
            //DataSet ds = new DataSet();
            //da.Fill(ds, "id");

            //GVSearch.DataSourceID = null;
            //GVSearch.DataSource = ds;
            //GVSearch.DataBind();

            //con.Close();
            //lblMensaje.Text = "data has bee selected";

        }

        protected void GVSearch_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtIdUpdate.Text = GVSearch.SelectedRow.Cells[1].Text;
            txtNombreUpdate.Text = GVSearch.SelectedRow.Cells[2].Text;
            txtApellidoPUpdate.Text = GVSearch.SelectedRow.Cells[3].Text;
            txtApellidoMUpdate.Text = GVSearch.SelectedRow.Cells[4].Text;
            txtAreaUpdate.Text = GVSearch.SelectedRow.Cells[5].Text;
            txtIdUpdate.Enabled = false;
        }

        protected void btnFind_Click(object sender, EventArgs e)
        {
            string find = "select * from empleados where (id like '%' +@id+ '%')";
            SqlCommand cmd = new SqlCommand(find, con);
            cmd.Parameters.Add("@id", SqlDbType.NVarChar).Value = txtSearch.Text;
            cmd.ExecuteNonQuery();

            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds, "id");

            GVSearch.DataSourceID = null;
            GVSearch.DataSource = ds;
            GVSearch.DataBind();

            con.Close();

        }

        protected void txtFindUpdate_TextChanged(object sender, EventArgs e)
        {
        }
    }
}