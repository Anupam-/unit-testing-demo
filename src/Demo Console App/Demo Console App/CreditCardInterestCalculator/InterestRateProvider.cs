using Demo_Console_App.CreditCardInterestCalculator.Entities;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;

namespace Demo_Console_App.CreditCardInterestCalculator
{
    public class InterestRateProvider : IInterestRateProvider
	{
		public IEnumerable<KeyValuePair<CreditCardType, double>> GetInterestRates()
		{
			string textXML = File.ReadAllText("CreditCardInterestCalculator//Data//InterestRates.xml");
			XDocument ratesDoc = XDocument.Parse(textXML);
			List<KeyValuePair<CreditCardType, double>> rates = ratesDoc.Root
				 .Elements("Card")
				 .Select(x => GetCard(x))
				 .ToList();

			return rates;
		}

		private KeyValuePair<CreditCardType, double> GetCard(XElement x)
		{
			var key = x.Elements("Type").First().Value;
			var value = x.Elements("Interest").First().Value;
			return new KeyValuePair<CreditCardType, double>(Enum.Parse<CreditCardType>(key), double.Parse(value));
		}
	}

	public interface IInterestRateProvider
	{
		IEnumerable<KeyValuePair<CreditCardType, double>> GetInterestRates();
	}
}
