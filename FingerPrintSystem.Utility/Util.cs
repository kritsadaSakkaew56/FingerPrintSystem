using System;
using System.Text;
using System.Web;
using System.Net.Mail;

using System.IO;
using System.Security.Cryptography;
using System.IO.Compression;

namespace FingerPrintSystem.Utility
{
    public class Util
    {
        public static string EncryptPassword(string target)
        {
            System.Security.Cryptography.SHA256 hash = System.Security.Cryptography.SHA256.Create();
            System.Text.ASCIIEncoding encoder = new System.Text.ASCIIEncoding();
            byte[] combined = encoder.GetBytes("p" + target + "d");
            hash.ComputeHash(combined);
            return Convert.ToBase64String(hash.Hash);
        }
        public static string CheckPath(string path)
        {
            if (path.Length > 0)
                return path[path.Length - 1] == '\\' ? path : path + "\\";
            else
                return path;
        }

        public static decimal? ParseDecimal(string value)
        {
            if (value.Length == 0) return null;
            else return decimal.Parse(value);
        }

        public static string ConverttoSQLString(string value)
        {
            return value.Replace("'", "''");
        }


        public static string GetSiteRoot()
        {
            string Port = HttpContext.Current.Request.ServerVariables["SERVER_PORT"];
            if (((Port == null) || (Port == "80")) || (Port == "443"))
            {
                Port = "";
            }
            else
            {
                Port = ":" + Port;
            }
            string Protocol = HttpContext.Current.Request.ServerVariables["SERVER_PORT_SECURE"];
            if ((Protocol == null) || (Protocol == "0"))
            {
                Protocol = "http://";
            }
            else
            {
                Protocol = "https://";
            }
            string url = (Protocol + HttpContext.Current.Request.ServerVariables["SERVER_NAME"] + Port + HttpContext.Current.Request.ApplicationPath);
            if (url[url.Length - 1] != '/')
                url += '/';
            return url;
        }

        public static string GetFileExtension(string fileName)
        {
            return fileName.Split(new char[] { '.' })[fileName.Split(new char[] { '.' }).Length - 1];
        }

        public static string GetFileName(string fileName)
        {
            if (fileName.IndexOf('\\') > -1)
                return fileName.Split(new char[] { '\\' })[fileName.Split(new char[] { '\\' }).Length - 1];
            else
                return fileName.Split(new char[] { '/' })[fileName.Split(new char[] { '/' }).Length - 1];
        }

        public static void SendMail(string mailFrom, string mailTo, string subject, string body)
        {
            MailMessage mm = new MailMessage(mailFrom, mailTo);

            mm.Subject = subject;
            mm.Body = body;
            mm.IsBodyHtml = true;

            SmtpClient smtp = new SmtpClient();
            //smtp.Port = 465;
            //smtp.EnableSsl = true;

            smtp.Send(mm);
        }

        public static void SendMail(string mailFrom, string mailTo, string subject, string body, string filePath)
        {
            MailMessage mm = new MailMessage(mailFrom, mailTo);

            mm.Subject = subject;
            mm.Body = body;
            mm.IsBodyHtml = true;

            mm.Attachments.Add(new Attachment(filePath));

            SmtpClient smtp = new SmtpClient();

            smtp.Send(mm);
        }


        public static long GetDirSize(string rootdir)
        {
            long dirSize = 0;
            try
            {
                DirectoryInfo[] DI = new DirectoryInfo(rootdir).GetDirectories("*.*", SearchOption.AllDirectories);
                FileInfo[] FI = new DirectoryInfo(rootdir).GetFiles("*.*", SearchOption.AllDirectories);
                foreach (FileInfo F1 in FI)
                {
                    dirSize += F1.Length;
                }

            }
            catch
            {
            }
            return dirSize / 1048576;
        }

        private static string randomChar = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";


