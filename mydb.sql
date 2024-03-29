USE [KorolkovLab1]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 18.03.2024 15:24:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[IdDepartment] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdDepartment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 18.03.2024 15:24:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[IdGroup] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[IdSpeciality] [int] NULL,
	[IdDepartment] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdGroup] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LessonType]    Script Date: 18.03.2024 15:24:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LessonType](
	[LessonType] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Payment] [decimal](18, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[LessonType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Schedule]    Script Date: 18.03.2024 15:24:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Schedule](
	[IdLesson] [int] NOT NULL,
	[IdGroup] [int] NOT NULL,
	[IdTeachers] [int] NOT NULL,
	[LessonType] [int] NOT NULL,
	[IdSubject] [int] NOT NULL,
	[LessonDate] [date] NOT NULL,
 CONSTRAINT [PK__Schedule__2253D85A52B36F5A] PRIMARY KEY CLUSTERED 
(
	[IdLesson] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Speciality]    Script Date: 18.03.2024 15:24:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Speciality](
	[IdSpeciality] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdSpeciality] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 18.03.2024 15:24:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[IdStudent] [int] NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[MiddleName] [nvarchar](50) NULL,
	[PhoneNumber] [nvarchar](20) NOT NULL,
	[BirthDate] [date] NOT NULL,
	[IdGroup] [int] NULL,
 CONSTRAINT [PK__Students__61B35104F86E1CF4] PRIMARY KEY CLUSTERED 
(
	[IdStudent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 18.03.2024 15:24:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[IdSubject] [int] NOT NULL,
	[Nаме] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdSubject] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teachers]    Script Date: 18.03.2024 15:24:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teachers](
	[IdTeacher] [int] NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[MiddleName] [nvarchar](50) NULL,
	[PhoneNumber] [nvarchar](20) NOT NULL,
	[WorkYears] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdTeacher] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Department] ([IdDepartment], [Name]) VALUES (1, N'Информационные технологии')
