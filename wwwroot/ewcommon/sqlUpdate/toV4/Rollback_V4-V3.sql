if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tblCartCatProductRelations_tblAudit]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tblCartCatProductRelations] DROP CONSTRAINT FK_tblCartCatProductRelations_tblAudit

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tblCartDiscountGroupRelations_tblAudit]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tblCartDiscountGroupRelations] DROP CONSTRAINT FK_tblCartDiscountGroupRelations_tblAudit

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tblCartDiscountRules_tblAudit]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tblCartDiscountRules] DROP CONSTRAINT FK_tblCartDiscountRules_tblAudit

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tblCartItem_tblAudit]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tblCartItem] DROP CONSTRAINT FK_tblCartItem_tblAudit


if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tblCartProductCategories_tblAudit]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tblCartProductCategories] DROP CONSTRAINT FK_tblCartProductCategories_tblAudit


if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tblCartOrder_tblAudit]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tblCartOrder] DROP CONSTRAINT FK_tblCartOrder_tblAudit

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tblCartPaymentMethod_tblAudit]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tblCartPaymentMethod] DROP CONSTRAINT FK_tblCartPaymentMethod_tblAudit

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tblCartProductCateries_tblAudit]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tblCartProductCateries] DROP CONSTRAINT FK_tblCartProductCateries_tblAudit

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tblCartShippingLocations_tblAudit]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tblCartShippingLocations] DROP CONSTRAINT FK_tblCartShippingLocations_tblAudit

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tblCartShippingMethods_tblAudit]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tblCartShippingMethods] DROP CONSTRAINT FK_tblCartShippingMethods_tblAudit

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tblCartShippingRelations_tblAudit]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tblCartShippingRelations] DROP CONSTRAINT FK_tblCartShippingRelations_tblAudit

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tblContent_tblAudit]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tblContent] DROP CONSTRAINT FK_tblContent_tblAudit

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tblContentLocations_tblAudit]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tblContentLocation] DROP CONSTRAINT FK_tblContentLocations_tblAudit

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tblContentStructure_tblAudit]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tblContentStructure] DROP CONSTRAINT FK_tblContentStructure_tblAudit

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tblDirectory_tblAudit]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tblDirectory] DROP CONSTRAINT FK_tblDirectory_tblAudit

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tblPermission_tblAudit]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tblDirectoryPermission] DROP CONSTRAINT FK_tblPermission_tblAudit

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tblDirectoryRelation_tblAudit]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tblDirectoryRelation] DROP CONSTRAINT FK_tblDirectoryRelation_tblAudit

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tblCartOrder_tblCartPaymentMethod]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tblCartOrder] DROP CONSTRAINT FK_tblCartOrder_tblCartPaymentMethod

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tblCartCatProductRelations_tblCartProductCateries]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tblCartCatProductRelations] DROP CONSTRAINT FK_tblCartCatProductRelations_tblCartProductCateries

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tblCartDiscountRules_tblCartProductCateries]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tblCartDiscountRules] DROP CONSTRAINT FK_tblCartDiscountRules_tblCartProductCateries

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tblCartShippingMethods_tblCartProductCateries]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tblCartShippingMethods] DROP CONSTRAINT FK_tblCartShippingMethods_tblCartProductCateries

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tblCartShippingRelations_tblCartShippingLocations]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tblCartShippingRelations] DROP CONSTRAINT FK_tblCartShippingRelations_tblCartShippingLocations

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tblCartCatProductRelations_tblContent]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tblCartCatProductRelations] DROP CONSTRAINT FK_tblCartCatProductRelations_tblContent

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tblCartItem_tblContent]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tblCartItem] DROP CONSTRAINT FK_tblCartItem_tblContent

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tblContentLocations_tblContent]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tblContentLocation] DROP CONSTRAINT FK_tblContentLocations_tblContent

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tblContentRelation_tblContent]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tblContentRelation] DROP CONSTRAINT FK_tblContentRelation_tblContent

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tblContentRelation_tblContent1]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tblContentRelation] DROP CONSTRAINT FK_tblContentRelation_tblContent1

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tblActivityLog_tblContentStructure]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tblActivityLog] DROP CONSTRAINT FK_tblActivityLog_tblContentStructure

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tblContentLocations_tblContentStructure]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tblContentLocation] DROP CONSTRAINT FK_tblContentLocations_tblContentStructure

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tblPermission_tblContentStructure]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tblDirectoryPermission] DROP CONSTRAINT FK_tblPermission_tblContentStructure

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tblActivityLog_tblDirectory]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tblActivityLog] DROP CONSTRAINT FK_tblActivityLog_tblDirectory

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tblCartDiscountGroupRelations_tblDirectory]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tblCartDiscountGroupRelations] DROP CONSTRAINT FK_tblCartDiscountGroupRelations_tblDirectory

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tblPermission_tblDirectory]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tblDirectoryPermission] DROP CONSTRAINT FK_tblPermission_tblDirectory

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tblDirectoryRelation_tblDirectory]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tblDirectoryRelation] DROP CONSTRAINT FK_tblDirectoryRelation_tblDirectory

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tblDirectoryRelation_tblDirectory1]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tblDirectoryRelation] DROP CONSTRAINT FK_tblDirectoryRelation_tblDirectory1

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tblCartDiscountGroupRelations_tblCartDiscountRules]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tblCartDiscountGroupRelations] DROP CONSTRAINT FK_tblCartDiscountGroupRelations_tblCartDiscountRules

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tblCartItem_tblCartOrder]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tblCartItem] DROP CONSTRAINT FK_tblCartItem_tblCartOrder

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tblCartShippingRelations_tblCartShippingMethods]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tblCartShippingRelations] DROP CONSTRAINT FK_tblCartShippingRelations_tblCartShippingMethods

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[fxn_checkPermission]') and xtype in (N'FN', N'IF', N'TF'))
drop function [dbo].[fxn_checkPermission]

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[fxn_getUserCompanies]') and xtype in (N'FN', N'IF', N'TF'))
drop function [dbo].[fxn_getUserCompanies]

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[fxn_shippingTotal]') and xtype in (N'FN', N'IF', N'TF'))
drop function [dbo].[fxn_shippingTotal]

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[fxn_getStatus]') and xtype in (N'FN', N'IF', N'TF'))
drop function [dbo].[fxn_getStatus]

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[fxn_SearchXML]') and xtype in (N'FN', N'IF', N'TF'))
drop function [dbo].[fxn_SearchXML]

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[fxn_addAudit]') and xtype in (N'FN', N'IF', N'TF'))
drop function [dbo].[fxn_addAudit]

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spGetDirectoryItems]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spGetDirectoryItems]

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[getContentStructure]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[getContentStructure]

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spGetAllUsers]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spGetAllUsers]

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spGetUsers]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spGetUsers]

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblCartDiscountGroupRelations]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblCartDiscountGroupRelations]

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblCartItem]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblCartItem]

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblCartShippingRelations]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblCartShippingRelations]

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblActivityLog]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblActivityLog]

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblCartCatProductRelations]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblCartCatProductRelations]

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblCartDiscountRules]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblCartDiscountRules]

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblCartOrder]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblCartOrder]

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblCartShippingMethods]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblCartShippingMethods]

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblContentLocation]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblContentLocation]

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblContentRelation]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblContentRelation]

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblDirectoryPermission]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblDirectoryPermission]

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblDirectoryRelation]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblDirectoryRelation]

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblCartPaymentMethod]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblCartPaymentMethod]

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblCartProductCateries]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblCartProductCateries]

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblCartShippingLocations]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblCartShippingLocations]

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblContent]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblContent]

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblContentStructure]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblContentStructure]

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblDirectory]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblDirectory]

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblAudit]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblAudit]

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblCartContact]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblCartContact]

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblLookup]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblLookup]

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblCartProductCategories]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblCartProductCategories]