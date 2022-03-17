<%@ Control Language="c#" Inherits="Cricket.controls.navAdmin" CodeFile="navAdmin.ascx.cs" %>
<script language="JavaScript" type="text/javascript" src="/JS/mm_menu.js"></script>
<script language="JavaScript" type="text/javascript">
<!--

    //TODO = put this in a nav control and make it configurable

    function mmLoadMenus() {
        if (window.mm_menu_0204112913_0) return;

        // report  menu
        window.mm_menu_0209191753_0 = new Menu("root", 94, 23, "Arial, Helvetica, sans-serif", 11, "#FFFFFF", "#FFFFFF", "#005A7D", "#0094D2", "left", "middle", 6, 0, 500, -5, 7, true, true, true, 0, true, true);
        mm_menu_0209191753_0.addMenuItem("Player&nbsp;Offense", "location='/AdminTeams/PlayerOffense.aspx'");
        mm_menu_0209191753_0.addMenuItem("Running&nbsp;Offense", "location='/AdminTeams/RunningOffense.aspx'");
        mm_menu_0209191753_0.addMenuItem("Player&nbsp;Reports", "location='/AdminTeams/PlayerReports.aspx'");
        mm_menu_0209191753_0.fontWeight = "bold";
        mm_menu_0209191753_0.hideOnMouseOut = true;
        mm_menu_0209191753_0.bgColor = '#E2E2E2';
        mm_menu_0209191753_0.menuBorder = 1;
        mm_menu_0209191753_0.menuLiteBgColor = '#000000';
        mm_menu_0209191753_0.menuBorderBgColor = '#035376';

        // create the sub menus
        mm_menu_0209191753_0.writeMenus();
    }
//-->
</script>
<script language="JavaScript" type="text/javascript">

    mmLoadMenus();

</script>
<table width="900" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
        <td height="30" align="left" valign="top" class="menubg">
            <table width="900" height="30" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                    <td align="center" valign="middle" class="menuline">
                        <a href="/default.aspx" class="menuline">Home</a>
                    </td>
                    <td align="center" valign="middle">
                        <a href="/AdminTeams/default.aspx" class="menuline">Admin Home</a>
                    </td>
                    <td align="center" valign="middle" class="menuline">
                        <a href="/AdminTeams/password.aspx" class="menuline">Change Password</a>
                    </td>
                    <td align="center" valign="middle" class="menuline">
                        <a href="http://182.71.233.146:151/?param=123" class="menuline">Umpire Portal</a>
                    </td>
                    <td align="center" valign="middle" class="menuline">
                        <div id="divScoresheets" runat="server">
                            <a href="/AdminTeams/matches.aspx" class="menuline">Scoresheets</a>
                        </div>
                    </td>
                    <td align="center" valign="middle">
                        <div id="divPlayers" runat="server">
                            <a href="/AdminTeams/players.aspx" class="menuline">Players</a>
                        </div>
                    </td>
                    <td align="center" valign="middle">
                        <a href="/AdminTeams/financialReports.aspx" class="menuline">Financial Reports</a>
                    </td>
                    <td align="center" valign="middle">
                        <a href="/AdminTeams/PlayerReports.aspx" class="menuline">Player Reports</a>
                    </td>
                    <td align="center" valign="middle" class="aboutustext">
                        <a href="" id="aLogout" runat="server" class="menuline" onserverclick="aLogOut_OnClick">Logout</a>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
