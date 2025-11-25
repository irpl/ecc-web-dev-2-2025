<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CookieInsecureDemo.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cookie Insecurity Demo</title>
    <style>
        .card { border: 1px solid #ccc; padding: 12px; margin: 12px 0; border-radius: 6px; max-width: 520px; }
        .label { font-weight: bold; display: inline-block; width: 120px; }
        .warning { color: #a00; font-weight: bold; }
        .mono { font-family: Consolas, monospace; background: #f7f7f7; padding: 6px; display: block; white-space: pre-wrap; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="card">
            <h3>Request Discount (demo of insecure cookie)</h3>
            <div>
                <span class="label">First name:</span>
                <asp:TextBox ID="txtFirstName" runat="server" Width="260px" />
            </div>
            <div style="margin-top:6px;">
                <span class="label">Last name:</span>
                <asp:TextBox ID="txtLastName" runat="server" Width="260px" />
            </div>
            <div style="margin-top:8px;">
                <asp:Button ID="btnGetDiscount" runat="server" Text="Get 70% Discount (2 days)" OnClick="btnGetDiscount_Click" />
            </div>
            <div style="margin-top:8px; color:#444; font-size:90%;">This demo intentionally sets a cookie without security flags to show how easily it can be read or modified by a client.</div>
        </div>

        <div class="card">
            <h3>Certificate of Authenticity</h3>
            <asp:Panel ID="pnlCertificate" runat="server" Visible="false">
                <div>
                    <span class="label">Full name:</span>
                    <asp:Label ID="lblFullName" runat="server" />
                </div>
                <div style="margin-top:6px;">
                    <span class="label">Discount ends in:</span>
                    <asp:Label ID="lblTimeLeft" runat="server" />
                </div>
                <div style="margin-top:10px; color:#666;">
                    <small>Cookie attributes (for demo): HttpOnly=<asp:Label ID="lblHttpOnly" runat="server" />, Secure=<asp:Label ID="lblSecure" runat="server" /></small>
                </div>
            </asp:Panel>

            <asp:Panel ID="pnlNoDiscount" runat="server" Visible="false">
                <div class="warning">No active discount. The cookie is missing or expired.</div>
            </asp:Panel>
        </div>

        <div class="card">
            <h3>Raw Cookie (editable) — use to simulate tampering</h3>
            <div style="margin-bottom:6px;">
                <asp:Label ID="lblRawHelp" runat="server" Text="Edit keys as: name=John Doe;expires=2025-11-27T14:00:00Z"></asp:Label>
            </div>
            <asp:TextBox ID="txtRawCookie" runat="server" TextMode="MultiLine" Rows="3" Width="100%" CssClass="mono" />
            <div style="margin-top:6px;">
                <asp:Button ID="btnApplyRawCookie" runat="server" Text="Apply Raw Cookie (simulate tamper)" OnClick="btnApplyRawCookie_Click" />
                <asp:Button ID="btnRefresh" runat="server" Text="Refresh" OnClick="btnRefresh_Click" />
            </div>
        </div>

        <div style="margin-top:12px; font-size:90%; color:#333; max-width:520px;">
            Note: This demo stores the user's full name and an ISO UTC expiry string inside a cookie named <strong>MegaMartDiscount</strong>.
            The cookie is intentionally set with HttpOnly=false and Secure=false so client-side code or a user can read/modify it.
        </div>
    </form>
</body>
</html>