using System;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;
using static System.Runtime.InteropServices.JavaScript.JSType;

namespace MyApp
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // Under 12: always $5
            //
            // 12–64: $8 before 5pm, $12 at 5pm or later
            // 65+: $6 before 5pm, $8 at 5pm or later

            // Ask for age and showtime(as a number, e.g. 17 for 5pm).
            // Use nested if-else to determine and display the ticket price.

            Console.WriteLine("how hol yuh be?: ");
            int age = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("what time e movie staat?");
            int movie_time = Convert.ToInt32(Console.ReadLine());

            if (age < 12)
            {
                Console.WriteLine("Movie cost: $5");
            }
            else if (age >= 12 && age <= 64 )
            {
                if (movie_time < 17)
                {
                    Console.WriteLine("Movie cost: $8");
                }
                else
                {
                    Console.WriteLine("Movie cost: $12");
                }
            }
            else 
            {
                if (movie_time < 17)
                {
                    Console.WriteLine("Movie cost: $6");
                }
                else
                {
                    Console.WriteLine("Movie cost: $8");
                }
            }

        }
    }
}