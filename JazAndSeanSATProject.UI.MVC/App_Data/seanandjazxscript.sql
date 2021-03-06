/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2016 (13.0.5026)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2017
    Target Database Engine Edition : Microsoft SQL Server Standard Edition
    Target Database Engine Type : Standalone SQL Server
*/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Students]') AND type in (N'U'))
ALTER TABLE [dbo].[Students] DROP CONSTRAINT IF EXISTS [FK_Students_StudentStatuses]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ScheduledClasses]') AND type in (N'U'))
ALTER TABLE [dbo].[ScheduledClasses] DROP CONSTRAINT IF EXISTS [FK_ScheduledClasses_ScheduledClassStatuses]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ScheduledClasses]') AND type in (N'U'))
ALTER TABLE [dbo].[ScheduledClasses] DROP CONSTRAINT IF EXISTS [FK_ScheduledClasses_Courses]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Enrollments]') AND type in (N'U'))
ALTER TABLE [dbo].[Enrollments] DROP CONSTRAINT IF EXISTS [FK_Enrollments_Students]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Enrollments]') AND type in (N'U'))
ALTER TABLE [dbo].[Enrollments] DROP CONSTRAINT IF EXISTS [FK_Enrollments_ScheduledClasses]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT IF EXISTS [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT IF EXISTS [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserLogins] DROP CONSTRAINT IF EXISTS [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserClaims] DROP CONSTRAINT IF EXISTS [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
/****** Object:  Table [dbo].[StudentStatuses]    Script Date: 4/20/2022 9:10:18 AM ******/
DROP TABLE IF EXISTS [dbo].[StudentStatuses]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 4/20/2022 9:10:18 AM ******/
DROP TABLE IF EXISTS [dbo].[Students]
GO
/****** Object:  Table [dbo].[ScheduledClassStatuses]    Script Date: 4/20/2022 9:10:18 AM ******/
DROP TABLE IF EXISTS [dbo].[ScheduledClassStatuses]
GO
/****** Object:  Table [dbo].[ScheduledClasses]    Script Date: 4/20/2022 9:10:18 AM ******/
DROP TABLE IF EXISTS [dbo].[ScheduledClasses]
GO
/****** Object:  Table [dbo].[Enrollments]    Script Date: 4/20/2022 9:10:18 AM ******/
DROP TABLE IF EXISTS [dbo].[Enrollments]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 4/20/2022 9:10:18 AM ******/
DROP TABLE IF EXISTS [dbo].[Courses]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 4/20/2022 9:10:18 AM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUsers]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 4/20/2022 9:10:18 AM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUserRoles]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 4/20/2022 9:10:18 AM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUserLogins]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 4/20/2022 9:10:18 AM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUserClaims]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 4/20/2022 9:10:18 AM ******/
DROP TABLE IF EXISTS [dbo].[AspNetRoles]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 4/20/2022 9:10:18 AM ******/
DROP TABLE IF EXISTS [dbo].[__MigrationHistory]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 4/20/2022 9:10:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[__MigrationHistory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 4/20/2022 9:10:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 4/20/2022 9:10:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 4/20/2022 9:10:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 4/20/2022 9:10:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 4/20/2022 9:10:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUsers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 4/20/2022 9:10:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Courses]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Courses](
	[CourseId] [int] IDENTITY(1,1) NOT NULL,
	[CourseName] [nvarchar](50) NOT NULL,
	[CourseDescription] [nvarchar](max) NOT NULL,
	[CreditHours] [tinyint] NOT NULL,
	[Curriculum] [nvarchar](250) NULL,
	[Notes] [nvarchar](500) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Courses] PRIMARY KEY CLUSTERED 
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Enrollments]    Script Date: 4/20/2022 9:10:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Enrollments]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Enrollments](
	[EnrollmentId] [int] IDENTITY(1,1) NOT NULL,
	[StudentId] [int] NOT NULL,
	[ScheduledClassId] [int] NOT NULL,
	[EnrollmentDate] [date] NOT NULL,
 CONSTRAINT [PK_Enrollments] PRIMARY KEY CLUSTERED 
(
	[EnrollmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ScheduledClasses]    Script Date: 4/20/2022 9:10:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ScheduledClasses]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ScheduledClasses](
	[ScheduledClassId] [int] IDENTITY(1,1) NOT NULL,
	[CourseId] [int] NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NOT NULL,
	[InstructorName] [nvarchar](40) NOT NULL,
	[Location] [nvarchar](20) NOT NULL,
	[SCSID] [int] NOT NULL,
 CONSTRAINT [PK_ScheduledClasses] PRIMARY KEY CLUSTERED 
(
	[ScheduledClassId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ScheduledClassStatuses]    Script Date: 4/20/2022 9:10:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ScheduledClassStatuses]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ScheduledClassStatuses](
	[SCSID] [int] IDENTITY(1,1) NOT NULL,
	[SCSName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ScheduledClassStatuses] PRIMARY KEY CLUSTERED 
(
	[SCSID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Students]    Script Date: 4/20/2022 9:10:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Students]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Students](
	[StudentId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](20) NOT NULL,
	[LastName] [nvarchar](20) NOT NULL,
	[Major] [nvarchar](15) NULL,
	[Address] [nvarchar](50) NULL,
	[City] [nvarchar](25) NULL,
	[State] [char](2) NULL,
	[ZipCode] [nvarchar](10) NULL,
	[Phone] [nvarchar](13) NULL,
	[Email] [nvarchar](60) NOT NULL,
	[PhotoUrl] [nvarchar](100) NULL,
	[SSID] [int] NOT NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[StudentStatuses]    Script Date: 4/20/2022 9:10:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[StudentStatuses]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[StudentStatuses](
	[SSID] [int] IDENTITY(1,1) NOT NULL,
	[SSName] [nvarchar](30) NOT NULL,
	[SSDescription] [nvarchar](250) NULL,
 CONSTRAINT [PK_StudentStatuses] PRIMARY KEY CLUSTERED 
(
	[SSID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202204192047351_InitialCreate', N'JazAndSeanSATProject.UI.MVC.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EE436127D5F60FF41D0D3EEC269F992194C8CEE049DB69D78777CC1B43DC8DB802DB1DBDA912845A21C7B17F9B27DD84FDA5FD8A2EEE245A2BAD517070102B7543C552C1E92C55271FEF79FFF8E7F78F13DE31947B11B908979323A360D4CECC071C96A622674F9CD07F387EFFFFCA7F1A5E3BF189F0BB93326072D493C319F280DCF2D2BB69FB08FE291EFDA5110074B3AB203DF424E609D1E1F7F679D9C5818204CC0328CF1A78450D7C7E90FF8390B888D439A20EF2670B017E7CFE1CD3C45356E918FE310D97862FE1DFD6B4A9C3946643E7DB88F827F629B8E1EAF47379F67A3ACB5694C3D17816573EC2D4D0311125044C1EEF3C718CF691490D53C8407C87B780D31C82D9117E3BC3FE795B86ED78E4F59D7ACAA61016527310DFC9E802767B9AF2CBEF95A1E374B5F82372FC1EBF495F53AF5E8C4BC7670FAE853E081037885E7332F62C213F3A654318DC35B4C4745C35106791501DC6F41F47554473C32B4DB1D95DC3A1D1DB3FF8E8C59E2D124C21382131A21EFC8B84F169E6BFF03BF3E045F31999C9D2C96671FDEBD47CED9FB6FF1D9BB7A4FA1AF20D778008F802D218EC036BC2CFB6F1A56B39DC5372C9BD5DA645E012EC134318D1BF4F21193157D820974FAC134AEDC17EC144F72723D1217661534A251023F6F13CF430B0F97EFAD569DECFF2D5A4FDFBD1F44EB2D7A7657E9D073FA61E24430AF3E612F7D1B3FB96136BD1AE3FD2517BB8A029FFD6EF22B7BFB651E2491CD3A1328451E50B4C2B469DDD8AAC8AB456906353CAD0BD4C3A736B354A4B7549475689D9950A8D8F56C28ECDDAE5E6DC64DC310062FA516F3481BE1BA37AF11877664B4B4A9A875A24B2D025DFE23AF94973E72BD01964A0D2D10B52CDDC8C7652F7F0C809888F4B6F91EC531AC14CECF287E6A311DFE1CC0F439B69308083CA7C80FB7AEEDFE2920F836F1176C5EEC4ED76043F3F05B70856C1A449784B5DA18EF63607F0D127A499C0B44F123B50B40F6F3C1F5F5010631676ADB388EAF80CCD8990510941780D7849E9DF686630BD6BE439599875C5F1EAB704BEB9742B48A57E41242CCA21093C52D6DA67E0C562ED133B510559B9A49749A9A8BF5359581E9599A4BAA0D4D053AEDCCA4068B04D3111A3E144C610F3F16DC6CF356AD053537CE6185C43F61822358C69C7B44298E4835023AEBC63E828574F898D2ADEF4DA9A6CFC84B8656B5D66C481781E167430A7BF8B32135131E3FBB0E8B4A340E488530C06BC9CBCF5EDD738EB36CD7D3A1D1CD5D2BDFCD1AA09A2ED3380E6C379D0592D4589ED868DA0F319CD19DE5C87AC3674AA0634074976D79F004FA66F2A4BA2317D8C3141B533B4B1DCE506C2347742374C8E96158B1A34A0CAB32264DE3FE26E804A6E3883542EC1014C34C750915A7854B6C37445EA797B8969A5B18EB7BA9837F7381434C98C24E4FE8289727489801A51E6E50BA3C34B66A8C6B27A2226A558D7957085B8DBB90B7D809273B6267052FF3F86D2BC46CF7D80EC8D9EE121D0394C9BE7D10343FABE812803FB81C1A41B9139382A07948B51382363DB60782365DF2E6089A1D5175C79F3BAF1E1A3D9B07E5DD6FEBADEEDA03371BFE38306A66B127B4A1D00247223D2F16EC257EA192C319D8999FCFE23CD4E529C2C0E79836533655BC2B8D43AD76109E446D8015D13A40F3CF84029030A17A1857E4F25AADCBA3881EB045DEAD15365FFB39D81A0744ECFAE7D29AA0FAA32A4F4EADD347D9B3920D02C9B50E0B351C0921F8C5ABD9710DA7A8F2B2A2637462E13ED170AD63F960B438A823725538A9E8CCE05E2AA8D9ED255940D62724DBC84B5CF8A4F052D199C1BD9473B4DB4992A0A04758B0918B9A5BF84093ADC87494BB4DF96E6C655555F983B1A528BF1ADFA03074C9AA568E953F31E6592DD6EC9B79FFA2243FC3B0EC58529B545A5B6AA2418456987B0BAAC1D22B378AE905A26881589E67E6F88298746F552CFF85CAFAF6290E62B10F14D2ECEFAC85C6C7FDC6DE2B062739E615F4D867114E9A5697F041DEDC60E572C8439124933F0BBCC427EA804BDD3AFB9E576F9F3D1111C61667BF105009DE13C2DEE650680D943849B63468657CB3FEC0A92154EE2FA2D3FA00A82256354A91C0AAA3A8925A7B1B4855A0B3D1E0F13165FFB1EB44D8CEBCCB0B59EA00F9A39E18B55A0801ACF64E1FB559AE52C76CBED147E46A52EA90DCAB1E56D62B4F1A46D65FAC85A7F0A85C425F83586B524717DFEA234BAA4EEAD092D76B604B6CE6DFE9A34A0A53EAC092D7FAD855950ABFA81EF0CEA63CE90CB6B56587E3CDF63605C67656C861B6C65A0D401DA8F6B82756FE955F00CB9F1F24BB9427C4C1D895E5483663970243BD3235BEA63717A6D612003566E3137963F16F2B1150E3F5E3F05699221C187991527B7970E40E88E3FCB0D67D894738BD6522A651B81136FED798627FC40446F35FBD99E762B6CC17023788B84B1CD3AC2CC43C3D3E39E5EEFD1CCE1D1C2B8E1D4F72D8555DC4698ED90E2ABCC8338AEC271489F5161BDC53A9408554F63571F0CBC4FC77DAEA3CCD8AB0BFD2C747C675FC48DC5F1378F11025D8F85DAC1F1DA66E5FE3A64869E8EF6FE20A86BECBAF7FF992353D32EE22984EE7C631E7E87586BF7931A3973559D30DAC59FBBAC6DB9D6D8DBB0E52546EB6AC7FB561E1D241AE351456FEC5472F7FED6B9AF4EAC2468892EB0943E10DE242D5F58375B094570F1CF849D3AB07FD3A2BBF8AB08E69CA6B082EE90FC65F42D05F868A967BDC872407A85D2C49A99F3B8BB837AAE8DCF7DE24D47A6F34D1C57AEE1E7083D66C6F16A2BCB15AE8C1B64E49A9F360D8FBE4FDD6EB9B0FA5A4B90ADAF75BC9BCCBE2E5960F507FA89AE503A8B293540DEDBF3279D75C5365840FBCBCB35FFDF181912DDFE6F75F65BC6BB2A912C4074EB65EB5C407C6B57DED9F7B669AF616BAF7CA60B1C849F165479645EEAAFCCD52EE70FC5F0440822CA2CC2E6CCA4BCDDACA643B1456226AA5EA1A375EB1307104BD8244BBDA7E7DCD37FCD6CEE632ED6A1595A16DBAF3F5BF55772ED3AE5B516FB98F9A6569C5A3AC8EBC631D6B2BB77A4B35CA8D9E7494C477C5ACAD9FE9DF5249F2204E69CC1EC5D7E5B753813C884B869C3A3D2A8EC50FC5B077D6FE4D48D8BF63775541B07F219260BBB16B9632D76419149B37675121C265686E30450E6CA9D388BA4B645378CD12D0E98DF334A9C73E832CB0734DEE121A2614BA8CFD85D74878B120A04D7F5A56DDB4797C17B25FF1105D00335D96B8BF233F26AEE794765F4972420A08165DE4E95E369694A57D57AF25D26D40348172F79541D103F6430FC0E23B3247CF781DDB807E1FF10AD9AF55065005D23D104DB78F2F5CB48A901FE718557BF8091C76FC97EFFF0F20B4A0ED1A550000, N'6.2.0-61023')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'193e77b2-67a4-4c78-8a63-73293fa69be5', N'Admin')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'c1c1400a-ef65-424f-9195-172ff39914b2', N'Scheduler')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3d42a031-bb61-4d85-8b3c-6484ec9cff69', N'193e77b2-67a4-4c78-8a63-73293fa69be5')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'faa2e929-9748-479c-9805-324d3a9839bf', N'193e77b2-67a4-4c78-8a63-73293fa69be5')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'3d42a031-bb61-4d85-8b3c-6484ec9cff69', N'seanamckinney8@outlook.com', 0, N'AB3nbgJOg1qdMiuiNrwS58kjNxEIS9C8RRfkKxAMaMXn6gEfowBfSvYBu5ncT9P07g==', N'c745560e-a2da-4b09-9662-034166216ac4', NULL, 0, 0, NULL, 1, 0, N'seanamckinney8@outlook.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'faa2e929-9748-479c-9805-324d3a9839bf', N'jaztec.llc@gmail.com', 0, N'APPZlXpg6ZWnYY7DRiWzZgMk4H8kkqfMmdZ2+vy2yLZYcIDUqAHEHE/xwT/YsbcjgA==', N'2f0aa4ea-5b93-4726-aa19-7b45cb32e1fb', NULL, 0, 0, NULL, 1, 0, N'jaztec.llc@gmail.com')
