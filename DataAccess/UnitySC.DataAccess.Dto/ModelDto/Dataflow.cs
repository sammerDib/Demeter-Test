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
    public partial class Dataflow
    {
        [DataMember]
        public int Id { get; set; }
        [DataMember]
        public System.Guid KeyForAllVersion { get; set; }
        [DataMember]
        public string Name { get; set; }
        [DataMember]
        public string Comment { get; set; }
        [DataMember]
        public Nullable<System.DateTime> Created { get; set; }
        [DataMember]
        public int CreatorUserId { get; set; }
        [DataMember]
        public string XmlContent { get; set; }
        [DataMember]
        public int Version { get; set; }
        [DataMember]
        public int CreatorTool { get; set; }
        [DataMember]
        public int StepId { get; set; }
        [DataMember]
        public bool IsArchived { get; set; }
        [DataMember]
        public bool IsShared { get; set; }
        [DataMember]
        public bool IsValidated { get; set; }
    
        [DataMember]
        public virtual Step Step { get; set; }
        [DataMember]
        public virtual Tool Tool { get; set; }
        [DataMember]
        public virtual User User { get; set; }
    }
}