        public static byte[] Compress(byte[] buffer)
        {
            MemoryStream ms = new MemoryStream();
            GZipStream zip = new GZipStream(ms, CompressionMode.Compress, true);
            zip.Write(buffer, 0, buffer.Length);
            zip.Close();
            ms.Position = 0;
            MemoryStream outStream = new MemoryStream();
            byte[] compressed = new byte[ms.Length];
            ms.Read(compressed, 0, compressed.Length);
            byte[] gzBuffer = new byte[compressed.Length + 4];
            Buffer.BlockCopy(compressed, 0, gzBuffer, 4, compressed.Length);
            Buffer.BlockCopy(BitConverter.GetBytes(buffer.Length), 0, gzBuffer, 0, 4);
            return gzBuffer;
        }

        public static byte[] Decompress(byte[] gzBuffer)
        {
            MemoryStream ms = new MemoryStream();
            int msgLength = BitConverter.ToInt32(gzBuffer, 0);
            ms.Write(gzBuffer, 4, gzBuffer.Length - 4);
            byte[] buffer = new byte[msgLength];
            ms.Position = 0;
            GZipStream zip = new GZipStream(ms, CompressionMode.Decompress);
            zip.Read(buffer, 0, buffer.Length);
            return buffer;
        }

        /// <summary>
        /// ใช้สำหรับแปลงตัวเลข เป็นตัวหนังสือ ภาษาไทย
        /// </summary>
        /// <param name="strNum">ตัวเลขที่ใส่</param>
        /// <param name="strSymbol1">บาท</param>
        /// <param name="strSymbol2">สตางค์</param>
        /// <returns></returns>
        public static string ConvertCurrToThai(string strNum, string strSymbol1, string strSymbol2)
        {
            string strTempNum = strNum;
            strSymbol1 = strSymbol1.Trim();
            strSymbol2 = strSymbol2.Trim();

            string strRet = "";
            Int64 iNum1 = 0;
            Int64 iNum2 = 0;

            if (!EmptyString(strNum))
            {
                strTempNum = Convert.ToString(Math.Abs(Convert.ToDecimal(strNum)));
                strTempNum = "000" + strTempNum.Trim();
                int iDecimalPlace = strTempNum.IndexOf('.');
                int num = strTempNum.Length - iDecimalPlace - 1;

                if (iDecimalPlace < 0)
                {
                    iNum1 = StringToInt64(strTempNum);
                    iNum2 = 0;
                }
                else
                {
                    iNum1 = StringToInt64(strTempNum.Substring(0, iDecimalPlace));
                    if (num == 1)
                    {
                        //iNum2 = StringToInt16(strNum.Substring(iDecimalPlace+1 , num) + "0");
                        iNum2 = Convert.ToInt64(strTempNum.Substring(iDecimalPlace + 1, 2));

                    }
                    else
                    {
                        //iNum2 = StringToInt16(strNum.Substring(iDecimalPlace +1, num));
                        iNum2 = Convert.ToInt64(strTempNum.Substring(iDecimalPlace + 1, 2));
                    }
                }

            }
            Int64 hun = iNum1 % 1000; //หลักร้อย
            Int64 numMil = iNum1 / 1000; //ไว้ตรวจสอบเกินพัน
            iNum1 = iNum1 / 1000;
            Int64 thou = iNum1 % 1000; //หลักแสน
            iNum1 = iNum1 / 1000;
            Int64 numMil2 = iNum1 / 1000;//ไว้ตรวจสอบเกินล้าน
            Int64 mil = iNum1 % 1000; //หลักร้อยล้าน
            iNum1 = iNum1 / 1000;
            Int64 thouMil = iNum1 % 1000; //หลักแสนล้าน
            iNum1 = iNum1 / 1000;
            Int64 milMil = iNum1 % 1000; //หลักร้อยล้านล้าน

            strRet = ConvertThousand(thou) + strRet;
            if (mil >= 1 || numMil2 >= 1)
            {
                strRet = ConvertMillion((Int16)(mil)) + strRet;
            }

            strRet = ConvertThousand(thouMil) + strRet;

            if (milMil >= 1)
            {
                strRet = ConvertMillion((Int16)(milMil)) + strRet;
            }

            Boolean strWord = false;

            #region unit

            if (numMil >= 1)
            {
                strWord = true;
                strRet = strRet + "" + ConvertHundreds((Int16)(hun), strWord) + "" + strSymbol1;
            }
            else
            {
                strRet = strRet + "" + ConvertHundreds((Int16)(hun), strWord) + "" + strSymbol1;
            }
            #endregion

            #region momey2
            if (iNum2 != 0)
            {
                strRet += "" + ConvertTens(iNum2, false).Trim() + "" + strSymbol2;
            }
            else
                strRet += "ถ้วน";
            #endregion

            if (strNum.Trim() == string.Empty)
            {
                strNum = "0";
            }


            if (Convert.ToDecimal(strNum) == 0)
            {
                strRet = "ศูนย์บาท";
            }

            if (Convert.ToDecimal(strNum) < 0)
            {
                strRet = "ลบ" + strRet;
            }

            return strRet.Replace(" ", "");
        }

