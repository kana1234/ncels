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
    
    public partial class SignDocument
    {
        public long Id { get; set; }
        public string ClassName { get; set; }
        public string ObjectId { get; set; }
        public System.DateTime CreatedTime { get; set; }
        public Nullable<System.Guid> EmployeeId { get; set; }
        public string SignXml { get; set; }
    }
}