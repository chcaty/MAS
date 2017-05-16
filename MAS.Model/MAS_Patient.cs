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
    
    public partial class MAS_Patient
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public MAS_Patient()
        {
            this.MAS_Reservations = new HashSet<MAS_Reservations>();
        }
    
        public int PatientId { get; set; }
        public string PatientName { get; set; }
        public string PatientSex { get; set; }
        public string PatientAddress { get; set; }
        public Nullable<System.DateTime> PatientBirthDate { get; set; }
        public string PatientTel { get; set; }
        public string PatientHISID { get; set; }
        public string PatientIDCard { get; set; }
        public string PatientAge { get; set; }
        public Nullable<System.DateTime> CreateTime { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<MAS_Reservations> MAS_Reservations { get; set; }
    }
}
