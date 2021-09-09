using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Demo_Console_App.CreditCardInterestCalculator.Entities
{
	public abstract class CreditCard : ICreditCard
	{
		public abstract CreditCardType Type { get; }

		public double InterestRate { get; set; }

		public double Balance { get; set; }

		public double SimpleInterest { get; set; }
	}
}
