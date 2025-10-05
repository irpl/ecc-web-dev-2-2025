using System;

namespace MyApp
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");
            Deep.Beep("Beep!");
            Program p = new Program();
            p.AlsoBeep("Also Beep!");
        }

        static void Beep(string msg)
        {
            Console.WriteLine(msg);

        }

        void AlsoBeep(string msg)
        {
            Console.WriteLine(msg);
        }
    }

    internal class Deep
    {
        public static void Beep(string msg)
        {
            Console.WriteLine(msg);
        }
    }
}