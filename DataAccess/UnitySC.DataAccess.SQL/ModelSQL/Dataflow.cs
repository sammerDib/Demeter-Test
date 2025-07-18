//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace UnitySC.DataAccess.SQL
{
    using System;
    using System.Collections.Generic;
    
    public partial class Dataflow
    {
        public int Id { get; set; }
        public System.Guid KeyForAllVersion { get; set; }
        public string Name { get; set; }
        public string Comment { get; set; }
        public Nullable<System.DateTime> Created { get; set; }
        public int CreatorUserId { get; set; }
        public string XmlContent { get; set; }
        public int Version { get; set; }
        public int CreatorTool { get; set; }
        public int StepId { get; set; }
        public bool IsArchived { get; set; }
        public bool IsShared { get; set; }
        public bool IsValidated { get; set; }
    
        public virtual Step Step { get; set; }
        public virtual Tool Tool { get; set; }
        public virtual User User { get; set; }
    }
}
