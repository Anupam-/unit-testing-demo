using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using System.DirectoryServices.ActiveDirectory;
using System.DirectoryServices;
using System.Security.Cryptography;
using System.IO;

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
            var ip = "192.168.12.11";
            var address = IPAddress.Parse(ip);
            return address;
        }

        public static SearchResult FindActiveDirectoryUser(string user)
        {
            DirectoryEntry myDirectoryEntry = new DirectoryEntry("ldap://my.directory.com", "u", "p", AuthenticationTypes.None);

            DirectorySearcher dsSystem = new DirectorySearcher(myDirectoryEntry, user);

            dsSystem.SearchScope = SearchScope.Subtree;

            return dsSystem.FindOne();
        }

    }

    public class CustomEncryption
    {

        public static string EncryptData(string strData, string strEncDcKey)
        {
            byte[] key = { }; //Encryption Key
            byte[] IV = { 10, 20, 30, 40, 50, 60, 70, 80 };
            byte[] inputByteArray;
            try
            {
                key = Encoding.UTF8.GetBytes(strEncDcKey);
                // DESCryptoServiceProvider is a cryptography class defind in c#.
                DESCryptoServiceProvider ObjDES = new DESCryptoServiceProvider();
                inputByteArray = Encoding.UTF8.GetBytes(strData);
                MemoryStream Objmst = new MemoryStream();
                CryptoStream Objcs = new CryptoStream(Objmst, ObjDES.CreateEncryptor(key, IV), CryptoStreamMode.Write);
                Objcs.Write(inputByteArray, 0, inputByteArray.Length);
                Objcs.FlushFinalBlock();
                return Convert.ToBase64String(Objmst.ToArray());//encrypted string
            }
            catch (Exception)
            {
                throw;
            }
        }

        public static string DecryptData(string strData, string strEndDcKey)
        {
            byte[] key = { };// Key
            byte[] IV = { 10, 20, 30, 40, 50, 60, 70, 80 };
            byte[] inputByteArray = new byte[strData.Length];
            try
            {
                key = Encoding.UTF8.GetBytes(strEndDcKey);
                DESCryptoServiceProvider ObjDES = new DESCryptoServiceProvider();
                inputByteArray = Convert.FromBase64String(strData);
                MemoryStream Objmst = new MemoryStream();
                CryptoStream Objcs = new CryptoStream(Objmst, ObjDES.CreateDecryptor(key, IV), CryptoStreamMode.Write);
                Objcs.Write(inputByteArray, 0, inputByteArray.Length);
                Objcs.FlushFinalBlock();
                Encoding encoding = Encoding.UTF8;
                return encoding.GetString(Objmst.ToArray());
            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}    
