using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entity
{
   public class PurchaseReport
    {
       private int _hotelId;
       public int HotelId
       {
           get { return _hotelId; }
           set { _hotelId = value; }
       }
    }
}
