using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


    //Breakes down dates from the database into years months and day so that they can be changed individually

    public class Date
    {
        public string month;
        public int day;
        public int year;
        //Default constructor
        public Date(String Mh, int Dy, int yr)
        {
            month = Mh;
            day = Dy;
            year = yr;
        }
        //Converts the date into a string
        string ToString(Date time)
        {
            string day;
            day = time.month + time.day.ToString() + ", " +/*year*/ time.year.ToString();
            return day;
        }
    }
