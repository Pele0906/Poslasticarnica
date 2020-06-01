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
    public partial class KreiranjeNovogRecepta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (string.IsNullOrWhiteSpace(User.Identity.Name))
            {
                Response.Redirect("~/MeniPocetna.aspx");
            }
            Baza baza = new Baza();
            dplVrstaPoslastice.DataSource = baza.DajSvePoslastice();
            dplVrstaPoslastice.DataValueField = "IDPoslastice";
            dplVrstaPoslastice.DataTextField = "VrstaPoslastice";
            dplVrstaPoslastice.DataBind();
        }

        protected void btnKreiraj_Click(object sender, EventArgs e)
        {
            Baza baza = new Baza();

            string NazivRecepta = tbNazivRecepta.Text;
            string SastojciRecepta = tbSastojciRecepta.Text;
            string NacinPripremeRecepta = tbPriprema.Text;
            int IDPoslastice = int.Parse(dplVrstaPoslastice.SelectedValue);
            string VrstaPoslastice = dplVrstaPoslastice.SelectedItem.Text;
            int idPosetioca = baza.DajPosetiocaPremaKorisnickomImenu(User.Identity.Name).IDPosetioca;
            Recepti obj = new Recepti(NazivRecepta, SastojciRecepta, NacinPripremeRecepta, IDPoslastice, VrstaPoslastice, idPosetioca);

            baza.DodajNoviRecept(obj);
            Response.Redirect("~/MeniRecepti.aspx");
        }
    }
}