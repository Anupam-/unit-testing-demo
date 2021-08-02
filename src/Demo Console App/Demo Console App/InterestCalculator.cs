using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Demo_Console_App
{
    public class InterestCalculator
    {
        readonly decimal InterestRatePercent = 6m;
        public decimal Calculate(decimal principalAmount, int years)
        {
            decimal interest = (principalAmount * InterestRatePercent * years) / 100;

            return Math.Round(interest);
        }             
    }
}
