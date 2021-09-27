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
    public class BadCodingExaplesTests
    {
        [Fact]
        public void GetInterestTest()
        {
            // Act
           double interest =  BadCodingExamples.GetDefaultInterest();


            // Assert
            interest.Should().BePositive();
        }

        [Fact]
        public void GetGuidTest()
        {
            // Act
            var guid = BadCodingExamples.GetGuid();


            // Assert
            guid.Should().BeEmpty();
        }

        [Fact]
        public void GetIPAddressTest()
        {
            // Act
            var ipaddress = BadCodingExamples.GetIPAddress();


            // Assert
            ipaddress.Should().NotBeNull();
        }
    }
}
