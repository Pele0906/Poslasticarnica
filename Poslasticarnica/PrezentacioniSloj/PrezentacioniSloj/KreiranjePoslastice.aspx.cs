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
    public partial class KreiranjePoslastice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!string.IsNullOrWhiteSpace(User.Identity.Name))
            {
                Baza baza = new Baza();
                Posetilac posetilac = baza.DajPosetiocaPremaKorisnickomImenu(User.Identity.Name);
                if(!posetilac.PosetilacJeAdministrator)
                {
                    Response.Redirect("~/MeniPocetna.aspx");
                }
            }
            else
            {
                Response.Redirect("~/MeniPocetna.aspx");
            }
        }

        protected void btnKreirajPoslasticu_Click(object sender, EventArgs e)
        {
            Baza baza = new Baza();

            string VrstaPoslastice = tbKreiranjePoslastice.Text;
            Poslastice obj = new Poslastice(VrstaPoslastice);

            baza.DodajNovuPoslasticu(obj);
            Response.Redirect("~/MeniPoslastice.aspx");
        }
    }
}