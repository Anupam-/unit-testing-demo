using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Demo_Console_App.CreditCardInterestCalculator.Entities
{
	public interface ICreditCard
	{
		CreditCardType Type { get; }

		double InterestRate { get; set; }

		double Balance { get; set; }

		double SimpleInterest { get; set; }
	}
}
