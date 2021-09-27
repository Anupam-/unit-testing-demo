using Demo_Console_App;
using System;
using Xunit;
using Xunit.Abstractions;

namespace Demo_xUnit_App
{
    public class InterestCalculatorTests: IClassFixture<USDConverter>
    {
        private USDConverter _currencyconverter;

        public InterestCalculatorTests(USDConverter uSDConverter)
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
            Assert.Equal(3000, result);
        }

        [Fact]
        public void CalculateInteestFor2Year()
        {
            // Arrange
            var sut = new InterestCalculator(_currencyconverter);

            // Act
            decimal result = sut.Calculate(100000, 2);

            // Assert
            Assert.Equal(12000, result);
        }

        /// <summary>
        /// Using theory to test against different tenure and amount
        /// </summary>
        /// <param name="expected"></param>
        /// <param name="amount"></param>
        /// <param name="years"></param>

        [Theory]
        [InlineData(3000, 50000, 1)]
        [InlineData(12000, 100000, 2)]
        [InlineData(36000, 200000, 3)]
        [InlineData(2400, 10000, 4)]
        [InlineData(0, 0, 4)]
        [InlineData(0, 0, 0)]
        public void CalculateInteestForDifferentTenureAndAmount(decimal expected, decimal amount, int years )
        {
            // Arrange
            var sut = new InterestCalculator(_currencyconverter);

            // Act
            decimal result = sut.Calculate(amount, years);

            // Assert
            Assert.Equal(expected, result);
        }
    }
}
