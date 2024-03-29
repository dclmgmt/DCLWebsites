<%@ Page Title="Documents" Language="c#" MasterPageFile="~/Site.master" Inherits="Cricket.Main.documents" CodeFile="documents.aspx.cs" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <table width="900" border="0" align="center" cellpadding="0" cellspacing="0" class="">
        <tr>
            <td align="left" valign="top" class="">
                <table id="TableMain" width="900" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                        <td class="outerTableTD2" valign="top" align="left">
                            <!-- custom code start -->
                            <table id="TableCustom" width="96%" border="0" align="center" cellpadding="2" cellspacing="2">
                                <tr>
                                    <td class="title" colspan="4">
                                        Documents for downloads
                                    </td>
                                </tr>
                                <tr>
                                    <td class="infoData">
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td class="" align="center">
                                        <table width="100%" border=0>
                                            <tr align="center">
                                                <td>
                                                &nbsp;
                                                <br />
                                                <br />
                                                </td>
                                            </tr>
                                            <tr align="center">
                                                <td width="33%">
                                                    <a class="subtitle" href="/Documents/JuniorKidsTournamentRules.pdf">
                                                        <img src="../img/pdf.png" style="height:32px;width=32px" />
                                                        <br />
                                                        Dallas Youth Cricket Junior's Rule Book 
                                                        <br />
                                                    </a>
                                                    <br />
                                                </td>
                                                <td width="33%">
                                                    <a class="subtitle" href="/Documents/SeniorKidsTournamentRules.pdf">
                                                        <img src="../img/pdf.png" style="height:32px;width=32px" />
                                                        <br />
                                                        Dallas Youth Cricket Senior's Rule Book
                                                        <br />
                                                    </a>
                                                    <br />
                                                </td>
                                                <td>
                                                    <a class="subtitle" href="/Documents/Scoresheet.pdf">
                                                        <img src="../img/pdf.png" style="height:32px;width=32px" />
                                                        <br />
                                                        League Scoresheet
                                                    </a>
                                                    <br />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="infoData">
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
