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
    
    public partial class favort
    {
        public int id { get; set; }
        public Nullable<int> ID_FAVORT_GAME { get; set; }
        public Nullable<int> ID_FAVORT_USER { get; set; }
    
        public virtual AspTaple AspTaple { get; set; }
        public virtual GAME GAME { get; set; }
    }
}
