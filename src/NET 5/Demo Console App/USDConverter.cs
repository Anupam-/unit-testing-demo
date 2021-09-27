using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Demo_Console_App
{
    public class USDConverter : ICurrencyConverter
    {
        public decimal Convert(decimal amount)
        {
            return Math.Round(amount);
        }
    }
}