SET IDENTITY_INSERT [dbo].[Courses] ON 

INSERT [dbo].[Courses] ([CourseId], [CourseName], [CourseDescription], [CreditHours], [Curriculum], [Notes], [IsActive]) VALUES (1, N'CatWhispering', N'Learn how to speak with cats.', 3, N'Foreign Language', NULL, 1)
INSERT [dbo].[Courses] ([CourseId], [CourseName], [CourseDescription], [CreditHours], [Curriculum], [Notes], [IsActive]) VALUES (2, N'KittenSpeak', N'Lean how cats speak with eachother', 3, N'Foreign Language', NULL, 1)
INSERT [dbo].[Courses] ([CourseId], [CourseName], [CourseDescription], [CreditHours], [Curriculum], [Notes], [IsActive]) VALUES (3, N'StrayTalk', N'Cat slang', 3, N'Foreign Language', NULL, 1)
INSERT [dbo].[Courses] ([CourseId], [CourseName], [CourseDescription], [CreditHours], [Curriculum], [Notes], [IsActive]) VALUES (4, N'CatHearding', N'How to caral your kitty', 3, N'Physical Education', NULL, 1)
INSERT [dbo].[Courses] ([CourseId], [CourseName], [CourseDescription], [CreditHours], [Curriculum], [Notes], [IsActive]) VALUES (5, N'CatHeardingLab', N'How to coral kitties', 2, N'Physical Education', N'Practical application', 1)
INSERT [dbo].[Courses] ([CourseId], [CourseName], [CourseDescription], [CreditHours], [Curriculum], [Notes], [IsActive]) VALUES (6, N'CatScacrafice1', N'Anctient Egypt', 3, N'History', NULL, 1)
INSERT [dbo].[Courses] ([CourseId], [CourseName], [CourseDescription], [CreditHours], [Curriculum], [Notes], [IsActive]) VALUES (7, N'CatSacrafice2', N'Dark Ages', 3, N'History', NULL, 1)
INSERT [dbo].[Courses] ([CourseId], [CourseName], [CourseDescription], [CreditHours], [Curriculum], [Notes], [IsActive]) VALUES (8, N'DefenderOfTheStores', N'Agrarian', 3, N'History', NULL, 0)
INSERT [dbo].[Courses] ([CourseId], [CourseName], [CourseDescription], [CreditHours], [Curriculum], [Notes], [IsActive]) VALUES (9, N'SleepingWithHumans', N'How to snuggle with your kitty', 3, N'Sleep Studies', NULL, 1)
INSERT [dbo].[Courses] ([CourseId], [CourseName], [CourseDescription], [CreditHours], [Curriculum], [Notes], [IsActive]) VALUES (10, N'SleepingInSunlight', N'How to sleep in comfort', 3, N'Sleep Studies', NULL, 1)
SET IDENTITY_INSERT [dbo].[Courses] OFF
SET IDENTITY_INSERT [dbo].[Enrollments] ON 

