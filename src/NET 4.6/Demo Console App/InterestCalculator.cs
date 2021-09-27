using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Demo_Console_App
{
    public class InterestCalculator
    {
        private readonly decimal InterestRatePercent = 6m;

        private readonly ICurrencyConverter _currencyConverter;

        public InterestCalculator(ICurrencyConverter currencyConverter)
        {
            _currencyConverter = currencyConverter;
        }

        
        public decimal Calculate(decimal principalAmount, int years)
        {
            try
            {
                decimal interest = (principalAmount * InterestRatePercent * years) / 100;

                return _currencyConverter.Convert(interest);
            }
            catch (Exception)
            {
                throw;
            }
        }             
    }
}
