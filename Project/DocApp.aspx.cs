﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class DocApp : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-N5U8R08\SQLEXPRESS;Initial Catalog=DoctorApp;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter("Select UId, DName,Date,Time from App where DName='" + Session["DName"].ToString() + "' And Date >= '" + DateTime.Now.ToShortDateString() + "'", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
}