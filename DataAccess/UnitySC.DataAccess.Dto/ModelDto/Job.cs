//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace UnitySC.DataAccess.Dto
{
    using System.Runtime.Serialization;
    using System;
    using System.Collections.Generic;
    
    
    [DataContract]
    public partial class Job
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Job()
        {
            this.WaferResults = new HashSet<WaferResult>();
        }
    
        [DataMember]
        public int Id { get; set; }
        [DataMember]
        public string JobName { get; set; }
        [DataMember]
        public string LotName { get; set; }
        [DataMember]
        public System.DateTime Date { get; set; }
        [DataMember]
        public string RecipeName { get; set; }
        [DataMember]
        public int RunIter { get; set; }
        [DataMember]
        public int ToolId { get; set; }
    
        [DataMember]
        public virtual Tool Tool { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        [DataMember]
        public virtual ICollection<WaferResult> WaferResults { get; set; }
    }
}
