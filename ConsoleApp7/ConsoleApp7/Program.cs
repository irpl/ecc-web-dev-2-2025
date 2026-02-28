using System;

namespace MyApp
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Are you a paying member? (yes/no)");
            string member = Console.ReadLine();

            Console.WriteLine("What is your order total?: ");
            double order_total = Convert.ToDouble(Console.ReadLine());

            if (member == "yes")
            {
                if (order_total >= 50)
                {
                    Console.WriteLine("Shipping is free.");
                }
                else
                {
                    Console.WriteLine("Shipping is $2.99");
                }
            }
            else
            {
                if (order_total >= 100)
                {
                    Console.WriteLine("Shipping is free.");
                }
                else
                {
                    Console.WriteLine("Shipping is $7.99");
                }
            }
        }
    }
}