INSERT [dbo].[Enrollments] ([EnrollmentId], [StudentId], [ScheduledClassId], [EnrollmentDate]) VALUES (3, 21, 1, CAST(N'2023-01-01' AS Date))
INSERT [dbo].[Enrollments] ([EnrollmentId], [StudentId], [ScheduledClassId], [EnrollmentDate]) VALUES (4, 22, 2, CAST(N'2023-01-01' AS Date))
INSERT [dbo].[Enrollments] ([EnrollmentId], [StudentId], [ScheduledClassId], [EnrollmentDate]) VALUES (6, 24, 3, CAST(N'2023-01-01' AS Date))
INSERT [dbo].[Enrollments] ([EnrollmentId], [StudentId], [ScheduledClassId], [EnrollmentDate]) VALUES (7, 25, 4, CAST(N'2023-01-01' AS Date))
INSERT [dbo].[Enrollments] ([EnrollmentId], [StudentId], [ScheduledClassId], [EnrollmentDate]) VALUES (8, 26, 5, CAST(N'2023-01-01' AS Date))
INSERT [dbo].[Enrollments] ([EnrollmentId], [StudentId], [ScheduledClassId], [EnrollmentDate]) VALUES (9, 27, 6, CAST(N'2023-01-01' AS Date))
INSERT [dbo].[Enrollments] ([EnrollmentId], [StudentId], [ScheduledClassId], [EnrollmentDate]) VALUES (10, 28, 7, CAST(N'2023-01-01' AS Date))
SET IDENTITY_INSERT [dbo].[Enrollments] OFF
SET IDENTITY_INSERT [dbo].[ScheduledClasses] ON 

