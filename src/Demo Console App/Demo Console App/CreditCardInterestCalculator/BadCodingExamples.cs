using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace Demo_Console_App.CreditCardInterestCalculator
{
    public class BadCodingExamples
    {
        public static double GetDefaultInterest()
        {
            return 0.01;
        }

        public static Guid GetGuid()
        {
            return new Guid();
        }

        public static IPAddress GetIPAddress()
        {
            var ipaddress = "127.0.0.0";
            return IPAddress.Parse(ipaddress);
        }
    }
}
