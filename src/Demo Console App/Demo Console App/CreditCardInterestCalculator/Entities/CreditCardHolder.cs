using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Demo_Console_App.CreditCardInterestCalculator.Entities
{
	public class CreditCardHolder
	{
		public IEnumerable<Wallet> Wallets { get; set; }

		public double TotalInterest { get; set; }
	}
}
