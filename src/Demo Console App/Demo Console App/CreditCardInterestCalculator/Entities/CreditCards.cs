using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Demo_Console_App.CreditCardInterestCalculator.Entities
{
	public class VisaCreditCard : CreditCard
	{
		public override CreditCardType Type
		{
			get { return CreditCardType.Visa; }
		}
	}

	public class MasterCardCreditCard : CreditCard
	{
		public override CreditCardType Type
		{
			get { return CreditCardType.MasterCard; }
		}
	}
}
