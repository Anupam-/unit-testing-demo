using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Demo_Console_App.CreditCardInterestCalculator.Entities
{
	public class Wallet
	{
		public IEnumerable<ICreditCard> CreditCards { get; set; }

		public double TotalInterest { get; set; }
	}
}