INSERT [dbo].[ScheduledClasses] ([ScheduledClassId], [CourseId], [StartDate], [EndDate], [InstructorName], [Location], [SCSID]) VALUES (1, 1, CAST(N'2023-01-01' AS Date), CAST(N'2023-04-29' AS Date), N'Jeff', N'Kansas City', 1)
INSERT [dbo].[ScheduledClasses] ([ScheduledClassId], [CourseId], [StartDate], [EndDate], [InstructorName], [Location], [SCSID]) VALUES (2, 2, CAST(N'2023-01-01' AS Date), CAST(N'2023-04-29' AS Date), N'Jeremy', N'Kansas City', 2)
INSERT [dbo].[ScheduledClasses] ([ScheduledClassId], [CourseId], [StartDate], [EndDate], [InstructorName], [Location], [SCSID]) VALUES (3, 3, CAST(N'2023-01-01' AS Date), CAST(N'2023-04-29' AS Date), N'Evan', N'Kansas City', 2)
INSERT [dbo].[ScheduledClasses] ([ScheduledClassId], [CourseId], [StartDate], [EndDate], [InstructorName], [Location], [SCSID]) VALUES (4, 4, CAST(N'2023-01-01' AS Date), CAST(N'2023-04-29' AS Date), N'James', N'Kansas City', 4)
INSERT [dbo].[ScheduledClasses] ([ScheduledClassId], [CourseId], [StartDate], [EndDate], [InstructorName], [Location], [SCSID]) VALUES (5, 5, CAST(N'2023-01-01' AS Date), CAST(N'2023-04-29' AS Date), N'Jeff', N'St. Louis', 1)
INSERT [dbo].[ScheduledClasses] ([ScheduledClassId], [CourseId], [StartDate], [EndDate], [InstructorName], [Location], [SCSID]) VALUES (6, 6, CAST(N'2023-01-01' AS Date), CAST(N'2023-04-29' AS Date), N'Jeremy', N'St. Louis', 2)
INSERT [dbo].[ScheduledClasses] ([ScheduledClassId], [CourseId], [StartDate], [EndDate], [InstructorName], [Location], [SCSID]) VALUES (7, 7, CAST(N'2023-01-01' AS Date), CAST(N'2023-04-29' AS Date), N'Evan', N'St. Louis', 3)
INSERT [dbo].[ScheduledClasses] ([ScheduledClassId], [CourseId], [StartDate], [EndDate], [InstructorName], [Location], [SCSID]) VALUES (8, 8, CAST(N'2023-01-01' AS Date), CAST(N'2023-04-29' AS Date), N'James', N'St. Louis', 4)
INSERT [dbo].[ScheduledClasses] ([ScheduledClassId], [CourseId], [StartDate], [EndDate], [InstructorName], [Location], [SCSID]) VALUES (9, 9, CAST(N'2023-01-01' AS Date), CAST(N'2023-04-29' AS Date), N'Jeff', N'St. Louis', 1)
INSERT [dbo].[ScheduledClasses] ([ScheduledClassId], [CourseId], [StartDate], [EndDate], [InstructorName], [Location], [SCSID]) VALUES (10, 10, CAST(N'2023-01-01' AS Date), CAST(N'2023-04-29' AS Date), N'Jeremy', N'Kansas City ', 2)
SET IDENTITY_INSERT [dbo].[ScheduledClasses] OFF
SET IDENTITY_INSERT [dbo].[ScheduledClassStatuses] ON 

