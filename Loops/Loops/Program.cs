using System;

namespace MyApp
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Enter your age: ");
            int age = Convert.ToInt32(Console.ReadLine());

            while (age != 10)
            {
                Console.WriteLine("you are not 10!");

                Console.WriteLine("Enter your age: ");
                age = Convert.ToInt32(Console.ReadLine());
            }
            
        }
    }
}