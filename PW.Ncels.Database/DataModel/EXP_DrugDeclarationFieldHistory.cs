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
    
    public partial class EXP_DrugDeclarationFieldHistory
    {
        public long Id { get; set; }
        public System.Guid DrugDeclarationId { get; set; }
        public string ControlId { get; set; }
        public Nullable<System.Guid> UserId { get; set; }
        public System.DateTime CreateDate { get; set; }
        public string ValueField { get; set; }
        public string DisplayField { get; set; }
    
        public virtual Employee Employee { get; set; }
        public virtual EXP_DrugDeclaration EXP_DrugDeclaration { get; set; }
    }
}