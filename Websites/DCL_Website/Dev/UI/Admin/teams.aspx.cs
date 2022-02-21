using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Text;
using Cricket;
using Cricket.controls;
using Cricket.Common;

namespace Cricket.Admin
{
	/// <summary>
	/// Summary description for team.
	/// </summary>
	public partial class teams : PageBaseAdmin
	{
		protected override void OnLoad(System.EventArgs e)
		{
			base.OnLoad(e);

			if (!IsPostBack)
			{
				loadData();
			}
		}

		protected void loadData()
		{
			//load the data from the database
			SqlDataReader dr = m_bl.getTeamList(false);
			ddlTeams.DataSource = dr;
			ddlTeams.DataTextField = "name";
			ddlTeams.DataValueField = "team_id";
			ddlTeams.DataBind();
			dr.Close();

			ddlTeams.Items.Insert(0, new ListItem("select", "0"));
			ddlTeams.SelectedIndex = 0;

            loadTeamData(0);

		}

		public void loadTeamData(int teamId)
		{
            if (teamId == 0)
            {
                lblTeamId.Text = string.Empty;
                txtName.Text = string.Empty;
                txtDesc.Text = string.Empty;
                txtContact.Text = string.Empty;
                txtEmail.Text = string.Empty;
                txtGroundName.Text = string.Empty;
                chkActive.Checked = false;
                chkDepositPaid.Checked = false;
                txtDepositAmount.Text = string.Empty;
                txtDepositDate.Text = DateTime.Now.ToShortDateString();
                txtDepositPaidBy.Text = string.Empty;
                btnAddTeam.Enabled = false;

            }
            else
            {

                SqlDataReader dr = m_bl.getTeamData(teamId);
                if (dr.Read())
                {
                    lblTeamId.Text = dr["team_id"].ToString();
                    txtName.Text = dr["name"] as string;
                    txtDesc.Text = dr["description"] as string;
                    txtContact.Text = dr["contact_name"] as string;
                    txtEmail.Text = dr["contact_email"] as string;
                    txtGroundName.Text = dr["ground_name"] as string;
                    chkActive.Checked = toInt(dr["active_sw"]) == 1;
                    chkDepositPaid.Checked = toInt(dr["deposit_paid"]) == 1;
                    txtDepositPaidBy.Text = dr["deposit_paid_by"] as string;
                    txtDepositAmount.Text = dr["deposit_amount"].ToString();
                    txtDepositDate.Text = string.IsNullOrWhiteSpace(dr["deposit_date"].ToString()) ? string.Empty: DateTime.Parse(dr["deposit_date"].ToString()).ToShortDateString();
                }
                dr.Close();

                btnAddTeam.Enabled = true;

            }
		}

		protected void ddlTeams_SelectedIndexChanged(object sender, System.EventArgs e)
		{
			int id = toInt(ddlTeams.SelectedValue.ToString());

			if (id > 0)
			{
                loadTeamData(id);
			}
			else
			{
                loadTeamData(0);
			}

		}


        protected void btnAddTeam_Click(object sender, EventArgs e)
        {

            if (Page.IsValid)
            {
                int activeSw = 0;
                int depositPaid = 0;
                DateTime dtDepositDate;
                decimal decimalAmountPaid;
                if (chkActive.Checked)
                    activeSw = 1;
                if (chkDepositPaid.Checked)
                    depositPaid = 1;
                int teamId = toInt(lblTeamId.Text);
                
                DateTime.TryParse(txtDepositDate.Text, out  dtDepositDate);
                Decimal.TryParse(txtDepositAmount.Text, out decimalAmountPaid);
                if (teamId > 0)
                {
                    m_bl.setTeamData(teamId, txtName.Text, txtDesc.Text, txtContact.Text, txtEmail.Text, txtGroundName.Text, activeSw
                    ,depositPaid, dtDepositDate, txtDepositPaidBy.Text, decimalAmountPaid);
                }
                else
                {
                    string userName = txtName.Text.Replace(" ", "");
                    m_bl.createTeamData(txtName.Text, userName, txtDesc.Text, txtContact.Text, txtEmail.Text, txtGroundName.Text, activeSw
                        , depositPaid, dtDepositDate, txtDepositPaidBy.Text, decimalAmountPaid);

                    StringBuilder sb = new StringBuilder();
                    sb.AppendLine("Please note that an account has been created for your team on the DCL website. You are required to do the following: ");
                    sb.AppendLine("1. Verify the login and change the password to make it secure. (Passwords are not encrypted so don't use personal passwords) ");
                    sb.AppendLine("2. Enter all your active players before the tournament starts. ");
                    sb.AppendLine("3. Add new players before/after a match to ensure that the winning team can enter the scores for that player. ");
                    sb.AppendLine("4. If you are a winning team you are required to collect the scoresheets for the match and enter the scores on the website for the match (this includes the losing team scores) before EOD Tuesday. ");
                    sb.AppendLine();
                    sb.AppendLine("username = " + userName);
                    sb.AppendLine("password = " + userName);
                    sb.AppendLine();
                    
                    EmailHelper.SendEmail(txtName.Text,
                        "DCL: New Team Account created",
                        sb.ToString(),
                        txtEmail.Text);
                }

                loadData();
            }
        }
        protected void btnNewTeam_Click(object sender, EventArgs e)
        {
            loadTeamData(0);
            ddlTeams.SelectedIndex = 0;
            btnAddTeam.Enabled = true;
        }
}
}