INSERT [dbo].[ScheduledClassStatuses] ([SCSID], [SCSName]) VALUES (1, N'Active')
INSERT [dbo].[ScheduledClassStatuses] ([SCSID], [SCSName]) VALUES (2, N'Pending')
INSERT [dbo].[ScheduledClassStatuses] ([SCSID], [SCSName]) VALUES (3, N'Completed')
INSERT [dbo].[ScheduledClassStatuses] ([SCSID], [SCSName]) VALUES (4, N'Cancelled')
SET IDENTITY_INSERT [dbo].[ScheduledClassStatuses] OFF
SET IDENTITY_INSERT [dbo].[Students] ON 

INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [Major], [Address], [City], [State], [ZipCode], [Phone], [Email], [PhotoUrl], [SSID]) VALUES (21, N'Zak', N'Sisler', N'CatPhilosphy', N'235 nw guy ln', N'Kansas City', N'MO', N'65987', N'816-321-4541', N'zs@gmailcom', NULL, 2)
INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [Major], [Address], [City], [State], [ZipCode], [Phone], [Email], [PhotoUrl], [SSID]) VALUES (22, N'Jaz', N'Rizo', N'CatMath', N'909 sw Clark rd', N'Blue Springs', N'MO', N'64015', N'816-241-5100', N'jr@gmail.com', NULL, 2)
INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [Major], [Address], [City], [State], [ZipCode], [Phone], [Email], [PhotoUrl], [SSID]) VALUES (24, N'Sean', N'McKinney', N'GeneralStudies', N'123 se Cat rd', N'Witchita', N'KS', N'63987', N'913-258-0000', N'sm@gmail.com', NULL, 2)
INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [Major], [Address], [City], [State], [ZipCode], [Phone], [Email], [PhotoUrl], [SSID]) VALUES (25, N'Connor', N'Dunn', N'CatPhilosphy', N'547 ne Guy rd', N'Liberty', N'MO', N'54789', N'816-803-2222', N'cd@gmail.com', NULL, 2)
INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [Major], [Address], [City], [State], [ZipCode], [Phone], [Email], [PhotoUrl], [SSID]) VALUES (26, N'Kayla ', N'N', N'GeneralStudies', N'216 s Girl rd', N'Kansas City', N'MO', N'64258', N'816-236-5555', N'kn@gmail.com', NULL, 2)
INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [Major], [Address], [City], [State], [ZipCode], [Phone], [Email], [PhotoUrl], [SSID]) VALUES (27, N'Michael', N'Redifer', N'HappyCats', N'253 n Kitty ln', N'Witchita', N'KS', N'54125', N'875-658-1212', N'mr@gmail.com', NULL, 2)
INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [Major], [Address], [City], [State], [ZipCode], [Phone], [Email], [PhotoUrl], [SSID]) VALUES (28, N'Ian', N'M', N'HappyCats', N'5454 cool st', N'Kansas City ', N'MO', N'54754', N'546-547-8745', N'im@gmail.com', NULL, 2)
SET IDENTITY_INSERT [dbo].[Students] OFF
SET IDENTITY_INSERT [dbo].[StudentStatuses] ON 

