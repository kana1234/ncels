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
    
    public partial class EXP_DIC_PlantKind
    {
        public EXP_DIC_PlantKind()
        {
            this.EXP_DrugSubstance = new HashSet<EXP_DrugSubstance>();
        }
    
        public int Id { get; set; }
        public string Code { get; set; }
        public string NameRu { get; set; }
        public string NameKz { get; set; }
        public System.DateTime DateCreate { get; set; }
        public bool IsDeleted { get; set; }
        public Nullable<System.DateTime> DateEdit { get; set; }
    
        public virtual ICollection<EXP_DrugSubstance> EXP_DrugSubstance { get; set; }
    }
}