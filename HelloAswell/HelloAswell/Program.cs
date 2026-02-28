using System;

namespace MyApp
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //A
            // ask the user to input their age
            //Console.WriteLine("Enter your age here: ");

            //// read age
            //string input = Console.ReadLine();

            //// conver the input to an int
            //int age = Convert.ToInt32(input);

            //if (age >= 18)
            //{
            //    Console.WriteLine("You can vote!");
            //}
            //else 
            //{
            //    int year_until_vote = 18 - age;
            //    Console.WriteLine($"You need to wait {year_until_vote} years.");
            //}

            // B - Number checker
            // ask the user for a number

            Console.WriteLine("enter a number now!: ");
            string input = Console.ReadLine();
            int number = Convert.ToInt32(input);

            if (number > 0)
            {
                Console.WriteLine($"{number} is positve.");
            }
            else if (number < 0)
            {
                Console.WriteLine($"{number} is negative.");
            }
            else 
            {
                Console.WriteLine("You entered 0.");
            }

        }
    }
}