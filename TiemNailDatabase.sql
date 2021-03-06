CREATE DATABASE [Nail_Salon_Database]
GO

USE [Nail_Salon_Database]
GO
/****** Object:  Table [dbo].[BusinessInfos]    Script Date: 6/17/2016 11:20:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BusinessInfos](
	[BusinessName] [nvarchar](100) NULL,
	[Phone] [nvarchar](24) NULL,
	[Mobile] [nvarchar](24) NULL,
	[Country] [nvarchar](50) NULL,
	[TimeZone] [nvarchar](50) NULL,
	[BusinessType] [nvarchar](50) NULL,
	[Address] [nvarchar](200) NULL,
	[HoursOfOperation] [nvarchar](50) NULL,
	[BusinessDesc] [nvarchar](1000) NULL,
	[BusinessEmail] [nvarchar](70) NULL,
	[BusinessWebsite] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BusinessOnlineBookings]    Script Date: 6/17/2016 11:20:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BusinessOnlineBookings](
	[OnlineBooking] [bit] NULL,
	[BookingSlotSize] [nvarchar](20) NULL,
	[ShowServicePrice] [bit] NULL,
	[SchedulingWindow] [nvarchar](20) NULL,
	[BookingLeadTime] [nvarchar](20) NULL,
	[HideDecimalsOnPrices] [bit] NULL,
	[HideMap] [bit] NULL,
	[BookingCancellations] [nvarchar](20) NULL,
	[Notifications] [nvarchar](20) NULL,
	[NotificationsRecipient] [nvarchar](20) NULL,
	[BookingLimit] [nvarchar](20) NULL,
	[Language] [nvarchar](20) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BusinessReminders]    Script Date: 6/17/2016 11:20:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BusinessReminders](
	[BusinessReminderID] [int] IDENTITY(1,1) NOT NULL,
	[BusinessReminderType] [nvarchar](20) NULL,
	[ReminderLeadTime] [nvarchar](20) NULL,
	[ReminderContent] [nvarchar](2000) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CustomerAppointments]    Script Date: 6/17/2016 11:20:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerAppointments](
	[CustomerAppointmentID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [nchar](10) NULL,
	[Notes] [nvarchar](250) NULL,
	[Date] [date] NULL,
	[StartTime] [time](7) NULL,
	[FinishTime] [time](7) NULL,
	[PaddingBefore] [int] NULL,
	[PaddingAfter] [int] NULL,
	[Status] [nvarchar](50) NULL,
 CONSTRAINT [CustomerAppointmentID] PRIMARY KEY CLUSTERED 
(
	[CustomerAppointmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CustomerAppointmentTasks]    Script Date: 6/17/2016 11:20:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CustomerAppointmentTasks](
	[CustomerAppointmentTaskID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerAppointmentID] [int] NULL,
	[EmployeeID] [varchar](20) NULL,
	[ServiceID] [int] NULL,
	[Date] [date] NULL,
	[Start] [time](7) NULL,
	[Finish] [time](7) NULL,
	[PaddingBefore] [int] NULL,
	[PaddingAfter] [int] NULL,
	[Status] [nvarchar](50) NULL,
 CONSTRAINT [CustomerAppointmentTaskID] PRIMARY KEY CLUSTERED 
(
	[CustomerAppointmentTaskID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 6/17/2016 11:20:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerID] [nchar](10) NOT NULL,
	[LastName] [nvarchar](20) NOT NULL,
	[FirstName] [nvarchar](20) NULL,
	[Phone] [nvarchar](24) NULL,
	[Phone2] [nvarchar](24) NULL,
	[Email] [nvarchar](70) NULL,
	[Email2] [nvarchar](70) NULL,
	[BirthDate] [datetime] NULL,
	[Gender] [char](1) NULL,
	[EmailReminder] [bit] NULL,
	[SMSReminder] [bit] NULL,
	[PostalCode] [nvarchar](10) NULL,
	[Address] [nvarchar](60) NULL,
	[City] [nvarchar](15) NULL,
	[State] [nchar](2) NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 6/17/2016 11:20:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Employees](
	[EmployeeID] [varchar](20) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[Username] [varchar](20) NOT NULL,
	[PasswordHash] [varchar](44) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[Email] [nvarchar](70) NULL,
	[Mobile] [nvarchar](24) NULL,
	[Phone] [nvarchar](24) NULL,
	[OnlineBooking] [bit] NULL,
	[Photo] [image] NULL,
	[Permission] [varchar](50) NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EmployeeWorkHours]    Script Date: 6/17/2016 11:20:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EmployeeWorkHours](
	[EmployeeWorkHourID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeID] [varchar](20) NULL,
	[DayOfWeek] [nvarchar](1) NULL,
	[StartTime] [time](7) NULL,
	[FinishTime] [time](7) NULL,
	[IsBreak] [bit] NULL,
	[StartBreak] [time](7) NULL,
	[FinishBreak] [time](7) NULL,
 CONSTRAINT [EmployeeWorkHourID] PRIMARY KEY CLUSTERED 
(
	[EmployeeWorkHourID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Permissions]    Script Date: 6/17/2016 11:20:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Permissions](
	[PermissonID] [int] NOT NULL,
	[PermissionType] [varchar](50) NULL,
	[EveryoneSchedule] [bit] NULL,
	[WriteAccess] [bit] NULL,
	[ClientDatabase] [bit] NULL,
	[ExportClients] [bit] NULL,
	[ExportAppointments] [bit] NULL,
	[Administrator] [bit] NULL,
 CONSTRAINT [PK_Permissions] PRIMARY KEY CLUSTERED 
(
	[PermissonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ServiceCategories]    Script Date: 6/17/2016 11:20:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ServiceCategories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](15) NOT NULL,
	[Description] [varchar](max) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Services]    Script Date: 6/17/2016 11:20:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Services](
	[ServiceID] [int] IDENTITY(1,1) NOT NULL,
	[ServiceName] [nvarchar](50) NULL,
	[CategoryID] [int] NULL,
	[ServiceDesc] [nvarchar](250) NULL,
 CONSTRAINT [ServiceID] PRIMARY KEY CLUSTERED 
(
	[ServiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TransactionExpenses]    Script Date: 6/17/2016 11:20:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactionExpenses](
	[TransactionExpenseID] [int] IDENTITY(1,1) NOT NULL,
	[TransactionID] [int] NULL,
	[ExpenseDesc] [nvarchar](1000) NULL,
	[Date] [date] NULL,
	[Amount] [money] NULL,
 CONSTRAINT [TransactionExpenseID] PRIMARY KEY CLUSTERED 
(
	[TransactionExpenseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Transactions]    Script Date: 6/17/2016 11:20:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transactions](
	[TransactionID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [date] NULL,
	[Notes] [nvarchar](200) NULL,
	[TransactionType] [nvarchar](50) NULL,
	[TransactionDetailRefID] [int] NULL,
	[TransactionClientName] [nvarchar](50) NULL,
	[TransactionClientRefID] [int] NULL,
	[Total] [money] NULL,
 CONSTRAINT [TransactionID] PRIMARY KEY CLUSTERED 
(
	[TransactionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TransactionServices]    Script Date: 6/17/2016 11:20:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TransactionServices](
	[TransactionServiceID] [int] IDENTITY(1,1) NOT NULL,
	[TransactionID] [int] NULL,
	[ServiceNameRef] [nvarchar](50) NULL,
	[ServiceID] [int] NULL,
	[EmployeeNameRef] [nvarchar](30) NULL,
	[EmployeeID] [varchar](20) NULL,
	[Date] [date] NULL,
	[Start] [time](7) NULL,
	[Finish] [time](7) NULL,
	[Amount] [money] NULL,
 CONSTRAINT [TransactionServiceID] PRIMARY KEY CLUSTERED 
(
	[TransactionServiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[CustomerAppointments]  WITH NOCHECK ADD  CONSTRAINT [FK_CustomerAppointments_Customers] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
GO
ALTER TABLE [dbo].[CustomerAppointments] CHECK CONSTRAINT [FK_CustomerAppointments_Customers]
GO
ALTER TABLE [dbo].[CustomerAppointmentTasks]  WITH NOCHECK ADD  CONSTRAINT [FK_CustomerAppointmentTasks_CustomerAppointments] FOREIGN KEY([CustomerAppointmentID])
REFERENCES [dbo].[CustomerAppointments] ([CustomerAppointmentID])
GO
ALTER TABLE [dbo].[CustomerAppointmentTasks] CHECK CONSTRAINT [FK_CustomerAppointmentTasks_CustomerAppointments]
GO
ALTER TABLE [dbo].[CustomerAppointmentTasks]  WITH NOCHECK ADD  CONSTRAINT [FK_CustomerAppointmentTasks_Employees] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employees] ([EmployeeID])
GO
ALTER TABLE [dbo].[CustomerAppointmentTasks] CHECK CONSTRAINT [FK_CustomerAppointmentTasks_Employees]
GO
ALTER TABLE [dbo].[CustomerAppointmentTasks]  WITH NOCHECK ADD  CONSTRAINT [FK_CustomerAppointmentTasks_Services] FOREIGN KEY([ServiceID])
REFERENCES [dbo].[Services] ([ServiceID])
GO
ALTER TABLE [dbo].[CustomerAppointmentTasks] CHECK CONSTRAINT [FK_CustomerAppointmentTasks_Services]
GO
ALTER TABLE [dbo].[EmployeeWorkHours]  WITH NOCHECK ADD  CONSTRAINT [FK_EmployeeWorkHours_Employees] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employees] ([EmployeeID])
GO
ALTER TABLE [dbo].[EmployeeWorkHours] CHECK CONSTRAINT [FK_EmployeeWorkHours_Employees]
GO
ALTER TABLE [dbo].[Services]  WITH NOCHECK ADD  CONSTRAINT [FK_Services_SeviceCategories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[ServiceCategories] ([CategoryID])
GO
ALTER TABLE [dbo].[Services] CHECK CONSTRAINT [FK_Services_SeviceCategories]
GO
ALTER TABLE [dbo].[TransactionExpenses]  WITH NOCHECK ADD  CONSTRAINT [FK_TransactionExpenses_Transactions] FOREIGN KEY([TransactionID])
REFERENCES [dbo].[Transactions] ([TransactionID])
GO
ALTER TABLE [dbo].[TransactionExpenses] CHECK CONSTRAINT [FK_TransactionExpenses_Transactions]
GO
ALTER TABLE [dbo].[TransactionServices]  WITH NOCHECK ADD  CONSTRAINT [FK_TransactionServices_Employees] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employees] ([EmployeeID])
GO
ALTER TABLE [dbo].[TransactionServices] CHECK CONSTRAINT [FK_TransactionServices_Employees]
GO
ALTER TABLE [dbo].[TransactionServices]  WITH NOCHECK ADD  CONSTRAINT [FK_TransactionServices_Services] FOREIGN KEY([ServiceID])
REFERENCES [dbo].[Services] ([ServiceID])
GO
ALTER TABLE [dbo].[TransactionServices] CHECK CONSTRAINT [FK_TransactionServices_Services]
GO
ALTER TABLE [dbo].[TransactionServices]  WITH NOCHECK ADD  CONSTRAINT [FK_TransactionServices_Transactions] FOREIGN KEY([TransactionID])
REFERENCES [dbo].[Transactions] ([TransactionID])
GO
ALTER TABLE [dbo].[TransactionServices] CHECK CONSTRAINT [FK_TransactionServices_Transactions]
GO
