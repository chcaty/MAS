USE [MAS]
GO
/****** Object:  Table [dbo].[MAS_Request]    Script Date: 05/16/2017 13:09:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAS_Request](
	[RequestId] [int] IDENTITY(1,1) NOT NULL,
	[CheckSite] [nvarchar](255) NULL,
	[BodyPartIdentity] [nvarchar](512) NULL,
	[StudyHISID] [nvarchar](80) NULL,
	[StudySource] [nvarchar](10) NULL,
	[StudyDepartment] [nvarchar](20) NULL,
	[StudyFee] [money] NULL,
	[StudyScore] [money] NULL,
	[AppliedDepartment] [nvarchar](40) NULL,
	[AppliedDoctor] [nvarchar](20) NULL,
	[AppledDatetime] [datetime] NULL,
	[ClinicSymptom] [nvarchar](400) NULL,
	[ClinicDiagnose] [nvarchar](400) NULL,
	[ExamRequest] [nvarchar](200) NULL,
	[BedNo] [nvarchar](20) NULL,
	[UniversalServiceID] [nvarchar](40) NULL,
	[UniversalServiceText] [nvarchar](80) NULL,
	[PatientClass] [nvarchar](10) NULL,
	[ApplyBillClass] [nvarchar](10) NULL,
	[HISCode] [nvarchar](512) NULL,
	[RegistDate] [datetime] NULL,
	[RegistOperator] [nvarchar](20) NULL,
	[StudyPatientIn] [nvarchar](20) NULL,
	[SickAreaName] [nvarchar](30) NULL,
 CONSTRAINT [PK_MAS_Request] PRIMARY KEY CLUSTERED 
(
	[RequestId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MAS_Patient]    Script Date: 05/16/2017 13:09:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAS_Patient](
	[PatientId] [int] IDENTITY(1,1) NOT NULL,
	[PatientName] [nvarchar](30) NULL,
	[PatientSex] [nvarchar](10) NULL,
	[PatientAddress] [nvarchar](150) NULL,
	[PatientBirthDate] [datetime] NULL,
	[PatientTel] [nvarchar](30) NULL,
	[PatientHISID] [nvarchar](50) NULL,
	[PatientIDCard] [nvarchar](20) NULL,
	[PatientAge] [nvarchar](20) NULL,
	[CreateTime] [datetime] NULL,
 CONSTRAINT [PK_MAS_Patient] PRIMARY KEY CLUSTERED 
(
	[PatientId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MAS_NumberTimes_Scheme]    Script Date: 05/16/2017 13:09:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MAS_NumberTimes_Scheme](
	[Schemes_ID] [int] NOT NULL,
	[Department_ID] [int] NOT NULL,
	[Eanmine_ID] [int] NOT NULL,
	[Am_StartTime] [datetime] NOT NULL,
	[Am_EndTime] [datetime] NOT NULL,
	[Pm_StartTime] [datetime] NOT NULL,
	[Pm_EndTime] [datetime] NOT NULL,
	[Period] [int] NOT NULL,
	[Mins] [int] NOT NULL,
	[OfficeNumber] [int] NOT NULL,
	[CheckNumber] [int] NOT NULL,
	[EffectiveDate] [varchar](50) NOT NULL,
	[DateType_ID] [int] NOT NULL,
	[Deleted] [bit] NOT NULL,
 CONSTRAINT [PK_MAS_NumberTimes] PRIMARY KEY CLUSTERED 
(
	[Schemes_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MAS_NumberTimes_Queue]    Script Date: 05/16/2017 13:09:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MAS_NumberTimes_Queue](
	[Department_ID] [int] NOT NULL,
	[Examine_ID] [int] NOT NULL,
	[CheckNumber] [int] NOT NULL,
	[Period] [varchar](50) NOT NULL,
	[Period_No] [int] NOT NULL,
	[Date] [datetime] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MAS_NumberTimes_Now]    Script Date: 05/16/2017 13:09:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MAS_NumberTimes_Now](
	[Department_ID] [int] NOT NULL,
	[Examine_ID] [int] NOT NULL,
	[CheckNumber] [int] NOT NULL,
	[Period] [varchar](50) NOT NULL,
	[Period_No] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MAS_Kollisionsregel]    Script Date: 05/16/2017 13:09:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAS_Kollisionsregel](
	[Kollisionsregel_ID] [int] NOT NULL,
	[Department__ID_One] [nvarchar](50) NOT NULL,
	[Exanmine_ID_One] [nvarchar](50) NOT NULL,
	[Department_ID_Two] [nvarchar](50) NOT NULL,
	[Exanmine_ID_Two] [nvarchar](50) NOT NULL,
	[Kollisionsregel_Tyoe] [nvarchar](50) NOT NULL,
	[Enabled] [bit] NOT NULL,
	[Deleted] [bit] NOT NULL,
 CONSTRAINT [PK_MAS_Kollisionsregel] PRIMARY KEY CLUSTERED 
(
	[Kollisionsregel_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MAS_ExamineType]    Script Date: 05/16/2017 13:09:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAS_ExamineType](
	[Examine_ID] [int] NOT NULL,
	[Examine_Name] [nvarchar](50) NOT NULL,
	[Enabled] [bit] NOT NULL,
	[Deleted] [bit] NOT NULL,
 CONSTRAINT [PK_MAS_ExamineType] PRIMARY KEY CLUSTERED 
(
	[Examine_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MAS_ExaminePlace]    Script Date: 05/16/2017 13:09:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAS_ExaminePlace](
	[Place_ID] [int] NOT NULL,
	[Place_Name] [nvarchar](50) NOT NULL,
	[Enabled] [bit] NOT NULL,
	[Deleted] [bit] NOT NULL,
 CONSTRAINT [PK_ExaminePlace] PRIMARY KEY CLUSTERED 
(
	[Place_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MAS_Department]    Script Date: 05/16/2017 13:09:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAS_Department](
	[Department_ID] [int] NOT NULL,
	[Department_Name] [nvarchar](50) NOT NULL,
	[Enabled] [bit] NOT NULL,
	[Deleted] [bit] NOT NULL,
 CONSTRAINT [PK_MAS_Department] PRIMARY KEY CLUSTERED 
(
	[Department_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MAS_DateType]    Script Date: 05/16/2017 13:09:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAS_DateType](
	[DateType_ID] [int] NOT NULL,
	[DateType_Name] [nvarchar](50) NOT NULL,
	[Enabled] [bit] NOT NULL,
	[Deleted] [bit] NOT NULL,
 CONSTRAINT [PK_DateType] PRIMARY KEY CLUSTERED 
(
	[DateType_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MAS_CheckQueue]    Script Date: 05/16/2017 13:09:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MAS_CheckQueue](
	[Department] [varchar](50) NOT NULL,
	[Examine] [varchar](50) NOT NULL,
	[Examine_Place] [varchar](50) NOT NULL,
	[Examine_Period] [varchar](50) NOT NULL,
	[Examine_Date] [varchar](50) NOT NULL,
	[Patient_ID] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MAS_AgeRules]    Script Date: 05/16/2017 13:09:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAS_AgeRules](
	[AgeRules_ID] [int] IDENTITY(1,1) NOT NULL,
	[Department_ID] [int] NOT NULL,
	[Examine_ID] [int] NOT NULL,
	[MinAge] [int] NOT NULL,
	[MaxAge] [int] NOT NULL,
	[AgeUnit] [nvarchar](50) NOT NULL,
	[Enabled] [bit] NOT NULL,
	[Deleted] [bit] NOT NULL,
 CONSTRAINT [PK_MAS_AgeRules] PRIMARY KEY CLUSTERED 
(
	[AgeRules_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MAS_Actions]    Script Date: 05/16/2017 13:09:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MAS_Actions](
	[ActionId] [int] IDENTITY(1,1) NOT NULL,
	[ActionName] [varchar](50) NULL,
	[DelFlag] [tinyint] NULL,
	[displayOrder] [int] NULL,
 CONSTRAINT [PK_permissions] PRIMARY KEY CLUSTERED 
(
	[ActionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MAS_Roles]    Script Date: 05/16/2017 13:09:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MAS_Roles](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [varchar](50) NULL,
	[DelFlag] [int] NULL,
 CONSTRAINT [PK_MAS_Roles] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MAS_Users]    Script Date: 05/16/2017 13:09:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MAS_Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[UserCode] [int] NULL,
	[UserPws] [varchar](50) NULL,
	[DelFlag] [int] NULL,
 CONSTRAINT [PK_MAS_Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MAS_UserRoles]    Script Date: 05/16/2017 13:09:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAS_UserRoles](
	[UserRoleId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[RoleId] [int] NULL,
 CONSTRAINT [PK_MAS_UserRoles] PRIMARY KEY CLUSTERED 
(
	[UserRoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MAS_RoleActions]    Script Date: 05/16/2017 13:09:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAS_RoleActions](
	[RoleActionId] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NULL,
	[ActionId] [int] NULL,
 CONSTRAINT [PK_MAS_RoleActions] PRIMARY KEY CLUSTERED 
(
	[RoleActionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MAS_Reservations]    Script Date: 05/16/2017 13:09:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MAS_Reservations](
	[ReservationId] [int] IDENTITY(1,1) NOT NULL,
	[ReservationData] [varchar](50) NULL,
	[StudyKindName] [varchar](50) NULL,
	[SystemType] [int] NULL,
	[ReserveBeginTime] [datetime] NULL,
	[ReserveEndTime] [datetime] NULL,
	[ReserveState] [nchar](10) NULL,
	[IsCharged] [int] NULL,
	[ReserveOperator] [nchar](30) NULL,
	[ReserveDepartment] [nchar](30) NULL,
	[SaveTime] [datetime] NULL,
	[StudyDepartmentPlace] [varchar](100) NULL,
	[ScanType] [nvarchar](50) NULL,
	[ReserveDepartmentStudySource] [varchar](50) NULL,
	[PatientId] [int] NULL,
	[RequestId] [int] NULL,
 CONSTRAINT [PK_MAS_Reservations] PRIMARY KEY CLUSTERED 
(
	[ReservationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  ForeignKey [FK_MAS_Reservations_MAS_Patient]    Script Date: 05/16/2017 13:09:48 ******/
