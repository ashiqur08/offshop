using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entity
{
   public class DateWiseSaleReport
    {
       private DateTime _dateFrom;
       private DateTime _dateTo;
       private int _hotelId;
       public int HotelId
       {
           get { return _hotelId; }
           set { _hotelId = value; }
       }
       public DateTime DateFrom
       {
           get { return _dateFrom; }
           set { _dateFrom = value; }
       }
       public DateTime DateTo
       {
           get { return _dateTo; }
           set { _dateTo = value; }
       }
    }
}
