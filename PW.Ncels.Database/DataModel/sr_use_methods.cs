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
    
    public partial class sr_use_methods
    {
        public sr_use_methods()
        {
            this.EXP_DrugUseMethod = new HashSet<EXP_DrugUseMethod>();
            this.sr_register_use_methods = new HashSet<sr_register_use_methods>();
        }
    
        public int id { get; set; }
        public string name { get; set; }
        public string name_kz { get; set; }
        public bool block_sign { get; set; }
    
        public virtual ICollection<EXP_DrugUseMethod> EXP_DrugUseMethod { get; set; }
        public virtual ICollection<sr_register_use_methods> sr_register_use_methods { get; set; }
    }
}