ALTER TABLE [dbo].[MAS_Reservations]  WITH CHECK ADD  CONSTRAINT [FK_MAS_Reservations_MAS_Patient] FOREIGN KEY([PatientId])
REFERENCES [dbo].[MAS_Patient] ([PatientId])
GO
ALTER TABLE [dbo].[MAS_Reservations] CHECK CONSTRAINT [FK_MAS_Reservations_MAS_Patient]
GO
/****** Object:  ForeignKey [FK_MAS_Reservations_MAS_Request]    Script Date: 05/16/2017 13:09:48 ******/
ALTER TABLE [dbo].[MAS_Reservations]  WITH CHECK ADD  CONSTRAINT [FK_MAS_Reservations_MAS_Request] FOREIGN KEY([RequestId])
REFERENCES [dbo].[MAS_Request] ([RequestId])
GO
ALTER TABLE [dbo].[MAS_Reservations] CHECK CONSTRAINT [FK_MAS_Reservations_MAS_Request]
GO
/****** Object:  ForeignKey [FK_MAS_RoleActions_MAS_Actions]    Script Date: 05/16/2017 13:09:48 ******/
ALTER TABLE [dbo].[MAS_RoleActions]  WITH CHECK ADD  CONSTRAINT [FK_MAS_RoleActions_MAS_Actions] FOREIGN KEY([ActionId])
REFERENCES [dbo].[MAS_Actions] ([ActionId])
GO
ALTER TABLE [dbo].[MAS_RoleActions] CHECK CONSTRAINT [FK_MAS_RoleActions_MAS_Actions]
GO
/****** Object:  ForeignKey [FK_MAS_RoleActions_MAS_Roles]    Script Date: 05/16/2017 13:09:48 ******/
ALTER TABLE [dbo].[MAS_RoleActions]  WITH CHECK ADD  CONSTRAINT [FK_MAS_RoleActions_MAS_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[MAS_Roles] ([RoleId])
GO
ALTER TABLE [dbo].[MAS_RoleActions] CHECK CONSTRAINT [FK_MAS_RoleActions_MAS_Roles]
GO
/****** Object:  ForeignKey [FK_MAS_UserRoles_MAS_Roles]    Script Date: 05/16/2017 13:09:48 ******/
ALTER TABLE [dbo].[MAS_UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_MAS_UserRoles_MAS_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[MAS_Roles] ([RoleId])
GO
ALTER TABLE [dbo].[MAS_UserRoles] CHECK CONSTRAINT [FK_MAS_UserRoles_MAS_Roles]
GO
/****** Object:  ForeignKey [FK_MAS_UserRoles_MAS_Users]    Script Date: 05/16/2017 13:09:48 ******/
ALTER TABLE [dbo].[MAS_UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_MAS_UserRoles_MAS_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[MAS_Users] ([UserId])
GO
ALTER TABLE [dbo].[MAS_UserRoles] CHECK CONSTRAINT [FK_MAS_UserRoles_MAS_Users]
GO
