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
    public partial class ProductConfiguration
    {
        [DataMember]
        public int Id { get; set; }
        [DataMember]
        public int ProductId { get; set; }
        [DataMember]
        public int ChamberId { get; set; }
        [DataMember]
        public int ConfigurationId { get; set; }
        [DataMember]
        public bool IsArchived { get; set; }
    
        [DataMember]
        public virtual Chamber Chamber { get; set; }
        [DataMember]
        public virtual ConfigurationData ConfigurationData { get; set; }
        [DataMember]
        public virtual Product Product { get; set; }
    }
}
