USE [SWP391]
GO
/****** Object:  Table [dbo].[classes]    Script Date: 10/8/2023 12:22:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[classes](
	[class_id] [int] NOT NULL,
	[class_name] [nchar](100) NULL,
	[class_date] [nchar](100) NULL,
	[teacher_id] [int] NULL,
	[student_id] [int] NULL,
 CONSTRAINT [PK_classes] PRIMARY KEY CLUSTERED 
(
	[class_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[courseclass]    Script Date: 10/8/2023 12:22:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[courseclass](
	[courseclass_id] [int] NOT NULL,
	[course_id] [int] NULL,
	[class_id] [int] NULL,
 CONSTRAINT [PK_courseclass] PRIMARY KEY CLUSTERED 
(
	[courseclass_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[courses]    Script Date: 10/8/2023 12:22:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[courses](
	[course_id] [int] NOT NULL,
	[course_name] [nchar](100) NULL,
	[description] [nchar](100) NULL,
 CONSTRAINT [PK_courses] PRIMARY KEY CLUSTERED 
(
	[course_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[exams]    Script Date: 10/8/2023 12:22:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[exams](
	[exam_id] [int] NOT NULL,
	[course_id] [int] NULL,
	[teacher_id] [int] NULL,
	[title] [nchar](100) NULL,
	[description] [nchar](100) NULL,
	[duration] [nchar](100) NULL,
	[start_time] [nchar](100) NULL,
	[end_time] [nchar](100) NULL,
 CONSTRAINT [PK_exams] PRIMARY KEY CLUSTERED 
(
	[exam_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[questions]    Script Date: 10/8/2023 12:22:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[questions](
	[question_id] [int] NOT NULL,
	[exam_id] [int] NULL,
	[question_text] [nchar](100) NULL,
	[answers] [nchar](100) NULL,
	[correct_answer] [nchar](100) NULL,
	[points] [nchar](100) NULL,
 CONSTRAINT [PK_questions] PRIMARY KEY CLUSTERED 
(
	[question_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[results]    Script Date: 10/8/2023 12:22:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[results](
	[result_id] [int] NOT NULL,
	[student_id] [int] NULL,
	[exam_id] [int] NULL,
	[score] [nchar](100) NULL,
	[details] [nchar](100) NULL,
 CONSTRAINT [PK_results] PRIMARY KEY CLUSTERED 
(
	[result_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[role]    Script Date: 10/8/2023 12:22:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role](
	[role_id] [int] NOT NULL,
	[role_name] [nchar](100) NULL,
 CONSTRAINT [PK_role] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stats]    Script Date: 10/8/2023 12:22:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stats](
	[stat_id] [int] NOT NULL,
	[exam_id] [int] NULL,
	[min_score] [nchar](100) NULL,
	[max_score] [nchar](100) NULL,
	[avg_score] [nchar](100) NULL,
	[median_score] [nchar](100) NULL,
	[count_participants] [nchar](100) NULL,
 CONSTRAINT [PK_stats] PRIMARY KEY CLUSTERED 
(
	[stat_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[student]    Script Date: 10/8/2023 12:22:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[student](
	[student_id] [int] NOT NULL,
	[user_id] [int] NULL,
 CONSTRAINT [PK_student] PRIMARY KEY CLUSTERED 
(
	[student_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[teachers]    Script Date: 10/8/2023 12:22:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[teachers](
	[teacher_id] [int] NOT NULL,
	[user_id] [int] NULL,
 CONSTRAINT [PK_teachers] PRIMARY KEY CLUSTERED 
(
	[teacher_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 10/8/2023 12:22:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[user_id] [int] NOT NULL,
	[username] [nchar](100) NULL,
	[password] [nchar](100) NULL,
	[email] [nchar](100) NULL,
	[role] [int] NULL,
	[dob] [nchar](100) NULL,
	[full_name] [nchar](100) NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[classes]  WITH CHECK ADD  CONSTRAINT [FK_classes_student] FOREIGN KEY([student_id])
REFERENCES [dbo].[student] ([student_id])
GO
ALTER TABLE [dbo].[classes] CHECK CONSTRAINT [FK_classes_student]
GO
ALTER TABLE [dbo].[classes]  WITH CHECK ADD  CONSTRAINT [FK_classes_teachers] FOREIGN KEY([teacher_id])
REFERENCES [dbo].[teachers] ([teacher_id])
GO
ALTER TABLE [dbo].[classes] CHECK CONSTRAINT [FK_classes_teachers]
GO
ALTER TABLE [dbo].[courseclass]  WITH CHECK ADD  CONSTRAINT [FK_courseclass_classes] FOREIGN KEY([class_id])
REFERENCES [dbo].[classes] ([class_id])
GO
ALTER TABLE [dbo].[courseclass] CHECK CONSTRAINT [FK_courseclass_classes]
GO
ALTER TABLE [dbo].[courseclass]  WITH CHECK ADD  CONSTRAINT [FK_courseclass_courses1] FOREIGN KEY([course_id])
REFERENCES [dbo].[courses] ([course_id])
GO
ALTER TABLE [dbo].[courseclass] CHECK CONSTRAINT [FK_courseclass_courses1]
GO
ALTER TABLE [dbo].[exams]  WITH CHECK ADD  CONSTRAINT [FK_exams_courses] FOREIGN KEY([course_id])
REFERENCES [dbo].[courses] ([course_id])
GO
ALTER TABLE [dbo].[exams] CHECK CONSTRAINT [FK_exams_courses]
GO
ALTER TABLE [dbo].[exams]  WITH CHECK ADD  CONSTRAINT [FK_exams_teachers] FOREIGN KEY([teacher_id])
REFERENCES [dbo].[teachers] ([teacher_id])
GO
ALTER TABLE [dbo].[exams] CHECK CONSTRAINT [FK_exams_teachers]
GO
ALTER TABLE [dbo].[questions]  WITH CHECK ADD  CONSTRAINT [FK_questions_exams] FOREIGN KEY([exam_id])
REFERENCES [dbo].[exams] ([exam_id])
GO
ALTER TABLE [dbo].[questions] CHECK CONSTRAINT [FK_questions_exams]
GO
ALTER TABLE [dbo].[results]  WITH CHECK ADD  CONSTRAINT [FK_results_exams] FOREIGN KEY([exam_id])
REFERENCES [dbo].[exams] ([exam_id])
GO
ALTER TABLE [dbo].[results] CHECK CONSTRAINT [FK_results_exams]
GO
ALTER TABLE [dbo].[results]  WITH CHECK ADD  CONSTRAINT [FK_results_student] FOREIGN KEY([student_id])
REFERENCES [dbo].[student] ([student_id])
GO
ALTER TABLE [dbo].[results] CHECK CONSTRAINT [FK_results_student]
GO
ALTER TABLE [dbo].[stats]  WITH CHECK ADD  CONSTRAINT [FK_stats_exams] FOREIGN KEY([exam_id])
REFERENCES [dbo].[exams] ([exam_id])
GO
ALTER TABLE [dbo].[stats] CHECK CONSTRAINT [FK_stats_exams]
GO
ALTER TABLE [dbo].[student]  WITH CHECK ADD  CONSTRAINT [FK_student_users] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([user_id])
GO
ALTER TABLE [dbo].[student] CHECK CONSTRAINT [FK_student_users]
GO
ALTER TABLE [dbo].[teachers]  WITH CHECK ADD  CONSTRAINT [FK_teachers_users] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([user_id])
GO
ALTER TABLE [dbo].[teachers] CHECK CONSTRAINT [FK_teachers_users]
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [FK_users_role] FOREIGN KEY([role])
REFERENCES [dbo].[role] ([role_id])
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [FK_users_role]
GO
