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
    
    public partial class MAS_Actions
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public MAS_Actions()
        {
            this.MAS_RoleActions = new HashSet<MAS_RoleActions>();
        }
    
        public int ActionId { get; set; }
        public string ActionName { get; set; }
        public Nullable<byte> DelFlag { get; set; }
        public Nullable<int> displayOrder { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<MAS_RoleActions> MAS_RoleActions { get; set; }
    }
}
