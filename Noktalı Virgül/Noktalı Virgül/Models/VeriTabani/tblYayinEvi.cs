//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Noktalı_Virgül.Models.VeriTabani
{
    using System;
    using System.Collections.Generic;
    
    public partial class tblYayinEvi
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public tblYayinEvi()
        {
            this.tblKitap = new HashSet<tblKitap>();
        }
    
        public int YayinEviID { get; set; }
        public string YayinEviAdi { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tblKitap> tblKitap { get; set; }
    }
}
