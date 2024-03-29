<%@ Page Language="c#" MasterPageFile="~/SiteAdmin.Master" Inherits="Cricket.AdminTeams.player_profile" CodeFile="player_profile.aspx.cs"
    CodeFileBaseClass="Cricket.PageBaseAdmin" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">

    <script type='text/javascript'>
        function ValidatePhoneNo() {
            if ((event.keyCode > 47 && event.keyCode < 58) || event.keyCode == 43 || event.keyCode == 32)
                return event.returnValue;
            return event.returnValue = '';
        }
    </script>


</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
	<table width="900" border="0" align="center" cellpadding="0" cellspacing="0" >
		<tr>
			<td align="left" valign="top" >
				<table id="TableMain" width="900" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td valign="top" align="left">
                            <!-- custom code start -->
                            <table id="TableCustom" width="96%" border="0" align="center" cellpadding="2" cellspacing="2">
                                <tr>
                                    <td class="title" colspan="4">
                                        Players Profile
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" colspan="2">
                                        <span class="infoLabel">For security purpose, players email address and phone number
                                            can be viewed only by the administrator of the team. </span>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" colspan="2">
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        &nbsp;
                                    </td>
                                    <td>
                                        <asp:Label ID="lblMessage" TabIndex="1" runat="server" CssClass="infoError"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <span class="infoLabel">Player ID:</span>
                                    </td>
                                    <td>
                                        <asp:Label ID="lblPlayerId" TabIndex="1" runat="server" CssClass="infoData"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <span class="infoLabel">First Name:</span>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtFirstName" TabIndex="1" runat="server" Width="200px" MaxLength="20"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"
                                            ControlToValidate="txtFirstName">First Name is required</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <span class="infoLabel">Last Name:</span>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtLastName" TabIndex="2" runat="server" Width="200px" MaxLength="20"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator"
                                            ControlToValidate="txtLastName">Last Name is required</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <span class="infoLabel">Designation:</span>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="ddlDesignation" runat="server" TabIndex="3">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <span class="infoLabel">Batting Style:</span>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtBattingStyle" TabIndex="4" runat="server" Width="200px" MaxLength="30"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator"
                                                                    ControlToValidate="txtBattingStyle">Batting style is required</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <span class="infoLabel">Bowling Style:</span>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtBowlingStyle" TabIndex="5" runat="server" Width="200px" MaxLength="30"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <span class="infoLabel">Batting Position:</span>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtBattingPos" TabIndex="6" runat="server" Width="100px" MaxLength="10"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator"
                                                                    ControlToValidate="txtBattingPos">Batting Position is required</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <span class="infoLabel">Wicket Keeper:</span>
                                    </td>
                                    <td>
                                        <asp:CheckBox ID="chkKeeper" TabIndex="7" runat="server"></asp:CheckBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <span class="infoLabel">Email Address:</span>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtEmail" TabIndex="8" runat="server" Width="200px" MaxLength="60"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator"
                                                                    ControlToValidate="txtEmail">Email is required</asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator"
                                            ControlToValidate="txtEmail" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Invalid Email</asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <span class="infoLabel">Phone Number:</span>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtPhone" TabIndex="9" runat="server" Width="200px"  MaxLength="15"  onkeypress="return ValidatePhoneNo()"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator"
                                                                    ControlToValidate="txtPhone">Phone is required</asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ValidationExpression="^[0-9 +]+$"
                                                                        ErrorMessage="Not a valid Phone no" ControlToValidate="txtPhone"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr style="display: none;">
                                    <td align="right">
                                        <span class="infoLabel">Cricclub Id:</span>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtCricclubId" TabIndex="9" runat="server" Width="200px"  MaxLength="100"></asp:TextBox>
                                   </td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top">
                                        <span class="infoLabel">Select Photo:</span>
                                    </td>
                                    <td>
                                        <input id="filePhoto" type="file" runat="server" name="filePhoto" />
                                        <br />
                                        <span class="infoData">(Size: &lt;= 100KB / Dimension: 200x150pixels)</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <span class="infoLabel">InActive:</span>
                                    </td>
                                    <td>
                                        <asp:CheckBox ID="chkInActive" TabIndex="20" runat="server"></asp:CheckBox>
                                        &nbsp;<span class='infoData"'>(Player will not be available for selection when entering
                                            match scores)</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                    </td>
                                    <td>
                                        <asp:Button ID="btnSubmit" TabIndex="11" runat="server" Text="Submit" CssClass="btnAdmin"
                                            OnClick="btnSubmit_Click"></asp:Button>
                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="btnCancel" TabIndex="15" runat="server" Text="Cancel" CssClass="btnAdmin"
                                            CausesValidation="False" OnClick="btnCancel_Click"></asp:Button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;
                                    </td>
                                </tr>
                            </table>
                            <!-- custom code end -->
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</asp:Content>
