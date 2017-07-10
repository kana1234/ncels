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
    
    public partial class EXP_DrugDeclaration
    {
        public EXP_DrugDeclaration()
        {
            this.EXP_DrugDeclarationCom = new HashSet<EXP_DrugDeclarationCom>();
            this.EXP_DrugDeclarationFieldHistory = new HashSet<EXP_DrugDeclarationFieldHistory>();
            this.EXP_DrugDeclarationHistory = new HashSet<EXP_DrugDeclarationHistory>();
            this.EXP_DrugExportTrade = new HashSet<EXP_DrugExportTrade>();
            this.EXP_DrugPatent = new HashSet<EXP_DrugPatent>();
            this.EXP_DrugType = new HashSet<EXP_DrugType>();
            this.EXP_DrugUseMethod = new HashSet<EXP_DrugUseMethod>();
            this.EXP_DrugOtherCountry = new HashSet<EXP_DrugOtherCountry>();
            this.EXP_DrugProtectionDoc = new HashSet<EXP_DrugProtectionDoc>();
            this.EXP_DrugOrganizations = new HashSet<EXP_DrugOrganizations>();
            this.EXP_DirectionToPays = new HashSet<EXP_DirectionToPays>();
            this.EXP_DrugDosage = new HashSet<EXP_DrugDosage>();
            this.EXP_DrugPrimaryKind = new HashSet<EXP_DrugPrimaryKind>();
            this.EXP_DrugChangeType = new HashSet<EXP_DrugChangeType>();
            this.EXP_DrugPrimaryNTD = new HashSet<EXP_DrugPrimaryNTD>();
            this.EXP_DrugPrimaryRemark = new HashSet<EXP_DrugPrimaryRemark>();
            this.EXP_DrugCorespondence = new HashSet<EXP_DrugCorespondence>();
            this.EXP_ExpertiseStage = new HashSet<EXP_ExpertiseStage>();
        }
    
        public System.Guid Id { get; set; }
        public int TypeId { get; set; }
        public string Number { get; set; }
        public System.DateTime CreatedDate { get; set; }
        public int StatusId { get; set; }
        public System.Guid OwnerId { get; set; }
        public Nullable<System.Guid> ContractId { get; set; }
        public Nullable<int> AccelerationTypeId { get; set; }
        public string AccelerationNumber { get; set; }
        public Nullable<System.DateTime> AccelerationDate { get; set; }
        public string AccelerationNote { get; set; }
        public string NameRu { get; set; }
        public string NameKz { get; set; }
        public string NameEn { get; set; }
        public Nullable<int> MnnId { get; set; }
        public string MnnComment { get; set; }
        public Nullable<int> DrugFormId { get; set; }
        public string DrugFormRu { get; set; }
        public string DrugFormKz { get; set; }
        public Nullable<int> AtxId { get; set; }
        public string OriginalName { get; set; }
        public Nullable<int> SaleTypeId { get; set; }
        public decimal Dosage { get; set; }
        public Nullable<long> DosageMeasureTypeId { get; set; }
        public string DosageNoteKz { get; set; }
        public string DosageNoteRu { get; set; }
        public string ConcentrationRu { get; set; }
        public string ConcentrationKz { get; set; }
        public bool IsGrls { get; set; }
        public string Transportation { get; set; }
        public Nullable<int> ManufactureTypeId { get; set; }
        public bool IsGmp { get; set; }
        public Nullable<System.DateTime> GmpExpiryDate { get; set; }
        public string BestBefore { get; set; }
        public Nullable<double> ProposedShelfLife { get; set; }
        public Nullable<int> ProposedShelfLifeMeasureId { get; set; }
        public Nullable<long> BestBeforeMeasureTypeDicId { get; set; }
        public string AppPeriodOpen { get; set; }
        public Nullable<long> AppPeriodOpenMeasureDicId { get; set; }
        public string AppPeriodMix { get; set; }
        public Nullable<long> AppPeriodMixMeasureDicId { get; set; }
        public string StorageConditions1 { get; set; }
        public string StorageConditions2 { get; set; }
        public bool IsConvention { get; set; }
        public Nullable<System.DateTime> DesignDate { get; set; }
        public string DesignNote { get; set; }
        public bool IsSigned { get; set; }
        public Nullable<System.DateTime> FirstSendDate { get; set; }
        public Nullable<System.DateTime> SendDate { get; set; }
        public bool IsDeleted { get; set; }
        public Nullable<System.Guid> ExecuterId { get; set; }
        public string ExpeditedType { get; set; }
        public Nullable<int> RegisterId { get; set; }
        public string GrlsNote { get; set; }
        public string OtdIds { get; set; }
        public string AtxComment { get; set; }
    
        public virtual EXP_DIC_AccelerationType EXP_DIC_AccelerationType { get; set; }
        public virtual EXP_DIC_ManufactureType EXP_DIC_ManufactureType { get; set; }
        public virtual EXP_DIC_PeriodMeasure EXP_DIC_PeriodMeasure { get; set; }
        public virtual EXP_DIC_SaleType EXP_DIC_SaleType { get; set; }
        public virtual EXP_DIC_Status EXP_DIC_Status { get; set; }
        public virtual EXP_DIC_Type EXP_DIC_Type { get; set; }
        public virtual sr_measures sr_measures { get; set; }
        public virtual sr_measures sr_measures1 { get; set; }
        public virtual sr_atc_codes sr_atc_codes { get; set; }
        public virtual sr_drug_forms sr_drug_forms { get; set; }
        public virtual sr_international_names sr_international_names { get; set; }
        public virtual sr_measures sr_measures2 { get; set; }
        public virtual sr_measures sr_measures3 { get; set; }
        public virtual ICollection<EXP_DrugDeclarationCom> EXP_DrugDeclarationCom { get; set; }
        public virtual ICollection<EXP_DrugDeclarationFieldHistory> EXP_DrugDeclarationFieldHistory { get; set; }
        public virtual ICollection<EXP_DrugDeclarationHistory> EXP_DrugDeclarationHistory { get; set; }
        public virtual ICollection<EXP_DrugExportTrade> EXP_DrugExportTrade { get; set; }
        public virtual ICollection<EXP_DrugPatent> EXP_DrugPatent { get; set; }
        public virtual ICollection<EXP_DrugType> EXP_DrugType { get; set; }
        public virtual ICollection<EXP_DrugUseMethod> EXP_DrugUseMethod { get; set; }
        public virtual ICollection<EXP_DrugOtherCountry> EXP_DrugOtherCountry { get; set; }
        public virtual ICollection<EXP_DrugProtectionDoc> EXP_DrugProtectionDoc { get; set; }
        public virtual ICollection<EXP_DrugOrganizations> EXP_DrugOrganizations { get; set; }
        public virtual ICollection<EXP_DirectionToPays> EXP_DirectionToPays { get; set; }
        public virtual ICollection<EXP_DrugDosage> EXP_DrugDosage { get; set; }
        public virtual ICollection<EXP_DrugPrimaryKind> EXP_DrugPrimaryKind { get; set; }
        public virtual sr_register sr_register { get; set; }
        public virtual ICollection<EXP_DrugChangeType> EXP_DrugChangeType { get; set; }
        public virtual sr_dosage_forms sr_dosage_forms { get; set; }
        public virtual ICollection<EXP_DrugPrimaryNTD> EXP_DrugPrimaryNTD { get; set; }
        public virtual ICollection<EXP_DrugPrimaryRemark> EXP_DrugPrimaryRemark { get; set; }
        public virtual ICollection<EXP_DrugCorespondence> EXP_DrugCorespondence { get; set; }
        public virtual ICollection<EXP_ExpertiseStage> EXP_ExpertiseStage { get; set; }
    }
}