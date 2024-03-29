USE [Airline Reservation]
GO
/****** Object:  Table [dbo].[Aircrafts]    Script Date: 9/18/2018 8:24:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aircrafts](
	[AcID] [int] NOT NULL,
	[AcNumber] [varchar](32) NOT NULL,
	[Capacity] [int] NOT NULL,
	[MfdBy] [varchar](128) NOT NULL,
	[MfdOn] [datetime] NOT NULL,
 CONSTRAINT [PK_Aircrafts] PRIMARY KEY CLUSTERED 
(
	[AcID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AirFare]    Script Date: 9/18/2018 8:24:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AirFare](
	[AfID] [int] NOT NULL,
	[Route] [int] NOT NULL,
	[Fare] [decimal](6, 2) NOT NULL,
	[FSC] [decimal](6, 2) NOT NULL,
 CONSTRAINT [PK_AirFare] PRIMARY KEY CLUSTERED 
(
	[AfID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Branches]    Script Date: 9/18/2018 8:24:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Branches](
	[BrID] [int] NOT NULL,
	[Center] [varchar](16) NOT NULL,
	[Address] [varchar](32) NOT NULL,
	[State] [int] NOT NULL,
 CONSTRAINT [PK_Branches] PRIMARY KEY CLUSTERED 
(
	[BrID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Charges]    Script Date: 9/18/2018 8:24:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Charges](
	[ChID] [int] NOT NULL,
	[Title] [varchar](32) NOT NULL,
	[Amount] [int] NOT NULL,
	[Description] [varchar](255) NULL,
 CONSTRAINT [PK_Charges] PRIMARY KEY CLUSTERED 
(
	[ChID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact-Details]    Script Date: 9/18/2018 8:24:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact-Details](
	[CnID] [int] NOT NULL,
	[Email] [varchar](16) NOT NULL,
	[Cell] [varchar](16) NOT NULL,
	[Tel] [varchar](16) NULL,
	[Street] [varchar](64) NOT NULL,
	[State] [int] NOT NULL,
 CONSTRAINT [PK_Contact-Details] PRIMARY KEY CLUSTERED 
(
	[CnID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Countries]    Script Date: 9/18/2018 8:24:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[CtID] [int] NOT NULL,
	[CountryName] [varchar](32) NOT NULL,
 CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED 
(
	[CtID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discounts]    Script Date: 9/18/2018 8:24:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discounts](
	[DiID] [int] NOT NULL,
	[Title] [varchar](32) NOT NULL,
	[Amount] [int] NOT NULL,
	[Description] [varchar](255) NULL,
 CONSTRAINT [PK_Discounts] PRIMARY KEY CLUSTERED 
(
	[DiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 9/18/2018 8:24:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmpID] [int] NOT NULL,
	[Name] [varchar](32) NOT NULL,
	[Address] [varchar](32) NOT NULL,
	[Branch] [int] NOT NULL,
	[designation] [varchar](32) NOT NULL,
	[Email] [varchar](32) NOT NULL,
	[Tel] [varchar](16) NULL,
	[Ext] [int] NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EmpID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Flight_Schedules]    Script Date: 9/18/2018 8:24:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Flight_Schedules](
	[FIID] [int] NOT NULL,
	[FlightDate] [datetime] NOT NULL,
	[Departure] [datetime] NULL,
	[Arrival] [datetime] NULL,
	[Aircraft] [int] NOT NULL,
	[NetFare] [int] NOT NULL,
 CONSTRAINT [PK_Flight_Schedules] PRIMARY KEY CLUSTERED 
(
	[FIID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Passengers]    Script Date: 9/18/2018 8:24:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Passengers](
	[PsID] [int] NOT NULL,
	[Name] [varchar](32) NOT NULL,
	[Address] [varchar](64) NOT NULL,
	[Age] [int] NOT NULL,
	[Nationalities] [varchar](16) NOT NULL,
	[Contacts] [int] NOT NULL,
 CONSTRAINT [PK_Passengers] PRIMARY KEY CLUSTERED 
(
	[PsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Route]    Script Date: 9/18/2018 8:24:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Route](
	[RtID] [int] NOT NULL,
	[Airport] [varchar](32) NOT NULL,
	[Destination] [varchar](32) NOT NULL,
	[RouteCode] [varchar](16) NOT NULL,
 CONSTRAINT [PK_Route] PRIMARY KEY CLUSTERED 
(
	[RtID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[State]    Script Date: 9/18/2018 8:24:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[State](
	[StID] [int] NOT NULL,
	[StateName] [varchar](32) NOT NULL,
	[Country] [int] NOT NULL,
 CONSTRAINT [PK_State] PRIMARY KEY CLUSTERED 
(
	[StID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transactions]    Script Date: 9/18/2018 8:24:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transactions](
	[TsID] [int] NOT NULL,
	[BookingDate] [datetime] NOT NULL,
	[DepartureDate] [datetime] NOT NULL,
	[Passenger] [int] NOT NULL,
	[Flight] [int] NOT NULL,
	[Type] [bit] NOT NULL,
	[Employee] [int] NOT NULL,
	[Charges] [int] NOT NULL,
	[Discount] [int] NOT NULL,
	[Total] [int] NOT NULL,
 CONSTRAINT [PK_Transactions] PRIMARY KEY CLUSTERED 
(
	[TsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Aircrafts] ([AcID], [AcNumber], [Capacity], [MfdBy], [MfdOn]) VALUES (100, N'A100', 75, N'Airbus', CAST(N'2016-09-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Aircrafts] ([AcID], [AcNumber], [Capacity], [MfdBy], [MfdOn]) VALUES (101, N'A101', 125, N'Boeing Business Jets', CAST(N'2005-11-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Aircrafts] ([AcID], [AcNumber], [Capacity], [MfdBy], [MfdOn]) VALUES (102, N'A102', 85, N'Airbus', CAST(N'2018-02-24T00:00:00.000' AS DateTime))
INSERT [dbo].[Aircrafts] ([AcID], [AcNumber], [Capacity], [MfdBy], [MfdOn]) VALUES (103, N'A103', 150, N'Dassault Falcon', CAST(N'2017-07-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Aircrafts] ([AcID], [AcNumber], [Capacity], [MfdBy], [MfdOn]) VALUES (104, N'A104', 98, N'Gulfstream Aerospace', CAST(N'2002-01-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Aircrafts] ([AcID], [AcNumber], [Capacity], [MfdBy], [MfdOn]) VALUES (105, N'A105', 56, N'Bombardier Aerospace', CAST(N'2011-03-06T00:00:00.000' AS DateTime))
INSERT [dbo].[AirFare] ([AfID], [Route], [Fare], [FSC]) VALUES (100, 100, CAST(169.99 AS Decimal(6, 2)), CAST(23.99 AS Decimal(6, 2)))
INSERT [dbo].[AirFare] ([AfID], [Route], [Fare], [FSC]) VALUES (101, 101, CAST(221.49 AS Decimal(6, 2)), CAST(26.99 AS Decimal(6, 2)))
INSERT [dbo].[AirFare] ([AfID], [Route], [Fare], [FSC]) VALUES (102, 102, CAST(99.00 AS Decimal(6, 2)), CAST(43.68 AS Decimal(6, 2)))
INSERT [dbo].[AirFare] ([AfID], [Route], [Fare], [FSC]) VALUES (103, 103, CAST(395.00 AS Decimal(6, 2)), CAST(15.00 AS Decimal(6, 2)))
INSERT [dbo].[AirFare] ([AfID], [Route], [Fare], [FSC]) VALUES (104, 104, CAST(246.00 AS Decimal(6, 2)), CAST(20.65 AS Decimal(6, 2)))
INSERT [dbo].[AirFare] ([AfID], [Route], [Fare], [FSC]) VALUES (105, 105, CAST(178.00 AS Decimal(6, 2)), CAST(36.45 AS Decimal(6, 2)))
INSERT [dbo].[Branches] ([BrID], [Center], [Address], [State]) VALUES (100, N'Flight attendent', N'135 highwater st', 100)
INSERT [dbo].[Branches] ([BrID], [Center], [Address], [State]) VALUES (101, N'flight attendent', N' 134 airport rd', 101)
INSERT [dbo].[Branches] ([BrID], [Center], [Address], [State]) VALUES (102, N'operations agent', N'123 airport rd', 102)
INSERT [dbo].[Branches] ([BrID], [Center], [Address], [State]) VALUES (103, N'admin support', N'123 job rd', 103)
INSERT [dbo].[Branches] ([BrID], [Center], [Address], [State]) VALUES (104, N'sales', N'295 sales drive', 104)
INSERT [dbo].[Charges] ([ChID], [Title], [Amount], [Description]) VALUES (100, N'First class', 20, N'First Class seat')
INSERT [dbo].[Charges] ([ChID], [Title], [Amount], [Description]) VALUES (101, N'Basic', 0, N'basic no luxuries')
INSERT [dbo].[Contact-Details] ([CnID], [Email], [Cell], [Tel], [Street], [State]) VALUES (100, N'tsmith@gmail.com', N'n/a', NULL, N'123 abc strret', 100)
INSERT [dbo].[Contact-Details] ([CnID], [Email], [Cell], [Tel], [Street], [State]) VALUES (101, N'psmith@gmail.com', N'555-5555', NULL, N'123 abc strret ', 101)
INSERT [dbo].[Contact-Details] ([CnID], [Email], [Cell], [Tel], [Street], [State]) VALUES (102, N'bsmith@gmail.com', N'125-5248', NULL, N'123 dog lane', 102)
INSERT [dbo].[Contact-Details] ([CnID], [Email], [Cell], [Tel], [Street], [State]) VALUES (103, N'Tom@gmail.com', N'7545986', NULL, N'123 bark rd', 103)
INSERT [dbo].[Countries] ([CtID], [CountryName]) VALUES (100, N'United States')
INSERT [dbo].[Discounts] ([DiID], [Title], [Amount], [Description]) VALUES (100, N'Buy a seat get a seat half off', 50, N'Good till 12/15/18')
INSERT [dbo].[Discounts] ([DiID], [Title], [Amount], [Description]) VALUES (101, N'Ten percent off', 10, N'Good till 11/30/18')
INSERT [dbo].[Employee] ([EmpID], [Name], [Address], [Branch], [designation], [Email], [Tel], [Ext]) VALUES (100, N'Joe', N'123 ABC RD', 100, N'attendent', N'joe@gmail.com', NULL, NULL)
INSERT [dbo].[Employee] ([EmpID], [Name], [Address], [Branch], [designation], [Email], [Tel], [Ext]) VALUES (101, N'Fred', N'123 Dog Lane', 101, N'attendent', N'fred@gmail.com', NULL, NULL)
INSERT [dbo].[Employee] ([EmpID], [Name], [Address], [Branch], [designation], [Email], [Tel], [Ext]) VALUES (102, N'Frank', N'154 Main St', 102, N'operations', N'frank@gmail.com', N'789-4512', 1152)
INSERT [dbo].[Employee] ([EmpID], [Name], [Address], [Branch], [designation], [Email], [Tel], [Ext]) VALUES (103, N'Diwan', N'754 bolder rd', 103, N'support', N'diwan@gmail.com', NULL, NULL)
INSERT [dbo].[Employee] ([EmpID], [Name], [Address], [Branch], [designation], [Email], [Tel], [Ext]) VALUES (104, N'Shelly', N'451 outback drive', 104, N'sales', N'shelly@gmail.com', N'555-4276', 4579)
INSERT [dbo].[Flight_Schedules] ([FIID], [FlightDate], [Departure], [Arrival], [Aircraft], [NetFare]) VALUES (100, CAST(N'2018-11-01T00:00:00.000' AS DateTime), CAST(N'2018-11-01T09:15:00.000' AS DateTime), CAST(N'2018-11-01T12:15:00.000' AS DateTime), 100, 100)
INSERT [dbo].[Flight_Schedules] ([FIID], [FlightDate], [Departure], [Arrival], [Aircraft], [NetFare]) VALUES (101, CAST(N'2018-11-02T00:00:00.000' AS DateTime), CAST(N'2018-11-02T06:37:00.000' AS DateTime), CAST(N'2018-11-02T10:15:00.000' AS DateTime), 101, 101)
INSERT [dbo].[Flight_Schedules] ([FIID], [FlightDate], [Departure], [Arrival], [Aircraft], [NetFare]) VALUES (102, CAST(N'2018-11-09T00:00:00.000' AS DateTime), CAST(N'2018-11-09T12:25:00.000' AS DateTime), CAST(N'2018-11-09T16:37:00.000' AS DateTime), 103, 105)
INSERT [dbo].[Flight_Schedules] ([FIID], [FlightDate], [Departure], [Arrival], [Aircraft], [NetFare]) VALUES (103, CAST(N'2018-11-03T00:00:00.000' AS DateTime), CAST(N'2018-11-03T02:20:00.000' AS DateTime), CAST(N'2018-11-03T05:30:00.000' AS DateTime), 102, 104)
INSERT [dbo].[Flight_Schedules] ([FIID], [FlightDate], [Departure], [Arrival], [Aircraft], [NetFare]) VALUES (104, CAST(N'2018-12-15T00:00:00.000' AS DateTime), CAST(N'2018-12-15T20:30:00.000' AS DateTime), CAST(N'2018-12-15T22:50:00.000' AS DateTime), 103, 103)
INSERT [dbo].[Flight_Schedules] ([FIID], [FlightDate], [Departure], [Arrival], [Aircraft], [NetFare]) VALUES (105, CAST(N'2018-12-24T00:00:00.000' AS DateTime), CAST(N'2018-12-24T16:24:00.000' AS DateTime), CAST(N'2018-12-24T16:50:00.000' AS DateTime), 104, 102)
INSERT [dbo].[Passengers] ([PsID], [Name], [Address], [Age], [Nationalities], [Contacts]) VALUES (100, N'Dominik', N'123 abc strret', 21, N'US', 100)
INSERT [dbo].[Passengers] ([PsID], [Name], [Address], [Age], [Nationalities], [Contacts]) VALUES (101, N'Susan', N'124 abc strret', 87, N'US', 101)
INSERT [dbo].[Passengers] ([PsID], [Name], [Address], [Age], [Nationalities], [Contacts]) VALUES (102, N'Richelle', N'130 abc street', 25, N'FR', 102)
INSERT [dbo].[Passengers] ([PsID], [Name], [Address], [Age], [Nationalities], [Contacts]) VALUES (103, N'Kelly', N'150 falls rd', 41, N'US', 103)
INSERT [dbo].[Route] ([RtID], [Airport], [Destination], [RouteCode]) VALUES (100, N'O''Hare', N'Detriot, MI', N'B100')
INSERT [dbo].[Route] ([RtID], [Airport], [Destination], [RouteCode]) VALUES (101, N'Denver International', N'Los Angeles, CA', N'B101')
INSERT [dbo].[Route] ([RtID], [Airport], [Destination], [RouteCode]) VALUES (102, N'Fort Worth International', N'San Francisco, CA', N'B102')
INSERT [dbo].[Route] ([RtID], [Airport], [Destination], [RouteCode]) VALUES (103, N'Logan International', N'Phoenix, AZ', N'B103')
INSERT [dbo].[Route] ([RtID], [Airport], [Destination], [RouteCode]) VALUES (104, N'Miami International', N'Houston, TX', N'B104')
INSERT [dbo].[Route] ([RtID], [Airport], [Destination], [RouteCode]) VALUES (105, N'Detriot Metropolitan ', N'Miami, FL', N'B105')
INSERT [dbo].[State] ([StID], [StateName], [Country]) VALUES (100, N'MIchigan', 100)
INSERT [dbo].[State] ([StID], [StateName], [Country]) VALUES (101, N'Calafornia', 100)
INSERT [dbo].[State] ([StID], [StateName], [Country]) VALUES (102, N'Flordia', 100)
INSERT [dbo].[State] ([StID], [StateName], [Country]) VALUES (103, N'Texas', 100)
INSERT [dbo].[State] ([StID], [StateName], [Country]) VALUES (104, N'Arizona', 100)
INSERT [dbo].[Transactions] ([TsID], [BookingDate], [DepartureDate], [Passenger], [Flight], [Type], [Employee], [Charges], [Discount], [Total]) VALUES (200, CAST(N'2018-10-01T00:00:00.000' AS DateTime), CAST(N'2018-11-01T00:00:00.000' AS DateTime), 100, 100, 1, 100, 100, 100, 350)
INSERT [dbo].[Transactions] ([TsID], [BookingDate], [DepartureDate], [Passenger], [Flight], [Type], [Employee], [Charges], [Discount], [Total]) VALUES (201, CAST(N'2018-10-05T00:00:00.000' AS DateTime), CAST(N'2018-11-02T00:00:00.000' AS DateTime), 101, 101, 0, 101, 101, 101, 275)
INSERT [dbo].[Transactions] ([TsID], [BookingDate], [DepartureDate], [Passenger], [Flight], [Type], [Employee], [Charges], [Discount], [Total]) VALUES (202, CAST(N'2018-10-19T00:00:00.000' AS DateTime), CAST(N'2018-12-15T00:00:00.000' AS DateTime), 102, 104, 1, 103, 101, 100, 380)
ALTER TABLE [dbo].[AirFare]  WITH CHECK ADD  CONSTRAINT [FK_AirFare_Route] FOREIGN KEY([Route])
REFERENCES [dbo].[Route] ([RtID])
GO
ALTER TABLE [dbo].[AirFare] CHECK CONSTRAINT [FK_AirFare_Route]
GO
ALTER TABLE [dbo].[Branches]  WITH CHECK ADD  CONSTRAINT [FK_Branches_State] FOREIGN KEY([State])
REFERENCES [dbo].[State] ([StID])
GO
ALTER TABLE [dbo].[Branches] CHECK CONSTRAINT [FK_Branches_State]
GO
ALTER TABLE [dbo].[Contact-Details]  WITH CHECK ADD  CONSTRAINT [FK_Contact-Details_State] FOREIGN KEY([State])
REFERENCES [dbo].[State] ([StID])
GO
ALTER TABLE [dbo].[Contact-Details] CHECK CONSTRAINT [FK_Contact-Details_State]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Branches] FOREIGN KEY([Branch])
REFERENCES [dbo].[Branches] ([BrID])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Branches]
GO
ALTER TABLE [dbo].[Flight_Schedules]  WITH CHECK ADD  CONSTRAINT [FK_Flight_Schedules_Aircrafts] FOREIGN KEY([Aircraft])
REFERENCES [dbo].[Aircrafts] ([AcID])
GO
ALTER TABLE [dbo].[Flight_Schedules] CHECK CONSTRAINT [FK_Flight_Schedules_Aircrafts]
GO
ALTER TABLE [dbo].[Flight_Schedules]  WITH CHECK ADD  CONSTRAINT [FK_Flight_Schedules_AirFare] FOREIGN KEY([NetFare])
REFERENCES [dbo].[AirFare] ([AfID])
GO
ALTER TABLE [dbo].[Flight_Schedules] CHECK CONSTRAINT [FK_Flight_Schedules_AirFare]
GO
ALTER TABLE [dbo].[Passengers]  WITH CHECK ADD  CONSTRAINT [FK_Passengers_Contact-Details] FOREIGN KEY([Contacts])
REFERENCES [dbo].[Contact-Details] ([CnID])
GO
ALTER TABLE [dbo].[Passengers] CHECK CONSTRAINT [FK_Passengers_Contact-Details]
GO
ALTER TABLE [dbo].[State]  WITH CHECK ADD  CONSTRAINT [FK_State_Countries] FOREIGN KEY([Country])
REFERENCES [dbo].[Countries] ([CtID])
GO
ALTER TABLE [dbo].[State] CHECK CONSTRAINT [FK_State_Countries]
GO
ALTER TABLE [dbo].[Transactions]  WITH CHECK ADD  CONSTRAINT [FK_Transactions_Charges] FOREIGN KEY([Charges])
REFERENCES [dbo].[Charges] ([ChID])
GO
ALTER TABLE [dbo].[Transactions] CHECK CONSTRAINT [FK_Transactions_Charges]
GO
ALTER TABLE [dbo].[Transactions]  WITH CHECK ADD  CONSTRAINT [FK_Transactions_Discounts] FOREIGN KEY([Discount])
REFERENCES [dbo].[Discounts] ([DiID])
GO
ALTER TABLE [dbo].[Transactions] CHECK CONSTRAINT [FK_Transactions_Discounts]
GO
ALTER TABLE [dbo].[Transactions]  WITH CHECK ADD  CONSTRAINT [FK_Transactions_Employee] FOREIGN KEY([Employee])
REFERENCES [dbo].[Employee] ([EmpID])
GO
ALTER TABLE [dbo].[Transactions] CHECK CONSTRAINT [FK_Transactions_Employee]
GO
ALTER TABLE [dbo].[Transactions]  WITH CHECK ADD  CONSTRAINT [FK_Transactions_Flight_Schedules] FOREIGN KEY([Flight])
REFERENCES [dbo].[Flight_Schedules] ([FIID])
GO
ALTER TABLE [dbo].[Transactions] CHECK CONSTRAINT [FK_Transactions_Flight_Schedules]
GO
ALTER TABLE [dbo].[Transactions]  WITH CHECK ADD  CONSTRAINT [FK_Transactions_Passengers] FOREIGN KEY([Passenger])
REFERENCES [dbo].[Passengers] ([PsID])
GO
ALTER TABLE [dbo].[Transactions] CHECK CONSTRAINT [FK_Transactions_Passengers]
GO
