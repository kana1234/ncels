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
    
    public partial class VisitType
    {
        public VisitType()
        {
            this.VisitEmployeeTypes = new HashSet<VisitEmployeeType>();
            this.Visits = new HashSet<Visit>();
        }
    
        public int Id { get; set; }
        public string Name { get; set; }
        public string Group { get; set; }
        public int Time { get; set; }
    
        public virtual ICollection<VisitEmployeeType> VisitEmployeeTypes { get; set; }
        public virtual ICollection<Visit> Visits { get; set; }
    }
}