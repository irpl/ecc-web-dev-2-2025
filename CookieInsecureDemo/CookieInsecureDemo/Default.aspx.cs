using System;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace CookieInsecureDemo
{
    public partial class Default : Page
    {
        private const string CookieName = "MegaMartDiscount";

        protected void Page_Load(object sender, EventArgs e)
        {
            // Always update certificate display based on whatever cookie the browser sent
            UpdateCertificateFromCookie();
        }

        protected void btnGetDiscount_Click(object sender, EventArgs e)
        {
            string first = (txtFirstName.Text ?? string.Empty).Trim();
            string last = (txtLastName.Text ?? string.Empty).Trim();
            string fullName = string.Join(" ", new[] { first, last }.Where(s => !string.IsNullOrEmpty(s)));

            if (string.IsNullOrEmpty(fullName))
            {
                // Minimal feedback: set panel states and a short message in the certificate
                pnlCertificate.Visible = false;
                pnlNoDiscount.Visible = true;
                lblRawHelp.Text = "Enter a first and/or last name to request the discount.";
                return;
            }

            // Grant a 2-day discount window
            DateTime utcExpiry = DateTime.UtcNow.AddDays(2);

            var cookie = new HttpCookie(CookieName);
            cookie.Values["name"] = fullName;
            // store an explicit expiry string (ISO 8601, UTC) so it is easy to inspect/tamper
            cookie.Values["expires"] = utcExpiry.ToString("o", CultureInfo.InvariantCulture);

            // Intentionally insecure flags to demonstrate tampering:
            cookie.HttpOnly = false; // readable by client-side scripts
            cookie.Secure = false;   // will be sent over plain HTTP in non-HTTPS demos

            // Set the cookie expiry so the browser will remove it automatically after the period.
            cookie.Expires = utcExpiry;

            Response.Cookies.Add(cookie);

            // Update UI using the cookie we just issued
            UpdateCertificateFromCookie();
        }

        protected void btnApplyRawCookie_Click(object sender, EventArgs e)
        {
            // Expect input like: "name=Jane Doe;expires=2025-11-27T14:00:00Z"
            string raw = txtRawCookie.Text ?? string.Empty;

            if (string.IsNullOrWhiteSpace(raw))
            {
                // Nothing to apply
                UpdateCertificateFromCookie();
                return;
            }

            // Parse simple semicolon-separated key=value pairs
            var parts = raw.Split(new[] { ';' }, StringSplitOptions.RemoveEmptyEntries);
            var cookie = new HttpCookie(CookieName);

            foreach (var part in parts)
            {
                var kv = part.Split(new[] { '=' }, 2);
                if (kv.Length != 2) continue;

                string key = kv[0].Trim();
                string value = kv[1].Trim();

                if (string.Equals(key, "expires", StringComparison.OrdinalIgnoreCase))
                {
                    // Try to parse the provided expiry; if valid, set cookie expire
                    if (DateTime.TryParse(value, null, DateTimeStyles.AdjustToUniversal | DateTimeStyles.AssumeUniversal, out DateTime parsedUtc))
                    {
                        cookie.Values["expires"] = parsedUtc.ToString("o", CultureInfo.InvariantCulture);
                        cookie.Expires = parsedUtc;
                    }
                    else
                    {
                        // if parsing fails, still store raw value
                        cookie.Values["expires"] = value;
                    }
                }
                else if (string.Equals(key, "name", StringComparison.OrdinalIgnoreCase))
                {
                    cookie.Values["name"] = value;
                }
                else
                {
                    // Any other key stored as-is
                    cookie.Values[key] = value;
                }
            }

            // Keep insecure flags to emphasize the demo point
            cookie.HttpOnly = false;
            cookie.Secure = false;

            // Overwrite cookie to simulate client-side tampering that changes server-observed cookie
            Response.Cookies.Add(cookie);

            UpdateCertificateFromCookie();
        }

        protected void btnRefresh_Click(object sender, EventArgs e)
        {
            UpdateCertificateFromCookie();
        }

        private void UpdateCertificateFromCookie()
        {
            HttpCookie cookie = Request.Cookies[CookieName];

            if (cookie == null)
            {
                pnlCertificate.Visible = false;
                pnlNoDiscount.Visible = true;
                lblRawHelp.Text = "No cookie received.";
                txtRawCookie.Text = string.Empty;
                lblHttpOnly.Text = "n/a";
                lblSecure.Text = "n/a";
                return;
            }

            // Show raw cookie representation for inspection/editing
            var rawPairs = cookie.Values.AllKeys
                .Select(k => $"{k}={cookie.Values[k]}")
                .ToArray();
            txtRawCookie.Text = string.Join(";", rawPairs);

            lblHttpOnly.Text = cookie.HttpOnly ? "true" : "false";
            lblSecure.Text = cookie.Secure ? "true" : "false";

            string name = cookie.Values["name"];
            string expiresStr = cookie.Values["expires"];
            DateTime expiryUtc = DateTime.UtcNow;

            // INTENTIONALLY VULNERABLE: Trust whatever expiry date is in the cookie value
            // Students can modify this in browser dev tools to extend their discount
            bool parsed =
                !string.IsNullOrEmpty(expiresStr) &&
                DateTime.TryParse(expiresStr, null, DateTimeStyles.AdjustToUniversal | DateTimeStyles.AssumeUniversal, out expiryUtc);

            // Also check if cookie.Expires is set and use the LATER of the two dates
            // This allows tampering via both cookie value and HTTP expiry modification
            if (cookie.Expires != DateTime.MinValue)
            {
                DateTime httpExpiry = cookie.Expires.ToUniversalTime();
                // Use whichever expiry is later (makes tampering easier)
                if (!parsed || httpExpiry > expiryUtc)
                {
                    expiryUtc = httpExpiry;
                    parsed = true;
                    // Update cookie value to reflect the extended expiry for consistency
                    cookie.Values["expires"] = expiryUtc.ToString("o", CultureInfo.InvariantCulture);
                    Response.Cookies.Set(cookie);
                }
            }

            if (!parsed || string.IsNullOrEmpty(name))
            {
                pnlCertificate.Visible = false;
                pnlNoDiscount.Visible = true;
                lblRawHelp.Text = "Cookie present but missing expected fields (name or expires). This illustrates how fragile trusting cookie data is.";
                return;
            }

            TimeSpan remaining = expiryUtc - DateTime.UtcNow;
            if (remaining <= TimeSpan.Zero)
            {
                pnlCertificate.Visible = false;
                pnlNoDiscount.Visible = true;
                lblRawHelp.Text = $"Cookie expired at {expiryUtc:o} (UTC).";
                return;
            }

            // Populate certificate UI
            pnlCertificate.Visible = true;
            pnlNoDiscount.Visible = false;
            lblFullName.Text = HttpUtility.HtmlEncode(name);
            lblTimeLeft.Text = FormatTimeSpan(remaining);
            lblRawHelp.Text = $"Cookie expires (UTC): {expiryUtc:o}";
        }

        private static string FormatTimeSpan(TimeSpan ts)
        {
            if (ts.TotalDays >= 1)
            {
                int days = (int)ts.TotalDays;
                int hours = ts.Hours;
                return $"{days} day(s) {hours} hour(s) {ts.Minutes} minute(s)";
            }

            if (ts.TotalHours >= 1)
            {
                int hours = (int)ts.TotalHours;
                return $"{hours} hour(s) {ts.Minutes} minute(s) {ts.Seconds} second(s)";
            }

            return $"{ts.Minutes} minute(s) {ts.Seconds} second(s)";
        }
    }
}