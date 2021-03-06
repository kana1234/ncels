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
    
    public partial class RegisterProjectJournal
    {
        public Nullable<bool> IsStageEnd { get; set; }
        public Nullable<System.DateTime> EndDate { get; set; }
        public System.Guid Id { get; set; }
        public int Type { get; set; }
        public string Number { get; set; }
        public System.DateTime CreatedDate { get; set; }
        public int Status { get; set; }
        public System.Guid OwnerId { get; set; }
        public Nullable<System.Guid> ContractId { get; set; }
        public Nullable<System.Guid> AccelerationTypeDicId { get; set; }
        public string AccelerationNumber { get; set; }
        public Nullable<System.DateTime> AccelerationDate { get; set; }
        public string AccelerationNote { get; set; }
        public string TradeName { get; set; }
        public string NameKz { get; set; }
        public string NameEn { get; set; }
        public string MnnKz { get; set; }
        public string MnnEn { get; set; }
        public string MnnRu { get; set; }
        public bool IsPatent { get; set; }
        public string PatentNumber { get; set; }
        public Nullable<System.DateTime> PatentDate { get; set; }
        public Nullable<System.DateTime> PatentExpiryDate { get; set; }
        public string LsFormNameKz { get; set; }
        public string LsFormNameRu { get; set; }
        public string AtxCode { get; set; }
        public string AtxNameKz { get; set; }
        public string AtxNameRu { get; set; }
        public Nullable<System.Guid> LsTypeDicId { get; set; }
        public Nullable<System.Guid> LsType2DicId { get; set; }
        public string OriginalName { get; set; }
        public Nullable<System.Guid> SaleTypeDicId { get; set; }
        public Nullable<System.Guid> IntroducingMethodDicId { get; set; }
        public decimal Dosage { get; set; }
        public Nullable<System.Guid> DosageMeasureTypeDicId { get; set; }
        public string DosageNoteKz { get; set; }
        public string DosageNoteRu { get; set; }
        public string ConcentrationRu { get; set; }
        public string ConcentrationKz { get; set; }
        public Nullable<System.Guid> CompositionId { get; set; }
        public bool IsGrls { get; set; }
        public string Transportation { get; set; }
        public Nullable<System.Guid> ManufactureTypeDicId { get; set; }
        public bool IsGmp { get; set; }
        public Nullable<System.DateTime> GmpExpiryDate { get; set; }
        public string BestBefore { get; set; }
        public Nullable<System.Guid> BestBeforeMeasureTypeDicId { get; set; }
        public Nullable<System.DateTime> AppPeriod1BeginDate { get; set; }
        public Nullable<System.DateTime> AppPeriod1FinishDate { get; set; }
        public Nullable<System.DateTime> AppPeriod2BeginDate { get; set; }
        public Nullable<System.DateTime> AppPeriod2FinishDate { get; set; }
        public string StorageConditions1 { get; set; }
        public string StorageConditions2 { get; set; }
        public string Barcode { get; set; }
        public decimal ManufacturePrice { get; set; }
        public Nullable<decimal> RefPrice { get; set; }
        public Nullable<decimal> RegPrice { get; set; }
        public string SecureDocument { get; set; }
        public string SecureDocumentNumber { get; set; }
        public Nullable<System.DateTime> SecureDocumentDate { get; set; }
        public Nullable<System.DateTime> SecureDocumentExpiryDate { get; set; }
        public bool IsConvention { get; set; }
        public string RegDocNumber { get; set; }
        public Nullable<System.DateTime> RegDocDate { get; set; }
        public Nullable<System.DateTime> RegDocExpiryDate { get; set; }
        public string RegDocNormativeNumber { get; set; }
        public Nullable<System.Guid> ResultTypeDicId { get; set; }
        public Nullable<bool> IsPayed { get; set; }
        public Nullable<System.DateTime> PayDate { get; set; }
        public Nullable<System.DateTime> StartDate { get; set; }
        public Nullable<System.DateTime> ContrDate { get; set; }
        public Nullable<System.DateTime> ConclusionDate { get; set; }
        public Nullable<bool> IsStageExpired { get; set; }
        public Nullable<int> ExpiredDayCount { get; set; }
        public string ExpertAz { get; set; }
        public string OutgoingDoc { get; set; }
        public Nullable<int> DayCount { get; set; }
        public Nullable<bool> IsNewManufacrurer { get; set; }
        public string RegisterType { get; set; }
        public string ManufaturerName { get; set; }
        public string CountryName { get; set; }
        public string ApplicantName { get; set; }
        public string Classification { get; set; }
        public string Mnn { get; set; }
        public string DosageMeasureTypeName { get; set; }
        public string ExpertiseStage { get; set; }
        public string ResponsibleId { get; set; }
        public string ResponsibleValue { get; set; }
        public string ResultTypeName { get; set; }
        public string StatusValue { get; set; }
        public string NameRu { get; set; }
    }
}