INSERT [dbo].[StudentStatuses] ([SSID], [SSName], [SSDescription]) VALUES (1, N'Prospect', N'A student who has inquired about taking classes at the institution.')
INSERT [dbo].[StudentStatuses] ([SSID], [SSName], [SSDescription]) VALUES (2, N'CurrentStudent', N'A student who is actively participating in classes.')
INSERT [dbo].[StudentStatuses] ([SSID], [SSName], [SSDescription]) VALUES (3, N'FormerStudent-Withdrawn', N'A student who has left the institution on their own accord.')
INSERT [dbo].[StudentStatuses] ([SSID], [SSName], [SSDescription]) VALUES (4, N'FormerStudent-Dismissed', N'A student who has left the institution at our request.')
INSERT [dbo].[StudentStatuses] ([SSID], [SSName], [SSDescription]) VALUES (5, N'Alumni', N'A student who finished their coursework and left the institution. ')
INSERT [dbo].[StudentStatuses] ([SSID], [SSName], [SSDescription]) VALUES (6, N'Booted', N'This is what happens when you don''t go to class.')
SET IDENTITY_INSERT [dbo].[StudentStatuses] OFF
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]'))
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]'))
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]'))
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]'))
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Enrollments_ScheduledClasses]') AND parent_object_id = OBJECT_ID(N'[dbo].[Enrollments]'))
ALTER TABLE [dbo].[Enrollments]  WITH CHECK ADD  CONSTRAINT [FK_Enrollments_ScheduledClasses] FOREIGN KEY([ScheduledClassId])
REFERENCES [dbo].[ScheduledClasses] ([ScheduledClassId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Enrollments_ScheduledClasses]') AND parent_object_id = OBJECT_ID(N'[dbo].[Enrollments]'))
ALTER TABLE [dbo].[Enrollments] CHECK CONSTRAINT [FK_Enrollments_ScheduledClasses]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Enrollments_Students]') AND parent_object_id = OBJECT_ID(N'[dbo].[Enrollments]'))
ALTER TABLE [dbo].[Enrollments]  WITH CHECK ADD  CONSTRAINT [FK_Enrollments_Students] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Students] ([StudentId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Enrollments_Students]') AND parent_object_id = OBJECT_ID(N'[dbo].[Enrollments]'))
ALTER TABLE [dbo].[Enrollments] CHECK CONSTRAINT [FK_Enrollments_Students]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ScheduledClasses_Courses]') AND parent_object_id = OBJECT_ID(N'[dbo].[ScheduledClasses]'))
ALTER TABLE [dbo].[ScheduledClasses]  WITH CHECK ADD  CONSTRAINT [FK_ScheduledClasses_Courses] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Courses] ([CourseId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ScheduledClasses_Courses]') AND parent_object_id = OBJECT_ID(N'[dbo].[ScheduledClasses]'))
ALTER TABLE [dbo].[ScheduledClasses] CHECK CONSTRAINT [FK_ScheduledClasses_Courses]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ScheduledClasses_ScheduledClassStatuses]') AND parent_object_id = OBJECT_ID(N'[dbo].[ScheduledClasses]'))
ALTER TABLE [dbo].[ScheduledClasses]  WITH CHECK ADD  CONSTRAINT [FK_ScheduledClasses_ScheduledClassStatuses] FOREIGN KEY([SCSID])
REFERENCES [dbo].[ScheduledClassStatuses] ([SCSID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ScheduledClasses_ScheduledClassStatuses]') AND parent_object_id = OBJECT_ID(N'[dbo].[ScheduledClasses]'))
ALTER TABLE [dbo].[ScheduledClasses] CHECK CONSTRAINT [FK_ScheduledClasses_ScheduledClassStatuses]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Students_StudentStatuses]') AND parent_object_id = OBJECT_ID(N'[dbo].[Students]'))
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_StudentStatuses] FOREIGN KEY([SSID])
REFERENCES [dbo].[StudentStatuses] ([SSID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Students_StudentStatuses]') AND parent_object_id = OBJECT_ID(N'[dbo].[Students]'))
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_StudentStatuses]
GO
