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
    public partial class KlarfRoughSettings
    {
        [DataMember]
        public int Id { get; set; }
        [DataMember]
        public int RoughBin { get; set; }
        [DataMember]
        public string Label { get; set; }
        [DataMember]
        public int Color { get; set; }
    }
}
