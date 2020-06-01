using SlojPodataka;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SlojPodataka.Modeli;


namespace PrezentacioniSloj
{
    public partial class MeniRecepti : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Baza baza = new Baza();
            gvTabelaRecepta.DataSource = baza.DajSveRecepte();
            gvTabelaRecepta.DataBind();
            if (string.IsNullOrWhiteSpace(User.Identity.Name))
            {
                btnKreirajRecept.Visible = false;
            }
        }

        protected void btnKreirajRecept_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/KreiranjeNovogRecepta.aspx");

        }
    }
}
