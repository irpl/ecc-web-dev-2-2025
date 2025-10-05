using System;
using System.Collections.Concurrent;

namespace MyApp
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Enter a number");
            float num = float.Parse(Console.ReadLine());
            Console.WriteLine(num);
            //double num1 = 5;
            //double num2 = 6;
            //double num3 = 8;

            //double sum = num1 + num2 + num3;
            //double avg = sum / 3;

            //Console.WriteLine("the avg is " + avg);

            //if (avg > 15)
            //{
            //    Console.WriteLine("average is greater than 15");
            //}
            //else if (avg == 15)
            //{
            //    Console.WriteLine("average is equal to 15");
            //}
            //else {
            //    Console.WriteLine("average is less than 15");
            //}

            string[] names = { "phillip", "dolly", "alice" };

            //for (int i = 0; i < 3; i++)
            //{
            //    Console.WriteLine(names[i]);
            //}

            //foreach (string name in names)
            //{
            //    Console.WriteLine(name);
            //}


            int[] numbers = { 32, 44, 63, 90, 1, 100, 101 };

            foreach(int number in numbers)
            {
                if ( number % 2 == 0)
                {
                    Console.WriteLine(number + " is even");
                }
                else
                {
                    Console.WriteLine(number + " is odd");
                }
            }


        }
    }
}