        private static Int64 StringToInt64(string strNum)
        {
            Int64 iRet = 0;

            try
            {
                if (!EmptyString(strNum))
                {
                    iRet = System.Convert.ToInt64(strNum);
                }
            }
            catch
            {
                ;
            }

            return iRet;
        }
        private static Int16 StringToInt16(string strNum)
        {
            Int16 iRet = 0;

            try
            {
                if (!EmptyString(strNum))
                {
                    iRet = System.Convert.ToInt16(strNum);
                }
            }
            catch
            {
                ;
            }

            return iRet;
        }

        private static bool EmptyString(string strText)
        {
            bool bRet = true;

            try
            {
                if (strText != null)
                {
                    if (strText.Trim().Length > 0)
                    {
                        bRet = false;
                    }
                }
            }
            catch
            {
                ;
            }

            return bRet;
        }
        private static string ConvertDigit(Int64 iDigit, Boolean strWord)
        {
            string strRet = "";
            string[] DigitArray = { "เอ็ด", "หนึ่ง", "สอง", "สาม", "สี่", "ห้า", "หก", "เจ็ด", "แปด", "เก้า" };

            if (strWord && iDigit == 1)
            {
                strRet = DigitArray[0];
            }
            else
            {
                if (iDigit > 0 && iDigit < 10)
                {
                    strRet = DigitArray[iDigit];
                }
            }

            return strRet;
        }
        private static string ConvertTens(Int64 iTens, Boolean strWord)
        {
            string strRet = "";

            string[] TyArray = { "สิบ", "ยี่สิบ", "สามสิบ", "สี่สิบ", "ห้าสิบ", "หกสิบ", "เจ็ดสิบ", "แปดสิบ", "เก้าสิบ" };

            if (iTens > 9)
            {
                strWord = true;
                strRet = TyArray[(iTens / 10) - 1] + ConvertDigit((Int16)(iTens % 10), strWord);
            }
            else
            {
                strRet = ConvertDigit(iTens, strWord);
            }

            return strRet;
        }
        private static string ConvertHundreds(Int16 iHundreds, Boolean strWord)
        {
            string strRet = "";

            if (iHundreds > 99)
            {
                strWord = true;
                strRet = ConvertDigit((Int16)(iHundreds / 100), false) + "ร้อย" + ConvertTens((Int16)(iHundreds % 100), strWord);
            }
            else
            {
                strRet = ConvertTens(iHundreds, strWord);
            }

            return strRet;
        }
        private static string ConvertThousand(Int64 iThousand)
        {
            string strRet = "";
            string[] NumArray = { "พัน ", "หมื่น", "แสน" };
            int iCount = 0;
            string strTmp = "";
            do
            {
                strTmp = "" + ConvertDigit((Int16)(iThousand % 10), false);
                if (iThousand % 10 != 0)
                {
                    strRet = strTmp + "" + NumArray[iCount] + "" + strRet;
                }
                else
                {
                    strRet = strTmp + "" + strRet;
                }
                iThousand = iThousand / 10;
                if (iCount < 3)
                {
                    iCount++;
                }
            }
            while (iThousand > 0);

            return strRet;
        }
        private static string ConvertMillion(Int16 iMillion)
        {
            string strRet = "";

            strRet = ConvertHundreds((Int16)(iMillion), false) + "ล้าน";

            return strRet;
        }

    }
}
