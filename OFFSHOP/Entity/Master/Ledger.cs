using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entity.Master
{
   public class Ledger
    {
       private int _ledger_Group_Id;
       private string _ledger_Group_Nm;
       private char _ledger_Group_Type;
       private int _ledger_Id;
       private string _ledger_Nm;
       private decimal _ledger_Op_Bal;
       private string _creditor_Add;
       private string _creditor_Add2;
       private string _creditor_Phno;
       private string _creditor_Remarks;
       private int _HotelId;

       public int Ledger_Group_Id
       {
           get { return _ledger_Group_Id; }
           set { _ledger_Group_Id = value; }
       }
       public string Ledger_Group_Nm
       {
           get { return _ledger_Group_Nm; }
           set { _ledger_Group_Nm = value; }
       }
       public char Ledger_Group_Type
       {
           get { return _ledger_Group_Type; }
           set { _ledger_Group_Type = value; }
       }
       public int Ledger_Id
       {
           get { return _ledger_Id; }
           set { _ledger_Id = value; }
       }
       public string Ledger_Nm
       {
           get { return _ledger_Nm; }
           set { _ledger_Nm = value; }
       }
       public decimal Ledger_Op_Bal
       {
           get { return _ledger_Op_Bal; }
           set { _ledger_Op_Bal = value; }
       }
       public string Creditor_Add
       {
           get { return _creditor_Add; }
           set { _creditor_Add = value; }
       }
       public string Creditor_Add2
       {
           get { return _creditor_Add2; }
           set { _creditor_Add2 = value; }
       }
       public string Creditor_Phno
       {
           get { return _creditor_Phno; }
           set { _creditor_Phno = value; }
       }
       public string creditor_Remarks
       {
           get { return _creditor_Remarks; }
           set { _creditor_Remarks = value; }
       }
       public int HotelId
       {
           get { return _HotelId; }
           set { _HotelId = value; }
       }
    }
}
