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
    
    public partial class EXP_RegistrationTypes
    {
        public EXP_RegistrationTypes()
        {
            this.EXP_RegistrationExpSteps = new HashSet<EXP_RegistrationExpSteps>();
            this.EXP_RegistrationTypes1 = new HashSet<EXP_RegistrationTypes>();
        }
    
        public System.Guid Id { get; set; }
        public string Name { get; set; }
        public Nullable<System.Guid> ParentId { get; set; }
        public string Code { get; set; }
    
        public virtual ICollection<EXP_RegistrationExpSteps> EXP_RegistrationExpSteps { get; set; }
        public virtual ICollection<EXP_RegistrationTypes> EXP_RegistrationTypes1 { get; set; }
        public virtual EXP_RegistrationTypes EXP_RegistrationTypes2 { get; set; }
    }
}
