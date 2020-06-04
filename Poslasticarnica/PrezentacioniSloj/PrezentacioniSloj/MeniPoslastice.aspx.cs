using SlojPodataka;
using SlojPodataka.Modeli;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PrezentacioniSloj
{
    public partial class MeniPoslastice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Baza baza = new Baza();
                List<Poslastice> lista = baza.DajSvePoslastice();

                gvTabelaPoslastica.DataSource = lista;
                gvTabelaPoslastica.DataBind();
                if (!string.IsNullOrWhiteSpace(User.Identity.Name))
                {
                    Posetilac posetilac = baza.DajPosetiocaPremaKorisnickomImenu(User.Identity.Name);
                    btKreiraj.Visible = posetilac.PosetilacJeAdministrator;
                }
                else
                {
                    btKreiraj.Visible = false;
                }
            }
        }

        protected void btPretrazi_Click(object sender, EventArgs e)
        {
            Baza baza = new Baza();
            string stringPretrage = tbPretraga.Text;

            List<Poslastice> lista = baza.DajSvePoslasticePremaVrsti(stringPretrage);

            gvTabelaPoslastica.DataSource = lista;
            gvTabelaPoslastica.DataBind();
        }

        protected void btKreiraj_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/KreiranjePoslastice.aspx");
        }
    }
}
