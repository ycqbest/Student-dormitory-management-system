USE [master]
GO
/****** Object:  Database [YCQ]    Script Date: 2019/12/6 13:03:38 ******/
CREATE DATABASE [YCQ] ON  PRIMARY 
( NAME = N'YCQ', FILENAME = N'D:\YCQ.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'YCQ_log', FILENAME = N'D:\数据库\YCQ_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [YCQ].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [YCQ] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [YCQ] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [YCQ] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [YCQ] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [YCQ] SET ARITHABORT OFF 
GO
ALTER DATABASE [YCQ] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [YCQ] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [YCQ] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [YCQ] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [YCQ] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [YCQ] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [YCQ] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [YCQ] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [YCQ] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [YCQ] SET  DISABLE_BROKER 
GO
ALTER DATABASE [YCQ] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [YCQ] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [YCQ] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [YCQ] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [YCQ] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [YCQ] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [YCQ] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [YCQ] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [YCQ] SET  MULTI_USER 
GO
ALTER DATABASE [YCQ] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [YCQ] SET DB_CHAINING OFF 
GO
USE [YCQ]
GO
/****** Object:  Table [dbo].[A]    Script Date: 2019/12/6 13:03:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[A](
	[Sno] [varchar](10) NOT NULL,
	[Sn] [varchar](10) NOT NULL,
	[Sex] [char](10) NULL CONSTRAINT [DF_A_Sex]  DEFAULT ('男'),
	[BP] [char](20) NULL,
	[Dn] [char](20) NOT NULL,
	[Gn] [char](20) NOT NULL,
	[Dono] [char](10) NULL,
	[Tel] [varchar](20) NULL,
 CONSTRAINT [PK_A] PRIMARY KEY CLUSTERED 
(
	[Sno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[B]    Script Date: 2019/12/6 13:03:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[B](
	[Dono] [char](10) NOT NULL,
	[AP] [int] NOT NULL,
	[Occupy] [int] NULL,
	[Lno] [varchar](6) NULL,
	[Beizhu] [varchar](max) NULL,
 CONSTRAINT [PK_B] PRIMARY KEY CLUSTERED 
(
	[Dono] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[C]    Script Date: 2019/12/6 13:03:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[C](
	[Sto] [varchar](10) NOT NULL,
	[St] [varchar](10) NOT NULL,
	[Sex] [char](10) NULL CONSTRAINT [DF_C_Sex]  DEFAULT ('男'),
	[Age] [char](10) NULL,
	[WK] [char](10) NULL,
	[Tel] [varchar](20) NULL,
	[Lno] [varchar](6) NULL,
	[BP] [char](20) NULL,
 CONSTRAINT [PK_C] PRIMARY KEY CLUSTERED 
(
	[Sto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[D]    Script Date: 2019/12/6 13:03:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[D](
	[Mo] [varchar](10) NOT NULL,
	[Dono] [char](10) NULL,
	[Month] [int] NULL CONSTRAINT [DF_D_Month]  DEFAULT ((1)),
	[WP] [float] NULL,
	[Water] [float] NULL,
	[EP] [float] NULL,
	[Ele] [float] NULL,
 CONSTRAINT [PK_D] PRIMARY KEY CLUSTERED 
(
	[Mo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[E]    Script Date: 2019/12/6 13:03:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[E](
	[Fno] [char](20) NOT NULL,
	[Name] [varchar](10) NOT NULL,
	[Tel] [varchar](20) NOT NULL,
	[RE] [char](6) NOT NULL,
	[Sno] [varchar](10) NULL,
	[Time] [datetime] NOT NULL,
	[No] [int] NOT NULL,
 CONSTRAINT [PK_E] PRIMARY KEY CLUSTERED 
(
	[No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[F]    Script Date: 2019/12/6 13:03:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[F](
	[No] [varchar](20) NOT NULL,
	[Sno] [varchar](10) NULL,
	[Bec] [varchar](max) NOT NULL,
	[Time] [time](7) NOT NULL,
 CONSTRAINT [PK_F] PRIMARY KEY CLUSTERED 
(
	[No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[G]    Script Date: 2019/12/6 13:03:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[G](
	[Bao] [varchar](20) NOT NULL,
	[Dono] [char](10) NULL,
	[LB] [char](6) NOT NULL,
	[XQ] [varchar](50) NULL,
	[Date] [varchar](50) NULL,
	[Sto] [varchar](10) NULL,
 CONSTRAINT [PK_G] PRIMARY KEY CLUSTERED 
(
	[Bao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[H]    Script Date: 2019/12/6 13:03:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[H](
	[Gno] [varchar](20) NOT NULL,
	[Sto] [varchar](10) NULL,
	[SY] [varchar](max) NOT NULL,
 CONSTRAINT [PK_H] PRIMARY KEY CLUSTERED 
(
	[Gno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[I]    Script Date: 2019/12/6 13:03:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[I](
	[Lno] [varchar](6) NOT NULL,
	[Ln] [varchar](10) NULL,
	[Tel] [varchar](20) NULL,
 CONSTRAINT [PK_I] PRIMARY KEY CLUSTERED 
(
	[Lno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[U]    Script Date: 2019/12/6 13:03:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[U](
	[Name] [varchar](10) NOT NULL,
	[Pwd] [varchar](30) NOT NULL,
	[Power] [varchar](50) NOT NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[v_baoxiu]    Script Date: 2019/12/6 13:03:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_baoxiu](报修申请日期,报修类别,报修详情,宿舍号,楼号,解决日期,解决人姓名,解决人联系方式)
as 
select left(G.Bao,8),G.lb,G.XQ,G.Dono,B.Lno,G.Date,C.St,C.Tel
from G join B on G.Dono=B.Dono join C on G.sto=C.Sto


GO
/****** Object:  View [dbo].[v_feiyong]    Script Date: 2019/12/6 13:03:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  VIEW [dbo].[v_feiyong] (宿舍号,已住人数,月份,总电费, 人均费用) 
AS  
SELECT  B.Dono, B.AP, D.Month,SUM(D.EP*D.Ele), SUM(D.EP*D.Ele)/B.AP
FROM B JOIN D ON B.Dono=D.Dono
GROUP  BY B.Dono, B.AP, D.Month;
GO
/****** Object:  View [dbo].[v_gonggao]    Script Date: 2019/12/6 13:03:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_gonggao](公告时间,公告内容,发布人姓名,发布人职务,发布人联系方式)
as
select left(H.Gno,8),H.SY,C.ST,C.WK,C.Tel
from H join C on H.STo=C.STo 

GO
/****** Object:  View [dbo].[v_laifang]    Script Date: 2019/12/6 13:03:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_laifang](表单号,姓名,身份证号,联系方式,访问人学号,访问学生姓名,学生宿舍号,学生联系方式,关系,访问时间)
as
select E.No,E.name,E.Fno,E.tel, A.Sno ,A.Sn,A.Dono,A.tel,E.RE,E.Time
from E join A on E.Sno=A.Sno
GO
/****** Object:  View [dbo].[v_s1]    Script Date: 2019/12/6 13:03:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  VIEW [dbo].[v_s1] (宿舍号,已住人数,总电费, 单月最高用电量, 单月最低用电量) 
AS  
SELECT  B.Dono, B.AP, SUM(D.EP*D.Ele), MAX(D.Ele),MIN(D.Ele)
FROM B JOIN D ON B.Dono=D.Dono
GROUP  BY B.Dono, B.AP;

GO
/****** Object:  View [dbo].[v_s2]    Script Date: 2019/12/6 13:03:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  VIEW [dbo].[v_s2] (学号,姓名,学院, 班级, 晚归总次数) 
AS  
SELECT  A.Sno, A.Sn, A.Dn, A.Gn ,COUNT(F.No)
FROM A JOIN F ON A.Sno=F.Sno
GROUP  BY A.Sno, A.Sn, A.Dn, A.Gn;

GO
/****** Object:  View [dbo].[v_wangui]    Script Date: 2019/12/6 13:03:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_wangui](学生学号,学生姓名,晚归日期,晚归时间,晚归原因,学院,班级,宿舍号,楼号)
as
select A.Sno,A.Sn,left(F.No,8),F.Time,F.Bec,A.Dn,A.Gn,A.Dono,B.Lno
from A join F on A.Sno=F.Sno join B on A.Dono=B.Dono

GO
INSERT [dbo].[A] ([Sno], [Sn], [Sex], [BP], [Dn], [Gn], [Dono], [Tel]) VALUES (N'171001201', N'韩宝轩', N'男        ', N'北京                ', N'信息学院            ', N'信息17-2            ', N'12 805    ', N'')
INSERT [dbo].[A] ([Sno], [Sn], [Sex], [BP], [Dn], [Gn], [Dono], [Tel]) VALUES (N'171001202', N'方雅浩', N'男        ', N'广东                ', N'信息学院            ', N'信息17-1            ', N'12 805    ', N'')
INSERT [dbo].[A] ([Sno], [Sn], [Sex], [BP], [Dn], [Gn], [Dono], [Tel]) VALUES (N'171001203', N'宋守诚', N'男        ', N'河南                ', N'信息学院            ', N'信息17-1            ', N'12 805    ', N'18501926388')
INSERT [dbo].[A] ([Sno], [Sn], [Sex], [BP], [Dn], [Gn], [Dono], [Tel]) VALUES (N'171001204', N'武江浩', N'男        ', N'河北                ', N'信息学院            ', N'信息17-1            ', N'12 805    ', N'18501926388')
INSERT [dbo].[A] ([Sno], [Sn], [Sex], [BP], [Dn], [Gn], [Dono], [Tel]) VALUES (N'171001206', N'王胤钦', N'男        ', N'江西                ', N'信息学院            ', N'信息17-1            ', N'12 806    ', N'')
INSERT [dbo].[A] ([Sno], [Sn], [Sex], [BP], [Dn], [Gn], [Dono], [Tel]) VALUES (N'171001208', N'王泽昌', N'男        ', N'山东                ', N'信息学院            ', N'信息17-1            ', N'12 806    ', N'')
INSERT [dbo].[A] ([Sno], [Sn], [Sex], [BP], [Dn], [Gn], [Dono], [Tel]) VALUES (N'171001210', N'祝志炳', N'男        ', N'陕西                ', N'信息学院            ', N'信息17-1            ', N'12 806    ', N'')
INSERT [dbo].[A] ([Sno], [Sn], [Sex], [BP], [Dn], [Gn], [Dono], [Tel]) VALUES (N'171001212', N'季晓阳', N'女        ', N'北京                ', N'信息学院            ', N'信息17-1            ', N'13 20810  ', N'13730584597')
INSERT [dbo].[A] ([Sno], [Sn], [Sex], [BP], [Dn], [Gn], [Dono], [Tel]) VALUES (N'171001213', N'张珮苇', N'女        ', N'甘肃                ', N'信息学院            ', N'信息17-1            ', N'13 20809  ', N'13718694182')
INSERT [dbo].[A] ([Sno], [Sn], [Sex], [BP], [Dn], [Gn], [Dono], [Tel]) VALUES (N'171001214', N'陆潇悦', N'女        ', N'广西                ', N'信息学院            ', N'信息17-1            ', N'13 20809  ', N'')
INSERT [dbo].[A] ([Sno], [Sn], [Sex], [BP], [Dn], [Gn], [Dono], [Tel]) VALUES (N'171001215', N'曹煜珺', N'女        ', N'贵州                ', N'信息学院            ', N'信息17-1            ', N'13 20810  ', N'')
INSERT [dbo].[A] ([Sno], [Sn], [Sex], [BP], [Dn], [Gn], [Dono], [Tel]) VALUES (N'171001216', N'姜洪微', N'女        ', N'河南                ', N'信息学院            ', N'信息17-1            ', N'13 20809  ', N'')
INSERT [dbo].[A] ([Sno], [Sn], [Sex], [BP], [Dn], [Gn], [Dono], [Tel]) VALUES (N'171001217', N'顾涵', N'女        ', N'河南                ', N'信息学院            ', N'信息17-1            ', N'13 20810  ', N'')
INSERT [dbo].[A] ([Sno], [Sn], [Sex], [BP], [Dn], [Gn], [Dono], [Tel]) VALUES (N'171001218', N'赛竞艳', N'女        ', N'黑龙江              ', N'信息学院            ', N'信息17-1            ', N'13 20809  ', N'15611266155')
INSERT [dbo].[A] ([Sno], [Sn], [Sex], [BP], [Dn], [Gn], [Dono], [Tel]) VALUES (N'171001219', N'王诗缘', N'女        ', N'湖北                ', N'信息学院            ', N'信息17-1            ', N'13 20809  ', N'18811719073')
INSERT [dbo].[A] ([Sno], [Sn], [Sex], [BP], [Dn], [Gn], [Dono], [Tel]) VALUES (N'171001220', N'杨楚峤', N'女        ', N'吉林                ', N'信息学院            ', N'信息17-1            ', N'13 20809  ', N'')
INSERT [dbo].[A] ([Sno], [Sn], [Sex], [BP], [Dn], [Gn], [Dono], [Tel]) VALUES (N'171001221', N'殷悦', N'女        ', N'江苏                ', N'信息学院            ', N'信息17-1            ', N'13 20810  ', N'')
INSERT [dbo].[A] ([Sno], [Sn], [Sex], [BP], [Dn], [Gn], [Dono], [Tel]) VALUES (N'171001222', N'刘雅洁', N'女        ', N'青海                ', N'信息学院            ', N'信息17-1            ', N'13 20809  ', N'18801276068')
INSERT [dbo].[A] ([Sno], [Sn], [Sex], [BP], [Dn], [Gn], [Dono], [Tel]) VALUES (N'171001223', N'李欣然', N'男        ', N'海南                ', N'林学院              ', N'林学17-1            ', N'12 805    ', N'')
INSERT [dbo].[A] ([Sno], [Sn], [Sex], [BP], [Dn], [Gn], [Dono], [Tel]) VALUES (N'171001224', N'赵力康', N'男        ', N'西藏                ', N'林学院              ', N'林学17-2            ', N'12 805    ', N'')
INSERT [dbo].[A] ([Sno], [Sn], [Sex], [BP], [Dn], [Gn], [Dono], [Tel]) VALUES (N'176003101', N'程大壮', N'男        ', N'湖南                ', N'材料学院            ', N'林工17-2            ', N'12 805    ', N'')
INSERT [dbo].[A] ([Sno], [Sn], [Sex], [BP], [Dn], [Gn], [Dono], [Tel]) VALUES (N'176003102', N'王国庆', N'男        ', N'辽宁                ', N'材料学院            ', N'林工17-1            ', N'12 805    ', N'')
INSERT [dbo].[A] ([Sno], [Sn], [Sex], [BP], [Dn], [Gn], [Dono], [Tel]) VALUES (N'186003201', N'金欣然', N'女        ', N'北京                ', N'材料学院            ', N'林工17-1            ', N'13 20814  ', N'')
INSERT [dbo].[A] ([Sno], [Sn], [Sex], [BP], [Dn], [Gn], [Dono], [Tel]) VALUES (N'186003202', N'赵晓梅', N'女        ', N'北京                ', N'材料学院            ', N'林工17-1            ', N'13 20814  ', N'')
INSERT [dbo].[B] ([Dono], [AP], [Occupy], [Lno], [Beizhu]) VALUES (N'12 805    ', 8, 8, N'12', N'2019年6月检查宿舍卫生不合格；')
INSERT [dbo].[B] ([Dono], [AP], [Occupy], [Lno], [Beizhu]) VALUES (N'12 806    ', 6, 4, N'12', NULL)
INSERT [dbo].[B] ([Dono], [AP], [Occupy], [Lno], [Beizhu]) VALUES (N'12 809    ', 8, 0, N'12', N'')
INSERT [dbo].[B] ([Dono], [AP], [Occupy], [Lno], [Beizhu]) VALUES (N'13 20809  ', 8, 5, N'13', N'2019年6月曾发生过宿舍矛盾；')
INSERT [dbo].[B] ([Dono], [AP], [Occupy], [Lno], [Beizhu]) VALUES (N'13 20810  ', 8, 6, N'13', NULL)
INSERT [dbo].[B] ([Dono], [AP], [Occupy], [Lno], [Beizhu]) VALUES (N'13 20814  ', 8, 1, N'13', NULL)
INSERT [dbo].[C] ([Sto], [St], [Sex], [Age], [WK], [Tel], [Lno], [BP]) VALUES (N'0001', N'李艳', N'女        ', N'32        ', N'宿舍管理员', N'650618', N'12', N'黑龙江              ')
INSERT [dbo].[C] ([Sto], [St], [Sex], [Age], [WK], [Tel], [Lno], [BP]) VALUES (N'0002', N'王小丽', N'女        ', N'45        ', N'宿舍管理员', N'650620', N'12', N'辽宁                ')
INSERT [dbo].[C] ([Sto], [St], [Sex], [Age], [WK], [Tel], [Lno], [BP]) VALUES (N'0003', N'彭燕燕', N'女        ', N'38        ', N'宿舍管理员', N'620618', N'13', N'吉林                ')
INSERT [dbo].[C] ([Sto], [St], [Sex], [Age], [WK], [Tel], [Lno], [BP]) VALUES (N'0004', N'杨立国', N'男        ', N'41        ', N'宿舍管理员', N'630618', N'13', N'北京                ')
INSERT [dbo].[C] ([Sto], [St], [Sex], [Age], [WK], [Tel], [Lno], [BP]) VALUES (N'0005', N'赵大强', N'男        ', N'44        ', N'宿舍管理员', N'650718', N'13', N'江苏                ')
INSERT [dbo].[C] ([Sto], [St], [Sex], [Age], [WK], [Tel], [Lno], [BP]) VALUES (N'0006', N'陆爱花', N'女        ', N'55        ', N'宿舍管理员', N'650667', N'6', N'浙江                ')
INSERT [dbo].[C] ([Sto], [St], [Sex], [Age], [WK], [Tel], [Lno], [BP]) VALUES (N'0007', N'彭丽丽', N'女        ', N'21        ', N'宿舍管理员', N'23234', N'12', N'河南                ')
INSERT [dbo].[D] ([Mo], [Dono], [Month], [WP], [Water], [EP], [Ele]) VALUES (N'1', N'13 20809  ', 9, 2.8, 1, 0.5, 240)
INSERT [dbo].[D] ([Mo], [Dono], [Month], [WP], [Water], [EP], [Ele]) VALUES (N'10', N'13 20814  ', 9, 2.7, 0.98, 0.6, 220)
INSERT [dbo].[D] ([Mo], [Dono], [Month], [WP], [Water], [EP], [Ele]) VALUES (N'2', N'13 20810  ', 9, 2.8, 0.8, 0.5, 280)
INSERT [dbo].[D] ([Mo], [Dono], [Month], [WP], [Water], [EP], [Ele]) VALUES (N'3', N'12 805    ', 9, 2.8, 1.2, 0.5, 320)
INSERT [dbo].[D] ([Mo], [Dono], [Month], [WP], [Water], [EP], [Ele]) VALUES (N'4', N'12 806    ', 9, 2.8, 1, 0.5, 300)
INSERT [dbo].[D] ([Mo], [Dono], [Month], [WP], [Water], [EP], [Ele]) VALUES (N'5', N'13 20814  ', 9, 2.8, 0.6, 0.5, 250)
INSERT [dbo].[D] ([Mo], [Dono], [Month], [WP], [Water], [EP], [Ele]) VALUES (N'6', N'13 20809  ', 10, 2.7, 1, 0.6, 260)
INSERT [dbo].[D] ([Mo], [Dono], [Month], [WP], [Water], [EP], [Ele]) VALUES (N'7', N'13 20810  ', 10, 2.7, 1, 0.6, 250)
INSERT [dbo].[D] ([Mo], [Dono], [Month], [WP], [Water], [EP], [Ele]) VALUES (N'8', N'12 805    ', 10, 2.7, 1.1, 0.6, 210)
INSERT [dbo].[D] ([Mo], [Dono], [Month], [WP], [Water], [EP], [Ele]) VALUES (N'9', N'12 806    ', 10, 2.7, 0.7, 0.6, 190)
INSERT [dbo].[E] ([Fno], [Name], [Tel], [RE], [Sno], [Time], [No]) VALUES (N'11011196802023444   ', N'李桂秀', N'15612124567', N'母女  ', N'171001204', CAST(N'2019-09-14 12:59:59.000' AS DateTime), 1)
INSERT [dbo].[E] ([Fno], [Name], [Tel], [RE], [Sno], [Time], [No]) VALUES (N'212020197401010111  ', N'杨国民', N'13945547710', N'父女  ', N'171001220', CAST(N'2019-10-01 21:23:59.000' AS DateTime), 2)
INSERT [dbo].[E] ([Fno], [Name], [Tel], [RE], [Sno], [Time], [No]) VALUES (N'345678199901030897  ', N'谢贺', N'15611266155', N'朋友  ', N'171001220', CAST(N'2019-10-03 08:00:23.000' AS DateTime), 3)
INSERT [dbo].[E] ([Fno], [Name], [Tel], [RE], [Sno], [Time], [No]) VALUES (N'346211200007051221  ', N'王俊凯', N'13767850987', N'朋友  ', N'171001220', CAST(N'2019-10-21 18:12:58.977' AS DateTime), 4)
INSERT [dbo].[E] ([Fno], [Name], [Tel], [RE], [Sno], [Time], [No]) VALUES (N'521521199911211314  ', N'易烊千玺', N'17818191314', N'恋人  ', N'171001216', CAST(N'2019-10-18 13:14:52.000' AS DateTime), 5)
INSERT [dbo].[E] ([Fno], [Name], [Tel], [RE], [Sno], [Time], [No]) VALUES (N'562162198609270101  ', N'华晨宇', N'17713140686', N'朋友  ', N'171001220', CAST(N'2019-10-28 10:32:34.457' AS DateTime), 6)
INSERT [dbo].[E] ([Fno], [Name], [Tel], [RE], [Sno], [Time], [No]) VALUES (N'676768200010140811  ', N'赛争奇', N'18816719090', N'姐妹  ', N'171001218', CAST(N'2019-10-14 07:56:14.000' AS DateTime), 7)
INSERT [dbo].[F] ([No], [Sno], [Bec], [Time]) VALUES (N'2019091201', N'171001220', N'外出学习', CAST(N'23:45:23' AS Time))
INSERT [dbo].[F] ([No], [Sno], [Bec], [Time]) VALUES (N'2019091202', N'171001218', N'外出学习', CAST(N'23:46:46' AS Time))
INSERT [dbo].[F] ([No], [Sno], [Bec], [Time]) VALUES (N'2019092401', N'171001215', N'学生工作', CAST(N'23:58:30' AS Time))
INSERT [dbo].[F] ([No], [Sno], [Bec], [Time]) VALUES (N'2019092501', N'171001216', N'休闲娱乐', CAST(N'00:45:56' AS Time))
INSERT [dbo].[F] ([No], [Sno], [Bec], [Time]) VALUES (N'2019092502', N'171001220', N'外出学习', CAST(N'23:58:18' AS Time))
INSERT [dbo].[F] ([No], [Sno], [Bec], [Time]) VALUES (N'2019092503', N'186003202', N'学生工作', CAST(N'23:59:00' AS Time))
INSERT [dbo].[F] ([No], [Sno], [Bec], [Time]) VALUES (N'2019100101', N'171001220', N'休闲娱乐', CAST(N'23:57:32' AS Time))
INSERT [dbo].[F] ([No], [Sno], [Bec], [Time]) VALUES (N'2019102601', N'171001220', N'外出学习', CAST(N'00:12:34' AS Time))
INSERT [dbo].[F] ([No], [Sno], [Bec], [Time]) VALUES (N'2019102701', N'171001216', N'休闲娱乐', CAST(N'00:56:54' AS Time))
INSERT [dbo].[F] ([No], [Sno], [Bec], [Time]) VALUES (N'2019120401', N'171001220', N'外出学习', CAST(N'23:48:42' AS Time))
INSERT [dbo].[F] ([No], [Sno], [Bec], [Time]) VALUES (N'2019120501', N'171001220', N'外出学习', CAST(N'00:16:06' AS Time))
INSERT [dbo].[G] ([Bao], [Dono], [LB], [XQ], [Date], [Sto]) VALUES (N'2019101101', N'13 20809  ', N'水    ', N'水管爆破；', N'2019-10-11', N'0001')
INSERT [dbo].[G] ([Bao], [Dono], [LB], [XQ], [Date], [Sto]) VALUES (N'2019101102', N'12 805    ', N'电    ', NULL, N'2019-10-12', N'0002')
INSERT [dbo].[G] ([Bao], [Dono], [LB], [XQ], [Date], [Sto]) VALUES (N'2019101401', N'12 806    ', N'门窗  ', NULL, N'2019-10-15', N'0005')
INSERT [dbo].[G] ([Bao], [Dono], [LB], [XQ], [Date], [Sto]) VALUES (N'2019101402', N'13 20809  ', N'水    ', N'水管爆破；', N'2019-10-11', N'0003')
INSERT [dbo].[G] ([Bao], [Dono], [LB], [XQ], [Date], [Sto]) VALUES (N'2019101801', N'13 20814  ', N'门窗  ', N'窗户玻璃破裂', N'2019-10-18', N'0001')
INSERT [dbo].[G] ([Bao], [Dono], [LB], [XQ], [Date], [Sto]) VALUES (N'201912401', N'13 20809  ', N'水    ', N'水管爆破；', N'2019-10-11', NULL)
INSERT [dbo].[H] ([Gno], [Sto], [SY]) VALUES (N'2019101101', N'0002', N'【停电通知】为确保广大同学们宿舍用电安全，10月11日晚23：30-10月12日早6：00，12号、13号宿舍楼将进行高压电检修工作，检修期间全楼停水停电，请同学们提前做好准备！（测试）')
INSERT [dbo].[H] ([Gno], [Sto], [SY]) VALUES (N'2019103001', N'0002', N'【电梯检修】10月31号，11号宿舍楼东侧2号、3号电梯全天维修，请同学们乘坐其他电梯通行！')
INSERT [dbo].[H] ([Gno], [Sto], [SY]) VALUES (N'2019110101', N'0002', N'【供暖通知】学校将于11月1日-11月5日陆续对各个宿舍进行供暖试水工作，特此通知！')
INSERT [dbo].[H] ([Gno], [Sto], [SY]) VALUES (N'2019110102', N'0001', N'【违纪通报】朱小云同学，经管学院本科生，2019年10月18日被发现在学13宿舍楼11516宿舍违规使用电夹板，被记以警告处分，特此通报！请同学们严格遵守宿舍规章纪律！')
INSERT [dbo].[I] ([Lno], [Ln], [Tel]) VALUES (N'12', N'谢学文', N'18711561667')
INSERT [dbo].[I] ([Lno], [Ln], [Tel]) VALUES (N'13', N'王洪元', N'15266789192')
INSERT [dbo].[I] ([Lno], [Ln], [Tel]) VALUES (N'6', N'安黎哲', N'15611266154')
INSERT [dbo].[U] ([Name], [Pwd], [Power]) VALUES (N'0001', N'123456', N'宿舍管理员')
INSERT [dbo].[U] ([Name], [Pwd], [Power]) VALUES (N'0002', N'123456', N'宿舍管理员')
INSERT [dbo].[U] ([Name], [Pwd], [Power]) VALUES (N'171001220', N'123456', N'学生')
SET ANSI_PADDING ON

GO
/****** Object:  Index [Dono_ind]    Script Date: 2019/12/6 13:03:38 ******/
CREATE NONCLUSTERED INDEX [Dono_ind] ON [dbo].[A]
(
	[Dono] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [Dono_ind]    Script Date: 2019/12/6 13:03:38 ******/
CREATE NONCLUSTERED INDEX [Dono_ind] ON [dbo].[D]
(
	[Dono] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[A]  WITH CHECK ADD  CONSTRAINT [FK_A_B] FOREIGN KEY([Dono])
REFERENCES [dbo].[B] ([Dono])
GO
ALTER TABLE [dbo].[A] CHECK CONSTRAINT [FK_A_B]
GO
ALTER TABLE [dbo].[B]  WITH CHECK ADD  CONSTRAINT [FK_B_I] FOREIGN KEY([Lno])
REFERENCES [dbo].[I] ([Lno])
GO
ALTER TABLE [dbo].[B] CHECK CONSTRAINT [FK_B_I]
GO
ALTER TABLE [dbo].[C]  WITH CHECK ADD  CONSTRAINT [FK_C_I] FOREIGN KEY([Lno])
REFERENCES [dbo].[I] ([Lno])
GO
ALTER TABLE [dbo].[C] CHECK CONSTRAINT [FK_C_I]
GO
ALTER TABLE [dbo].[D]  WITH CHECK ADD  CONSTRAINT [FK_D_B] FOREIGN KEY([Dono])
REFERENCES [dbo].[B] ([Dono])
GO
ALTER TABLE [dbo].[D] CHECK CONSTRAINT [FK_D_B]
GO
ALTER TABLE [dbo].[E]  WITH CHECK ADD  CONSTRAINT [FK_Table_1_A] FOREIGN KEY([Sno])
REFERENCES [dbo].[A] ([Sno])
GO
ALTER TABLE [dbo].[E] CHECK CONSTRAINT [FK_Table_1_A]
GO
ALTER TABLE [dbo].[F]  WITH CHECK ADD  CONSTRAINT [FK_F_A] FOREIGN KEY([Sno])
REFERENCES [dbo].[A] ([Sno])
GO
ALTER TABLE [dbo].[F] CHECK CONSTRAINT [FK_F_A]
GO
ALTER TABLE [dbo].[G]  WITH CHECK ADD  CONSTRAINT [FK_G_B] FOREIGN KEY([Dono])
REFERENCES [dbo].[B] ([Dono])
GO
ALTER TABLE [dbo].[G] CHECK CONSTRAINT [FK_G_B]
GO
ALTER TABLE [dbo].[H]  WITH CHECK ADD  CONSTRAINT [FK_H_C] FOREIGN KEY([Sto])
REFERENCES [dbo].[C] ([Sto])
GO
ALTER TABLE [dbo].[H] CHECK CONSTRAINT [FK_H_C]
GO
ALTER TABLE [dbo].[A]  WITH CHECK ADD  CONSTRAINT [CK_A] CHECK  (([Sex]='男' OR [Sex]='女'))
GO
ALTER TABLE [dbo].[A] CHECK CONSTRAINT [CK_A]
GO
ALTER TABLE [dbo].[C]  WITH CHECK ADD  CONSTRAINT [CK_C] CHECK  (([Sex]='男' OR [Sex]='女'))
GO
ALTER TABLE [dbo].[C] CHECK CONSTRAINT [CK_C]
GO
ALTER TABLE [dbo].[D]  WITH CHECK ADD  CONSTRAINT [CK_D] CHECK  (([Month]>=(1) AND [Month]<=(12)))
GO
ALTER TABLE [dbo].[D] CHECK CONSTRAINT [CK_D]
GO
/****** Object:  StoredProcedure [dbo].[pro_feiyong]    Script Date: 2019/12/6 13:03:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[pro_feiyong]
as
begin
select B.Dono,B.Occupy,SUM(D.EP*D.Ele), MAX(D.Ele),MIN(D.Ele)
from B join D on B.Dono=D.Dono
group by B.Dono,B.Occupy
order by SUM(D.EP*D.Ele)
end

GO
/****** Object:  StoredProcedure [dbo].[pro_laifang]    Script Date: 2019/12/6 13:03:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[pro_laifang]
@m_name varchar(10),@m_tel varchar(20),
@m_Fno char(20),@m_sno varchar(10),@m_sn varchar(10),
@m_dono char(10),@m_re char(6)
as
if exists(select * from A where sno=@m_sno and sn=@m_sn and dono=@m_dono)
begin
declare @m int
select @m=no from E
insert into E(no,fno,name,tel,re,sno,time)
values(@m+1,@m_Fno,@m_name,@m_tel,@m_re,@m_sno,getdate())
end
else
return 404

GO
/****** Object:  StoredProcedure [dbo].[pro_pwd]    Script Date: 2019/12/6 13:03:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[pro_pwd]
@m1 varchar(10),@m2 varchar(30),@m3 varchar(30),@m4 varchar(30)
as
if exists(select * from U where name=@m1 and Pwd=@m2 and @m3=@m4)
begin
update U set pwd=@m3 where name=@m1
end
GO
/****** Object:  StoredProcedure [dbo].[pro_student]    Script Date: 2019/12/6 13:03:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[pro_student] 
@m1 varchar(100),@m2 varchar(100)
as
begin
declare @sql varchar(100)
set @sql='select * from A where '+@m1+'='+@m2
exec(@sql)
end
GO
/****** Object:  StoredProcedure [dbo].[pro_wangui]    Script Date: 2019/12/6 13:03:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[pro_wangui]
@m_sno varchar(10), 
@m_sn varchar(10),
@m_lno varchar(6),
@m_dono char(10),
@m_bec varchar(MAX),
@m varchar(20)
as
if exists(select * from A where A.sno=@m_sno and A.sn=@m_sn and A.dono=@m_dono )
begin
insert into F(no,sno,bec,time)
values(CONVERT(varchar(100), GETDATE(), 112)+@m,@m_sno,@m_bec,CONVERT(varchar(100), GETDATE(), 24))
end
else
return 404

GO
/****** Object:  StoredProcedure [dbo].[pro_wanguichaxun]    Script Date: 2019/12/6 13:03:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[pro_wanguichaxun]
as
begin
select A.sno,A.sn,A.dn,A.gn,count(F.sno)
from F join A on F.sno=A.sno
group by A.sno,A.sn,A.dn,A.gn
order by count(F.sno)
end


GO
/****** Object:  StoredProcedure [dbo].[pro_zhigong]    Script Date: 2019/12/6 13:03:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[pro_zhigong] 
@m1 varchar(100),@m2 varchar(100)
as
begin
declare @sql varchar(100)
set @sql='select * from C where '+@m1+'='+@m2
exec(@sql)
end

GO
/****** Object:  StoredProcedure [dbo].[up_getSql]    Script Date: 2019/12/6 13:03:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[up_getSql]
as
begin
select ROW_NUMBER()over(order by sno) , sno , sn ,sex,bp,dn,Gn,dono,tel  from A
end
GO
/****** Object:  Trigger [dbo].[trigger_addstudent]    Script Date: 2019/12/6 13:03:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[trigger_addstudent] on [dbo].[A]
for insert
as
declare @m_dono char(10),@num int
select @m_dono=dono from inserted
update B set Occupy=Occupy+@num
where dono=@m_dono

GO
USE [master]
GO
ALTER DATABASE [YCQ] SET  READ_WRITE 
GO
