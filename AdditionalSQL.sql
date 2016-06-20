/* Additional query */

/* Add EmployeeSkills */
CREATE TABLE [EmployeeSkills](
	[EmployeeSkillID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeID] [varchar](20) NULL,
	[ServiceID] [int] NULL,
 CONSTRAINT [EmployeeSkillID] PRIMARY KEY CLUSTERED 
(
	[EmployeeSkillID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[EmployeeSkills]  WITH NOCHECK ADD  CONSTRAINT [FK_EmployeeSkills_Employees] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employees] ([EmployeeID])
GO

/* Add CommissionPercent */
ALTER TABLE Employees
ADD CommissionPercent [float] NULL 

/* CashPercent */
ALTER TABLE Employees
ADD CashPercent [float] NULL 

/* Employee Priority */
ALTER TABLE Employees
ADD Priority [float] NULL

/* Service Duration */
ALTER TABLE Services
ADD Duration [time] NULL

/* Service Price */
ALTER TABLE Services
ADD Price [money] NULL

/* Service PaddingBefore */
ALTER TABLE Services
ADD PaddingBefore [time] NULL

/* Service PaddingAfter */
ALTER TABLE Services
ADD PaddingAfter [time] NULL

/* Service OnlineBooking */
ALTER TABLE Services
ADD OnlineBooking [bit] NULL

/* Service Additional Info */
ALTER TABLE Services
ADD AdditionalInfo [nvarchar](100) NULL

/* Service Additional Info */
ALTER TABLE Services
ADD Color [int] NULL

/* SupplyFee */
ALTER TABLE Services 
ADD SupplyFee [money] NULL

/* SeviceTurn */
ALTER TABLE Services 
ADD ServiceTurn [nvarchar](20) NULL

/* Add ServiceCategories */
INSERT INTO ServiceCategories VALUES ('Combinations', '');
INSERT INTO ServiceCategories VALUES ('Manicures', '');
INSERT INTO ServiceCategories VALUES ('Pedicures', '');
INSERT INTO ServiceCategories VALUES ('Nail Extension', '');
INSERT INTO ServiceCategories VALUES ('Waxing', '');
INSERT INTO ServiceCategories VALUES ('Threading', '');
INSERT INTO ServiceCategories VALUES ('Hair/Facial', '');
INSERT INTO ServiceCategories VALUES ('Hard Wax', '');
INSERT INTO ServiceCategories VALUES ('Massage', '');
INSERT INTO ServiceCategories VALUES ('Polish Change', '');
INSERT INTO ServiceCategories VALUES ('Add On', '');


