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
    
    public partial class EXP_ExpertisePrimaryFinalDoc
    {
        public System.Guid Id { get; set; }
        public Nullable<bool> IsRKProduct { get; set; }
        public Nullable<bool> IsDossierSection { get; set; }
        public Nullable<bool> IsSetDocument { get; set; }
        public Nullable<bool> IsColorModel { get; set; }
        public Nullable<bool> IsForbiddenDyes { get; set; }
        public Nullable<bool> IsFromBlood { get; set; }
        public Nullable<bool> IsNarcoticDrug { get; set; }
        public Nullable<bool> IsPhoneticSimilar { get; set; }
        public Nullable<bool> IsAbilityMislead { get; set; }
        public Nullable<bool> IsAdvertising { get; set; }
        public Nullable<bool> IsMNNSimilar { get; set; }
        public string ExpertiseNormDoc { get; set; }
        public string SampleDrug { get; set; }
        public string ComplianceSeries { get; set; }
        public string ResidualShelfLife { get; set; }
        public string SampleSubstance { get; set; }
        public string SampleStandart { get; set; }
        public string TestLabRecommend { get; set; }
        public string MedicalInstruction { get; set; }
        public string ExpertOpinion { get; set; }
        public System.Guid DosageStageId { get; set; }
    
        public virtual EXP_ExpertiseStageDosage EXP_ExpertiseStageDosage { get; set; }
    }
}
