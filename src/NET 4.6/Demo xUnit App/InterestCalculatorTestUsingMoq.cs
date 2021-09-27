using Demo_Console_App;
using Moq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xunit;

namespace Demo_xUnit_App
{
    public class InterestCalculatorTestUsingMoq
    {
        // setup mock
        Mock<ICurrencyConverter> _currencyConverter = new Mock<ICurrencyConverter>();

        public InterestCalculatorTestUsingMoq()
        {
            _currencyConverter.Setup(x=>x.Convert(It.IsAny<decimal>())).Returns(0);
        }

        [Fact]
        public void TestIfCurrencyConverterReturnsZero()
        {
            // Arrange
            var sut = new InterestCalculator(_currencyConverter.Object);

            // Act
            // will always return 0 because we have setup result of ICurrencyConverter.Convert method to 0
            decimal result = sut.Calculate(50000, 1);

            // Assert
            Assert.Equal(0, result);

        }
    }
}
