using Demo_Console_App;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FluentAssertions;
using Xunit;

namespace Demo_xUnit_App
{
    public class InterestCalculatorTestFluentAssertions : IClassFixture<USDConverter>
    {
        private USDConverter _currencyconverter;

        public InterestCalculatorTestFluentAssertions(USDConverter uSDConverter)
        {
            _currencyconverter = uSDConverter;
        }

        /// <summary>
        /// using Fact for single/simple paramenter(s)
        /// </summary>
        [Fact]
        public void CalculateInteestFor1Year()
        {
            // Arrange
            var sut = new InterestCalculator(_currencyconverter);

            // Act
            decimal result = sut.Calculate(50000, 1);

            // Assert
            result.Should().Be(3000);
        }
    }
}
