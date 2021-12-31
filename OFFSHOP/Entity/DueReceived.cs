using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entity
{
    public class DueReceived
    {
        private int _dueId;
        private decimal _paidCash;
        private decimal _paidCard;
        private DateTime _lastPayDate;
        private int _dueDetailsId;

        public int DueDetailsId
        {
            get { return _dueDetailsId; }
            set { _dueDetailsId = value; }
        }
        
        public int DueId
        {
            get { return _dueId; }
            set { _dueId = value; }
        }
        public decimal PaidCash
        {
            get { return _paidCash; }
            set { _paidCash = value; }
        }
        public decimal PaidCard
        {
            get { return _paidCard; }
            set { _paidCard = value; }
        }
        public DateTime LastPayDate
        {
            get { return _lastPayDate; }
            set { _lastPayDate = value; }
        }
    }
}
