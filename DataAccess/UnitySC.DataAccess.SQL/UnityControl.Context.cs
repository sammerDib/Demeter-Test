﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class UnityControlEntities : DbContext
    {
        public UnityControlEntities()
            : base("name=UnityControlEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Chamber> Chambers { get; set; }
        public virtual DbSet<ConfigurationData> ConfigurationDatas { get; set; }
        public virtual DbSet<ConfigurationHistory> ConfigurationHistories { get; set; }
        public virtual DbSet<DatabaseVersion> DatabaseVersions { get; set; }
        public virtual DbSet<Dataflow> Dataflows { get; set; }
        public virtual DbSet<Input> Inputs { get; set; }
        public virtual DbSet<Job> Jobs { get; set; }
        public virtual DbSet<Layer> Layers { get; set; }
        public virtual DbSet<Log> Logs { get; set; }
        public virtual DbSet<Material> Materials { get; set; }
        public virtual DbSet<Output> Outputs { get; set; }
        public virtual DbSet<Product> Products { get; set; }
        public virtual DbSet<ProductConfiguration> ProductConfigurations { get; set; }
        public virtual DbSet<Recipe> Recipes { get; set; }
        public virtual DbSet<RecipeDataflowMap> RecipeDataflowMaps { get; set; }
        public virtual DbSet<RecipeFile> RecipeFiles { get; set; }
        public virtual DbSet<RecipeResultType> RecipeResultTypes { get; set; }
        public virtual DbSet<Result> Results { get; set; }
        public virtual DbSet<ResultAcq> ResultAcqs { get; set; }
        public virtual DbSet<ResultAcqItem> ResultAcqItems { get; set; }
        public virtual DbSet<ResultItem> ResultItems { get; set; }
        public virtual DbSet<ResultItemValue> ResultItemValues { get; set; }
        public virtual DbSet<Step> Steps { get; set; }
        public virtual DbSet<Tag> Tags { get; set; }
        public virtual DbSet<Tool> Tools { get; set; }
        public virtual DbSet<User> Users { get; set; }
        public virtual DbSet<Vid> Vids { get; set; }
        public virtual DbSet<WaferCategory> WaferCategories { get; set; }
        public virtual DbSet<WaferResult> WaferResults { get; set; }
        public virtual DbSet<GlobalResultSettings> GlobalResultSettings1 { get; set; }
        public virtual DbSet<KlarfBinSettings> KlarfBinSettings1 { get; set; }
        public virtual DbSet<KlarfRoughSettings> KlarfRoughSettings1 { get; set; }
    
        public virtual int sp_GetJobResults(Nullable<int> pToolId, Nullable<System.DateTime> pStartDate, Nullable<System.DateTime> pEndDate, Nullable<int> pProductId, string pLotName, string pRecipeName, Nullable<int> pActorType, Nullable<int> pWaferState, string pWaferName, Nullable<int> pNbRows)
        {
            var pToolIdParameter = pToolId.HasValue ?
                new ObjectParameter("pToolId", pToolId) :
                new ObjectParameter("pToolId", typeof(int));
    
            var pStartDateParameter = pStartDate.HasValue ?
                new ObjectParameter("pStartDate", pStartDate) :
                new ObjectParameter("pStartDate", typeof(System.DateTime));
    
            var pEndDateParameter = pEndDate.HasValue ?
                new ObjectParameter("pEndDate", pEndDate) :
                new ObjectParameter("pEndDate", typeof(System.DateTime));
    
            var pProductIdParameter = pProductId.HasValue ?
                new ObjectParameter("pProductId", pProductId) :
                new ObjectParameter("pProductId", typeof(int));
    
            var pLotNameParameter = pLotName != null ?
                new ObjectParameter("pLotName", pLotName) :
                new ObjectParameter("pLotName", typeof(string));
    
            var pRecipeNameParameter = pRecipeName != null ?
                new ObjectParameter("pRecipeName", pRecipeName) :
                new ObjectParameter("pRecipeName", typeof(string));
    
            var pActorTypeParameter = pActorType.HasValue ?
                new ObjectParameter("pActorType", pActorType) :
                new ObjectParameter("pActorType", typeof(int));
    
            var pWaferStateParameter = pWaferState.HasValue ?
                new ObjectParameter("pWaferState", pWaferState) :
                new ObjectParameter("pWaferState", typeof(int));
    
            var pWaferNameParameter = pWaferName != null ?
                new ObjectParameter("pWaferName", pWaferName) :
                new ObjectParameter("pWaferName", typeof(string));
    
            var pNbRowsParameter = pNbRows.HasValue ?
                new ObjectParameter("pNbRows", pNbRows) :
                new ObjectParameter("pNbRows", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_GetJobResults", pToolIdParameter, pStartDateParameter, pEndDateParameter, pProductIdParameter, pLotNameParameter, pRecipeNameParameter, pActorTypeParameter, pWaferStateParameter, pWaferNameParameter, pNbRowsParameter);
        }
    
        public virtual int sp_alterdiagram(string diagramname, Nullable<int> owner_id, Nullable<int> version, byte[] definition)
        {
            var diagramnameParameter = diagramname != null ?
                new ObjectParameter("diagramname", diagramname) :
                new ObjectParameter("diagramname", typeof(string));
    
            var owner_idParameter = owner_id.HasValue ?
                new ObjectParameter("owner_id", owner_id) :
                new ObjectParameter("owner_id", typeof(int));
    
            var versionParameter = version.HasValue ?
                new ObjectParameter("version", version) :
                new ObjectParameter("version", typeof(int));
    
            var definitionParameter = definition != null ?
                new ObjectParameter("definition", definition) :
                new ObjectParameter("definition", typeof(byte[]));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_alterdiagram", diagramnameParameter, owner_idParameter, versionParameter, definitionParameter);
        }
    
        public virtual int sp_creatediagram(string diagramname, Nullable<int> owner_id, Nullable<int> version, byte[] definition)
        {
            var diagramnameParameter = diagramname != null ?
                new ObjectParameter("diagramname", diagramname) :
                new ObjectParameter("diagramname", typeof(string));
    
            var owner_idParameter = owner_id.HasValue ?
                new ObjectParameter("owner_id", owner_id) :
                new ObjectParameter("owner_id", typeof(int));
    
            var versionParameter = version.HasValue ?
                new ObjectParameter("version", version) :
                new ObjectParameter("version", typeof(int));
    
            var definitionParameter = definition != null ?
                new ObjectParameter("definition", definition) :
                new ObjectParameter("definition", typeof(byte[]));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_creatediagram", diagramnameParameter, owner_idParameter, versionParameter, definitionParameter);
        }
    
        public virtual int sp_dropdiagram(string diagramname, Nullable<int> owner_id)
        {
            var diagramnameParameter = diagramname != null ?
                new ObjectParameter("diagramname", diagramname) :
                new ObjectParameter("diagramname", typeof(string));
    
            var owner_idParameter = owner_id.HasValue ?
                new ObjectParameter("owner_id", owner_id) :
                new ObjectParameter("owner_id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_dropdiagram", diagramnameParameter, owner_idParameter);
        }
    
        public virtual int sp_helpdiagramdefinition(string diagramname, Nullable<int> owner_id)
        {
            var diagramnameParameter = diagramname != null ?
                new ObjectParameter("diagramname", diagramname) :
                new ObjectParameter("diagramname", typeof(string));
    
            var owner_idParameter = owner_id.HasValue ?
                new ObjectParameter("owner_id", owner_id) :
                new ObjectParameter("owner_id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_helpdiagramdefinition", diagramnameParameter, owner_idParameter);
        }
    
        public virtual int sp_helpdiagrams(string diagramname, Nullable<int> owner_id)
        {
            var diagramnameParameter = diagramname != null ?
                new ObjectParameter("diagramname", diagramname) :
                new ObjectParameter("diagramname", typeof(string));
    
            var owner_idParameter = owner_id.HasValue ?
                new ObjectParameter("owner_id", owner_id) :
                new ObjectParameter("owner_id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_helpdiagrams", diagramnameParameter, owner_idParameter);
        }
    
        public virtual int sp_renamediagram(string diagramname, Nullable<int> owner_id, string new_diagramname)
        {
            var diagramnameParameter = diagramname != null ?
                new ObjectParameter("diagramname", diagramname) :
                new ObjectParameter("diagramname", typeof(string));
    
            var owner_idParameter = owner_id.HasValue ?
                new ObjectParameter("owner_id", owner_id) :
                new ObjectParameter("owner_id", typeof(int));
    
            var new_diagramnameParameter = new_diagramname != null ?
                new ObjectParameter("new_diagramname", new_diagramname) :
                new ObjectParameter("new_diagramname", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_renamediagram", diagramnameParameter, owner_idParameter, new_diagramnameParameter);
        }
    
        public virtual int sp_upgraddiagrams()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_upgraddiagrams");
        }
    
        public virtual int DeleteAllData()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("DeleteAllData");
        }
    
        public virtual int sp_GetJobResults1(Nullable<int> pToolId, Nullable<System.DateTime> pStartDate, Nullable<System.DateTime> pEndDate, Nullable<int> pProductId, string pLotName, string pRecipeName, Nullable<int> pActorType, Nullable<int> pResultState, string pWaferName, Nullable<int> pTag)
        {
            var pToolIdParameter = pToolId.HasValue ?
                new ObjectParameter("pToolId", pToolId) :
                new ObjectParameter("pToolId", typeof(int));
    
            var pStartDateParameter = pStartDate.HasValue ?
                new ObjectParameter("pStartDate", pStartDate) :
                new ObjectParameter("pStartDate", typeof(System.DateTime));
    
            var pEndDateParameter = pEndDate.HasValue ?
                new ObjectParameter("pEndDate", pEndDate) :
                new ObjectParameter("pEndDate", typeof(System.DateTime));
    
            var pProductIdParameter = pProductId.HasValue ?
                new ObjectParameter("pProductId", pProductId) :
                new ObjectParameter("pProductId", typeof(int));
    
            var pLotNameParameter = pLotName != null ?
                new ObjectParameter("pLotName", pLotName) :
                new ObjectParameter("pLotName", typeof(string));
    
            var pRecipeNameParameter = pRecipeName != null ?
                new ObjectParameter("pRecipeName", pRecipeName) :
                new ObjectParameter("pRecipeName", typeof(string));
    
            var pActorTypeParameter = pActorType.HasValue ?
                new ObjectParameter("pActorType", pActorType) :
                new ObjectParameter("pActorType", typeof(int));
    
            var pResultStateParameter = pResultState.HasValue ?
                new ObjectParameter("pResultState", pResultState) :
                new ObjectParameter("pResultState", typeof(int));
    
            var pWaferNameParameter = pWaferName != null ?
                new ObjectParameter("pWaferName", pWaferName) :
                new ObjectParameter("pWaferName", typeof(string));
    
            var pTagParameter = pTag.HasValue ?
                new ObjectParameter("pTag", pTag) :
                new ObjectParameter("pTag", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_GetJobResults1", pToolIdParameter, pStartDateParameter, pEndDateParameter, pProductIdParameter, pLotNameParameter, pRecipeNameParameter, pActorTypeParameter, pResultStateParameter, pWaferNameParameter, pTagParameter);
        }
    }
}
