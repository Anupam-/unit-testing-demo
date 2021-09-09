using Demo_Console_App.CreditCardInterestCalculator;
using Demo_Console_App.CreditCardInterestCalculator.Entities;
using System;
using System.Collections.Generic;
using System.Linq;

namespace Demo_Console_App
{
    class Program
    {
        static void Main(string[] args)
        {
            var interestCalculator = new InterestCalculator(new USDConverter());

            decimal interest1 = interestCalculator.Calculate(50000, 1);

            Console.WriteLine($"Simple interest is {interest1}");

            Console.WriteLine("----------- Credit Card Interest Calculator ----------------");

			ICreditCardInterestCalculator interestCal = new CreditCardInterestCalcuator();

			var cardHolder = new CreditCardHolder
			{
				Wallets = new List<Wallet>
				{
					new Wallet
					{
						CreditCards = new List<CreditCard>
						{
							new VisaCreditCard { Balance = 100 },
						}
					},
					new Wallet
					{
						CreditCards = new List<CreditCard>
						{
							new MasterCardCreditCard { Balance = 100 },
						}
					}
				}
			};

			interestCal.CalculateInterestForHolder(cardHolder);
			var wallets = cardHolder.Wallets.ToList();
			wallets.ForEach(w => Console.WriteLine($"Interest for wallet : {w.TotalInterest}"));
			Console.WriteLine($"Total interest for card holder: {cardHolder.TotalInterest}");
		}
    }
}
