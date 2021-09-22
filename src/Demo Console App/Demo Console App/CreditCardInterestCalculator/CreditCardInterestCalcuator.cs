using Demo_Console_App.CreditCardInterestCalculator.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Demo_Console_App.CreditCardInterestCalculator
{
    public class CreditCardInterestCalcuator : ICreditCardInterestCalculator
	{
		private readonly IInterestRateProvider _interestRateProvider;

		private  readonly IEnumerable<KeyValuePair<CreditCardType, double>> _interestRates;

		public CreditCardInterestCalcuator(IInterestRateProvider interestRateProvider)
		{
			_interestRateProvider = interestRateProvider;
			_interestRates = _interestRateProvider.GetInterestRates();
		}

		public void CalculateInterestForHolder(CreditCardHolder person)
		{
			foreach (Wallet wallet in person.Wallets)
			{
				foreach (CreditCard card in wallet.CreditCards)
				{
					card.InterestRate = _interestRates.First(r => r.Key == card.Type).Value;
					CalculateInterestForCard(card);
					wallet.TotalInterest += card.SimpleInterest;
				}
				person.TotalInterest += wallet.TotalInterest;
			}
		}

		public void CalculateInterestForCard(CreditCard card)
		{
			card.SimpleInterest = card.Balance * card.InterestRate;
		}
	}

	public interface ICreditCardInterestCalculator
	{
		void CalculateInterestForCard(CreditCard card);
		void CalculateInterestForHolder(CreditCardHolder person);
	}
}
