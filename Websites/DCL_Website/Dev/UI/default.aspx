<%@ Page Title="Home Page" Language="c#" MasterPageFile="~/Site.master" Inherits="Cricket._default" CodeFile="default.aspx.cs" CodeFileBaseClass="Cricket.PageBase" %>

    <asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
        <style type="text/css">
            .auto-style1 {
                width: 301px;
            }
        </style>

        <link rel="stylesheet" type="text/css" href="/styles/_shared/css/style.css">
        <link rel="stylesheet" type="text/css" href="/styles/jcarousel.basic.css">

        <script type="text/javascript" src="/js/jquery-1.9.1.js"></script>
        <script type="text/javascript" src="/js/jquery.jcarousel.min.js"></script>
        <script type="text/javascript" src="/js/jcarousel.basic.js"></script>


    </asp:Content>


    <asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
 
        <table width="90" border="0" align="center" cellpadding="10" cellspacing="0" class="bodyoutline">
            <tr>
                <td align="center" valign="top">
                    <a href="/tournament/paymentDCL.aspx"><img src="/Images/sponsors/paymentsDCL.jpg" /></a>
                </td>
            </tr>
        </table>

        <table width="900" border="0" align="center" cellpadding="0" cellspacing="0" class="bodyoutline">
            <tr align="center" valign="top" width="600" >
                <td align="center" valign="top" >
                    <div class="jcarousel-wrapper" style="height: 300px">
                        <div class="jcarousel" style="height: 300px">
                            <ul>
				                    <li><a href="https://www.nanbancapitalx.com/"><img src="/Images/sponsors/NanBanCapitalX.jpeg" alt="" width="850px" height="300"></a> </li>
						    <li><a href="https://www.xforia.com/"><img src="/Images/sponsors/XforiaBanner.jpeg" alt="" width="850px" height="300"></a> </li>
						    <li><a href="https://www.nanbancapitalx.com/"><img src="/Images/sponsors/NanBanCapitalX1.jpeg" alt="" width="850px" height="300"></a> </li>
						    <li><a href="https://www.xforia.com/"><img src="/Images/sponsors/XforiaBanner1.jpeg" alt="" width="850px" height="300"></a> </li>
                                                    <li><img src="/Images/sponsors/SlideChauka.JPG" alt="" width="850px" height="300" ></li>
                            
</ul>
                        </div>

                        <a href="#" class="jcarousel-control-prev">&lsaquo;</a>
                        <a href="#" class="jcarousel-control-next">&rsaquo;</a>

                        <p class="jcarousel-pagination"></p>
                    </div>
                </td>
            </tr>
        </table>


        <table align="center" width="900" height="225" border="0" cellpadding="0" cellspacing="10">
            <tr>
                <td align="left" valign="top">
                    <table width="100%" height="225" border="0" cellpadding="0" cellspacing="0">
                        <tr align="left" valign="top" width="600">
                            <td>
                                <a href="/Main/Announcements.aspx"><h3>Announcements</h3></a>
                            </td>
                        </tr>
                        <tr>
                            <td height="100%" class="" valign="top">
                                <table id="1" border="0" cellpadding="10" cellspacing="1" width="100%">
                                    <tr>
                                        <td class="txt">
                                            <asp:DataGrid ID="dgrid_announcements" runat="server" CssClass="" AllowCustomPaging="false" AllowPaging="false" AllowSorting="false" EnableViewState="False" Width="100%" ShowFooter="False" ShowHeader="false" AutoGenerateColumns="False" CellPadding="0"
                                                CellSpacing="0" GridLines="None" BorderStyle="None">
                                                <AlternatingItemStyle CssClass="gridHomeRow2"></AlternatingItemStyle>
                                                <ItemStyle CssClass="gridHomeRow1"></ItemStyle>
                                                <Columns>
                                                    <asp:BoundColumn DataField="created_dt" HeaderText="" DataFormatString="{0:MMM d, yyyy}">
                                                        <ItemStyle HorizontalAlign="left" Width="20%" CssClass="gridHomeCellData txt-l">
                                                        </ItemStyle>
                                                    </asp:BoundColumn>
                                                    <asp:HyperLinkColumn DataTextField="title" DataNavigateUrlField="ID" DataNavigateUrlFormatString="/Main/Announcements.aspx?AnnouncementID={0}"> 
                                                        <ItemStyle HorizontalAlign="left" Width="80%" CssClass="gridHomeCellData txt-l">
                                                        </ItemStyle>
                                                    </asp:HyperLinkColumn>
                                                    <asp:BoundColumn DataField="ID" HeaderText="" Visible="false">
                                                        <ItemStyle HorizontalAlign="left" Width="0%" CssClass="gridHomeCellData">
                                                        </ItemStyle>
                                                    </asp:BoundColumn>
                                                </Columns>
                                            </asp:DataGrid>
                                            <!--
                                                    <table width=100%><tr><td width="100%" align="right"><a href="/Main/Announcements.aspx">more</a></td></tr></table>
                                                    -->
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
                <td width="310" align="left" valign="top" >
                    <table width="100%" height="225" border="0" cellpadding="0" cellspacing="0" bgcolor="#e0f3fc">
                        <tr>
                            <td  valign="middle" align="center">
                                <a href="/Main/Tournaments.aspx"><h3>Tournaments</h3></a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table id="Table1" border="0" cellpadding="10" cellspacing="0" width="100%" bgcolor="#effaff">
                                    <tr>
                                        <td >
                                            <asp:DataGrid ID="dgrid_tournaments" runat="server" CssClass="" AllowCustomPaging="false" AllowPaging="false" AllowSorting="false" EnableViewState="False" Width="100%" ShowFooter="False" ShowHeader="false" AutoGenerateColumns="False" CellPadding="0" CellSpacing="0"
                                                GridLines="None" BorderStyle="None" onitemdatabound="dgrid_tournaments_ItemDataBound">
                                                <AlternatingItemStyle CssClass="gridRow2"></AlternatingItemStyle>
                                                <ItemStyle CssClass="gridRow1"></ItemStyle>
                                                <Columns>
                                                    <asp:BoundColumn DataField="tournament_id" HeaderText="TournamentId" Visible="false">
                                                        <HeaderStyle CssClass="rtColHeader2"></HeaderStyle>
                                                        <ItemStyle HorizontalAlign="Right" Width="0%" CssClass="rtCellDataRight"></ItemStyle>
                                                    </asp:BoundColumn>
                                                    <asp:HyperLinkColumn DataTextField="name" DataNavigateUrlField="tournament_id" DataNavigateUrlFormatString="/Tournament/default.aspx?TournamentID={0}">
                                                        <ItemStyle HorizontalAlign="left" Width="100%" CssClass="gridCellData txt-l">
                                                        </ItemStyle>
                                                    </asp:HyperLinkColumn>
                                                    <asp:BoundColumn DataField="current" HeaderText="" Visible="false">
                                                        <HeaderStyle CssClass="rtColHeader2"></HeaderStyle>
                                                        <ItemStyle HorizontalAlign="Right" Width="0%" CssClass="rtCellDataRight"></ItemStyle>
                                                    </asp:BoundColumn>
                                                </Columns>
                                            </asp:DataGrid>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>


    </asp:Content>