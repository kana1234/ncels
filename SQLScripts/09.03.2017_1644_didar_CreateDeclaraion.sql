CREATE TABLE [dbo].[EXP_DrugDeclaration](
	[Id] [uniqueidentifier] NOT NULL,
	[TypeId] [int] NOT NULL,
	[Number] [nvarchar](500) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[StatusId] [int] NOT NULL,
	[OwnerId] [uniqueidentifier] NOT NULL,
	[ContractId] [uniqueidentifier] NULL,
	[AccelerationTypeId] [int] NULL,
	[AccelerationNumber] [nvarchar](500) NULL,
	[AccelerationDate] [date] NULL,
	[AccelerationNote] [nvarchar](500) NULL,
	[NameRu] [nvarchar](500) NULL,
	[NameKz] [nvarchar](500) NULL,
	[NameEn] [nvarchar](500) NULL,
	[MnnId] [int] NULL,
	[MnnComment] [nvarchar](500) NULL,
	[DrugFormId] [int] NULL,
	[DrugFormRu] [nvarchar](500) NULL,
	[DrugFormKz] [nvarchar](500) NULL,
	[AtxId] [int] NULL,
	[OriginalName] [nvarchar](500) NULL,
	[SaleTypeId] [int] NULL,
	[Dosage] [decimal](18, 2) NOT NULL,
	[DosageMeasureTypeId] [bigint] NULL,
	[DosageNoteKz] [nvarchar](500) NULL,
	[DosageNoteRu] [nvarchar](500) NULL,
	[ConcentrationRu] [nvarchar](500) NULL,
	[ConcentrationKz] [nvarchar](500) NULL,
	[IsGrls] [bit] NOT NULL,
	[Transportation] [nvarchar](500) NULL,
	[ManufactureTypeId] [int] NULL,
	[IsGmp] [bit] NOT NULL,
	[GmpExpiryDate] [date] NULL,
	[BestBefore] [nvarchar](500) NULL,
	[ProposedShelfLife] [float] NULL,
	[ProposedShelfLifeMeasureId] [int] NULL,
	[BestBeforeMeasureTypeDicId] [bigint] NULL,
	[AppPeriodOpen] [nvarchar](500) NULL,
	[AppPeriodOpenMeasureDicId] [bigint] NULL,
	[AppPeriodMix] [nvarchar](500) NULL,
	[AppPeriodMixMeasureDicId] [bigint] NULL,
	[StorageConditions1] [nvarchar](500) NULL,
	[StorageConditions2] [nvarchar](500) NULL,
 CONSTRAINT [PK_EXP_DrugDeclaration] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EXP_DIC_Type]    Script Date: 09.03.2017 16:35:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EXP_DIC_Type](
	[Id] [int] NOT NULL,
	[Code] [nvarchar](50) NULL,
	[NameRu] [nvarchar](2000) NULL,
	[NameKz] [nvarchar](2000) NULL,
	[DateCreate] [datetime] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[DateEdit] [datetime] NULL,
 CONSTRAINT [PK_EXP_DIC_Type] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EXP_DIC_Status]    Script Date: 09.03.2017 16:35:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EXP_DIC_Status](
	[Id] [int] NOT NULL,
	[Code] [nvarchar](50) NULL,
	[NameRu] [nvarchar](2000) NULL,
	[NameKz] [nvarchar](2000) NULL,
	[DateCreate] [datetime] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[DateEdit] [datetime] NULL,
 CONSTRAINT [PK_EXP_DIC_Status] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[EXP_DrugDeclarationView]    Script Date: 09.03.2017 16:35:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[EXP_DrugDeclarationView]
AS
SELECT        d.Id, d.TypeId as TypeId, t.NameRu AS TypeName, d.Number, d.CreatedDate,d.StatusId as StatusId, s.NameRu AS StausName, t.NameRu, d.OwnerId
FROM            dbo.EXP_DrugDeclaration AS d INNER JOIN
                         dbo.EXP_DIC_Type AS t ON t.Id = d.TypeId INNER JOIN
                         dbo.EXP_DIC_Status AS s ON s.Id = d.StatusId

GO
/****** Object:  Table [dbo].[EXP_DIC_AccelerationType]    Script Date: 09.03.2017 16:35:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EXP_DIC_AccelerationType](
	[Id] [int] NOT NULL,
	[Code] [nvarchar](50) NULL,
	[NameRu] [nvarchar](2000) NULL,
	[NameKz] [nvarchar](2000) NULL,
	[DateCreate] [datetime] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[DateEdit] [datetime] NULL,
 CONSTRAINT [PK_EXP_DIC_AccelerationType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EXP_DIC_DrugType]    Script Date: 09.03.2017 16:35:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EXP_DIC_DrugType](
	[Id] [int] NOT NULL,
	[Code] [nvarchar](50) NULL,
	[NameRu] [nvarchar](2000) NULL,
	[NameKz] [nvarchar](2000) NULL,
	[DateCreate] [datetime] NOT NULL,
	[IsNeedName] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[DateEdit] [datetime] NULL,
 CONSTRAINT [PK_EXP_DIC_DrugType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EXP_DIC_ManufactureType]    Script Date: 09.03.2017 16:35:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EXP_DIC_ManufactureType](
	[Id] [int] NOT NULL,
	[Code] [nvarchar](50) NULL,
	[NameRu] [nvarchar](2000) NULL,
	[NameKz] [nvarchar](2000) NULL,
	[DateCreate] [datetime] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[DateEdit] [datetime] NULL,
 CONSTRAINT [PK_EXP_DIC_ManufactureType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EXP_DIC_Origin]    Script Date: 09.03.2017 16:35:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EXP_DIC_Origin](
	[Id] [int] NOT NULL,
	[Code] [nvarchar](50) NULL,
	[NameRu] [nvarchar](2000) NULL,
	[NameKz] [nvarchar](2000) NULL,
	[DateCreate] [datetime] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[DateEdit] [datetime] NULL,
 CONSTRAINT [PK_EXP_DIC_Origin] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EXP_DIC_PeriodMeasure]    Script Date: 09.03.2017 16:35:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EXP_DIC_PeriodMeasure](
	[Id] [int] NOT NULL,
	[Code] [nvarchar](50) NULL,
	[NameRu] [nvarchar](2000) NULL,
	[NameKz] [nvarchar](2000) NULL,
	[DateCreate] [datetime] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[DateEdit] [datetime] NULL,
 CONSTRAINT [PK_EXP_DIC_PeriodMeasure] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EXP_DIC_PlantKind]    Script Date: 09.03.2017 16:35:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EXP_DIC_PlantKind](
	[Id] [int] NOT NULL,
	[Code] [nvarchar](50) NULL,
	[NameRu] [nvarchar](2000) NULL,
	[NameKz] [nvarchar](2000) NULL,
	[DateCreate] [datetime] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[DateEdit] [datetime] NULL,
 CONSTRAINT [PK_EXP_DIC_PlantKind] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EXP_DIC_SaleType]    Script Date: 09.03.2017 16:35:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EXP_DIC_SaleType](
	[Id] [int] NOT NULL,
	[Code] [nvarchar](50) NULL,
	[NameRu] [nvarchar](2000) NULL,
	[NameKz] [nvarchar](2000) NULL,
	[DateCreate] [datetime] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[DateEdit] [datetime] NULL,
 CONSTRAINT [PK_EXP_DIC_SaleType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EXP_DIC_WrappingType]    Script Date: 09.03.2017 16:35:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EXP_DIC_WrappingType](
	[Id] [int] NOT NULL,
	[Code] [nvarchar](50) NULL,
	[NameRu] [nvarchar](2000) NULL,
	[NameKz] [nvarchar](2000) NULL,
	[DateCreate] [datetime] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[DateEdit] [datetime] NULL,
 CONSTRAINT [PK_EXP_DIC_WrappingType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EXP_DrugDeclarationCom]    Script Date: 09.03.2017 16:35:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EXP_DrugDeclarationCom](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[DrugDeclarationId] [uniqueidentifier] NOT NULL,
	[IsError] [bit] NOT NULL,
	[DateCreate] [datetime] NOT NULL,
	[IsDelete] [bit] NOT NULL,
	[ControlId] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_EXP_DrugDeclarationCom] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EXP_DrugDeclarationComRecord]    Script Date: 09.03.2017 16:35:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EXP_DrugDeclarationComRecord](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CommentId] [bigint] NOT NULL,
	[UserId] [uniqueidentifier] NULL,
	[CreateDate] [datetime] NOT NULL,
	[ValueField] [nvarchar](500) NULL,
	[Note] [nvarchar](2000) NULL,
	[DisplayField] [nvarchar](500) NULL,
 CONSTRAINT [PK_EXP_DrugDeclaraionComRecord] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EXP_DrugDeclarationFieldHistory]    Script Date: 09.03.2017 16:35:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EXP_DrugDeclarationFieldHistory](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[DrugDeclarationId] [uniqueidentifier] NOT NULL,
	[ControlId] [nvarchar](500) NOT NULL,
	[UserId] [uniqueidentifier] NULL,
	[CreateDate] [datetime] NOT NULL,
	[ValueField] [nvarchar](500) NULL,
	[DisplayField] [nvarchar](500) NULL,
 CONSTRAINT [PK_EXP_DrugDeclarationFieldHistory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EXP_DrugDeclarationHistory]    Script Date: 09.03.2017 16:35:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EXP_DrugDeclarationHistory](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [uniqueidentifier] NULL,
	[DateCreate] [datetime] NOT NULL,
	[IsDelete] [bit] NOT NULL,
	[StatusId] [int] NOT NULL,
	[Note] [nvarchar](2000) NULL,
	[DrugDeclarationId] [uniqueidentifier] NOT NULL,
	[XmlSign] [nvarchar](max) NULL,
 CONSTRAINT [PK_EXP_DrugDeclarationHistory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EXP_DrugExportTrade]    Script Date: 09.03.2017 16:35:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EXP_DrugExportTrade](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[DrugDeclarationId] [uniqueidentifier] NOT NULL,
	[NameRu] [nvarchar](500) NULL,
	[NameKz] [nvarchar](500) NULL,
	[NameEn] [nvarchar](500) NULL,
	[CountryId] [bigint] NULL,
 CONSTRAINT [PK_EXP_DrugExportTrade] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EXP_DrugPatent]    Script Date: 09.03.2017 16:35:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EXP_DrugPatent](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[DrugDeclarationId] [uniqueidentifier] NOT NULL,
	[PatentNumber] [nvarchar](500) NULL,
	[PatentDate] [datetime] NULL,
	[PatentExpiryDate] [datetime] NULL,
 CONSTRAINT [PK_EXP_DrugPatent] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EXP_DrugSubstance]    Script Date: 09.03.2017 16:35:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EXP_DrugSubstance](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SubstanceTypeId] [int] NULL,
	[SubstanceId] [int] NULL,
	[DrugDeclarationId] [uniqueidentifier] NOT NULL,
	[SubstanceName] [nvarchar](500) NULL,
	[SubstanceCount] [nvarchar](500) NULL,
	[MeasureId] [bigint] NULL,
	[ProducerName] [nvarchar](500) NULL,
	[ProducerAddress] [nvarchar](500) NULL,
	[CountryId] [bigint] NULL,
	[NormativeDocument] [nvarchar](500) NULL,
	[IsControl] [bit] NOT NULL,
	[IsPoison] [bit] NOT NULL,
	[PlantKindId] [int] NULL,
	[Locus] [nvarchar](500) NULL,
	[OriginId] [int] NULL,
 CONSTRAINT [PK_EXP_DrugSubstance] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EXP_DrugType]    Script Date: 09.03.2017 16:35:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EXP_DrugType](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[DrugDeclarationId] [uniqueidentifier] NOT NULL,
	[DrugTypeId] [int] NULL,
	[DrugName] [nvarchar](500) NULL,
 CONSTRAINT [PK_EXP_DrugType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EXP_DrugUseMethod]    Script Date: 09.03.2017 16:35:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EXP_DrugUseMethod](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[DrugDeclarationId] [uniqueidentifier] NOT NULL,
	[UseMethodsId] [int] NOT NULL,
 CONSTRAINT [PK_EXP_DrugUseMethod] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EXP_DrugWrapping]    Script Date: 09.03.2017 16:35:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EXP_DrugWrapping](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[WrappingTypeId] [int] NULL,
	[WrappingKindId] [int] NULL,
	[WrappingSize] [float] NULL,
	[SizeMeasureId] [bigint] NULL,
	[WrappingVolume] [float] NULL,
	[VolumeMeasureId] [bigint] NULL,
	[CountUnit] [int] NULL,
	[Note] [nvarchar](500) NULL,
	[DrugDeclarationId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_EXP_DrugWrapping] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[EXP_DIC_AccelerationType] ([Id], [Code], [NameRu], [NameKz], [DateCreate], [IsDeleted], [DateEdit]) VALUES (1, N'1', N'Ускоренная', N'Ускоренная', CAST(N'2017-01-01T00:00:00.000' AS DateTime), 0, NULL)
INSERT [dbo].[EXP_DIC_AccelerationType] ([Id], [Code], [NameRu], [NameKz], [DateCreate], [IsDeleted], [DateEdit]) VALUES (2, N'2', N'Обычная', N'Обычная', CAST(N'2017-01-01T00:00:00.000' AS DateTime), 0, NULL)
INSERT [dbo].[EXP_DIC_DrugType] ([Id], [Code], [NameRu], [NameKz], [DateCreate], [IsNeedName], [IsDeleted], [DateEdit]) VALUES (1, N'1', N'Лекарственный препарат', N'Лекарственный препарат', CAST(N'2016-01-01T00:00:00.000' AS DateTime), 0, 0, NULL)
INSERT [dbo].[EXP_DIC_DrugType] ([Id], [Code], [NameRu], [NameKz], [DateCreate], [IsNeedName], [IsDeleted], [DateEdit]) VALUES (2, N'2', N'Иммунобиологический препарат', N'Иммунобиологический препарат', CAST(N'2016-01-01T00:00:00.000' AS DateTime), 0, 0, NULL)
INSERT [dbo].[EXP_DIC_DrugType] ([Id], [Code], [NameRu], [NameKz], [DateCreate], [IsNeedName], [IsDeleted], [DateEdit]) VALUES (3, N'3', N'Лекарственный растительный препарат (в т.ч сборы)', N'Лекарственный растительный препарат (в т.ч сборы)', CAST(N'2016-01-01T00:00:00.000' AS DateTime), 0, 0, NULL)
INSERT [dbo].[EXP_DIC_DrugType] ([Id], [Code], [NameRu], [NameKz], [DateCreate], [IsNeedName], [IsDeleted], [DateEdit]) VALUES (4, N'4', N'Гомеопатический препарат', N'Гомеопатический препарат', CAST(N'2016-01-01T00:00:00.000' AS DateTime), 0, 0, NULL)
INSERT [dbo].[EXP_DIC_DrugType] ([Id], [Code], [NameRu], [NameKz], [DateCreate], [IsNeedName], [IsDeleted], [DateEdit]) VALUES (5, N'5', N'Лекарственная субстанция', N'Лекарственная субстанция', CAST(N'2016-01-01T00:00:00.000' AS DateTime), 0, 0, NULL)
INSERT [dbo].[EXP_DIC_DrugType] ([Id], [Code], [NameRu], [NameKz], [DateCreate], [IsNeedName], [IsDeleted], [DateEdit]) VALUES (6, N'6', N'Лекарственный балк-продукт', N'Лекарственный балк-продукт', CAST(N'2016-01-01T00:00:00.000' AS DateTime), 0, 0, NULL)
INSERT [dbo].[EXP_DIC_DrugType] ([Id], [Code], [NameRu], [NameKz], [DateCreate], [IsNeedName], [IsDeleted], [DateEdit]) VALUES (7, N'7', N'Иммунобиологический балк-продукт', N'Иммунобиологический балк-продукт', CAST(N'2016-01-01T00:00:00.000' AS DateTime), 0, 0, NULL)
INSERT [dbo].[EXP_DIC_DrugType] ([Id], [Code], [NameRu], [NameKz], [DateCreate], [IsNeedName], [IsDeleted], [DateEdit]) VALUES (8, N'8', N'Радиофармацевтический препарат', N'Радиофармацевтический препарат', CAST(N'2016-01-01T00:00:00.000' AS DateTime), 0, 0, NULL)
INSERT [dbo].[EXP_DIC_DrugType] ([Id], [Code], [NameRu], [NameKz], [DateCreate], [IsNeedName], [IsDeleted], [DateEdit]) VALUES (9, N'9', N'Лекарственное природное сырье (не фармакопейное)', N'Лекарственное природное сырье (не фармакопейное)', CAST(N'2016-01-01T00:00:00.000' AS DateTime), 0, 0, NULL)
INSERT [dbo].[EXP_DIC_DrugType] ([Id], [Code], [NameRu], [NameKz], [DateCreate], [IsNeedName], [IsDeleted], [DateEdit]) VALUES (10, N'10', N'Лекарственный препарат биологического происхождения', N'Лекарственный препарат биологического происхождения', CAST(N'2016-01-01T00:00:00.000' AS DateTime), 0, 0, NULL)
INSERT [dbo].[EXP_DIC_DrugType] ([Id], [Code], [NameRu], [NameKz], [DateCreate], [IsNeedName], [IsDeleted], [DateEdit]) VALUES (11, N'11', N'Оригинальный', N'Оригинальный', CAST(N'2016-01-01T00:00:00.000' AS DateTime), 1, 0, NULL)
INSERT [dbo].[EXP_DIC_DrugType] ([Id], [Code], [NameRu], [NameKz], [DateCreate], [IsNeedName], [IsDeleted], [DateEdit]) VALUES (12, N'12', N'Генерик', N'Генерик', CAST(N'2016-01-01T00:00:00.000' AS DateTime), 1, 0, NULL)
INSERT [dbo].[EXP_DIC_DrugType] ([Id], [Code], [NameRu], [NameKz], [DateCreate], [IsNeedName], [IsDeleted], [DateEdit]) VALUES (13, N'13', N'Биосимиляр', N'Биосимиляр', CAST(N'2016-01-01T00:00:00.000' AS DateTime), 1, 0, NULL)
INSERT [dbo].[EXP_DIC_DrugType] ([Id], [Code], [NameRu], [NameKz], [DateCreate], [IsNeedName], [IsDeleted], [DateEdit]) VALUES (14, N'14', N'Автогенерик', N'Автогенерик', CAST(N'2016-01-01T00:00:00.000' AS DateTime), 1, 0, NULL)
INSERT [dbo].[EXP_DIC_DrugType] ([Id], [Code], [NameRu], [NameKz], [DateCreate], [IsNeedName], [IsDeleted], [DateEdit]) VALUES (15, N'15', N'Исследования водных растворов генерических препаратов ин-витро', N'Исследования водных растворов генерических препаратов ин-витро', CAST(N'2016-01-01T00:00:00.000' AS DateTime), 0, 0, NULL)
INSERT [dbo].[EXP_DIC_DrugType] ([Id], [Code], [NameRu], [NameKz], [DateCreate], [IsNeedName], [IsDeleted], [DateEdit]) VALUES (16, N'16', N'Внедрение трансфера производственных и технологических процессов', N'Внедрение трансфера производственных и технологических процессов', CAST(N'2016-01-01T00:00:00.000' AS DateTime), 0, 0, NULL)
INSERT [dbo].[EXP_DIC_Origin] ([Id], [Code], [NameRu], [NameKz], [DateCreate], [IsDeleted], [DateEdit]) VALUES (1, N'1', N'Животного', N'Животного', CAST(N'2017-01-01T00:00:00.000' AS DateTime), 0, NULL)
INSERT [dbo].[EXP_DIC_Origin] ([Id], [Code], [NameRu], [NameKz], [DateCreate], [IsDeleted], [DateEdit]) VALUES (2, N'2', N'Человеческого', N'Человеческого', CAST(N'2017-01-01T00:00:00.000' AS DateTime), 0, NULL)
INSERT [dbo].[EXP_DIC_PlantKind] ([Id], [Code], [NameRu], [NameKz], [DateCreate], [IsDeleted], [DateEdit]) VALUES (1, N'1', N'Дикорастущее', N'Дикорастущее', CAST(N'2017-01-01T00:00:00.000' AS DateTime), 0, NULL)
INSERT [dbo].[EXP_DIC_PlantKind] ([Id], [Code], [NameRu], [NameKz], [DateCreate], [IsDeleted], [DateEdit]) VALUES (2, N'2', N'Культивируемое', N'Культивируемое', CAST(N'2017-01-01T00:00:00.000' AS DateTime), 0, NULL)
INSERT [dbo].[EXP_DIC_SaleType] ([Id], [Code], [NameRu], [NameKz], [DateCreate], [IsDeleted], [DateEdit]) VALUES (1, N'1', N'По рецепту врача', N'По рецепту врача', CAST(N'2016-01-01T00:00:00.000' AS DateTime), 0, NULL)
INSERT [dbo].[EXP_DIC_SaleType] ([Id], [Code], [NameRu], [NameKz], [DateCreate], [IsDeleted], [DateEdit]) VALUES (2, N'2', N'Без рецепта врача', N'Без рецепта врача', CAST(N'2016-01-01T00:00:00.000' AS DateTime), 0, NULL)
INSERT [dbo].[EXP_DIC_Status] ([Id], [Code], [NameRu], [NameKz], [DateCreate], [IsDeleted], [DateEdit]) VALUES (0, N'0', N'Черновик', N'Черновик', CAST(N'2017-01-01T00:00:00.000' AS DateTime), 0, NULL)
INSERT [dbo].[EXP_DIC_Type] ([Id], [Code], [NameRu], [NameKz], [DateCreate], [IsDeleted], [DateEdit]) VALUES (1, N'1', N'Регистрация', N'Регистрация', CAST(N'2016-01-01T00:00:00.000' AS DateTime), 0, NULL)
INSERT [dbo].[EXP_DIC_Type] ([Id], [Code], [NameRu], [NameKz], [DateCreate], [IsDeleted], [DateEdit]) VALUES (2, N'2', N'Перерегистрация', N'Перерегистрация', CAST(N'2016-01-01T00:00:00.000' AS DateTime), 0, NULL)
INSERT [dbo].[EXP_DIC_Type] ([Id], [Code], [NameRu], [NameKz], [DateCreate], [IsDeleted], [DateEdit]) VALUES (3, N'3', N'Внесение изменений', N'Внесение изменений', CAST(N'2016-01-01T00:00:00.000' AS DateTime), 0, NULL)
INSERT [dbo].[EXP_DIC_Type] ([Id], [Code], [NameRu], [NameKz], [DateCreate], [IsDeleted], [DateEdit]) VALUES (4, N'4', N'Отказ', N'Отказ', CAST(N'2016-01-01T00:00:00.000' AS DateTime), 0, NULL)
INSERT [dbo].[EXP_DIC_WrappingType] ([Id], [Code], [NameRu], [NameKz], [DateCreate], [IsDeleted], [DateEdit]) VALUES (1, N'1', N'Первичная', N'Первичная', CAST(N'2017-01-01T00:00:00.000' AS DateTime), 0, NULL)
INSERT [dbo].[EXP_DIC_WrappingType] ([Id], [Code], [NameRu], [NameKz], [DateCreate], [IsDeleted], [DateEdit]) VALUES (2, N'2', N'Вторичная', N'Вторичная', CAST(N'2017-01-01T00:00:00.000' AS DateTime), 0, NULL)
INSERT [dbo].[EXP_DIC_WrappingType] ([Id], [Code], [NameRu], [NameKz], [DateCreate], [IsDeleted], [DateEdit]) VALUES (3, N'3', N'Промежуточная', N'Промежуточная', CAST(N'2017-01-01T00:00:00.000' AS DateTime), 0, NULL)

ALTER TABLE [dbo].[EXP_DrugDeclaration] ADD  CONSTRAINT [DF_Table2_Type]  DEFAULT ((1)) FOR [TypeId]
GO
ALTER TABLE [dbo].[EXP_DrugDeclaration] ADD  CONSTRAINT [DF_Table2_Status]  DEFAULT ((1)) FOR [StatusId]
GO
ALTER TABLE [dbo].[EXP_DrugDeclaration] ADD  CONSTRAINT [DF_EXP_DrugDeclaration_Dosage]  DEFAULT ((0)) FOR [Dosage]
GO
ALTER TABLE [dbo].[EXP_DrugDeclaration] ADD  CONSTRAINT [DF_EXP_DrugDeclaration_IsGrls]  DEFAULT ((0)) FOR [IsGrls]
GO
ALTER TABLE [dbo].[EXP_DrugDeclaration] ADD  CONSTRAINT [DF_EXP_DrugDeclaration_IsGmp]  DEFAULT ((0)) FOR [IsGmp]
GO
ALTER TABLE [dbo].[EXP_DrugSubstance] ADD  CONSTRAINT [DF_EXP_DrugSubstance_IsControl]  DEFAULT ((0)) FOR [IsControl]
GO
ALTER TABLE [dbo].[EXP_DrugSubstance] ADD  CONSTRAINT [DF_EXP_DrugSubstance_IsPoison]  DEFAULT ((0)) FOR [IsPoison]
GO
ALTER TABLE [dbo].[EXP_DrugWrapping] ADD  CONSTRAINT [DF_Table2_Size]  DEFAULT ((0)) FOR [WrappingSize]
GO
ALTER TABLE [dbo].[EXP_DrugWrapping] ADD  CONSTRAINT [DF_Table2_Volume]  DEFAULT ((0)) FOR [WrappingVolume]
GO
ALTER TABLE [dbo].[EXP_DrugWrapping] ADD  CONSTRAINT [DF_Table2_Count]  DEFAULT ((0)) FOR [CountUnit]
GO
ALTER TABLE [dbo].[EXP_DrugDeclaration]  WITH CHECK ADD  CONSTRAINT [FK_EXP_DrugDeclaration_EXP_DIC_ManufactureType] FOREIGN KEY([ManufactureTypeId])
REFERENCES [dbo].[EXP_DIC_ManufactureType] ([Id])
GO
ALTER TABLE [dbo].[EXP_DrugDeclaration] CHECK CONSTRAINT [FK_EXP_DrugDeclaration_EXP_DIC_ManufactureType]
GO
ALTER TABLE [dbo].[EXP_DrugDeclaration]  WITH CHECK ADD  CONSTRAINT [FK_EXP_DrugDeclaration_EXP_DIC_PeriodMeasure] FOREIGN KEY([ProposedShelfLifeMeasureId])
REFERENCES [dbo].[EXP_DIC_PeriodMeasure] ([Id])
GO
ALTER TABLE [dbo].[EXP_DrugDeclaration] CHECK CONSTRAINT [FK_EXP_DrugDeclaration_EXP_DIC_PeriodMeasure]
GO
ALTER TABLE [dbo].[EXP_DrugDeclaration]  WITH CHECK ADD  CONSTRAINT [FK_EXP_DrugDeclaration_EXP_DIC_Status] FOREIGN KEY([StatusId])
REFERENCES [dbo].[EXP_DIC_Status] ([Id])
GO
ALTER TABLE [dbo].[EXP_DrugDeclaration] CHECK CONSTRAINT [FK_EXP_DrugDeclaration_EXP_DIC_Status]
GO
ALTER TABLE [dbo].[EXP_DrugDeclaration]  WITH CHECK ADD  CONSTRAINT [FK_EXP_DrugDeclaration_EXP_DIC_Type] FOREIGN KEY([TypeId])
REFERENCES [dbo].[EXP_DIC_Type] ([Id])
GO
ALTER TABLE [dbo].[EXP_DrugDeclaration] CHECK CONSTRAINT [FK_EXP_DrugDeclaration_EXP_DIC_Type]
GO
ALTER TABLE [dbo].[EXP_DrugDeclaration]  WITH CHECK ADD  CONSTRAINT [FK_EXP_DrugDeclaration_EXP_DrugDeclaration] FOREIGN KEY([AccelerationTypeId])
REFERENCES [dbo].[EXP_DIC_AccelerationType] ([Id])
GO
ALTER TABLE [dbo].[EXP_DrugDeclaration] CHECK CONSTRAINT [FK_EXP_DrugDeclaration_EXP_DrugDeclaration]
GO
ALTER TABLE [dbo].[EXP_DrugDeclaration]  WITH CHECK ADD  CONSTRAINT [FK_EXP_DrugDeclaration_EXP_DrugDeclaration1] FOREIGN KEY([SaleTypeId])
REFERENCES [dbo].[EXP_DIC_SaleType] ([Id])
GO
ALTER TABLE [dbo].[EXP_DrugDeclaration] CHECK CONSTRAINT [FK_EXP_DrugDeclaration_EXP_DrugDeclaration1]
GO
ALTER TABLE [dbo].[EXP_DrugDeclaration]  WITH CHECK ADD  CONSTRAINT [FK_EXP_DrugDeclaration_EXP_DrugDeclaration2] FOREIGN KEY([DosageMeasureTypeId])
REFERENCES [dbo].[sr_measures] ([id])
GO
ALTER TABLE [dbo].[EXP_DrugDeclaration] CHECK CONSTRAINT [FK_EXP_DrugDeclaration_EXP_DrugDeclaration2]
GO
ALTER TABLE [dbo].[EXP_DrugDeclaration]  WITH CHECK ADD  CONSTRAINT [FK_EXP_DrugDeclaration_EXP_DrugDeclaration3] FOREIGN KEY([BestBeforeMeasureTypeDicId])
REFERENCES [dbo].[sr_measures] ([id])
GO
ALTER TABLE [dbo].[EXP_DrugDeclaration] CHECK CONSTRAINT [FK_EXP_DrugDeclaration_EXP_DrugDeclaration3]
GO
ALTER TABLE [dbo].[EXP_DrugDeclaration]  WITH CHECK ADD  CONSTRAINT [FK_EXP_DrugDeclaration_sr_atc_codes] FOREIGN KEY([AtxId])
REFERENCES [dbo].[sr_atc_codes] ([id])
GO
ALTER TABLE [dbo].[EXP_DrugDeclaration] CHECK CONSTRAINT [FK_EXP_DrugDeclaration_sr_atc_codes]
GO
ALTER TABLE [dbo].[EXP_DrugDeclaration]  WITH CHECK ADD  CONSTRAINT [FK_EXP_DrugDeclaration_sr_drug_forms] FOREIGN KEY([DrugFormId])
REFERENCES [dbo].[sr_drug_forms] ([id])
GO
ALTER TABLE [dbo].[EXP_DrugDeclaration] CHECK CONSTRAINT [FK_EXP_DrugDeclaration_sr_drug_forms]
GO
ALTER TABLE [dbo].[EXP_DrugDeclaration]  WITH CHECK ADD  CONSTRAINT [FK_EXP_DrugDeclaration_sr_international_names] FOREIGN KEY([MnnId])
REFERENCES [dbo].[sr_international_names] ([id])
GO
ALTER TABLE [dbo].[EXP_DrugDeclaration] CHECK CONSTRAINT [FK_EXP_DrugDeclaration_sr_international_names]
GO
ALTER TABLE [dbo].[EXP_DrugDeclaration]  WITH CHECK ADD  CONSTRAINT [FK_EXP_DrugDeclaration_sr_measures] FOREIGN KEY([AppPeriodMixMeasureDicId])
REFERENCES [dbo].[sr_measures] ([id])
GO
ALTER TABLE [dbo].[EXP_DrugDeclaration] CHECK CONSTRAINT [FK_EXP_DrugDeclaration_sr_measures]
GO
ALTER TABLE [dbo].[EXP_DrugDeclaration]  WITH CHECK ADD  CONSTRAINT [FK_EXP_DrugDeclaration_sr_measures1] FOREIGN KEY([AppPeriodOpenMeasureDicId])
REFERENCES [dbo].[sr_measures] ([id])
GO
ALTER TABLE [dbo].[EXP_DrugDeclaration] CHECK CONSTRAINT [FK_EXP_DrugDeclaration_sr_measures1]
GO
ALTER TABLE [dbo].[EXP_DrugDeclarationCom]  WITH CHECK ADD  CONSTRAINT [FK_EXP_DrugDeclarationCom_EXP_DrugDeclaration] FOREIGN KEY([DrugDeclarationId])
REFERENCES [dbo].[EXP_DrugDeclaration] ([Id])
GO
ALTER TABLE [dbo].[EXP_DrugDeclarationCom] CHECK CONSTRAINT [FK_EXP_DrugDeclarationCom_EXP_DrugDeclaration]
GO
ALTER TABLE [dbo].[EXP_DrugDeclarationComRecord]  WITH CHECK ADD  CONSTRAINT [FK_EXP_DrugDeclarationComRecord_Employees] FOREIGN KEY([UserId])
REFERENCES [dbo].[Employees] ([Id])
GO
ALTER TABLE [dbo].[EXP_DrugDeclarationComRecord] CHECK CONSTRAINT [FK_EXP_DrugDeclarationComRecord_Employees]
GO
ALTER TABLE [dbo].[EXP_DrugDeclarationComRecord]  WITH CHECK ADD  CONSTRAINT [FK_EXP_DrugDeclarationComRecord_EXP_DrugDeclarationCom] FOREIGN KEY([CommentId])
REFERENCES [dbo].[EXP_DrugDeclarationCom] ([Id])
GO
ALTER TABLE [dbo].[EXP_DrugDeclarationComRecord] CHECK CONSTRAINT [FK_EXP_DrugDeclarationComRecord_EXP_DrugDeclarationCom]
GO
ALTER TABLE [dbo].[EXP_DrugDeclarationFieldHistory]  WITH CHECK ADD  CONSTRAINT [FK_EXP_DrugDeclarationFieldHistory_Employees] FOREIGN KEY([UserId])
REFERENCES [dbo].[Employees] ([Id])
GO
ALTER TABLE [dbo].[EXP_DrugDeclarationFieldHistory] CHECK CONSTRAINT [FK_EXP_DrugDeclarationFieldHistory_Employees]
GO
ALTER TABLE [dbo].[EXP_DrugDeclarationFieldHistory]  WITH CHECK ADD  CONSTRAINT [FK_EXP_DrugDeclarationFieldHistory_EXP_DrugDeclaration] FOREIGN KEY([DrugDeclarationId])
REFERENCES [dbo].[EXP_DrugDeclaration] ([Id])
GO
ALTER TABLE [dbo].[EXP_DrugDeclarationFieldHistory] CHECK CONSTRAINT [FK_EXP_DrugDeclarationFieldHistory_EXP_DrugDeclaration]
GO
ALTER TABLE [dbo].[EXP_DrugDeclarationHistory]  WITH CHECK ADD  CONSTRAINT [FK_EXP_DrugDeclarationHistory_Employees] FOREIGN KEY([UserId])
REFERENCES [dbo].[Employees] ([Id])
GO
ALTER TABLE [dbo].[EXP_DrugDeclarationHistory] CHECK CONSTRAINT [FK_EXP_DrugDeclarationHistory_Employees]
GO
ALTER TABLE [dbo].[EXP_DrugDeclarationHistory]  WITH CHECK ADD  CONSTRAINT [FK_EXP_DrugDeclarationHistory_EXP_DrugDeclaration] FOREIGN KEY([DrugDeclarationId])
REFERENCES [dbo].[EXP_DrugDeclaration] ([Id])
GO
ALTER TABLE [dbo].[EXP_DrugDeclarationHistory] CHECK CONSTRAINT [FK_EXP_DrugDeclarationHistory_EXP_DrugDeclaration]
GO
ALTER TABLE [dbo].[EXP_DrugDeclarationHistory]  WITH CHECK ADD  CONSTRAINT [FK_EXP_DrugDeclarationHistory_Status] FOREIGN KEY([StatusId])
REFERENCES [dbo].[EXP_DIC_Status] ([Id])
GO
ALTER TABLE [dbo].[EXP_DrugDeclarationHistory] CHECK CONSTRAINT [FK_EXP_DrugDeclarationHistory_Status]
GO
ALTER TABLE [dbo].[EXP_DrugExportTrade]  WITH CHECK ADD  CONSTRAINT [FK_EXP_DrugExportTrade_EXP_DrugDeclaration] FOREIGN KEY([DrugDeclarationId])
REFERENCES [dbo].[EXP_DrugDeclaration] ([Id])
GO
ALTER TABLE [dbo].[EXP_DrugExportTrade] CHECK CONSTRAINT [FK_EXP_DrugExportTrade_EXP_DrugDeclaration]
GO
ALTER TABLE [dbo].[EXP_DrugExportTrade]  WITH CHECK ADD  CONSTRAINT [FK_EXP_DrugExportTrade_sr_countries] FOREIGN KEY([CountryId])
REFERENCES [dbo].[sr_countries] ([id])
GO
ALTER TABLE [dbo].[EXP_DrugExportTrade] CHECK CONSTRAINT [FK_EXP_DrugExportTrade_sr_countries]
GO
ALTER TABLE [dbo].[EXP_DrugPatent]  WITH CHECK ADD  CONSTRAINT [FK_EXP_DrugPatent_EXP_DrugDeclaration] FOREIGN KEY([DrugDeclarationId])
REFERENCES [dbo].[EXP_DrugDeclaration] ([Id])
GO
ALTER TABLE [dbo].[EXP_DrugPatent] CHECK CONSTRAINT [FK_EXP_DrugPatent_EXP_DrugDeclaration]
GO
ALTER TABLE [dbo].[EXP_DrugSubstance]  WITH CHECK ADD  CONSTRAINT [FK_EXP_DrugSubstance_EXP_DIC_Origin] FOREIGN KEY([OriginId])
REFERENCES [dbo].[EXP_DIC_Origin] ([Id])
GO
ALTER TABLE [dbo].[EXP_DrugSubstance] CHECK CONSTRAINT [FK_EXP_DrugSubstance_EXP_DIC_Origin]
GO
ALTER TABLE [dbo].[EXP_DrugSubstance]  WITH CHECK ADD  CONSTRAINT [FK_EXP_DrugSubstance_EXP_DIC_PlantKind] FOREIGN KEY([PlantKindId])
REFERENCES [dbo].[EXP_DIC_PlantKind] ([Id])
GO
ALTER TABLE [dbo].[EXP_DrugSubstance] CHECK CONSTRAINT [FK_EXP_DrugSubstance_EXP_DIC_PlantKind]
GO
ALTER TABLE [dbo].[EXP_DrugSubstance]  WITH CHECK ADD  CONSTRAINT [FK_EXP_DrugSubstance_EXP_DrugDeclaration] FOREIGN KEY([DrugDeclarationId])
REFERENCES [dbo].[EXP_DrugDeclaration] ([Id])
GO
ALTER TABLE [dbo].[EXP_DrugSubstance] CHECK CONSTRAINT [FK_EXP_DrugSubstance_EXP_DrugDeclaration]
GO
ALTER TABLE [dbo].[EXP_DrugSubstance]  WITH CHECK ADD  CONSTRAINT [FK_EXP_DrugSubstance_sr_countries] FOREIGN KEY([CountryId])
REFERENCES [dbo].[sr_countries] ([id])
GO
ALTER TABLE [dbo].[EXP_DrugSubstance] CHECK CONSTRAINT [FK_EXP_DrugSubstance_sr_countries]
GO
ALTER TABLE [dbo].[EXP_DrugSubstance]  WITH CHECK ADD  CONSTRAINT [FK_EXP_DrugSubstance_sr_measures] FOREIGN KEY([MeasureId])
REFERENCES [dbo].[sr_measures] ([id])
GO
ALTER TABLE [dbo].[EXP_DrugSubstance] CHECK CONSTRAINT [FK_EXP_DrugSubstance_sr_measures]
GO
ALTER TABLE [dbo].[EXP_DrugSubstance]  WITH CHECK ADD  CONSTRAINT [FK_EXP_DrugSubstance_sr_substance_types] FOREIGN KEY([SubstanceTypeId])
REFERENCES [dbo].[sr_substance_types] ([id])
GO
ALTER TABLE [dbo].[EXP_DrugSubstance] CHECK CONSTRAINT [FK_EXP_DrugSubstance_sr_substance_types]
GO
ALTER TABLE [dbo].[EXP_DrugSubstance]  WITH CHECK ADD  CONSTRAINT [FK_EXP_DrugSubstance_sr_substances] FOREIGN KEY([SubstanceId])
REFERENCES [dbo].[sr_substances] ([id])
GO
ALTER TABLE [dbo].[EXP_DrugSubstance] CHECK CONSTRAINT [FK_EXP_DrugSubstance_sr_substances]
GO
ALTER TABLE [dbo].[EXP_DrugType]  WITH CHECK ADD  CONSTRAINT [FK_EXP_DrugType_EXP_DIC_DrugType] FOREIGN KEY([DrugTypeId])
REFERENCES [dbo].[EXP_DIC_DrugType] ([Id])
GO
ALTER TABLE [dbo].[EXP_DrugType] CHECK CONSTRAINT [FK_EXP_DrugType_EXP_DIC_DrugType]
GO
ALTER TABLE [dbo].[EXP_DrugType]  WITH CHECK ADD  CONSTRAINT [FK_EXP_DrugType_EXP_DrugDeclaration] FOREIGN KEY([DrugDeclarationId])
REFERENCES [dbo].[EXP_DrugDeclaration] ([Id])
GO
ALTER TABLE [dbo].[EXP_DrugType] CHECK CONSTRAINT [FK_EXP_DrugType_EXP_DrugDeclaration]
GO
ALTER TABLE [dbo].[EXP_DrugUseMethod]  WITH CHECK ADD  CONSTRAINT [FK_EXP_DrugUseMethod_EXP_DrugDeclaration] FOREIGN KEY([DrugDeclarationId])
REFERENCES [dbo].[EXP_DrugDeclaration] ([Id])
GO
ALTER TABLE [dbo].[EXP_DrugUseMethod] CHECK CONSTRAINT [FK_EXP_DrugUseMethod_EXP_DrugDeclaration]
GO
ALTER TABLE [dbo].[EXP_DrugUseMethod]  WITH CHECK ADD  CONSTRAINT [FK_EXP_DrugUseMethod_sr_use_methods] FOREIGN KEY([UseMethodsId])
REFERENCES [dbo].[sr_use_methods] ([id])
GO
ALTER TABLE [dbo].[EXP_DrugUseMethod] CHECK CONSTRAINT [FK_EXP_DrugUseMethod_sr_use_methods]
GO
ALTER TABLE [dbo].[EXP_DrugWrapping]  WITH CHECK ADD  CONSTRAINT [FK_EXP_DrugWrapping_EXP_DIC_WrappingType] FOREIGN KEY([WrappingTypeId])
REFERENCES [dbo].[EXP_DIC_WrappingType] ([Id])
GO
ALTER TABLE [dbo].[EXP_DrugWrapping] CHECK CONSTRAINT [FK_EXP_DrugWrapping_EXP_DIC_WrappingType]
GO
ALTER TABLE [dbo].[EXP_DrugWrapping]  WITH CHECK ADD  CONSTRAINT [FK_EXP_DrugWrapping_EXP_DrugDeclaration] FOREIGN KEY([DrugDeclarationId])
REFERENCES [dbo].[EXP_DrugDeclaration] ([Id])
GO
ALTER TABLE [dbo].[EXP_DrugWrapping] CHECK CONSTRAINT [FK_EXP_DrugWrapping_EXP_DrugDeclaration]
GO
ALTER TABLE [dbo].[EXP_DrugWrapping]  WITH CHECK ADD  CONSTRAINT [FK_EXP_DrugWrapping_sr_boxes] FOREIGN KEY([WrappingKindId])
REFERENCES [dbo].[sr_boxes] ([id])
GO
ALTER TABLE [dbo].[EXP_DrugWrapping] CHECK CONSTRAINT [FK_EXP_DrugWrapping_sr_boxes]
GO
ALTER TABLE [dbo].[EXP_DrugWrapping]  WITH CHECK ADD  CONSTRAINT [FK_EXP_DrugWrapping_sr_measures] FOREIGN KEY([SizeMeasureId])
REFERENCES [dbo].[sr_measures] ([id])
GO
ALTER TABLE [dbo].[EXP_DrugWrapping] CHECK CONSTRAINT [FK_EXP_DrugWrapping_sr_measures]
GO
ALTER TABLE [dbo].[EXP_DrugWrapping]  WITH CHECK ADD  CONSTRAINT [FK_EXP_DrugWrapping_sr_measures1] FOREIGN KEY([VolumeMeasureId])
REFERENCES [dbo].[sr_measures] ([id])
GO
ALTER TABLE [dbo].[EXP_DrugWrapping] CHECK CONSTRAINT [FK_EXP_DrugWrapping_sr_measures1]
GO

