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
    
    public partial class EXP_DrugDeclarationComRecord
    {
        public long Id { get; set; }
        public long CommentId { get; set; }
        public Nullable<System.Guid> UserId { get; set; }
        public System.DateTime CreateDate { get; set; }
        public string ValueField { get; set; }
        public string Note { get; set; }
        public string DisplayField { get; set; }
    
        public virtual Employee Employee { get; set; }
        public virtual EXP_DrugDeclarationCom EXP_DrugDeclarationCom { get; set; }
    }
}