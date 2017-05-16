//------------------------------------------------------------------------------
// <auto-generated>
//     此代码已从模板生成。
//
//     手动更改此文件可能导致应用程序出现意外的行为。
//     如果重新生成代码，将覆盖对此文件的手动更改。
// </auto-generated>
//------------------------------------------------------------------------------

namespace MAS.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class MAS_Request
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public MAS_Request()
        {
            this.MAS_Reservations = new HashSet<MAS_Reservations>();
        }
    
        public int RequestId { get; set; }
        public string CheckSite { get; set; }
        public string BodyPartIdentity { get; set; }
        public string StudyHISID { get; set; }
        public string StudySource { get; set; }
        public string StudyDepartment { get; set; }
        public Nullable<decimal> StudyFee { get; set; }
        public Nullable<decimal> StudyScore { get; set; }
        public string AppliedDepartment { get; set; }
        public string AppliedDoctor { get; set; }
        public Nullable<System.DateTime> AppledDatetime { get; set; }
        public string ClinicSymptom { get; set; }
        public string ClinicDiagnose { get; set; }
        public string ExamRequest { get; set; }
        public string BedNo { get; set; }
        public string UniversalServiceID { get; set; }
        public string UniversalServiceText { get; set; }
        public string PatientClass { get; set; }
        public string ApplyBillClass { get; set; }
        public string HISCode { get; set; }
        public Nullable<System.DateTime> RegistDate { get; set; }
        public string RegistOperator { get; set; }
        public string StudyPatientIn { get; set; }
        public string SickAreaName { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<MAS_Reservations> MAS_Reservations { get; set; }
    }
}
