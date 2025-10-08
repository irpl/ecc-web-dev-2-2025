using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace IntroToWeb2
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonClick(object sender, EventArgs e) {
            label1.Text = "you clicked the button at " + DateTime.Now.ToString();
        }

        protected void GreetMe(object sender, EventArgs e) {
            string name = textBox.Text;

            if (string.IsNullOrWhiteSpace(name)) {
                label1.Text = "⚠️ Please enter your name before clicking Greet Me";
                label1.ForeColor = System.Drawing.Color.Red;
            }else
            {
                label1.Text = "Hello, " + name;
                label1.ForeColor = System.Drawing.Color.Black;
            }

        }

        protected void AddNumbers(object sender, EventArgs e) {
            string num1String = digit1.Text;
            float num1 = float.Parse(num1String);

            string num2String = digit2.Text;
            float num2 = float.Parse(num2String);

            float answerFloat = num1 + num2;
            answer.Text = answerFloat.ToString();
        }

        protected void SubNumbers(object sender, EventArgs e)
        {

        }
    }

}