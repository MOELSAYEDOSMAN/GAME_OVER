//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace FINAL_NETWORK
{
    using System;
    using System.Collections.Generic;
    
    public partial class GAME
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public GAME()
        {
            this.FATORAs = new HashSet<FATORA>();
            this.favorts = new HashSet<favort>();
        }
    
        public int id { get; set; }
        public string name { get; set; }
        public Nullable<int> price { get; set; }
        public string description { get; set; }
        public string type_game { get; set; }
        public Nullable<System.DateTime> time_upload { get; set; }
        public Nullable<int> download_number { get; set; }
        public string img1 { get; set; }
        public string img2 { get; set; }
        public string img3 { get; set; }
        public string img4 { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<FATORA> FATORAs { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<favort> favorts { get; set; }
    }
}
