//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace PW.Ncels.Database.DataModel
{
    using System;
    using System.Collections.Generic;
    
    public partial class Ref_MarketPrices
    {
        public long Id { get; set; }
        public string Name { get; set; }
        public Nullable<float> DosageForm { get; set; }
        public string Producer { get; set; }
        public string Country { get; set; }
        public string Number { get; set; }
        public Nullable<System.DateTime> RegistrationDatetime { get; set; }
        public Nullable<System.DateTime> ExpireDatetime { get; set; }
        public Nullable<float> Price { get; set; }
        public long refSource { get; set; }
        public Nullable<System.DateTime> CreateDatetime { get; set; }
        public string refSourceName { get; set; }
        public int Type { get; set; }
    }
}
