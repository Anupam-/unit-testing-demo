using Demo_Console_App.CreditCardInterestCalculator;
using Demo_Console_App.CreditCardInterestCalculator.Entities;
using FluentAssertions;
using Moq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xunit;

namespace Demo_xUnit_App
{
    public class CreditCardInterestCalcuatorTests
    {
        private CreditCardInterestCalcuator _sut;

        Mock<IInterestRateProvider> _mockInterestRateProvider;

        public CreditCardInterestCalcuatorTests()
        {
            // setup interest rates for configured cards

            _mockInterestRateProvider = new Mock<IInterestRateProvider>();
            var interestRates = new List<KeyValuePair<CreditCardType, double>>
            {
                new KeyValuePair<CreditCardType, double>(CreditCardType.Visa, .10),
                new KeyValuePair<CreditCardType, double>(CreditCardType.MasterCard, .05)

            };
            _mockInterestRateProvider.Setup(i => i.GetInterestRates()).Returns(interestRates);

            _sut = new CreditCardInterestCalcuator(_mockInterestRateProvider.Object);

        }

        [Fact]
        public void Calculate_Interest_For_Card()
        {

            // Arrange
            var cardHolder = new CreditCardHolder
            {
                Wallets = new List<Wallet>
                {
                    new Wallet
                    {
                        CreditCards = new List<CreditCard>
                        {
                            new VisaCreditCard { Balance = 100 },
                            new MasterCardCreditCard { Balance = 100 }
                        }
                    }
                }
            };


            // Act
            _sut.CalculateInterestForHolder(cardHolder);

            var creditCards = cardHolder.Wallets.First().CreditCards.ToList();

            // Assert  - interest for cards
            creditCards[0].SimpleInterest.Should().Be(10);
            creditCards[1].SimpleInterest.Should().Be(5);

            // Assert -  total interest
            cardHolder.TotalInterest.Should().Be(15);
        }


        [Fact]
        public void Calculate_Interest_For_Wallet()
        {

            // Arrange
            var cardHolder = new CreditCardHolder
            {
                Wallets = new List<Wallet>
                {
                    new Wallet
                    {
                        CreditCards = new List<CreditCard>
                        {
                            new VisaCreditCard { Balance = 100 }
                        }
                    } ,
                     new Wallet
                    {
                        CreditCards = new List<CreditCard>
                        {
                            new MasterCardCreditCard { Balance = 100 }
                        }
                    }
                }
            };


            // Act
            _sut.CalculateInterestForHolder(cardHolder);

            var wallets = cardHolder.Wallets.ToList();

            // Assert  - interest for wallets
            wallets[0].TotalInterest.Should().Be(10);
            wallets[1].TotalInterest.Should().Be(5);

            // Assert -  total interest
            cardHolder.TotalInterest.Should().Be(15);
        }


        [Theory]
        [ClassData((typeof(TestData)))]
        public void Calculate_Wallet_And_CardHolder_Interest(CreditCardHolder cardHolder, double walletInterest, double cardHolderInterest)
        {

            // Act
            _sut.CalculateInterestForHolder(cardHolder);

            // Assert
            cardHolder.Wallets.First().TotalInterest.Should().Be(walletInterest);
            cardHolder.TotalInterest.Should().Be(cardHolderInterest);
        }

        //[Fact]
        //public void Intended_Failing_Test()
        //{
        //    // Assert
        //    false.Should().BeTrue();
        //}



        /// <summary>
        /// Test Data
        /// </summary>

        public class TestData : TheoryData<CreditCardHolder, double, double>
        {
            public TestData()
            {
                Add(new CreditCardHolder
                {
                    Wallets = new List<Wallet>
                    {
                        new Wallet
                        {
                            CreditCards = new List<CreditCard>
                            {
                                new VisaCreditCard { Balance = 100 },
                                new MasterCardCreditCard { Balance = 100 }
                            }
                        }
                    }
                }, 15, 15);

                Add(new CreditCardHolder
                {
                    Wallets = new List<Wallet>
                    {
                        new Wallet
                        {
                            CreditCards = new List<CreditCard>
                            {
                                new VisaCreditCard { Balance = 200 },
                                new MasterCardCreditCard { Balance = 200 }
                            }
                        }
                    }
                }, 30, 30);

                Add(new CreditCardHolder
                {
                    Wallets = new List<Wallet>
                    {
                        new Wallet
                        {
                            CreditCards = new List<CreditCard>
                            {
                                new VisaCreditCard { Balance = 555.55 },
                                new MasterCardCreditCard { Balance = 999.99 }
                            }
                        }
                    }
                }, 105.5545, 105.5545);

                Add(new CreditCardHolder
                {
                    Wallets = new List<Wallet>
                    {
                        new Wallet
                        {
                            CreditCards = new List<CreditCard>
                            {
                                new VisaCreditCard { Balance = 8889 },
                                new MasterCardCreditCard { Balance = 29999 }
                            }
                        }
                    }
                }, 2388.8500000000004, 2388.8500000000004);
            }
        }

    }
}
