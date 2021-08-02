using System;

namespace Demo_Console_App
{
    class Program
    {
        static void Main(string[] args)
        {
            var interestCalculator = new InterestCalculator(new USDConverter());

            decimal interest1 = interestCalculator.Calculate(50000, 1);

            Console.WriteLine($"interest is {interest1}");
        }
    }
}
