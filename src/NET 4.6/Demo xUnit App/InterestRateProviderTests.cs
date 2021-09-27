using Demo_Console_App.CreditCardInterestCalculator;
using FluentAssertions;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xunit;

namespace Demo_xUnit_App
{
    public class InterestRateProviderTests
    {

        [Fact]
        public void GetInterestRateTest()
        {
            // Arrange
            var interestRateProvider = new InterestRateProvider();

            // Act

            var rates = interestRateProvider.GetInterestRates();

            // Assert

            rates.Should().NotBeEmpty();
        }

    }
}
