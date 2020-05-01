using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WPL_Theory_Ass1
{
    public partial class WPLAssignment : System.Web.UI.Page
    {
        private static string conStr = @"Data Source=DESKTOP-RHOILB6\SQLEXPRESS;Initial Catalog=db_Ecommerce;Integrated Security=True";
        // Form an SQL connection
        SqlConnection sqlConn = new SqlConnection(conStr);

        protected void Page_Load(object sender, EventArgs e)
        {
            this.ViewTable();
        }
        public void ViewTable()
        {
            sqlConn.Open();
            string quer = "SELECT * FROM tbSales";
            SqlDataAdapter sel = new SqlDataAdapter(quer, sqlConn);
            DataSet ds = new DataSet();
            sel.Fill(ds);
            valGrid.DataSource = ds;
            valGrid.DataBind();
            sqlConn.Close();
        }

        protected void SubmitPd_Click(object sender, EventArgs e)
        {
            sqlConn.Open();
            //rate.Text;
            string name = PName.Text.ToString();
            string date = PDate.Text.ToString();
            int quatity = Convert.ToInt32(PQuantity.Text);
            int rate = Convert.ToInt32(PRate.Text);
            int val = quatity * rate;
            rateval.Text = val.ToString();
            string insQ = "INSERT INTO tbSales (SALESDATE, PRODUCT, QUANTITY, RATE) VALUES ('"+
                date +"', '" +
                name + "', " +
                 quatity + ", " +
                 rate + ")";
            SqlCommand sqlCom = new SqlCommand(insQ, sqlConn);
            sqlCom.ExecuteNonQuery();
            sqlConn.Close();
            this.ViewTable();
        }

        protected void delBtn_Click(object sender, EventArgs e)
        {
            int id = int.Parse(delID.Text);
            sqlConn.Open();
            string delB = "DELETE FROM tbSales WHERE SALESID = " + id;
            SqlCommand sqlCom = new SqlCommand(delB, sqlConn);
            sqlCom.ExecuteNonQuery();
            sqlConn.Close();
            this.ViewTable();
        }

        protected void updateBtn_Click(object sender, EventArgs e)
        {
            int id = int.Parse(idNum.Text);
            sqlConn.Open();
            string name = PName.Text.ToString();
            string date = PDate.Text.ToString();
            int quatity = Convert.ToInt32(PQuantity.Text);
            int rate = Convert.ToInt32(PRate.Text);
            string delB = "UPDATE tbSales SET " +
                "SALESDATE = '"+ date +
                "', PRODUCT = '" + name +
                "', QUANTITY = " + quatity +
                ", RATE = " + rate +
                " WHERE SALESID =" + id;
            SqlCommand sqlCom = new SqlCommand(delB, sqlConn);
            sqlCom.ExecuteNonQuery();
            sqlConn.Close();
            this.ViewTable();
        }
    }
}