USE [fairytale]
GO
/****** Object:  Table [dbo].[FairyTalesmem]    Script Date: 1/8/2018 5:50:07 PM ******/
DROP TABLE IF EXISTS [dbo].[FairyTalesmem]
GO
/****** Object:  Table [dbo].[FairyTales]    Script Date: 1/8/2018 5:50:07 PM ******/
DROP TABLE IF EXISTS [dbo].[FairyTales]
GO
/****** Object:  Table [dbo].[FairyTales]    Script Date: 1/8/2018 5:50:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FairyTales]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FairyTales](
	[Ftid] [int] IDENTITY(1,1) NOT NULL,
	[Fairytale] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_ftid] PRIMARY KEY CLUSTERED 
(
	[Ftid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, DATA_COMPRESSION = PAGE) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[FairyTalesmem]    Script Date: 1/8/2018 5:50:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FairyTalesmem]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FairyTalesmem]
(
	[Ftid] [int] IDENTITY(1,1) NOT NULL,
	[Fairytale] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,

 CONSTRAINT [PK_ftidmem]  PRIMARY KEY NONCLUSTERED HASH 
(
	[Ftid]
)WITH ( BUCKET_COUNT = 1048576)
)WITH ( MEMORY_OPTIMIZED = ON , DURABILITY = SCHEMA_ONLY )
END
GO
SET IDENTITY_INSERT [dbo].[FairyTales] ON 
GO
INSERT [dbo].[FairyTales] ([Ftid], [Fairytale]) VALUES (1, N'Vor vielen Jahren jagte einmal im Walde von Shimoda1 der Sohn eines Fürsten.')
GO
INSERT [dbo].[FairyTales] ([Ftid], [Fairytale]) VALUES (2, N'Er hatte das seltene Glück einen schneeweißen Fuchs weiblichen Geschlechts zu fangen.')
GO
INSERT [dbo].[FairyTales] ([Ftid], [Fairytale]) VALUES (3, N'The Time Traveller (for so it will be convenient to speak of him) was expounding a recondite matter to us. His grey eyes shone and twinkled, and his usually pale face was flushed and animated.')
GO
INSERT [dbo].[FairyTales] ([Ftid], [Fairytale]) VALUES (4, N'The fire burned brightly, and the soft radiance of the incandescent lights in the lilies of silver caught the bubbles that flashed and passed in our glasses.')
GO
INSERT [dbo].[FairyTales] ([Ftid], [Fairytale]) VALUES (5, N'Η ακρόπολις Μαχαιρουσία υψούτο προς ανατολάς της Νεκράς θαλάσσης επί κωνοειδούς βράχου μελανού και αποκρήμνου.')
GO
INSERT [dbo].[FairyTales] ([Ftid], [Fairytale]) VALUES (6, N'Τέσσαρες βαθείαι κοιλάδες την περιέκλειον, δύο προς τα πλάγια, μία απέναντι και η τετάρτη πέραν.')
GO
INSERT [dbo].[FairyTales] ([Ftid], [Fairytale]) VALUES (7, N'周公，聖人之治者也，後王不能舉，則仲尼述之，而周公之道明。')
GO
INSERT [dbo].[FairyTales] ([Ftid], [Fairytale]) VALUES (8, N'文中子，聖人之修者也，孟軻之徒歟，非諸子流矣。蓋萬章、公孫醜不能極師之奧，盡錄其言，故孟氏章 句略而多闕。')
GO
INSERT [dbo].[FairyTales] ([Ftid], [Fairytale]) VALUES (9, N'Ne ovat kevään ensimäisiä nuo kömpelöt, niukkatuoksuiset keltakukat.')
GO
INSERT [dbo].[FairyTales] ([Ftid], [Fairytale]) VALUES (10, N'Ne nousevat melkein samoihin aikoihin kuin niittyjen nurmi ja juuri silloin kuin lämpöiset kevättuulet lumien alla levänneistä laihoista ruosteenkarvaa pois hiovat.')
GO
INSERT [dbo].[FairyTales] ([Ftid], [Fairytale]) VALUES (11, N'אני שכבתי בעליתי, ואשמע ממעל לי את קול השעון אשר השמיע את השעה הששית.')
GO
INSERT [dbo].[FairyTales] ([Ftid], [Fairytale]) VALUES (12, N'הבקר כמעט כבר האיר.')
GO
INSERT [dbo].[FairyTales] ([Ftid], [Fairytale]) VALUES (13, N'אנחנו עמדנו בחדר-המבוא.')
GO
INSERT [dbo].[FairyTales] ([Ftid], [Fairytale]) VALUES (14, N'或日の暮方の事である。')
GO
INSERT [dbo].[FairyTales] ([Ftid], [Fairytale]) VALUES (15, N'一人の下人が、羅生門の下で雨やみを待っていた。')
GO
INSERT [dbo].[FairyTales] ([Ftid], [Fairytale]) VALUES (16, N'Na początku osiemnastego wieku gra osiągnęła wysokie stadium rozwoju we 
Francji, Anglii i Niemczech.')
GO
INSERT [dbo].[FairyTales] ([Ftid], [Fairytale]) VALUES (17, N'Za najlepszych graczy obecnie uważa się 
Newella Banksa i Alfreda Jordana.')
GO
INSERT [dbo].[FairyTales] ([Ftid], [Fairytale]) VALUES (18, N'Paa veien avla jeg et besøk hos min slegt i Edinburgh. ')
GO
INSERT [dbo].[FairyTales] ([Ftid], [Fairytale]) VALUES (19, N'Det har sine fordele at være amerikaner.')
GO
INSERT [dbo].[FairyTales] ([Ftid], [Fairytale]) VALUES (20, N'V tomto kraji vyrostli kdysi zbojníci Ondráš a Juráš.')
GO
INSERT [dbo].[FairyTales] ([Ftid], [Fairytale]) VALUES (21, N'Zemřeli Ondráš a Juráš. Valašská statečnost však nezemřela.')
GO
INSERT [dbo].[FairyTales] ([Ftid], [Fairytale]) VALUES (22, N'Byli to valašští partyzáni.')
GO
INSERT [dbo].[FairyTales] ([Ftid], [Fairytale]) VALUES (23, N'Það eru eigi fötin, hatturinn, skórnir eða fingurgullin.')
GO
INSERT [dbo].[FairyTales] ([Ftid], [Fairytale]) VALUES (24, N'Sama gildir auðvitað um konur.')
GO
INSERT [dbo].[FairyTales] ([Ftid], [Fairytale]) VALUES (25, N'hefir mikla þýðingu og getur borið mikinn ávöxt.')
GO
INSERT [dbo].[FairyTales] ([Ftid], [Fairytale]) VALUES (26, N'. إنه اسم مشروعه الخطير، مشروع أول وأعرق مكتبة الكترونية في التاريخ. إنه مشروع غوتنبرغ ')
GO
INSERT [dbo].[FairyTales] ([Ftid], [Fairytale]) VALUES (27, N'ترى هل نسينا شيئاً خلال حديثنا عن مغامرة هارت الكبرى؟ نعم. إنه اسم مشروعه الخطير، مشروع أول وأعرق مكتبة الكترونية في التاريخ. إنه مشروع غوتنبرغ Project Gutenberg.')
GO
INSERT [dbo].[FairyTales] ([Ftid], [Fairytale]) VALUES (28, N'Die bedrywigheid van die laaste jare is van veelsydige geaardheid.')
GO
INSERT [dbo].[FairyTales] ([Ftid], [Fairytale]) VALUES (29, N'Aan die spits van die intellektuele gedeelte van die volk staan die
wetenskaplik gevormde leiers, ten volle toegerus met al die geestelike
goedere van die buiteland.')
GO
INSERT [dbo].[FairyTales] ([Ftid], [Fairytale]) VALUES (30, N'т, без никакъв катехизис за изкуството и неговите цели.')
GO
INSERT [dbo].[FairyTales] ([Ftid], [Fairytale]) VALUES (31, N'буждане добри чувства в човешкото сърце.')
GO
INSERT [dbo].[FairyTales] ([Ftid], [Fairytale]) VALUES (32, N'Няколко пъти се е ръкувал с Юнгфрау,
оная дивна красавица, която и нему, както и на великия руски романист,
е пришепвала световни тайни.')
GO
INSERT [dbo].[FairyTales] ([Ftid], [Fairytale]) VALUES (33, N'Ka tupu nei a Tutanekai ratou ko ana
tuakana, a ka whakatangata.')
GO
INSERT [dbo].[FairyTales] ([Ftid], [Fairytale]) VALUES (34, N'Na, ka hanga e Tutanekai tona pourewa ki reira ki Kaiweka.')
GO
INSERT [dbo].[FairyTales] ([Ftid], [Fairytale]) VALUES (35, N'A ka ngaro te ngenge, ka kauhoe ano a Hinemoa.')
GO
INSERT [dbo].[FairyTales] ([Ftid], [Fairytale]) VALUES (36, N'Ei meile ole waja midagi. Meie olime õemehe pool sees ja
oleme küla hääd saanud.')
GO
INSERT [dbo].[FairyTales] ([Ftid], [Fairytale]) VALUES (37, N'Küll sa homme kõnelema hakkad. Roni nüüd ära ülesse ahju
pääle, sääl on sul soe magada.')
GO
INSERT [dbo].[FairyTales] ([Ftid], [Fairytale]) VALUES (38, N'Уже и сейчасъ въ Англіи, въ Германіи,
въ Чехіи издаются книги о старомъ и новомъ русскомъ искусствѣ.')
GO
INSERT [dbo].[FairyTales] ([Ftid], [Fairytale]) VALUES (39, N'Бытъ, жизнь Московіи кажется имъ суровой.')
GO
INSERT [dbo].[FairyTales] ([Ftid], [Fairytale]) VALUES (40, N'Såtillvida var allting gott och väl.')
GO
INSERT [dbo].[FairyTales] ([Ftid], [Fairytale]) VALUES (41, N'Så erinrade hon sig
väckarklockan. Även den stod men kunde dragas upp i ett nafs.')
GO
INSERT [dbo].[FairyTales] ([Ftid], [Fairytale]) VALUES (42, N'Соба код Томе. На средини и са стране по једна врата.')
GO
SET IDENTITY_INSERT [dbo].[FairyTales] OFF
GO
SET IDENTITY_INSERT [dbo].[FairyTalesmem] ON 
GO
INSERT [dbo].[FairyTalesmem] ([Ftid], [Fairytale]) VALUES (1, N'Vor vielen Jahren jagte einmal im Walde von Shimoda1 der Sohn eines Fürsten.')
GO
INSERT [dbo].[FairyTalesmem] ([Ftid], [Fairytale]) VALUES (2, N'Er hatte das seltene Glück einen schneeweißen Fuchs weiblichen Geschlechts zu fangen.')
GO
INSERT [dbo].[FairyTalesmem] ([Ftid], [Fairytale]) VALUES (3, N'The Time Traveller (for so it will be convenient to speak of him) was expounding a recondite matter to us. His grey eyes shone and twinkled, and his usually pale face was flushed and animated.')
GO
INSERT [dbo].[FairyTalesmem] ([Ftid], [Fairytale]) VALUES (4, N'The fire burned brightly, and the soft radiance of the incandescent lights in the lilies of silver caught the bubbles that flashed and passed in our glasses.')
GO
INSERT [dbo].[FairyTalesmem] ([Ftid], [Fairytale]) VALUES (5, N'Η ακρόπολις Μαχαιρουσία υψούτο προς ανατολάς της Νεκράς θαλάσσης επί κωνοειδούς βράχου μελανού και αποκρήμνου.')
GO
INSERT [dbo].[FairyTalesmem] ([Ftid], [Fairytale]) VALUES (6, N'Τέσσαρες βαθείαι κοιλάδες την περιέκλειον, δύο προς τα πλάγια, μία απέναντι και η τετάρτη πέραν.')
GO
INSERT [dbo].[FairyTalesmem] ([Ftid], [Fairytale]) VALUES (7, N'周公，聖人之治者也，後王不能舉，則仲尼述之，而周公之道明。')
GO
INSERT [dbo].[FairyTalesmem] ([Ftid], [Fairytale]) VALUES (8, N'文中子，聖人之修者也，孟軻之徒歟，非諸子流矣。蓋萬章、公孫醜不能極師之奧，盡錄其言，故孟氏章 句略而多闕。')
GO
INSERT [dbo].[FairyTalesmem] ([Ftid], [Fairytale]) VALUES (9, N'Ne ovat kevään ensimäisiä nuo kömpelöt, niukkatuoksuiset keltakukat.')
GO
INSERT [dbo].[FairyTalesmem] ([Ftid], [Fairytale]) VALUES (10, N'Ne nousevat melkein samoihin aikoihin kuin niittyjen nurmi ja juuri silloin kuin lämpöiset kevättuulet lumien alla levänneistä laihoista ruosteenkarvaa pois hiovat.')
GO
INSERT [dbo].[FairyTalesmem] ([Ftid], [Fairytale]) VALUES (11, N'אני שכבתי בעליתי, ואשמע ממעל לי את קול השעון אשר השמיע את השעה הששית.')
GO
INSERT [dbo].[FairyTalesmem] ([Ftid], [Fairytale]) VALUES (12, N'הבקר כמעט כבר האיר.')
GO
INSERT [dbo].[FairyTalesmem] ([Ftid], [Fairytale]) VALUES (13, N'אנחנו עמדנו בחדר-המבוא.')
GO
INSERT [dbo].[FairyTalesmem] ([Ftid], [Fairytale]) VALUES (14, N'或日の暮方の事である。')
GO
INSERT [dbo].[FairyTalesmem] ([Ftid], [Fairytale]) VALUES (15, N'一人の下人が、羅生門の下で雨やみを待っていた。')
GO
INSERT [dbo].[FairyTalesmem] ([Ftid], [Fairytale]) VALUES (16, N'Na początku osiemnastego wieku gra osiągnęła wysokie stadium rozwoju we 
Francji, Anglii i Niemczech.')
GO
INSERT [dbo].[FairyTalesmem] ([Ftid], [Fairytale]) VALUES (17, N'Za najlepszych graczy obecnie uważa się 
Newella Banksa i Alfreda Jordana.')
GO
INSERT [dbo].[FairyTalesmem] ([Ftid], [Fairytale]) VALUES (18, N'Paa veien avla jeg et besøk hos min slegt i Edinburgh. ')
GO
INSERT [dbo].[FairyTalesmem] ([Ftid], [Fairytale]) VALUES (19, N'Det har sine fordele at være amerikaner.')
GO
INSERT [dbo].[FairyTalesmem] ([Ftid], [Fairytale]) VALUES (20, N'V tomto kraji vyrostli kdysi zbojníci Ondráš a Juráš.')
GO
INSERT [dbo].[FairyTalesmem] ([Ftid], [Fairytale]) VALUES (21, N'Zemřeli Ondráš a Juráš. Valašská statečnost však nezemřela.')
GO
INSERT [dbo].[FairyTalesmem] ([Ftid], [Fairytale]) VALUES (22, N'Byli to valašští partyzáni.')
GO
INSERT [dbo].[FairyTalesmem] ([Ftid], [Fairytale]) VALUES (23, N'Það eru eigi fötin, hatturinn, skórnir eða fingurgullin.')
GO
INSERT [dbo].[FairyTalesmem] ([Ftid], [Fairytale]) VALUES (24, N'Sama gildir auðvitað um konur.')
GO
INSERT [dbo].[FairyTalesmem] ([Ftid], [Fairytale]) VALUES (25, N'hefir mikla þýðingu og getur borið mikinn ávöxt.')
GO
INSERT [dbo].[FairyTalesmem] ([Ftid], [Fairytale]) VALUES (26, N'. إنه اسم مشروعه الخطير، مشروع أول وأعرق مكتبة الكترونية في التاريخ. إنه مشروع غوتنبرغ ')
GO
INSERT [dbo].[FairyTalesmem] ([Ftid], [Fairytale]) VALUES (27, N'ترى هل نسينا شيئاً خلال حديثنا عن مغامرة هارت الكبرى؟ نعم. إنه اسم مشروعه الخطير، مشروع أول وأعرق مكتبة الكترونية في التاريخ. إنه مشروع غوتنبرغ Project Gutenberg.')
GO
INSERT [dbo].[FairyTalesmem] ([Ftid], [Fairytale]) VALUES (28, N'Die bedrywigheid van die laaste jare is van veelsydige geaardheid.')
GO
INSERT [dbo].[FairyTalesmem] ([Ftid], [Fairytale]) VALUES (29, N'Aan die spits van die intellektuele gedeelte van die volk staan die
wetenskaplik gevormde leiers, ten volle toegerus met al die geestelike
goedere van die buiteland.')
GO
INSERT [dbo].[FairyTalesmem] ([Ftid], [Fairytale]) VALUES (30, N'т, без никакъв катехизис за изкуството и неговите цели.')
GO
INSERT [dbo].[FairyTalesmem] ([Ftid], [Fairytale]) VALUES (31, N'буждане добри чувства в човешкото сърце.')
GO
INSERT [dbo].[FairyTalesmem] ([Ftid], [Fairytale]) VALUES (32, N'Няколко пъти се е ръкувал с Юнгфрау,
оная дивна красавица, която и нему, както и на великия руски романист,
е пришепвала световни тайни.')
GO
INSERT [dbo].[FairyTalesmem] ([Ftid], [Fairytale]) VALUES (33, N'Ka tupu nei a Tutanekai ratou ko ana
tuakana, a ka whakatangata.')
GO
INSERT [dbo].[FairyTalesmem] ([Ftid], [Fairytale]) VALUES (34, N'Na, ka hanga e Tutanekai tona pourewa ki reira ki Kaiweka.')
GO
INSERT [dbo].[FairyTalesmem] ([Ftid], [Fairytale]) VALUES (35, N'A ka ngaro te ngenge, ka kauhoe ano a Hinemoa.')
GO
INSERT [dbo].[FairyTalesmem] ([Ftid], [Fairytale]) VALUES (36, N'Ei meile ole waja midagi. Meie olime õemehe pool sees ja
oleme küla hääd saanud.')
GO
INSERT [dbo].[FairyTalesmem] ([Ftid], [Fairytale]) VALUES (37, N'Küll sa homme kõnelema hakkad. Roni nüüd ära ülesse ahju
pääle, sääl on sul soe magada.')
GO
INSERT [dbo].[FairyTalesmem] ([Ftid], [Fairytale]) VALUES (38, N'Уже и сейчасъ въ Англіи, въ Германіи,
въ Чехіи издаются книги о старомъ и новомъ русскомъ искусствѣ.')
GO
INSERT [dbo].[FairyTalesmem] ([Ftid], [Fairytale]) VALUES (39, N'Бытъ, жизнь Московіи кажется имъ суровой.')
GO
INSERT [dbo].[FairyTalesmem] ([Ftid], [Fairytale]) VALUES (40, N'Såtillvida var allting gott och väl.')
GO
INSERT [dbo].[FairyTalesmem] ([Ftid], [Fairytale]) VALUES (41, N'Så erinrade hon sig
väckarklockan. Även den stod men kunde dragas upp i ett nafs.')
GO
INSERT [dbo].[FairyTalesmem] ([Ftid], [Fairytale]) VALUES (42, N'Соба код Томе. На средини и са стране по једна врата.')
GO
SET IDENTITY_INSERT [dbo].[FairyTalesmem] OFF
GO
