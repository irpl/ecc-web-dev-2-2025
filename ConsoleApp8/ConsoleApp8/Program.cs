using System;

namespace MyApp
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // Ask for a number.
            // Determine and print ALL that apply:
            //  positive/negative/zero,
            //  even/odd (only if not zero),
            //  greater than 100 or not.

            Console.WriteLine("gimmi a numba: ");
            double numba = Convert.ToDouble(Console.ReadLine());

            if (numba > 0)
            {
                Console.WriteLine($"{numba} is positive");

                if (numba % 2 == 0)
                {
                    Console.WriteLine($"{numba} is even");
                }
                else
                {
                    Console.WriteLine($"{numba} is odd");
                }

                if (numba > 100)
                {
                    Console.WriteLine($"{numba} is greater than 100");
                }
                else
                {
                    Console.WriteLine($"{numba} is less than or equal to 100");
                }

            }
            else if (numba < 0)
            {
                Console.WriteLine($"{numba} is negative");
                
                if (numba % 2 == 0)
                {
                    Console.WriteLine($"{numba} is even");
                }
                else
                {
                    Console.WriteLine($"{numba} is odd");
                }
                Console.WriteLine($"{numba} is less 100");
            }
            else 
            {
                Console.WriteLine($"{numba} is zero");
                Console.WriteLine($"{numba} is less 100");
            }

        }
    }
}