INSERT [dbo].[Department] ([IdDepartment], [Name]) VALUES (2, N'Логистика')
INSERT [dbo].[Department] ([IdDepartment], [Name]) VALUES (3, N'Юриспунденция')
INSERT [dbo].[Department] ([IdDepartment], [Name]) VALUES (4, N'Металлургия')
GO
INSERT [dbo].[Group] ([IdGroup], [Name], [IdSpeciality], [IdDepartment]) VALUES (1, N'ИП-1', 1, 1)
INSERT [dbo].[Group] ([IdGroup], [Name], [IdSpeciality], [IdDepartment]) VALUES (2, N'ИП-2', 1, 1)
INSERT [dbo].[Group] ([IdGroup], [Name], [IdSpeciality], [IdDepartment]) VALUES (3, N'СА-1', 2, 1)
INSERT [dbo].[Group] ([IdGroup], [Name], [IdSpeciality], [IdDepartment]) VALUES (4, N'Ю-1', 3, 3)
INSERT [dbo].[Group] ([IdGroup], [Name], [IdSpeciality], [IdDepartment]) VALUES (5, N'Ю-3', 3, 3)
INSERT [dbo].[Group] ([IdGroup], [Name], [IdSpeciality], [IdDepartment]) VALUES (6, N'Л-1', 4, 2)
INSERT [dbo].[Group] ([IdGroup], [Name], [IdSpeciality], [IdDepartment]) VALUES (7, N'М-1', 5, 4)
INSERT [dbo].[Group] ([IdGroup], [Name], [IdSpeciality], [IdDepartment]) VALUES (8, N'СА-2', 1, 1)
GO
INSERT [dbo].[LessonType] ([LessonType], [Name], [Payment]) VALUES (1, N'Лекция', CAST(400 AS Decimal(18, 0)))
INSERT [dbo].[LessonType] ([LessonType], [Name], [Payment]) VALUES (2, N'Практическое занятие', CAST(550 AS Decimal(18, 0)))
INSERT [dbo].[LessonType] ([LessonType], [Name], [Payment]) VALUES (3, N'Лабораторное занятие', CAST(450 AS Decimal(18, 0)))
GO
INSERT [dbo].[Schedule] ([IdLesson], [IdGroup], [IdTeachers], [LessonType], [IdSubject], [LessonDate]) VALUES (1, 3, 17, 1, 1, CAST(N'2024-03-20' AS Date))
INSERT [dbo].[Schedule] ([IdLesson], [IdGroup], [IdTeachers], [LessonType], [IdSubject], [LessonDate]) VALUES (2, 7, 9, 2, 4, CAST(N'2022-09-04' AS Date))
INSERT [dbo].[Schedule] ([IdLesson], [IdGroup], [IdTeachers], [LessonType], [IdSubject], [LessonDate]) VALUES (3, 6, 24, 2, 4, CAST(N'2022-09-27' AS Date))
INSERT [dbo].[Schedule] ([IdLesson], [IdGroup], [IdTeachers], [LessonType], [IdSubject], [LessonDate]) VALUES (4, 8, 3, 1, 6, CAST(N'2024-02-12' AS Date))
INSERT [dbo].[Schedule] ([IdLesson], [IdGroup], [IdTeachers], [LessonType], [IdSubject], [LessonDate]) VALUES (5, 1, 18, 3, 3, CAST(N'2023-10-04' AS Date))
INSERT [dbo].[Schedule] ([IdLesson], [IdGroup], [IdTeachers], [LessonType], [IdSubject], [LessonDate]) VALUES (6, 5, 28, 3, 1, CAST(N'2024-02-07' AS Date))
INSERT [dbo].[Schedule] ([IdLesson], [IdGroup], [IdTeachers], [LessonType], [IdSubject], [LessonDate]) VALUES (7, 1, 10, 3, 7, CAST(N'2024-10-20' AS Date))
INSERT [dbo].[Schedule] ([IdLesson], [IdGroup], [IdTeachers], [LessonType], [IdSubject], [LessonDate]) VALUES (8, 8, 15, 2, 6, CAST(N'2023-06-12' AS Date))
INSERT [dbo].[Schedule] ([IdLesson], [IdGroup], [IdTeachers], [LessonType], [IdSubject], [LessonDate]) VALUES (9, 2, 13, 1, 7, CAST(N'2022-08-13' AS Date))
INSERT [dbo].[Schedule] ([IdLesson], [IdGroup], [IdTeachers], [LessonType], [IdSubject], [LessonDate]) VALUES (10, 3, 12, 2, 1, CAST(N'2024-01-22' AS Date))
INSERT [dbo].[Schedule] ([IdLesson], [IdGroup], [IdTeachers], [LessonType], [IdSubject], [LessonDate]) VALUES (11, 6, 10, 1, 3, CAST(N'2024-06-07' AS Date))
INSERT [dbo].[Schedule] ([IdLesson], [IdGroup], [IdTeachers], [LessonType], [IdSubject], [LessonDate]) VALUES (12, 8, 22, 3, 6, CAST(N'2022-08-25' AS Date))
INSERT [dbo].[Schedule] ([IdLesson], [IdGroup], [IdTeachers], [LessonType], [IdSubject], [LessonDate]) VALUES (13, 7, 20, 2, 5, CAST(N'2023-05-12' AS Date))
INSERT [dbo].[Schedule] ([IdLesson], [IdGroup], [IdTeachers], [LessonType], [IdSubject], [LessonDate]) VALUES (14, 2, 25, 2, 2, CAST(N'2024-02-09' AS Date))
INSERT [dbo].[Schedule] ([IdLesson], [IdGroup], [IdTeachers], [LessonType], [IdSubject], [LessonDate]) VALUES (15, 3, 14, 2, 6, CAST(N'2023-08-05' AS Date))
INSERT [dbo].[Schedule] ([IdLesson], [IdGroup], [IdTeachers], [LessonType], [IdSubject], [LessonDate]) VALUES (16, 2, 3, 2, 3, CAST(N'2022-10-11' AS Date))
INSERT [dbo].[Schedule] ([IdLesson], [IdGroup], [IdTeachers], [LessonType], [IdSubject], [LessonDate]) VALUES (17, 6, 23, 3, 3, CAST(N'2024-10-22' AS Date))
INSERT [dbo].[Schedule] ([IdLesson], [IdGroup], [IdTeachers], [LessonType], [IdSubject], [LessonDate]) VALUES (18, 5, 7, 1, 6, CAST(N'2023-02-07' AS Date))
INSERT [dbo].[Schedule] ([IdLesson], [IdGroup], [IdTeachers], [LessonType], [IdSubject], [LessonDate]) VALUES (19, 6, 3, 2, 2, CAST(N'2023-07-08' AS Date))
INSERT [dbo].[Schedule] ([IdLesson], [IdGroup], [IdTeachers], [LessonType], [IdSubject], [LessonDate]) VALUES (20, 4, 15, 3, 8, CAST(N'2022-10-03' AS Date))
INSERT [dbo].[Schedule] ([IdLesson], [IdGroup], [IdTeachers], [LessonType], [IdSubject], [LessonDate]) VALUES (21, 3, 27, 1, 3, CAST(N'2022-08-02' AS Date))
INSERT [dbo].[Schedule] ([IdLesson], [IdGroup], [IdTeachers], [LessonType], [IdSubject], [LessonDate]) VALUES (22, 5, 11, 1, 2, CAST(N'2022-10-11' AS Date))
INSERT [dbo].[Schedule] ([IdLesson], [IdGroup], [IdTeachers], [LessonType], [IdSubject], [LessonDate]) VALUES (23, 6, 7, 3, 1, CAST(N'2023-02-16' AS Date))
INSERT [dbo].[Schedule] ([IdLesson], [IdGroup], [IdTeachers], [LessonType], [IdSubject], [LessonDate]) VALUES (24, 6, 13, 1, 4, CAST(N'2023-05-07' AS Date))
INSERT [dbo].[Schedule] ([IdLesson], [IdGroup], [IdTeachers], [LessonType], [IdSubject], [LessonDate]) VALUES (25, 2, 18, 1, 6, CAST(N'2022-04-09' AS Date))
INSERT [dbo].[Schedule] ([IdLesson], [IdGroup], [IdTeachers], [LessonType], [IdSubject], [LessonDate]) VALUES (26, 3, 5, 1, 1, CAST(N'2022-05-03' AS Date))
INSERT [dbo].[Schedule] ([IdLesson], [IdGroup], [IdTeachers], [LessonType], [IdSubject], [LessonDate]) VALUES (27, 8, 23, 2, 6, CAST(N'2024-01-08' AS Date))
INSERT [dbo].[Schedule] ([IdLesson], [IdGroup], [IdTeachers], [LessonType], [IdSubject], [LessonDate]) VALUES (28, 2, 14, 2, 6, CAST(N'2024-10-27' AS Date))
INSERT [dbo].[Schedule] ([IdLesson], [IdGroup], [IdTeachers], [LessonType], [IdSubject], [LessonDate]) VALUES (29, 1, 23, 3, 8, CAST(N'2023-03-15' AS Date))
INSERT [dbo].[Schedule] ([IdLesson], [IdGroup], [IdTeachers], [LessonType], [IdSubject], [LessonDate]) VALUES (30, 8, 25, 1, 2, CAST(N'2023-02-21' AS Date))
GO
INSERT [dbo].[Speciality] ([IdSpeciality], [Name]) VALUES (1, N'Инженер-Программист')
INSERT [dbo].[Speciality] ([IdSpeciality], [Name]) VALUES (2, N'Системный администратор')
INSERT [dbo].[Speciality] ([IdSpeciality], [Name]) VALUES (3, N'Юрист')
INSERT [dbo].[Speciality] ([IdSpeciality], [Name]) VALUES (4, N'Логист')
INSERT [dbo].[Speciality] ([IdSpeciality], [Name]) VALUES (5, N'Металлург')
GO
INSERT [dbo].[Students] ([IdStudent], [LastName], [FirstName], [MiddleName], [PhoneNumber], [BirthDate], [IdGroup]) VALUES (1, N'Орлов', N'Кирилл', N'Миронович', N'+72917866805', CAST(N'2000-03-27' AS Date), 1)
INSERT [dbo].[Students] ([IdStudent], [LastName], [FirstName], [MiddleName], [PhoneNumber], [BirthDate], [IdGroup]) VALUES (2, N'Соколова', N'Варвара', N'Егоровна', N'+76976364151', CAST(N'1997-10-19' AS Date), 3)
INSERT [dbo].[Students] ([IdStudent], [LastName], [FirstName], [MiddleName], [PhoneNumber], [BirthDate], [IdGroup]) VALUES (3, N'Евсеева', N'Кира', N'Дмитриевна', N'+72900936063', CAST(N'1999-07-27' AS Date), 8)
INSERT [dbo].[Students] ([IdStudent], [LastName], [FirstName], [MiddleName], [PhoneNumber], [BirthDate], [IdGroup]) VALUES (4, N'Васильева', N'Марьям', N'Михайловна', N'+76467350769', CAST(N'1987-07-22' AS Date), 7)
INSERT [dbo].[Students] ([IdStudent], [LastName], [FirstName], [MiddleName], [PhoneNumber], [BirthDate], [IdGroup]) VALUES (5, N'Соколова', N'Ксения', N'Михайловна', N'+75084655403', CAST(N'1989-07-23' AS Date), 8)
INSERT [dbo].[Students] ([IdStudent], [LastName], [FirstName], [MiddleName], [PhoneNumber], [BirthDate], [IdGroup]) VALUES (6, N'Белов', N'Максим', N'Михайлович', N'+71359744067', CAST(N'1987-01-01' AS Date), 3)
INSERT [dbo].[Students] ([IdStudent], [LastName], [FirstName], [MiddleName], [PhoneNumber], [BirthDate], [IdGroup]) VALUES (7, N'Соколова', N'Полина', N'Артёмовна', N'+77362039997', CAST(N'1996-09-03' AS Date), 6)
INSERT [dbo].[Students] ([IdStudent], [LastName], [FirstName], [MiddleName], [PhoneNumber], [BirthDate], [IdGroup]) VALUES (8, N'Львова', N'Милана', N'Никитична', N'+77310967623', CAST(N'1997-01-05' AS Date), 2)
INSERT [dbo].[Students] ([IdStudent], [LastName], [FirstName], [MiddleName], [PhoneNumber], [BirthDate], [IdGroup]) VALUES (9, N'Лукин', N'Антон', N'Всеволодович', N'+71876838797', CAST(N'1993-03-09' AS Date), 6)
INSERT [dbo].[Students] ([IdStudent], [LastName], [FirstName], [MiddleName], [PhoneNumber], [BirthDate], [IdGroup]) VALUES (10, N'Никольская', N'Екатерина', N'Дмитриевна', N'+75564117438', CAST(N'1986-12-17' AS Date), 8)
INSERT [dbo].[Students] ([IdStudent], [LastName], [FirstName], [MiddleName], [PhoneNumber], [BirthDate], [IdGroup]) VALUES (11, N'Леонов', N'Константин', N'Матвеевич', N'+71887365729', CAST(N'1982-06-22' AS Date), 5)
INSERT [dbo].[Students] ([IdStudent], [LastName], [FirstName], [MiddleName], [PhoneNumber], [BirthDate], [IdGroup]) VALUES (12, N'Жукова', N'Валерия', N'Артёмовна', N'+79055078934', CAST(N'1985-03-21' AS Date), 1)
INSERT [dbo].[Students] ([IdStudent], [LastName], [FirstName], [MiddleName], [PhoneNumber], [BirthDate], [IdGroup]) VALUES (13, N'Васильева', N'Алиса', N'Петровна', N'+75631964340', CAST(N'1998-05-27' AS Date), 5)
INSERT [dbo].[Students] ([IdStudent], [LastName], [FirstName], [MiddleName], [PhoneNumber], [BirthDate], [IdGroup]) VALUES (14, N'Лукина', N'Полина', N'Глебовна', N'+79188979918', CAST(N'1994-02-27' AS Date), 2)
INSERT [dbo].[Students] ([IdStudent], [LastName], [FirstName], [MiddleName], [PhoneNumber], [BirthDate], [IdGroup]) VALUES (15, N'Смирнова', N'Ясмина', N'Павловна', N'+75093330360', CAST(N'1993-12-05' AS Date), 3)
INSERT [dbo].[Students] ([IdStudent], [LastName], [FirstName], [MiddleName], [PhoneNumber], [BirthDate], [IdGroup]) VALUES (16, N'Захаров', N'Иван', N'Георгиевич', N'+72998757848', CAST(N'1982-12-02' AS Date), 4)
INSERT [dbo].[Students] ([IdStudent], [LastName], [FirstName], [MiddleName], [PhoneNumber], [BirthDate], [IdGroup]) VALUES (17, N'Кириллова', N'Елизавета', N'Ивановна', N'+75374284761', CAST(N'1990-11-03' AS Date), 6)
INSERT [dbo].[Students] ([IdStudent], [LastName], [FirstName], [MiddleName], [PhoneNumber], [BirthDate], [IdGroup]) VALUES (18, N'Соколов', N'Андрей', N'Фёдорович', N'+78809186222', CAST(N'1989-03-21' AS Date), 4)
INSERT [dbo].[Students] ([IdStudent], [LastName], [FirstName], [MiddleName], [PhoneNumber], [BirthDate], [IdGroup]) VALUES (19, N'Тарасов', N'Максим', N'Ярославович', N'+73960730777', CAST(N'1992-07-01' AS Date), 4)
INSERT [dbo].[Students] ([IdStudent], [LastName], [FirstName], [MiddleName], [PhoneNumber], [BirthDate], [IdGroup]) VALUES (20, N'Колосов', N'Артём', N'Артемьевич', N'+71224494294', CAST(N'1987-08-10' AS Date), 2)
INSERT [dbo].[Students] ([IdStudent], [LastName], [FirstName], [MiddleName], [PhoneNumber], [BirthDate], [IdGroup]) VALUES (21, N'Галкина', N'Надежда', N'Никитична', N'+72834401691', CAST(N'1990-07-16' AS Date), 6)
INSERT [dbo].[Students] ([IdStudent], [LastName], [FirstName], [MiddleName], [PhoneNumber], [BirthDate], [IdGroup]) VALUES (22, N'Борисов', N'Тимофей', N'Иванович', N'+76474412090', CAST(N'1983-06-26' AS Date), 5)
INSERT [dbo].[Students] ([IdStudent], [LastName], [FirstName], [MiddleName], [PhoneNumber], [BirthDate], [IdGroup]) VALUES (23, N'Сорокин', N'Лука', N'Артёмович', N'+76842694174', CAST(N'1989-12-27' AS Date), 6)
INSERT [dbo].[Students] ([IdStudent], [LastName], [FirstName], [MiddleName], [PhoneNumber], [BirthDate], [IdGroup]) VALUES (24, N'Егорова', N'Кристина', N'Ивановна', N'+79322397417', CAST(N'1986-09-12' AS Date), 2)
INSERT [dbo].[Students] ([IdStudent], [LastName], [FirstName], [MiddleName], [PhoneNumber], [BirthDate], [IdGroup]) VALUES (25, N'Зотов', N'Иван', N'Данилович', N'+74994758739', CAST(N'1980-12-04' AS Date), 2)
INSERT [dbo].[Students] ([IdStudent], [LastName], [FirstName], [MiddleName], [PhoneNumber], [BirthDate], [IdGroup]) VALUES (26, N'Грачева', N'Виктория', N'Фёдоровна', N'+73764934845', CAST(N'1984-12-15' AS Date), 7)
INSERT [dbo].[Students] ([IdStudent], [LastName], [FirstName], [MiddleName], [PhoneNumber], [BirthDate], [IdGroup]) VALUES (27, N'Лазарева', N'Элина', N'Артёмовна', N'+74019941554', CAST(N'1991-01-04' AS Date), 2)
INSERT [dbo].[Students] ([IdStudent], [LastName], [FirstName], [MiddleName], [PhoneNumber], [BirthDate], [IdGroup]) VALUES (28, N'Васильев', N'Егор', N'Сергеевич', N'+76428187622', CAST(N'1995-05-03' AS Date), 2)
INSERT [dbo].[Students] ([IdStudent], [LastName], [FirstName], [MiddleName], [PhoneNumber], [BirthDate], [IdGroup]) VALUES (29, N'Зуева', N'Владислава', N'Алексеевна', N'+72710838096', CAST(N'1986-07-26' AS Date), 8)
INSERT [dbo].[Students] ([IdStudent], [LastName], [FirstName], [MiddleName], [PhoneNumber], [BirthDate], [IdGroup]) VALUES (30, N'Филиппова', N'Мария', N'Константиновна', N'+77171435792', CAST(N'1991-08-03' AS Date), 6)
GO
INSERT [dbo].[Subject] ([IdSubject], [Nаме]) VALUES (1, N'Физика')
INSERT [dbo].[Subject] ([IdSubject], [Nаме]) VALUES (2, N'История')
INSERT [dbo].[Subject] ([IdSubject], [Nаме]) VALUES (3, N'Обществознание')
INSERT [dbo].[Subject] ([IdSubject], [Nаме]) VALUES (4, N'Экономика')
INSERT [dbo].[Subject] ([IdSubject], [Nаме]) VALUES (5, N'Информатика')
INSERT [dbo].[Subject] ([IdSubject], [Nаме]) VALUES (6, N'Право')
INSERT [dbo].[Subject] ([IdSubject], [Nаме]) VALUES (7, N'Философия')
INSERT [dbo].[Subject] ([IdSubject], [Nаме]) VALUES (8, N'Английский язык')
GO
INSERT [dbo].[Teachers] ([IdTeacher], [LastName], [FirstName], [MiddleName], [PhoneNumber], [WorkYears]) VALUES (1, N'Коновалова', N'София', N'Александровна', N'07.09.1984', 10)
INSERT [dbo].[Teachers] ([IdTeacher], [LastName], [FirstName], [MiddleName], [PhoneNumber], [WorkYears]) VALUES (2, N'Филимонова', N'Злата', N'Владиславовна', N'27.05.2000', 2)
INSERT [dbo].[Teachers] ([IdTeacher], [LastName], [FirstName], [MiddleName], [PhoneNumber], [WorkYears]) VALUES (3, N'Лапшина', N'Виктория', N'Дмитриевна', N'10.01.1984', 4)
INSERT [dbo].[Teachers] ([IdTeacher], [LastName], [FirstName], [MiddleName], [PhoneNumber], [WorkYears]) VALUES (4, N'Елисеев', N'Александр', N'Львович', N'26.02.1985', 13)
INSERT [dbo].[Teachers] ([IdTeacher], [LastName], [FirstName], [MiddleName], [PhoneNumber], [WorkYears]) VALUES (5, N'Богданова', N'Агния', N'Андреевна', N'10.07.1996', 0)
INSERT [dbo].[Teachers] ([IdTeacher], [LastName], [FirstName], [MiddleName], [PhoneNumber], [WorkYears]) VALUES (6, N'Ильин', N'Тимофей', N'Александрович', N'15.08.1998', 9)
INSERT [dbo].[Teachers] ([IdTeacher], [LastName], [FirstName], [MiddleName], [PhoneNumber], [WorkYears]) VALUES (7, N'Чижова', N'Анна', N'Михайловна', N'27.09.1982', 12)
INSERT [dbo].[Teachers] ([IdTeacher], [LastName], [FirstName], [MiddleName], [PhoneNumber], [WorkYears]) VALUES (8, N'Безруков', N'Константин', N'Константинович', N'14.01.1995', 4)
INSERT [dbo].[Teachers] ([IdTeacher], [LastName], [FirstName], [MiddleName], [PhoneNumber], [WorkYears]) VALUES (9, N'Волкова', N'Вероника', N'Артёмовна', N'27.04.1990', 13)
INSERT [dbo].[Teachers] ([IdTeacher], [LastName], [FirstName], [MiddleName], [PhoneNumber], [WorkYears]) VALUES (10, N'Волков', N'Матвей', N'Максимович', N'15.01.1980', 9)
INSERT [dbo].[Teachers] ([IdTeacher], [LastName], [FirstName], [MiddleName], [PhoneNumber], [WorkYears]) VALUES (11, N'Крюков', N'Святослав', N'Евгеньевич', N'20.04.1990', 3)
INSERT [dbo].[Teachers] ([IdTeacher], [LastName], [FirstName], [MiddleName], [PhoneNumber], [WorkYears]) VALUES (12, N'Симонов', N'Евгений', N'Михайлович', N'16.02.1988', 15)
INSERT [dbo].[Teachers] ([IdTeacher], [LastName], [FirstName], [MiddleName], [PhoneNumber], [WorkYears]) VALUES (13, N'Поздняков', N'Максим', N'Георгиевич', N'13.01.1990', 8)
INSERT [dbo].[Teachers] ([IdTeacher], [LastName], [FirstName], [MiddleName], [PhoneNumber], [WorkYears]) VALUES (14, N'Баженова', N'Марина', N'Степановна', N'25.02.1994', 10)
INSERT [dbo].[Teachers] ([IdTeacher], [LastName], [FirstName], [MiddleName], [PhoneNumber], [WorkYears]) VALUES (15, N'Романова', N'Кира', N'Фёдоровна', N'26.01.1999', 13)
INSERT [dbo].[Teachers] ([IdTeacher], [LastName], [FirstName], [MiddleName], [PhoneNumber], [WorkYears]) VALUES (16, N'Плотникова', N'Элина', N'Сергеевна', N'22.02.1982', 5)
INSERT [dbo].[Teachers] ([IdTeacher], [LastName], [FirstName], [MiddleName], [PhoneNumber], [WorkYears]) VALUES (17, N'Крюкова', N'Лилия', N'Олеговна', N'24.10.1993', 9)
INSERT [dbo].[Teachers] ([IdTeacher], [LastName], [FirstName], [MiddleName], [PhoneNumber], [WorkYears]) VALUES (18, N'Иванова', N'Софья', N'Михайловна', N'03.09.1993', 8)
INSERT [dbo].[Teachers] ([IdTeacher], [LastName], [FirstName], [MiddleName], [PhoneNumber], [WorkYears]) VALUES (19, N'Карпова', N'Анна', N'Платоновна', N'10.06.1991', 2)
INSERT [dbo].[Teachers] ([IdTeacher], [LastName], [FirstName], [MiddleName], [PhoneNumber], [WorkYears]) VALUES (20, N'Сизов', N'Павел', N'Ильич', N'11.11.1986', 10)
INSERT [dbo].[Teachers] ([IdTeacher], [LastName], [FirstName], [MiddleName], [PhoneNumber], [WorkYears]) VALUES (21, N'Левина', N'Мия', N'Степановна', N'08.02.1995', 12)
INSERT [dbo].[Teachers] ([IdTeacher], [LastName], [FirstName], [MiddleName], [PhoneNumber], [WorkYears]) VALUES (22, N'Яковлева', N'Ярослава', N'Тимофеевна', N'16.09.1995', 9)
INSERT [dbo].[Teachers] ([IdTeacher], [LastName], [FirstName], [MiddleName], [PhoneNumber], [WorkYears]) VALUES (23, N'Кузнецова', N'Елизавета', N'Макаровна', N'24.10.2000', 0)
INSERT [dbo].[Teachers] ([IdTeacher], [LastName], [FirstName], [MiddleName], [PhoneNumber], [WorkYears]) VALUES (24, N'Горбунова', N'Виктория', N'Максимовна', N'13.02.2000', 1)
INSERT [dbo].[Teachers] ([IdTeacher], [LastName], [FirstName], [MiddleName], [PhoneNumber], [WorkYears]) VALUES (25, N'Денисова', N'Антонина', N'Егоровна', N'26.01.1983', 9)
INSERT [dbo].[Teachers] ([IdTeacher], [LastName], [FirstName], [MiddleName], [PhoneNumber], [WorkYears]) VALUES (26, N'Богомолов', N'Артур', N'Платонович', N'11.11.1986', 0)
INSERT [dbo].[Teachers] ([IdTeacher], [LastName], [FirstName], [MiddleName], [PhoneNumber], [WorkYears]) VALUES (27, N'Ковалев', N'Даниил', N'Саввич', N'11.05.1981', 0)
INSERT [dbo].[Teachers] ([IdTeacher], [LastName], [FirstName], [MiddleName], [PhoneNumber], [WorkYears]) VALUES (28, N'Сазонов', N'Максим', N'Ильич', N'11.06.1984', 9)
INSERT [dbo].[Teachers] ([IdTeacher], [LastName], [FirstName], [MiddleName], [PhoneNumber], [WorkYears]) VALUES (29, N'Матвеева', N'Мадина', N'Петровна', N'07.03.1983', 13)
INSERT [dbo].[Teachers] ([IdTeacher], [LastName], [FirstName], [MiddleName], [PhoneNumber], [WorkYears]) VALUES (30, N'Золотарев', N'Александр', N'Максимович', N'27.05.1991', 2)
GO
ALTER TABLE [dbo].[Teachers] ADD  DEFAULT ((0)) FOR [WorkYears]
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD FOREIGN KEY([IdDepartment])
REFERENCES [dbo].[Department] ([IdDepartment])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD FOREIGN KEY([IdSpeciality])
REFERENCES [dbo].[Speciality] ([IdSpeciality])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD  CONSTRAINT [FK__Schedule__IdGrou__46E78A0C] FOREIGN KEY([IdGroup])
REFERENCES [dbo].[Group] ([IdGroup])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Schedule] CHECK CONSTRAINT [FK__Schedule__IdGrou__46E78A0C]
GO
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD  CONSTRAINT [FK__Schedule__IdSubj__49C3F6B7] FOREIGN KEY([IdSubject])
REFERENCES [dbo].[Subject] ([IdSubject])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Schedule] CHECK CONSTRAINT [FK__Schedule__IdSubj__49C3F6B7]
GO
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD  CONSTRAINT [FK__Schedule__IdTeac__47DBAE45] FOREIGN KEY([IdTeachers])
REFERENCES [dbo].[Teachers] ([IdTeacher])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Schedule] CHECK CONSTRAINT [FK__Schedule__IdTeac__47DBAE45]
GO
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD  CONSTRAINT [FK__Schedule__Lesson__48CFD27E] FOREIGN KEY([LessonType])
REFERENCES [dbo].[LessonType] ([LessonType])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Schedule] CHECK CONSTRAINT [FK__Schedule__Lesson__48CFD27E]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK__Students__IdGrou__4CA06362] FOREIGN KEY([IdGroup])
REFERENCES [dbo].[Group] ([IdGroup])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK__Students__IdGrou__4CA06362]
GO
ALTER TABLE [dbo].[Teachers]  WITH CHECK ADD CHECK  (([WorkYears]>=(0)))
GO
