using System;
using System.Collections.Concurrent;

namespace MyApp
{
    internal class Program
    {
        static void Main(string[] args)
        {

            Console.WriteLine("Enter a number: ");
            int num1 = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("Enter a number: ");
            int num2 = Convert.ToInt32(Console.ReadLine());

            int int_quotient = num1 / num2;
            Console.WriteLine($"The integer division is: {int_quotient}");

            int remainder = num1 % num2;
            Console.WriteLine($"the remainder is: {remainder}");

            double dec_div = (double)num1 / num2;
            Console.WriteLine($"the decimal division is: {dec_div}");
        }
    }
}