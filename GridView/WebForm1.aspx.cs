using System.Data.SqlClient;
using System.Configuration;
using System.Web.Caching;
using System;
using System.Web.UI.WebControls;

namespace GridView
{
    public partial class WebForm1:System.Web.UI.Page
    {
        protected void Page_Load(object sender,EventArgs e)
        {
            Response.Write(System.Threading.Thread.CurrentThread.CurrentCulture.ToString());
        }

    }
}
