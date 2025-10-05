using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblMessage.Text = "This is an ordinary Page Load";
            }
            else
            {
                lblMessage.Text = "This is a Post Back";
            }
        }

        protected void AddNumbers(object sender, EventArgs e)
        {
            double num1 = Convert.ToDouble(digit1.Text);

            double num2 = Convert.ToDouble(digit2.Text);

            answer.Text = "the answer is " + (num1 + num2).ToString();
        }

        protected void SubNumbers(object sender, EventArgs e)
        {
            double num1 = Convert.ToDouble(digit1.Text);

            double num2 = Convert.ToDouble(digit2.Text);

            answer.Text = "the answer is " + (num1 - num2).ToString();
        }

        protected void MulNumbers(object sender, EventArgs e)
        {
            double num1 = Convert.ToDouble(digit1.Text);

            double num2 = Convert.ToDouble(digit2.Text);

            answer.Text = "the answer is " + (num1 * num2).ToString();
        }

        protected void DivNumbers(object sender, EventArgs e)
        {
            double num1 = Convert.ToDouble(digit1.Text);

            double num2 = Convert.ToDouble(digit2.Text);

            answer.Text = "the answer is " + (num1 / num2).ToString();
        }

        protected void CountWords(object sender, EventArgs e)
        {
            string sentence = wordCountInput.Text;

            char[] delimiter = null;
            string[] words = sentence.Split(delimiter, StringSplitOptions.RemoveEmptyEntries);
            int wordCount = words.Length;   

            wordCountLabel.Text = wordCount.ToString();
        }

        protected void ConvertToF(object sender, EventArgs e)
        {
            double celcius = Convert.ToDouble(celciusTxt.Text);

            double f = (celcius * 9 / 5) + 32;

            fTemp.Text = celcius + "° Celsius is " + f.ToString() + "° Fahrenheit ";
        }

        protected void Calculate(object sender, EventArgs e)
        {
            double num1 = Convert.ToDouble(newDigit1.Text);
            double num2 = Convert.ToDouble(newDigit2.Text);

            string op = ddlOperator.SelectedValue;

            double result = 0;

            switch (op) {
                case "add":  
                    result = num1 + num2;
                    break;

                case "sub": 
                    result = num1 - num2;
                    break;
                
                case "mul":
                    result = num1 * num2;
                    break;

                case "div":
                    result = num1 / num2;
                    break;
            }

            lblResult.Text = "the result is " + result.ToString();
        } 

        protected void ChangeColour(object sender, EventArgs e)
        {
            string color = colorSelection.SelectedValue;

            colorLabel.ForeColor = System.Drawing.Color.FromName(color);
        }

        protected void OrderPizza(object sender, EventArgs e)
        {
            string size = sizeRadio.SelectedItem.Text;

            string crust = crustRadio.SelectedItem.Text;

            List<string> toppingsList = new List<string>();
            foreach (ListItem toppingItem in toppingCheckbox.Items)
            {
                if (toppingItem.Selected) {
                    toppingsList.Add(toppingItem.Text);
                }
            }

            string toppings = String.Join(", ", toppingsList);

            orderLabel.Text = $"You've successfully ordered a {size} pizza with {crust} and {toppings}";
        }

        protected void ChooseImage(object sender, EventArgs e)
        {
            string image = fruitRadio.SelectedValue;

            imageDisplay.ImageUrl = $"~/Images/{image}.jpg";
        }
    }
}