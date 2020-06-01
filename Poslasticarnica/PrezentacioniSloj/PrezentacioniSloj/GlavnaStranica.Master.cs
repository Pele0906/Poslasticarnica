using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PrezentacioniSloj
{
    public partial class GlavnaStranica : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void MeniPoslasticarnice_Click(object sender, MenuEventArgs e)
        {
            string stranica = e.Item.Value;
            Response.Redirect(stranica);
        }
    }
}