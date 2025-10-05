using System;

namespace MyApp
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Greet("Logan");

            float r = 4;
            double area = CirleArea(r);

            Console.WriteLine("the area of a cirle of radius " + r + " is " + area);
        }

        String Square(int num) {
            return (num * num).ToString();
        }

        static void Greet(string name) 
        {
            Console.WriteLine("Hello " + name + "!");
        }

        static double CirleArea(float r) {
            return Math.PI * r * r;
        }

        static bool IsEven(int num) { 
            
            int mod = num % 2;

            if (mod == 1) {
                return false;
            }
            else
            {
                return true;
            }
        }

    }
}