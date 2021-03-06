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
    
    public partial class Employee
    {
        public Employee()
        {
            this.Units = new HashSet<Unit>();
            this.VisitEmployeeWorkingTimes = new HashSet<VisitEmployeeWorkingTime>();
            this.Visits = new HashSet<Visit>();
            this.Visits1 = new HashSet<Visit>();
            this.CommissionUnits = new HashSet<CommissionUnit>();
            this.OBK_AssessmentStage = new HashSet<OBK_AssessmentStage>();
            this.OBK_AssessmentDeclarationComRecord = new HashSet<OBK_AssessmentDeclarationComRecord>();
            this.OBK_AssessmentDeclarationFieldHistory = new HashSet<OBK_AssessmentDeclarationFieldHistory>();
        }
    
        public System.Guid Id { get; set; }
        public System.DateTime CreatedDate { get; set; }
        public System.DateTime ModifiedDate { get; set; }
        public string LastName { get; set; }
        public string FirstName { get; set; }
        public string MiddleName { get; set; }
        public string FullName { get; set; }
        public string ShortName { get; set; }
        public Nullable<System.Guid> PositionId { get; set; }
        public int Sex { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }
        public string Login { get; set; }
        public string DisplayName { get; set; }
        public Nullable<bool> IsLockedOut { get; set; }
        public Nullable<System.DateTime> LastLoginDate { get; set; }
        public string DeputyId { get; set; }
        public string DeputyValue { get; set; }
        public string AssistantsId { get; set; }
        public string AssistantsValue { get; set; }
        public string Cabinet { get; set; }
        public byte[] Photo { get; set; }
        public int TimeAgreement { get; set; }
        public string Number { get; set; }
        public Nullable<System.DateTime> Birthday { get; set; }
        public string Birthplace { get; set; }
        public string UlNumber { get; set; }
        public Nullable<System.DateTime> UlDate { get; set; }
        public string UlOwner { get; set; }
        public string Iin { get; set; }
        public string PlaceLive { get; set; }
        public string PlaceRegistration { get; set; }
        public string PhoneHome { get; set; }
        public string PhoneMobile { get; set; }
        public int FamilyStatus { get; set; }
        public string Families { get; set; }
        public string Education { get; set; }
        public int ExperienceTotal { get; set; }
        public int ExperienceSpec { get; set; }
        public bool IsDegree { get; set; }
        public Nullable<System.DateTime> DegreeDate { get; set; }
        public string DegreeSpec { get; set; }
        public int MilitaryType { get; set; }
        public string MilitaryCategory { get; set; }
        public string MilitarySostav { get; set; }
        public string MilitaryRank { get; set; }
        public string MilitaryVus { get; set; }
        public string MilitaryLocation { get; set; }
        public Nullable<System.DateTime> MilitaryLastDate { get; set; }
        public Nullable<System.DateTime> DateFile { get; set; }
        public string EducationNumber { get; set; }
        public Nullable<System.DateTime> EducationDate { get; set; }
        public string EducationSpec { get; set; }
        public string EducationQual { get; set; }
        public System.Guid OrganizationId { get; set; }
        public string NationalityId { get; set; }
        public string NationalityValue { get; set; }
        public string DegreeName { get; set; }
        public bool IsAcademic { get; set; }
        public Nullable<System.DateTime> AcademicDate { get; set; }
        public string AcademicSpec { get; set; }
        public string AcademicName { get; set; }
        public string Education2 { get; set; }
        public string EducationNumber2 { get; set; }
        public Nullable<System.DateTime> EducationDate2 { get; set; }
        public string EducationSpec2 { get; set; }
        public string EducationQual2 { get; set; }
        public string Education3 { get; set; }
        public string EducationNumber3 { get; set; }
        public Nullable<System.DateTime> EducationDate3 { get; set; }
        public string EducationSpec3 { get; set; }
        public string EducationQual3 { get; set; }
        public Nullable<System.DateTime> TerminationDate { get; set; }
        public string MilitaryRankId { get; set; }
        public string MilitarySostavId { get; set; }
        public string AcademicNameId { get; set; }
        public string DegreeNameId { get; set; }
        public string CauseLayoffsId { get; set; }
        public string CauseLayoffsValue { get; set; }
        public string QualificationCategoryId { get; set; }
        public string QualificationCategoryValue { get; set; }
        public bool IsGuide { get; set; }
    
        public virtual Unit Organization { get; set; }
        public virtual Unit Position { get; set; }
        public virtual ICollection<Unit> Units { get; set; }
        public virtual ICollection<VisitEmployeeWorkingTime> VisitEmployeeWorkingTimes { get; set; }
        public virtual ICollection<Visit> Visits { get; set; }
        public virtual ICollection<Visit> Visits1 { get; set; }
        public virtual ICollection<CommissionUnit> CommissionUnits { get; set; }
        public virtual ICollection<OBK_AssessmentStage> OBK_AssessmentStage { get; set; }
        public virtual ICollection<OBK_AssessmentDeclarationComRecord> OBK_AssessmentDeclarationComRecord { get; set; }
        public virtual ICollection<OBK_AssessmentDeclarationFieldHistory> OBK_AssessmentDeclarationFieldHistory { get; set; }
    }
}
