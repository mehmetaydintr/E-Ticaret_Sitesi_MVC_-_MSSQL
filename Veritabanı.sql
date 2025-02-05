USE [HizliProje]
GO
/****** Object:  Table [dbo].[tblAdmin]    Script Date: 5.04.2019 18:16:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAdmin](
	[AdminID] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](50) NOT NULL,
	[Soyad] [nvarchar](50) NOT NULL,
	[Mail] [nvarchar](50) NOT NULL,
	[Sifre] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_tblAdmin] PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblFavoriler]    Script Date: 5.04.2019 18:16:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFavoriler](
	[FavoriID] [int] IDENTITY(1,1) NOT NULL,
	[MusteriID] [int] NOT NULL,
	[UrunID] [int] NOT NULL,
 CONSTRAINT [PK_tblFavoriler] PRIMARY KEY CLUSTERED 
(
	[FavoriID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblKitap]    Script Date: 5.04.2019 18:16:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKitap](
	[KitapID] [int] IDENTITY(1,1) NOT NULL,
	[ISBNNo] [nvarchar](13) NOT NULL,
	[KitapAdi] [nvarchar](100) NOT NULL,
	[Yazar] [nvarchar](50) NOT NULL,
	[YayinEviID] [int] NOT NULL,
	[SayfaSayisi] [int] NOT NULL,
	[BasimYili] [int] NOT NULL,
	[Fiyati] [decimal](18, 2) NOT NULL,
	[KapakResmi] [text] NULL,
	[Aciklama] [text] NULL,
	[Adet] [int] NOT NULL,
	[StokDurumu] [bit] NULL,
	[TurID] [int] NOT NULL,
	[SilindiMi] [bit] NULL,
 CONSTRAINT [PK_tblKitap] PRIMARY KEY CLUSTERED 
(
	[KitapID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblKitapTur]    Script Date: 5.04.2019 18:16:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKitapTur](
	[TurID] [int] IDENTITY(1,1) NOT NULL,
	[TurAdi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblKitapTur] PRIMARY KEY CLUSTERED 
(
	[TurID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblKullanici]    Script Date: 5.04.2019 18:16:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKullanici](
	[KullaniciID] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](50) NOT NULL,
	[Soyad] [nvarchar](50) NOT NULL,
	[Mail] [nvarchar](50) NOT NULL,
	[Sifre] [nvarchar](100) NOT NULL,
	[Adres] [text] NULL,
	[KayitOlmaTarihi] [datetime] NULL,
 CONSTRAINT [PK_tblKullanici] PRIMARY KEY CLUSTERED 
(
	[KullaniciID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblMesaj]    Script Date: 5.04.2019 18:16:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMesaj](
	[MesajId] [int] IDENTITY(1,1) NOT NULL,
	[GonderciTipi] [bit] NOT NULL,
	[AdSoyad] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Konu] [nvarchar](50) NOT NULL,
	[Mesaj] [text] NOT NULL,
	[OkunduMu] [bit] NOT NULL,
 CONSTRAINT [PK_tblMesaj] PRIMARY KEY CLUSTERED 
(
	[MesajId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblPromosyon]    Script Date: 5.04.2019 18:16:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPromosyon](
	[PromosyonId] [int] IDENTITY(1,1) NOT NULL,
	[UrunId] [int] NULL,
	[KategoriId] [int] NULL,
	[TumUrunler] [bit] NULL,
	[IndirimOrani] [int] NULL,
 CONSTRAINT [PK_tblPromosyon] PRIMARY KEY CLUSTERED 
(
	[PromosyonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblSatinAlinanlar]    Script Date: 5.04.2019 18:16:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSatinAlinanlar](
	[SatinAlinanID] [int] IDENTITY(1,1) NOT NULL,
	[MusteriID] [int] NOT NULL,
	[UrunID] [int] NOT NULL,
	[SatinAlmaAdedi] [int] NOT NULL,
	[UrunBirimFiyati] [decimal](18, 2) NULL,
	[ToplamFiyat] [decimal](18, 2) NULL,
	[Adres] [text] NULL,
	[SatinAlmaTarihi] [datetime] NULL,
 CONSTRAINT [PK_tblSatinAlinanlar] PRIMARY KEY CLUSTERED 
(
	[SatinAlinanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblSepet]    Script Date: 5.04.2019 18:16:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSepet](
	[SepetId] [int] IDENTITY(1,1) NOT NULL,
	[ZiyaretciId] [int] NULL,
	[KullaniciId] [int] NULL,
	[UrunId] [int] NOT NULL,
	[SepettekiAdet] [int] NOT NULL,
 CONSTRAINT [PK_tblSepet] PRIMARY KEY CLUSTERED 
(
	[SepetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblYayinEvi]    Script Date: 5.04.2019 18:16:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblYayinEvi](
	[YayinEviID] [int] IDENTITY(1,1) NOT NULL,
	[YayinEviAdi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblYayinEvi] PRIMARY KEY CLUSTERED 
(
	[YayinEviID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblZiyaretci]    Script Date: 5.04.2019 18:16:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblZiyaretci](
	[ZiyaretciID] [int] IDENTITY(10000,1) NOT NULL,
	[ZiyaretciMAC] [nvarchar](12) NOT NULL,
 CONSTRAINT [PK_tblZiyaretci] PRIMARY KEY CLUSTERED 
(
	[ZiyaretciID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  UserDefinedFunction [dbo].[FN_AlanlarinKodu]    Script Date: 5.04.2019 18:16:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[FN_AlanlarinKodu](@urunKod int)
RETURNS TABLE
AS
RETURN SELECT MusteriID FROM tblSatinAlinanlar
WHERE UrunID=@urunKod

GO
/****** Object:  UserDefinedFunction [dbo].[FN_BunuAlanBunlariAldi]    Script Date: 5.04.2019 18:16:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create FUNCTION [dbo].[FN_BunuAlanBunlariAldi](@urunKod int)
RETURNS TABLE
AS
RETURN
SELECT DISTINCT k.KitapID,k.KitapAdi,k.StokDurumu, k.Fiyati FROM tblKitap k
JOIN tblSatinAlinanlar S ON k.KitapID=s.UrunID
JOIN FN_AlanlarinKodu(@urunKod) FNA ON
FNA.MusteriID=S.MusteriID where k.KitapID not in(@urunKod)
GO
SET IDENTITY_INSERT [dbo].[tblAdmin] ON 

INSERT [dbo].[tblAdmin] ([AdminID], [Ad], [Soyad], [Mail], [Sifre]) VALUES (4, N'bilal', N'aksal', N'admin@admin.com', N'MTIzNDU2Nzg5')
SET IDENTITY_INSERT [dbo].[tblAdmin] OFF
SET IDENTITY_INSERT [dbo].[tblFavoriler] ON 

INSERT [dbo].[tblFavoriler] ([FavoriID], [MusteriID], [UrunID]) VALUES (58, 11, 151)
SET IDENTITY_INSERT [dbo].[tblFavoriler] OFF
SET IDENTITY_INSERT [dbo].[tblKitap] ON 

INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (1, N'9789752111929', N'Kayıp Sembol', N'Dan Brown', 2, 529, 2009, CAST(25.28 AS Decimal(18, 2)), N'kayip_sembol.jpg', N'Dan Brown; Da Vinci Şifresi, Melekler ve Şeytanlar''dan sonra Kayıp Sembol''de insanlığın yüzyıllardır beklediği bir gerçeğin peşinde... Harvard Simgebilim Profesörü Robert Langdon, Kongre Binasında konferans vermesi için yakın bir arkadaşından davet alır. Ancak, Washington''a varır varmaz oldukça garip bir durumla karşı karşıya kalan profesör, kendini korkunç bir oyunun ortasında bulur. Kongre Binas''na bırakılmış olan bir sembolün -yakın arkadaşı Peter Solomon''ın kesik eli- varlığını haber veren bir telefon, Langdon''ı hiç de yabancısı olmadığı bir dünyaya davet etmektedir. Antikçağlarda kullanılan bu sembolik çağrı, daveti alan kişiyi ezoterik bilgeliğin hüküm sürdüğü, çok eskilerde kalmış kayıp bir dünyaya sürükleyecektir. Sonu belli olmayan bu mistik daveti arkadaşını kurtarmak için kabul eden Langdon, bir anda masonik sırların, saklı kalmış tarihin ve o güne dek görmediği yerlerin gizli dünyasında inanılmaz bir gerçekle yüzleşmek zorunda kalır. Artık cevaplanması gereken sorular vardır: İnsanlığın Altın Çağı, açılmaması gereken bir kapının aralığından sırlarıyla birlikte yok mu olacak, yoksa hikmetin ışığında tüm soruların cevapları mı bulunacaktır?...', 50, 1, 1, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (3, N'9786056785955', N'Leyla ile Mecnun', N'Burak Aksak', 3, 272, 2018, CAST(16.85 AS Decimal(18, 2)), N'leyla_ile_mecnun.jpg', N'“Bir yanımız çöl bir yanımız deniz…”

 “Zaman döngüseldir ve farklı seçimler yapsan da aynı hayatı yas¸arsın. Sana verilmis¸ bir ömür vardır. Bu dünyadaki zamanın bellidir. Ve her s¸ey bir denge içindedir. Biz... Daha dogˆrusu ben, o dengeyi bozdum…”

Aynı gün aynı hastanede doğmalarıyla başladı her şey. Bir hayatın birden fazla kez yaşanabileceğinin ve yarım kalmış her hikâyenin tamamlanmaya muhtaç olduğunun bir kanıtıydı onlar. Peki Mecnun bu sefer Leylasına kavuşabilecek mi?  Yoksa yine çölde mi açacak gözlerini? Çünkü o çöl çaresiz âşıkların son durağıdır. Kavuşamayan âşıklar o çölde aralar sevdiğini, kavuşanlarsa emlakçı emlakçı dolanır dururlar, 2+1 kombili.

Yayınlandığı dönemde izleyicisini ekrana kilitleyen Leyla ile Mecnun, bu kez bambaşka bir hikâye ile sevenleriyle yeniden buluşuyor. Mecnun, İsmail Abi, Erdal Bakkal, Baba İskender, Yavuz Hırsız, Yedek Kamil, Gözlüklü Çocuk Kaan ve Aksakallı Dede bu kez bambaşka bir maceranın peşine düşüyor. O geminin geleceğine ilk günkü gibi inananların, sevdiği kızın gözlerinin içine bakarak ‘seni seviyorum’ diyemeyenlerin, kendi çölünde kaybolanların hikâyesi Leyla ile Mecnun Burak Aksak’ın kalemiyle yeni başlangıçlar için geri dönüyor.', 25, 1, 1, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (6, N'9789752112438', N'Dijital Kale', N'Dan Brown', 2, 448, 1998, CAST(21.66 AS Decimal(18, 2)), N'dijital_kale.jpg', N'Ulusal Güvenlik Teşkilatı dünyanın kaderini değiştirecek ve dijital ortamdaki tüm şifreli metinleri bilecek özel bir bilgisayar üretir. Ne var ki, günün birinde bu özel bilgisayar karşılaştığı esrarengiz bir şifreyi çözemez. Ve kriptoloji uzmanı, zeki ve güzel Susan Fletcher göreve çağrılır. Genç kadın korkunç bir gerçekle yüzleşir. Silahlarla ya da bombalarla değil, Amerika Birleşik Devletleri''nin en güçlü haber alma örgütü olan Ulusal Güvenlik Teşkilatı çözülemez bir şifreyle rehin alınmıştır.
Sırlar ve yalanlar fırtınasına yakalanan Fletcher inandığı teşkilatı kurtarma savaşı verir. Dörtbir yandan ihanete uğrayan güzel kadın yalnızca ülkesini değil, kendi canını ve sevdiği erkeği de kurtarmaya çalışır...', 30, 1, 1, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (15, N'9789752104556', N'Melekler ve Şeytanlar', N'Dan Brown', 2, 576, 2004, CAST(30.50 AS Decimal(18, 2)), N'melekler_ve_seytanlar.jpg', N'
Harvard Üniversitesi Simgebilim Profesörü Robert Langdon efsanevi gizli örgüt Illuminati''nin -Galileo zamanından beri Katolik Kilisesi''nin bağnaz inançlarını lanetleyerek bilimin yararlarını yücelten- hala faaliyette olup cinayetler işlediğini öğrenince şok geçirir. Parlak bir fizikçi olan Leonarda Vetra cinayete kurban gitmiştir. Tek gözü oyulmuş ve göğsü örgütün sembolüyle dağlanmıştır. Bilim adamının son buluşu güçlü ve çok tehlikeli enerji kaynağı karşımadde çalınmış ve yeni Papa seçiminin gerçekleşeceği gün Vatikan Şehri''nin altına saklanmıştır. Langdon, Vetra''nın meslektaşı ve aynı zamanda kızı olan Vittoria ile medeniyeti yok olmaktan kurtarmak amacıyla Roma sokaklarında, kiliselerde ve katakomplarda soluk soluğa koşuşturarak 400 yıllık izi sürerek Illuminati''nin izini bulmaya çalışırlar. 

Brown bu romanda tıpkı bir hokkobaz gibi havaya yüzlerce top fırlatıp hiçbirini yere düşürmeden okuyucuyu inanılmaz bir gerileme sürüklüyor.', 20, 1, 1, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (16, N'9789752105737', N'İhanet Noktası', N'Dan Brown', 2, 512, 2005, CAST(24.08 AS Decimal(18, 2)), N'ihanet_noktasi.jpg', N'
NASA''ya bağlı bir uydu Kuzey Kutbu''nun derinliklerine gömülü nadir bulunan bir nesnenin varlığını belirler. Bir süredir bocalamakta olan NASA bunu bir zafer olarak niteler. Amerikan uzay politikasını ve yaklaşmakta olan başkanlık seçimini derinden etkileyecek bir zaferdir bu... 
Başkan, Beyaz Saray Gizli Haber Alma Analisti Rachel Sexton''ı Milne Buzul Katmanı''na gönderir. Karizmatik bilim adamı Michael Tolland başkanlığında uzmanlardan oluşan bir ekiple Kuzey Kutbu''na giden Rachel, bir süre sonra akla gelmedik bir oyunu ortaya çıkarır. Tüm dünyayı amansız bir düşmanlığa sürükleyecek bir bilim sahtekârlığı söz konusudur. 
Rachel, Başkan''la bağlantı kuramadan Michael ölümcül bir saldırıya uğrar. Gerçeğin ortaya çıkmasını istemeyen esrarengiz biri, katil-lerden oluşan bir ekiple herkesi ortadan kaldırmaktadır. 
Issız ve ölümcül bir çevrede bir avuç insanın tüm umudu bu korkunç sahtekârlığın arkasındaki güçlerin ortaya çıkarılmasıdır. Öğrenecekleri gerçek ihanetin doruk noktasıdır.', 35, 1, 1, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (17, N'9789752104037', N'Da Vinci Şifresi', N'Dan Brown', 2, 495, 2003, CAST(24.08 AS Decimal(18, 2)), N'da_vinci_sifresi.jpg', N'Da Vinci Şifresi satışa çıktığı ilk haftanın sonunda büyük bir başarı kazandı. New York Times''ın ''en çok satanlar'' listesine "1 Numara"dan girdi. Aynı zamanda Wall Street Journal, Publishers Weekly ve San Francisco Chronicle''ın ''en çok satanlar'' listesinde ilk sıradaki yerini uzun süre korudu. Colombia Pictures kitabın film haklarını satın aldı. 

Harvard Üniversitesi Simge-Bilim Profesörü Robert Langdon, Paris''te iş gezisindeyken, gece yarısı, Louvre''un yaşlı müdürünün ölü bulunduğu haberini alır. Langdon ve yetenekli Fransız kriptoloji uzmanı Sophie Neveu, cesedin etrafındaki izleri takip ederek bu garip esrar perdesini araladıkça, ipuçlarının onları Da Vinci''nin tablosuna götürdüğünü keşfederler. Büyük usta bu sırrı herkesin görebileceği bir yere, ünlü eseri Mona Lisa tablosunun içine gizlemiştir.
Langdon bu garip bağlantıyı açığa çıkarınca tehlike artar. Cinayete kurban giden müze müdürü de, Sir Isaac Newton, Botticelli, Victor Hugo, Da Vinci ve aralarında diğer ünlülerin de bulunduğu gizli bir kuruluş olan Sion Manastırı Derneği''nin bir üyesidir. 
Langdon, aydınlatmaya çalıştıkları bu tehlikeli sırrın yüz yıllardır tarihin derinliklerinde gizlendiğinden şüphelenir. Böylece Paris ve Londra sokaklarında amansız bir kovalamaca başlar. Langdon ve Neveu, kendilerini, atacakları her adımı önceden bilen esrarengiz olduğu kadar da çok zeki olan bir adamla karşı karşıya bulurlar. Eğer bu karmaşık bilmeceyi çözemezlerse Priory''nin büyük yankılar uyandıracak bu çok eski gerçeği ebediyen kaybolacaktır.', 25, 1, 1, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (19, N'9789752124561', N'İstanbul Kareli Öyküler', N'Tolga Gümüşay', 2, 200, 2018, CAST(20.84 AS Decimal(18, 2)), N'istanbul-kareli-oykuler-m.jpg', N'
İstanbullu olmak asırlar evvel ne anlama gelirdi? Yüz yıl önce? 1950''lerde? Bizden önce yaşamış hemşerilerimizi daha iyi tanıdıkça, kendimizi de daha iyi anlamış olur muyuz? Bu şehrin hangi devrinde yaşasak daha mutlu olurduk? Bugün o devrin ne kadarını yaşatabiliyoruz?


İstanbul''un kokusu Boğaziçi''nde mi daha yoğun alınır, Eminönü''nde mi? Bugün Küçükpazar mı daha tekinsizdir, Tarlabaşı mı? Süleymaniye''nin hafızası mı daha güçlüdür, Sultanahmet''inki mi? Galata sokaklarında mı daha fazla sayıda yabancı dil konuşulur, Kumkapı''da mı? Balat mı eski sakinlerini daha çok özler, Sulukule mi?
Tolga Gümüşay, bütün bu sorulara ve daha nicelerine yanıt ararken tutkunu olduğu İstanbul''un tarihî semtlerini, eşsiz manzaralarını, arka sokaklarını, kendi halinde insanlarını önce fotoğrafladı, sonra onlar için öyküler yazdı.
İstanbul Kareli Öyküler, fotoğrafın gerçekliğiyle edebiyatın olasılıklarını iç içe geçirerek dünyanın en güzel kentlerinden birinde var olmanın türlü hallerini ortaya koyuyor. İstanbul''un gündelik hayatından kareleri, bu şehirde yaşamanın büyüsünü yansıtan öykülere dönüştürüyor.', 22, 1, 4, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (20, N'9789752123892', N'Kalbindeki Cevap', N'Canev Tatar', 2, 48, 2018, CAST(9.63 AS Decimal(18, 2)), N'0001753466001-1.jpg', N'Bir çocuğun kendini ve dünyayı keşfetme öyküsü. Sıcak, samimi, ve cesur... “Kalbinin peşinden giden ne keşfeder?”diye sordu Aden. “Kendini” dedi Edi. Bu kitap bir bilge ile bir çocuğun arasında geçen sevgi ve mesaj dolu bir sohbetten oluşuyor. Kendini keşif yolunda insanı yüreklendiren ve kalbe dokunan sıcacık bir öykü...', 25, 1, 4, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (21, N'9789752123731', N'Genç Kareli Öyküler', N'Tolga Gümüşay', 2, 144, 2018, CAST(9.03 AS Decimal(18, 2)), N'0001742391001-1.jpg', N'ürkiye’nin ve dünyanın farklı sokaklarında yaptığı yürüyüşler esnasında karşılaştığı dokunaklı manzaraların, kendi halinde insanların, ilginç rastlantıların fotoğraflarını çekti. Bu karelerden bazıları onu daha fazlasını hayal etmeye itti ve 2012 yılından itibaren kendi çektiği fotoğraflar için öyküler yazmaya başladı. Genç Kareli Öyküler, eserleri gençler tarafından da çok sevilen Tolga Gümüşay’ın kareli öyküleri arasından özenle seçilmiş bir koleksiyon. Kıyıda dikilirken kendini ne karaya ne de denize ait hisseden genç kız, Stockholm’de Noel gecesi yaşıtları yeni oyuncaklara kavuşurken en sevdiği Batman’ini kaybeden çocuk, oltasıyla denizi kırbaçlayan balıkçı, inşaat tahtalarının üstünde İstanbul’un tarihî yokuşlarından aşağı kayan şamaroğlanları, yeşilin ucundaki ışık huzmesine doğru çekilen iki genç kız, çocukluğunda burun buruna geldiği leoparın etkisinden bir türlü kurtulamayan Alice, sabahları somurtan çocukları miyavlayarak neşelendiren çöpçü... Önce fotoğraf kareleriyle karşımıza çıkıyor, sonra da çarpıcı öyküleriyle okurun ruhunda derin izler ', 30, 1, 4, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (23, N'9789752123502', N'Kanatlı Denizatı-Davetsiz Dedektifler', N'Özgür Özgülgün', 2, 48, 2017, CAST(4.21 AS Decimal(18, 2)), N'0001731195001-1.jpg', N'Davetsiz Dedektifler, çocuklar için kaleme alınmış, polisiye tadında dedektif öykülerinden oluşuyor. Her öykü merak, akıl yürütme, gözlem gibi temel yaşamsal ögeleri öne çıkaran heyecanlı olaylarla dolu... Öykülerin kahramanları olan Can ve Şevval, sizler gibi meraklı çocuklar. Onlarla kimi zaman Kahire Müzesinin karanlık koridorlarında, kimi zaman Ayasofya''nın uçsuz bucaksız dehlizlerinde nefes nefese bir serüvene hazırsanız, haydi öyleyse! Oyuncu Özgür Özgülgün çocuklarla buluşmaya şimdi de satır aralarında devam ediyor.', 35, 1, 4, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (25, N'9786052992715', N'Elflerin Kanı-The Witcher 3', N'Andrzej Sapkowski', 1, 416, 2017, CAST(24.01 AS Decimal(18, 2)), N'0001720800001-1.jpg', N'Rivyalı Geralt, Witcher serisinin ilk romanıyla geri döndü ve bu sefer dünyanın kaderini ellerinde tutuyor. 


 


“Ben Witcher’ım. Yapay olarak yaratılmış bir mutant. Para karşılığında canavar öldürürüm. Anne babaları bedelini öderlerse çocukları korurum. Parasını Nilfgaardlı anne babalar öderlerse Nilfgaardlı çocukları da korurum. Dünya harap olsa bile -ki bunu hiç sanmıyorum- bir canavar beni öldürünceye kadar bu dünyanın harabeleri üzerinde canavar öldürmeyi sürdürürüm. Bu benim yazgım.” 


 


Yüzyıldan fazla bir süredir insanlar, cüceler ve elfler barış içinde yaşıyordu. Ancak zaman değişti. Barış sona erdi ve farklı ırklar tekrar savaşmaya başladı. Hem birbirlerine karşı hem de kendi aralarında. Cüceler hısımlarını öldürüyor, elfler de insanları ve insanlarla dostluk kuran elfleri. 


Bu çalkantılı çağda kâhinlerin beklediği bir çocuk doğar. Cintra Aslanı Kraliçe Calanthe’nin torunu Ciri’nin garip güçleri ve daha da garip bir kaderi vardır. Kehanetler onu “Alev” diye niteliyor, iyi veya kötü dünyayı değiştirecek kişi olarak. ', 25, 1, 5, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (28, N'9786052994269', N'Nefret Çağı-The Witcher Serisi 4', N'Andrzej Sapkowski', 1, 448, 2018, CAST(24.01 AS Decimal(18, 2)), N'0001748202001-1.jpg', N' Rivyalı geralt, kendisini büyücülerin karşısında ve korkunç bir savaşın ortasında buluyor. 

“Yapamam... onu yazgısına teslim edemem. yapayalnız o şimdi... oysa hiç yalnız kalmamalı, dandelion. sen bunu anlayamazsın. kimse anlayamaz ama ben anlıyorum. eğer yalnız kalırsa, bir zamanlar... bir zamanlar benim başıma gelenleri o da yaşayacak... sen bunu anlayamazsın…” 

Nilfgaard imparatoru emhyr var emreis harekete geçmek üzere. tek bir hamleyle kuzey krallıkları’nı parçalamak, önüne çıkmak talihsizliğine düşen herkesi öldürmek veya esir almak istiyor. geçmişte sodden tepesi’nde büyücüler yüzünden yenilen nilfgaard imparatoru bu sefer zaferle arasına hiç kimsenin giremeyeceğinden emin. 

İnsanların ve devletlerin çıkar savaşlarına kesinlikle bulaşmamayı ve daima tarafsız kalmayı seçen rivyalı geralt bu sefer çok zor bir karar vermek zorundadır. kehanetlerde bahsedilen, tüm dünyayı değiştirmeye yazgılı çocuk onun kendi kızı gibi sevdiği ciri’dir. ve ciri’yi korumak için geralt’ın yapmayacağı şey yoktur. nihayet bir taraf seçmek ve canını hiçe saymak dâhil. ', 20, 1, 5, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (29, N'9786052990186', N'Son Dilek', N'Andrzej Sapkowski', 1, 400, 2017, CAST(24.01 AS Decimal(18, 2)), N'0001686860001-1.jpg', N'Rivyalı Geralt bir Witcher’dır. Henüz küçük bir çocukken seçilmiş, eğitilmiş, büyülerle donatılmış ve mutasyon geçirmiş bir canavar avcısı. Acımasız, tekinsiz, karanlık ve canavarlarla dolu bir dünyada yaşar.


Onun dünyasında peri masalları hiç de saf değildir. Pamuk Prenses bir haydut çetesinin başındadır. Güzel ve Çirkin’deki roller çok farklıdır. Üç dilek hakkı sunan cinlerle karşılaşmak bile istemezsiniz.


Masumların savunucusu Geralt, kızları canavara dönüşmüş ensest krallarla, intikam hırsıyla yanan cinlerle, âşık vampirlerle ve daha nicesiyle karşılaşıyor. Hepsi çok tehlikeli ve hiçbiri göründüğü gibi değil.

', 25, 1, 5, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (30, N'9786052995938', N'Ateşle İmtihan-The Witcher 5', N'Andrzej Sapkowski', 1, 440, 2018, CAST(36.05 AS Decimal(18, 2)), N'0001786988001-1.jpg', N'Hiç beklenmedik yol arkadaşlarıyla birlikte bir savaşın ortasında kalan Rivyalı Geralt, hedefine ulaşabilmek için her şeyi göze alıyor.

“Kan döken ve kan içen,” dedi kız başını kaldırmadan, “bedelini kanla ödeyecek. Üç gün geçmeden birinde bir şey ölecek, ardından herkesin içinde bir şey ölecek. Ağır ağır ölecekler, parça parça… Ve sonunda demir pabuçlar aşınıp gözyaşları kuruduğunda son kalan zerre de ölecek. Asla ölmeyen şey bile ölecek.” 

Tüm dünya karanlık ve amansız bir savaşın pençelerinde kaybolmuş, saklanacak güvenli bir liman kalmamıştır. Elfler insanlar tarafından avlanmaktadır. Büyücüler kanlı bir darbeyle dağılmışken büyünün geleceği de belirsizliğini korumaktadır. Binlerce köylü kanlı bir savaşın ortasında mülteci olmuş, rüzgârın önünde savrulmaktadır. 

Ölümcül yaralar alan Rivyalı Geralt, Brokilon’da çaresizce iyileşmeyi beklemektedir. Bilinen dünya yangın yerine dönmüş, insanların yürekleri acı ve korkuyla kararmışken Geralt’ın aklında sadece bir şey vardır: Ciri’yi bulmak ve onu kurtarmak. ', 25, 1, 5, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (31, N'9786056882517', N'Sema''nın Sağlıklı Mutfağı', N'Sema Sumeli', 3, 224, 2019, CAST(19.50 AS Decimal(18, 2)), N'0001798552001-1.jpg', N'“Gece başucunda keşkülle uyuyan, bir porsiyon iskender yemek için mesafeleri önemsemeyen, yirmi yedi yaşında Tip 2 diyabet teşhisi konmuş genç bir kadının serüvenine hoş geldiniz.”

Hayat hikâyemiz kim olduğumuzu anlatır, yediklerimiz ise bu hikâyenin nasıl şekilleneceğini...  Sağlıksız beslenme biçimiyle yollarına güller döktüğü Tip 2 diyabet hastalığı yirmi yedi yaşındayken teklifsizce girivermişti hayatına. Başlarda ümitsizliğe kapılsa da, “Beslen, kıpırda; sev parılda” mottosuyla yola çıktı ve mücadele etmeye karar verdi ve diyabeti alt etti. Bu yolda kendini Instute for Integrative Nutrition’da Bütünsel Beslenme ve Sağlık Koçluğu, ardından Instute for Functional Medicine’da Fonksiyonel Tıp Sağlık Koçluğu eğitimi alırken buldu. İşte Sema Sumeli’nin çok renkli hikâyesine hoş geldiniz!

Tatlılar, börekler, kekler olmadan olmaz diyenlerden misiniz? Sema da öyleydi, sonraları canı tatlı, pizza, kek, börek gibi uzak durması gereken şeyler çektiğinde bunları yememesi gerektiğini biliyordu. Eline aldığı karıştırma kabı onun için sihirli bir değnek olmuştu. Tariflerini blogu ve sosyal medya hesaplarında paylaşarak çok sayıda insanı da kendi hikâyesine ortak etti. Mutfağınızı keyifli bir keşif alanı yapmaya, daha önce uzak durduğunuz tüm alternatif tarifleri “Ama bu sağlıklı olamayacak kadar güzel,” diyerek yemeye hazır olun. Sema’nın Sağlıklı Mutfağı, okurunu her dönemi büyük bir emekle örülen bir  başarı öyküsüne ortak etmek ve mutfaklarda devrim yapmak için geliyor!', 30, 1, 3, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (32, N'9786056722783', N'Modern Bir İmparatorluğun Anatomisi', N'Serdar Nazım Kölürbaşı', 3, 160, 2017, CAST(9.03 AS Decimal(18, 2)), N'0001728102001-1.jpg', N'“Nüfusu yaklaşık 127 milyon olan Japonya’da her yıl ortalama 27 milyar tahta yemek çubuğu tüketilir.”


“Ülkede satılan cep telefonlarının yüzde sekseni gençler banyo yaparken de telefon kullanmak istedikleri için su geçirmezdir.”


“İnsanları metroya sığmaları için iten "oshiya" isimli bir görevli vardır.”


 


Çalışma disiplinleri, dövüş sporları, mutfakları ve gündelik yaşam ritüelleriyle en çok merak edilen coğrafyalarından biridir Japonya. Yıllardır dünyanın dört bir yanını gezen yazar ve tur rehberi Serdar Nazım Kölürbaşı tarafından hazırlanan Japonya: Modern Bir İmparatorluğun Anatomisi’yle ülkenin bilinmeyen yönlerini keşfedecek, kitabı kapattığınızda bir Japonya turunu tamamlamış gibi hissedeceksiniz.', 35, 1, 3, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (33, N'9786056785986', N'Güney Afrika-Kıtanın Gökkuşağı', N'Serdar Nazım Kölürbaşı', 3, 176, 2018, CAST(10.84 AS Decimal(18, 2)), N'0001780779001-1.jpg', N'“Dünyanın en temiz içme suyu kaynaklarından birine sahiptir.”

“Ülkedeki bitki varlıgˆının yüzde yetmis¸i dünyanın bas¸ka hiçbir yerinde bulunmaz.”

“Kendi istegˆiyle nükleer silahlanma programından vazgeçen ilk ülkedir.”

“Üç bas¸kenti vardır: Pretoria idari, Cape Town yasama, Bloem- fontein adli bas¸kentidir.”

Elinizde tuttuğunuz kitapla  dünyanın bir diğer ucunda, yaşlı Afrika kıtasında keyifli bir gezintiye çıkmaya hazır olun! Doğal yaşamı gözlemlemek, dünyaca ünlü spor müsabakalarını takip etmek, tarihin can acıtan sayfaları arasından özgürlük mücadelelerini çekip çıkarmak, bu zengin coğrafyada yapabileceğiniz yüzlerce şeyden yalnızca birkaçı. Sayfaları çevirdikçe iç burkan geçmişten ilham veren özgürlük mücadelelerine, eşsiz doğasından renkli Bo-Kaap sokaklarına uzanan bir yolculuk yapacak, kitabı bitirdiğinizde bir Güney Afrika turunu tamamlamış olacaksınız. Dünyanın dört bir yanına turlar düzenleyen ve 133 ülke gezen seyyah Serdar Nazım Kölürbaşı rotasında okurunu peşine taktığı bu yolculuk Ümit Burnu’nun sert dalgalarından eğlenceli safari turlarına uzanacak!', 45, 1, 3, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (36, N'9786056722714', N'Anne Olunca Anlarsın', N'Kolektif', 3, 164, 2017, CAST(10.84 AS Decimal(18, 2)), N'0001701629001-1.jpg', N'“O tabak bitecek”, “Seni dokuz ay karnımda taşıdım ben”, “Nerede çıkardıysan oradadır”, “Biraz bana çekseydin ne olurdu”

 

Hepimiz hayatımızda en az bir kez duymuşuzdur bu sözleri. Çünkü evrensel bir deneyimden bahsediyoruz: Annelik! Dünyanın her yerinde benzer bir hat izleyen bu kadınlar yeri gelir güler, coşar; yeri gelir size belli etmeden ağlar. Yeri gelir size dünyaları sunar; yeri gelir hiçbir şey için elini-kolunu kıpırdatamaz. Çünkü süperkahraman değiller, dört kolları yok, her şeye yetişemezler. Süperkahraman değiller, sizin olduğunuz yerde olamazlar bazen, uçamazlar. Uçamazlar! Çoğu zaman her şeye yetişen, nereye giderseniz gidin bir telefonla size huzur veren, sizi her geçen gün daha da güçlü kılan; uçamayan, zaman zaman ağlayan, “Artık yeter!” deyip pes edecek noktaya gelen, düşse de herkesten çabuk ayağa kalkan, en çok sizi düşünen, en çok sizi seven süperkahramanlarımızın, farklı meslek gruplarından, farklı yaşlardan annelerimizin deneyimlerini aktardığı bir kitap bu elinizdeki.

Gelin hep birlikte, bu pelerinsiz süperkahramanların deneyimlerini okuyalım.', 50, 1, 3, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (37, N'9786056722721', N'Size Baba Diyebilir Miyim?', N' Büşra Hacısalihoğlu, Tuğçe Yılmaz', 3, 160, 2017, CAST(10.84 AS Decimal(18, 2)), N'0001706293001-1.jpg', N'Başlangıçta dünya dediğimiz dev bir labirent vardı, sonra büyük bir el uzandı.

İçine atıldığımız labirentten çıkmamızı sağlayan, duvara her çarptığımızda elimizden tutup bizi çıkış noktasına getiren, hastalandığımızda bizi bir dokunuşuyla iyileştiren, dört gözle işten eve dönmesini beklediğimiz, kimi zaman sevgisini açıkça gösteremeyen; ama uyuduğumuzda gelip bizi öpen, saçımızı okşayan; iyi ve güvende olduğumuzdan emin olduktan sonra kendisi uyuyan görünmez kahramanlar var bu kitapta. Yani babalar!

Edebiyattan sinemaya, sinemadan müziğe sanatın pek çok alanında yer verilir onlara. Hatta bazen tüm olay örgüsü onun etrafında şekillenir. Ona seslenişimiz bir notayla başlı başına bir eser bile olabilir. Hepimiz çocukluğumuzda, ilk gençliğimizde ya da hayatımızın bir döneminde mutlaka Süper Baba dizisinin jeneriğini duyup hüzünlenmişizdir ya da mutlaka ama mutlaka Babam ve Oğlum filminin bir sahnesinde ağlamışızdır. Yılmaz Güney’in “Babam dünyanın en güçlü adamıydı, bir ekmeği hepimize bölebiliyordu,” sözünün hepimizde karşılığı, bittabi vardır. 

Gelin hep birlikte, bu ilk kahramanlarımızın babalık deneyimlerini okuyalım.', 20, 1, 3, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (38, N'9786053437000', N'Tanrı Zar Atmaz', N'Grichka Bogdanov, Igor', 1, 224, 2015, CAST(31.07 AS Decimal(18, 2)), N'0000000664840-1.jpg', N'Evrenin yaratılışının ardındaki eli keşfedeceksiniz

"Tanrı zar atmaz!" İşte izafiyet teorisinin babası Albert Einstein''ın doğayı yönlendirenin rastlantı olmadığını söylemek için verdiği karşılık budur. Karşısında ise fizikteki sonsuz küçükler alanının kurucusu Niels Bohr vardır ve tam tersini düşünüyordur. Ona göre temel parçacıkların öngörülemez hareketleri kesinlikle rastlantıya bağlıdır. Peki bu konuda günümüzde hangi noktadayız? 

Tartışma bugün hiç olmadığı kadar hararetli. Bazılarına göre büyük belirsizlik ilkesini tartışmak bile imkânsız: Madde ve var olan diğer her şey rastlantının insafına kalmış. Ötekiler için ise gerçeklik bizim bilemediğimiz yasalara bağlı. Onlara göre bilimdeki son gelişmeler de Büyük Patlama''nın ateşini yakanın rastlantı olmadığını gösteriyor.

Belki de ilk kez bu soruya bir cevap vermenin eşiğindeyiz. CERN''deki Büyük Hadron Çarpıştırıcısı''yla yapılan deneyler ve uzayda Planck Uydusu''yla gerçekleştirilen ölçümler bizi yanıta hiç olmadığımız kadar yaklaştırdı. Tüm bunlar rastlantının sonuna geldiğimiz anlamını mı taşıyor?', 25, 1, 3, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (42, N'9789754587173', N'Devlet - Hasan Ali Yücel Klasikleri', N'Platon', 4, 392, 2016, CAST(8.42 AS Decimal(18, 2)), N'0000000204001-1.jpg', N'Platon (Eflatun, İÖ yaklaşık 428/7-İÖ yaklaşık 348/7): Bugünkü üniversitenin atası sayılan Akademia''nın kurucusu (İÖ 387) ve hocası Sokrates''i konuşturduğu "diyaloglar"la felsefeyi yazıya en iyi aktarmış olan ustalardan biridir.

Sokrates''in Savunması (Apologia) ile birlikte diyaloglarının en tanınmışı olan Devlet (Politeia)''te ise Platon, "iyilik", "eşitlik", "güçlülük" ve "haklılık" gibi "insanlık durumları"nı irdeleyerek düşlediği en iyi devletti anlatmış, ve bu temel yapıt, ister yanında ister karşısında olsunlar, 2000 yılı aşkın süredir ortaya konan bütün devlet kuramı ya da toplum düzenlerinin başvuru kaynakları arasında yer almıştır.

Sabahattin Eyüboğlu (1908-1973); Hasan Ali Yücel''in kurduğu Tercüme Bürosu''nun başkan yardımcısı ve Cumhuriyet döneminin en önemli kültür insanlarından biriydi. Tek başına ya da "imece" birlikteliğiyle yaptığı çeviriler, HayyamX''dan Montaigne''e, Platon''dan Shakespeare''e hep, dünya kültürünün doruk adlarındandı.

M. Ali Cimcoz: Çevirmen, seslendirme sanatçısı ve Türkiye''nin ilk özel galerisi Maya''nın kurucu yönetici olan Adalet Cimcoz''un iş ve hayat ortağıdır. Sabahattin Eyüboğlu ile yaptıkları Devlet çevirisi ise, 1959''da Türk Dil Kurumu''nun ilk çeviri ödülüne değer bulunmuştur.', 55, 1, 1006, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (43, N'9786053607021', N'Sokrates''in Savunması - Hasan Ali Yücel Klasikleri', N'Platon', 4, 220, 2012, CAST(7.22 AS Decimal(18, 2)), N'0000000416798-1.jpg', N'Platon (MÖ yaklaşık 428-MÖ yaklaşık 348): Bugünkü üniversitenin atası sayılan Akademia''nın kurucusu ve hocası Sokrates''i konuşturduğu diyaloglarla felsefeyi yazıya en iyi aktarmış ustalardan biridir. Bu kitapta birbirini tamamlayan dört diyalog yer almaktadır. İlk diyalog olan Euthyphron''da yargılanışının öncesi anlatılır ve dinsizlikle suçlanan Sokrates''in inançları hakkında bilgi verilir. Sokrates''in Savunması''nda ise yargı süreci anlatılmaktadır. Kriton''da hüküm sonrası anlatılır, bir yurttaşın saygı duyması gereken ilkeler tartışılır. Platon''un en şiirsel eserlerinden biri olan Phaidon''daysa Sokrates''in son günü anlatılırken ruh hakkındaki düşünceleri yansıtılmaktadır.', 50, 1, 1006, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (44, N'9786053603535', N'Böyle Söyledi Zerdüşt - Hasan Ali Yücel Klasikleri', N'Friedrich Wilhelm Nietzsche', 4, 335, 2011, CAST(11.70 AS Decimal(18, 2)), N'0000000374251-1.jpg', N'Friedrich Wilhelm Nietzsche (1844-1900): Geleneksel din, ahlak ve felsefe anlayışlarını kendine özgü yoğun ve çarpıcı bir dille eleştiren en etkili çağdaş felsefecilerdendir. Bonn Üniversitesi''nde teoloji okumaya başlayan Nietzsche daha sonra filolojiye yöneldi. Leipzig Üniversitesi''nde öğrenimini sürdürdü, henüz öğrenci iken Basel Üniversitesi filoloji profesörlüğüne aday gösterildi. 1869''da sınav ve tez koşulu aranmadan, yalnızca yazılarına dayanarak doktor unvanı verilen Nietzsche profesörlüğü sırasında klasik filoloji çalışmalarından uzaklaştı ve felsefeyle uğraşmaya başladı. Tragedyanın Doğuşu, Zamana Aykırı Bakışlar, İnsanca Pek İnsanca, Tan Kızıllığı, Şen Bilim, Böyle Söyledi Zerdüşt, İyinin ve Kötünün Ötesinde, Ahlakın Soykütüğü, Ecce Homo, Wagner Olayı, Dionysos Dithyrambosları, Putların Alacakaranlığı, Antichrist, Nietzsche Wagner''e Karşı başlıca büyük eserleri arasında yer almaktadır.', 50, 1, 1006, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (45, N'9786053320128', N'Ermiş', N'Halil Cibran', 4, 56, 2016, CAST(4.82 AS Decimal(18, 2)), N'0000000577529-1.jpg', N'"İnsan için tüm amaçlarını susuzluktan çatlamış dudaklara ve tüm yaşamı bir çeşmeye dönüştüren bir armağandan daha büyüğü yoktur kuşkusuz. Benim şerefim ve ödülüm işte bu armağanda yatıyor. Ne zaman içmek için çeşmeye gelsem, diri suyun kendisini susamış bulmamda..." Yıllar boyu kendisine yurt olan kentten ayrılırken, Ermiş''ten geride bıraktığı halka hitap etmesi istenir. Kent halkı ona aşk, evlilik, suç, ölüm, güzellik ve daha pek çok konuda sorular yöneltir. Aldıkları karşılık, hoşgörü ve sevginin biçimlendirdiği bir insan yaşamı üzerine hazine değerindeki öğütlerdir. Haklıyla haksızın, suçluyla suçsuzun, dimdik ayakta duranla düşmüşün aslında aynı insan olduğu bir yaşamdır bu...', 50, 1, 1006, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (47, N'9789754587395', N'Utopia', N'Thomas More', 4, 224, 2014, CAST(7.22 AS Decimal(18, 2)), N'0000000205644-1.jpg', N'Eşine az rastlanır üstün zekasıyla tanınmış, yenilmez İngiltere Kralı Sekizinci Henry ile değerli Kastilya prensi birkaç yıl önce ciddi şekilde bozuşmuşlardı. Bu işi görüşmek ve düzeltmek üzere o tarihte sözcü olarak Felemenk''e gitmiştim. Yanımda iş ve yol arkadaşı olarak eşsiz insan Cuthbert Tunstall vardı. Kral o sırada kendisine, herkesin alkışları arasında, Canterbury başpiskoposluğunu vermişti...', 50, 1, 1006, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (48, N'9789754586985', N'Denemeler - Hasan Ali Yücel Klasikleri', N'Michel de Montaigne', 4, 272, 2012, CAST(8.42 AS Decimal(18, 2)), N'0000000202096-1.jpg', N'Michel de Montaigne (1533-1592): "Kendini tanı" ve "Ne biliyorum?" gibi temel sorularla yola çıkarak bir insanda insanlığın bütün hallerini yoklayan "deneme" türünün insim babasıdır. 

1571''de kitaplarıyla birlikte çiftliğinin kulesine çekilmesiyle başlayan bu yaratıcı süreç, Montaigne''i önce okuduklarıyla ilgili notlar almaya itmiş, aynı notlar zamanla Denemeler''i (1580) oluşturmuş, ve bu kişisel yazılar ilk yayımlanıştan sonra da dallanıp budaklanmayı sürdürmüştür.

Bu kitaptaki Eyüboğlu çevirileri''de, 1940''daki ilk baskısından 1970''deki halini alana dek okurun önüne her defasında yeni parçalar getirerek bir anlamda yapıtla benzeri bir yol izlemiştir.', 45, 1, 1006, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (50, N'9789754589481', N'Toplum Sözleşmesi - Hasan Ali Yücel Klasikleri', N'Jean-Jacques Rousseau', 4, 144, 2016, CAST(7.83 AS Decimal(18, 2)), N'0000000223943-1.jpg', N'Jean-Jacques Rousseau (1712-1778): Bilimler ve Sanatlar Üstüne Söylev’den Emile’e, İnsanlar Arasında Eşitsizliğin Kaynağı’ndan İtiraflar’a, insanlık tarihinde çığır açan Aydınlanma düşüncesinin en önemli Romantik düşünür-yazarıdır.
Toplum Sözleşmesi’yse (1762) yayımlandığı günden bugüne toplumların birarada yaşayışlarına ilişkin en temel düşünce yapıtlarından biri olma özelliğini sürdürmektedir.

Vedat Günyol (1911-2004); Kültür tarihimizin Tercüme Bürosu ruhunu, sonraki dönemlerde yayıncısı olduğu Yeni Ufuklar dergisi ve Çan Yayınları’yla sürdüren en önemli üyelerinden biridir. Rabelais’den Rousseau’ya T. More’dan M. Gandhi’ye uzanan "yalnız ve birlikte" çevirilerinin yanısıra, kendi denemeleri de yirmiyi aşkın kitapta toplanmıştır.', 45, 1, 1006, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (51, N'9786053329565', N'İdeal Devlet', N'Farabi', 4, 192, 2017, CAST(8.42 AS Decimal(18, 2)), N'0001690943001-1.jpg', N'Farabî (870-950): Türk-İslam filozofu, gökbilimci, müzisyen. İslam’ın Altın Çağ’ının en önemli isimlerden biridir. Farabî yükseköğrenimini Bağdat’ta tamamladı, zamanın ünlü bilginlerinden ders aldı. Aristoteles’in ve Platon’un eserlerini inceledi, bu iki filozofun felsefelerini İslam’la bağdaştırmaya, bu sayede İslam dinine felsefi bir nitelik kazandırmaya çalıştı. Felsefeye mantık ile başlayıp metafizik üzerinde durdu; felsefenin dil, siyaset, doğa, zihin ile ilgilenen dallarında eserler verdi; müzik aletleri geliştirdi, müzik ve psikoloji konularında yazdı. İslam felsefesinin gelişmesini ve korunmasını sağladı, İlkçağ Yunan-Latin eserlerinin Arapça tercümelerinden yararlanmak zorunda kalan ve kendisini Alpharabius ismiyle anan Batılı Orta Çağ düşüncesini etkiledi. İdeal Devlet bilinen 103 eserinden sonuncusudur ve Farabî’nin felsefesini tüm açılardan yansıtır. Eserde İlk Var Olan’ın nitelikleri, diğer varlıkların nasıl meydana geldiği, varlıkların dereceleri, bunun organlardaki karşılığı, bir beden gibi işleyen şehri/toplumu yönetecek kişinin nitelikleri, şehir/toplum türleri, her birinin güçlü ve zayıf yanları ele alınır', 35, 1, 1006, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (52, N'9786053327189', N'Deliliğe Övgü', N'Erasmus', 4, 152, 2016, CAST(7.22 AS Decimal(18, 2)), N'0000000689370-1.jpg', N'Desiderius Erasmus (1469-1536): Yeni Ahit''in ilk editörü, ilahiyat edebiyatının önde gelenlerinden ve Kuzey Avrupa Rönesansı''nın en önemli hümanistlerinden olan Erasmus, filolojik yöntemleri kullanarak tarihsel-eleştirel geçmiş araştırmalarının temelini attı. Eğitim alanındaki yazıları klasiklere eski dini müfredat yerine hümanist bir bakış açısıyla yönelinmesine katkıda bulundu. Kilisenin gücünün kötüye kullanılmasını eleştirirken yükselen reform taleplerini teşvik etti. Bu tutumu hem Protestan Reformu''nda hem de Katolik Karşı Reformu''nda ses buldu. Luther''in doktrinini ve papalığın sahip olduğunu iddia ettiği güçleri reddeden bağımsız duruşu nedeniyle her iki tarafın hedefi haline geldi. İngiltere''ye giderken tasarladığı ve Thomas More''un evinde yazdığı Deliliğe Övgü ile dönemin entelektüellerini eleştirdi, öğretmenler, papazlar, ilahiyatçılar, filozoflar, tüccarlar, avukatlar, hükümdarlar, azizler ve kendini zeki sayan herkesi alaycı bir dille yerdi.', 35, 1, 1006, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (53, N'9786052954027', N'Kendime Düşünceler', N'Marcus Aurelius', 4, 156, 2018, CAST(7.22 AS Decimal(18, 2)), N'0001751077001-1.jpg', N'Marcus Aurelius (MS 121-MS 180): MS 121 yılında Roma’da doğdu. Fronto, Apollonius Chalcedonius gibi döneminin önde gelen hatip ve filozoflarından özel dersler aldı. MS 161-180 yılları arasında Roma İmparatoru olarak hüküm sürdü. “Stoacı İmparator”, “Filozof İmparator” gibi sıfatlarla anılan Marcus Aurelius, barışçı bir insan olmasına rağmen hükümdarlığının çoğunu seferlerde geçirdi. MS 169 yılı sonlarında Germen kavimlerine karşı düzenlenen bir sefer esnasında yazmaya başladığı Kendime Düşünceler, Stoacılık özellikle de

Roma Stoası açısından büyük bir öneme sahiptir.Sağlam bir eşitlik ve özgürlük inancına sahip olan Marcus Aurelius imparatorluğu boyunca doğayı bilip anlayarak yaşamaya çalışmış, her şeyin ortasına insanı koymuştur. Günlük olarak kaleme alınmış bir özdeyişler ve düşünceler derlemesi denebilecek Kendime Düşünceler eserinde kendinden önceki caesarları ve filozofları eleştirmekle kalmayıp, kendi kendini de sorguya çekerek bir vicdan muhasebesi de yapar. Sonraki kuşaklara, kilise düşünürlerine, Rönesans’a da temel olan Kendime Düşünceler, Stoa felsefesinin anlaşılması açısından günümüzde de çok değerli bir kaynaktır.', 45, 1, 1006, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (54, N'9786053322856', N'Meczup', N'Halil Cibran', 4, 64, 2016, CAST(4.82 AS Decimal(18, 2)), N'0000000621380-1.jpg', N'Halil Cibran, gençlik döneminin ürünü ve sonraki yapıtlarının habercisi olan Meczup''ta, toplum önünde büründüğü maskelerden kurtulup gerçek benliğini kucaklamayı başaran insanoğlunu anlatır. Kendini her türlü yüzeysellikten arındırıp hakikatin peşine düşen, bu arayışın sonunda varış noktası yalnızlık ve özgürlük olan kişi, toplumun gözünde meczuptur. Cibran''ın kötülük, ikiyüzlülük, adaletsizlik, konformizm ve tamahkârlık karşısındaki eleştirel tutumu; bu dünyayla, burada sürdürdüğü varoluşla, yaşadığı zamanla uzlaşamayan bir meczubun bakış açısından kaleme alınmış bu mesellerdeki keskin ironide ifadesini bulur.', 45, 1, 1006, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (55, N'9789754582062', N'Zincire Vurulmuş Prometheus - Hasan Ali Yücel Klasikleri', N'Aiskhylos', 4, 78, 2015, CAST(5.41 AS Decimal(18, 2)), N'0000000435157-1.jpg', N'Aiskhylos (MÖ 525?-456): Eski Yunan''ın en önemli tragedya yazarlarındandır. Mitolojik konuların hemen hemen hepsini eserlerinde işlemiştir. Yazdığı 90 tragedyadan sadece 7 tanesi günümüze kalmıştır. Aiskhylos özellikle adaletin gerekliliği üzerinde durmuş, eserlerinin çoğunda hak meselesini konunun ağırlık merkezine yerleştirmiştir. Zincire Vurulmuş Prometheus''da da farklı kuşaklardan tanrılar arasındaki anlaşmazlığı ele almıştır. Tragedyanın kahramanı Olympos tanrılarına başkaldıran titan Prometheus ateşi tanrılardan çalmış ve insanlara vermiş, tanrıların kurmuş olduğu düzene karşı geldiği için zincire vurulmuştur. Aiskhylos bu tragedyasında akıl gücünün kaba kuvvete üstünlüğünü, akla ve özgür düşünceye verilmesi gereken önemi vurgulamıştır.', 45, 1, 1006, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (56, N'9786053327578', N'İyinin ve Kötünün Ötesinde - Gelecekteki Bir Felseye Giriş', N'Friedrich Wilhelm Nietzsche', 4, 256, 2016, CAST(10.23 AS Decimal(18, 2)), N'0000000696777-1.jpg', N'Friedrich Wilhelm Nietzsche (1844-1900): Geleneksel din, ahlak ve felsefe anlayışlarını kendine özgü yoğun ve çarpıcı bir dille eleştiren en etkili çağdaş felsefecilerdendir. Bonn Üniversitesi''nde teoloji okumaya başlayan Nietzsche daha sonra filolojiye yöneldi. Leipzig Üniversitesi''nde öğrenimini sürdürdü, henüz öğrenci iken Basel Üniversitesi filoloji profesörlüğüne aday gösterildi. 1869''da sınav ve tez koşulu aranmadan, yalnızca yazılarına dayanarak doktor unvanı verilen Nietzsche profesörlüğü sırasında klasik filoloji çalışmalarından uzaklaştı ve felsefeyle uğraşmaya başladı. Tragedyanın Doğuşu, Zamana Aykırı Bakışlar, İnsanca Pek İnsanca (Karışık Kanılar ve Özdeyişler, Gezgin ve Gölgesi), Tan Kızıllığı, Şen Bilim, Böyle Söyledi Zerdüşt, İyinin ve Kötünün Ötesinde, Ahlakın Soykütüğü, Ecce Homo, Wagner Olayı, Dionysos Dithyrambosları, Putların Alacakaranlığı, Deccal, Nietzsche Wagner''e Karşı başlıca büyük eserleri arasında yer almaktadır', 45, 1, 1006, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (57, N'9786052953167', N'Mutluluğun Kazanılması', N'Farabi', 4, 88, 2018, CAST(6.02 AS Decimal(18, 2)), N'0001742900001-1.jpg', N'Farabî (870-950): Türk-İslam filozofu, gökbilimci, müzisyen. İslam’ın Altın Çağ’ının en önemli isimlerden biridir. Farabî yükseköğrenimini Bağdat’ta tamamladı, zamanın ünlü bilginlerinden ders aldı. Aristoteles’in ve Platon’un eserlerini inceledi, bu iki filozofun felsefelerini İslam’la bağdaştırmaya, bu sayede İslam dinine felsefi bir nitelik kazandırmaya çalıştı. Felsefeye mantık ile başlayıp metafizik üzerinde durdu; felsefenin dil, siyaset, doğa,

zihin ile ilgilenen dallarında eserler verdi; müzik aletleri geliştirdi, müzik ve psikoloji konularında yazdı.

İslam felsefesinin gelişmesini ve korunmasını sağladı, Batılı Orta Çağ düşüncesini etkiledi.

Siyaset felsefesi alanındaki en olgun eseri kabul edilen Mutluluğun Kazanılması öncelikle insanların her iki dünyada mutluluğu kazanmalarına aracı olan insani şeyleri, yani teorik erdem, fikrî erdem, ahlâki erdem ve pratik sanatları tanımlar. ', 45, 1, 1006, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (58, N'9789754587623', N'Şölen - Dostluk - Hasan Ali Yücel Klasikleri', N'Platon', 4, 120, 2006, CAST(7.15 AS Decimal(18, 2)), N'0000000210422-1.jpg', N'Platon (Eflatun, İÖ yaklaşık 428 / 7-İÖ yaklaşık 
348 / 7); Bugünkü üniversitenin atası sayılan Akademia’nın kurucusu (İÖ 387) ve hocası Sokrates’i konuşturduğu "diyaloglar"la felsefeyi yazıya en iyi aktarmış olan ustalardan biridir. 
En tanınmış diyaloglarından Şölen ve Dostluk’ta ise Platon, denebilirse, İnsanlığın anlamaya çalıştığı en temel duygu "sevgi"nin izini sürmektedir. 

Sabahattin Eyüboğlu (1908-1973); Hasan Âli Yücel''in kurduğu Tercüme Bürosu''nun başkan yardımcısı ve Cumhuriyet döneminin en önemli kültür 
insanlarından biridir.
Azra Erhat (1915-1982); Tercüme Bürosu''nun en önemli çevirmenlerindendir. Ortaklaşa yaptığı Homeros ve Hesiodos çevirilerinin yanısıra, dilimize bir de telif Mitoloji Sözlüğü kazandırmıştır.', 45, 1, 1006, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (59, N'9786052954959', N'Nietzsche Bu İşe Ne Derdi?', N'Marcus Weeks', 4, 192, 2018, CAST(27.09 AS Decimal(18, 2)), N'0001782495001-1.jpg', N'Sizce Schopenhauer kırık kalbinizi onarabilir miydi? Veya Aristoteles çağdaş sanatın işe yaramaz olmadığına sizi ikna edebilir miydi? Hiç, John Stuart Mill’e, Simpsons’ın Shakespeare’den daha iyi olup olmadığını sormak aklınızdan geçmiş miydi?

Platon, Simone de Beauvoir, Marx ve daha niceleri… Felsefenin gelmiş geçmiş en büyük zekâlarından hızlandırılmış felsefe dersleri ve tavsiyeler almak isterseniz, elinizdeki bu rehber, sizi en iyi filozoflarla ve teorileriyle tanıştıracak.', 45, 1, 1006, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (60, N'9789754587005', N'Yaşam Bilgeliği Üzerine Aforizmalar - Hasan Ali Yücel Klasikleri', N'Arthur Schopenhauer', 4, 222, 2006, CAST(9.63 AS Decimal(18, 2)), N'0000000202092-1.jpg', N'Arthur Schopenhauer (1788-1860): Felsefe tarihinin, Batı kadar Doğu''ya da en açık, hayatın temel soru(n)ları hakkında en iyi ve en gerçekçi biçimde yazan filozoflarından biridir. Felsefe sistemini ortaya koyan ve başyapıtı sayılan İstenç ve Tasarım Olarak Dünya''yı (1818) yayımlandığında henüz otuz yaşında olan filozofun bu yapıtı koyu bir sessizlikle karşılanmış; değeriyse, 1851''de, altmış üç yaşındayken yayımladığı denemeler ve aforizmalar toplamı Parerga ve Paralipomena (Yan Ürünler ve toplamı Parerga ve Paralipomena (Yan Ürünler ve Geri Kalanlar) ile anlaşılmaya başlanmıştır. Bu kitapsa, bu kapsamlı toplamın aforizmalar bölümünü oluşturmaktadır.

Mustafa Tüzel (1959), kuşağının en verimli Almanca çevirmenlerindendir. Yola Thomas Bernhard''ın özyaşamöyküsel roman beşlisi ile çıktı. Arada Dürrenmatt''a, Schopenhauer''e uğradı. Son yıllardaysa, en çok Nietzsche çeviriyor.', 45, 1, 1006, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (62, N'9786053324850', N'Sokrates Öncesi ve Sonrası', N'Francis Macdonald Cornford', 4, 104, 2015, CAST(6.02 AS Decimal(18, 2)), N'0000000651705-1.jpg', N'Büyük İngiliz klasikçisi Francis Macdonald Cornford''un 1932 yılının Ağustos ayında Yunan felsefesi üzerine Cambridge Üniversitesi''nde verdiği dört konferans metninden oluşan bu minik kitap o kadar sevilmiş, o kadar çok okuyucu bulmuştur ki İngiltere''de bugüne kadar yirmi beş baskı yapmıştır.

Sokrates kimdi? Batı uygarlığı için kamil insan, bilge filozof modeli mi, yoksa Yunan düşüncesinin doğacı temellerinden ayrılarak mistisizm içinde kaybolmasına yol açan kişi mi? Verdiği dört konferansta Cornford Sokrates''in Eski Yunan ve tüm Avrupa uygarlığı içindeki emsalsiz yerinin nedenlerini büyük bir açıklıkla, basit bir dille ve kısa, okunması zevkli metinlerle anlatıyor..', 45, 1, 1006, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (63, N'9786053327073', N'Tao Te Ching', N'Laozi', 4, 120, 2016, CAST(6.02 AS Decimal(18, 2)), N'0000000685711-1.jpg', N'Laozi: Hayatı hakkında çeşitli efsaneler olsa da kesin bir bilgi yoktur. İsmi Çincede hem "yaşlı usta" hem de "yaşlı çocuk" anlamlarına gelmektedir. Taoculuğun en önemli metni sayılan Tao Te Ching''in (Dao De Jing) yazarı olarak kabul edilir. Tao Te Ching klasik Çin edebiyatının en eski ve en ünlü örneklerinden biridir. Metin yüzyıllar boyunca birçok sanatçıya, düşünüre siyasetçiye ilham vermiş, çeşitli entelektüel tartışmalara yol açmıştır. Döneminin diğer metinleriyle kıyaslandığında metnin en ayırt edici özelliği insanı merkeze koymamasıdır. Tao Te Ching, döneminin diğer düşünce akımlarından farklı olarak doğayı, insan ahlâkına duyarlı ve insana hizmet eden bir güçler bütünü olarak değil, insan dâhil her şeye eşit davranan, tarafsız bir güç kaynağı olarak karakterize eder. Tao Te Ching''e göre yerin ve göğün arasındaki her şey aynı kanunlara tabidir. Değişik dönemlerde siyasi iklimlere göre değişik şekillerde yorumlanan Tao Te Ching''in yüzyıllar sonra bile okunmasının sebebi değindiği konuların her zaman geçerliliğini koruyacak nitelikte olmasıdır. ', 45, 1, 1006, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (64, N'9789944888387', N'20. Yüzyıl Felsefe Tarihi', N'Christian Delacampagne', 4, 367, 2016, CAST(14.44 AS Decimal(18, 2)), N'0000000326527-1.jpg', N'20. Yüzyıl Felsefe Tarihi, Kant, Marx, Frege, Husserl, Wittgenstein, Heidegger, Adorno, Sartre, Lévi-Strauss, Habermas, Foucault, Derrida gibi geçen yüzyıla yön vermiş düşünürleri çağdaş felsefenin etkilenmeden yapamayacağı kadar ağır ve önemli sonuçları olan bu arka planla birlikte ele alan, vazgeçilmez bir başvuru kaynağı.', 45, 1, 1006, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (65, N'9786052221402', N'Belki Keşke Neyse', N'Gökçen Erdoğan', 5, 326, 2018, CAST(13.89 AS Decimal(18, 2)), N'0001776864001-1.jpg', N'“Fiziksel acılar çekerken pişmanlığa yaklaştığı anları, yaşadığı evi, ilk cinsel deneyimi, çalıştığı işi terk etmek zorunda kalışı, severken bile bir yandan kınayan bakışları, ilgimle yardımcı olayım derken zavallı hissettirişi, yeniden doğma hissine karışan yok olma hissi, kıllanan bedeni, buluttan nem kapar hale gelen ruhu… her şeye sıfırdan başlamanın verdiği o ‘acaba’ duygusu… Hepsi yormuştu.”

Her insan kendi yaşamının yorgunu. Her acı, ciddiye alınacak kadar büyük ve beterlerini göz önünde bulundurup şükrettirecek kadar küçük… Ama gerçek… Hepsi gerçek. İnsan yaşamında filizlenen her kaygı, her korku, her umut, her sevinç, her üzüntü gerçek; En umutsuz belki bile gerçek. Umut hep gerçek.

Bu kitap, anlaşılmadığına inanan her insan için yazıldı.

Anlaşılacaklarına inansınlar diye… ', 45, 1, 3, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (67, N'9789752444447', N'İnsanın 8 Yeteneği', N'Gurmukh Kaur Khalsa, Cathryn Michon', 5, 390, 2017, CAST(15.56 AS Decimal(18, 2)), N'0001711536001-1.jpg', N'İnsanın Sekiz Yeteneği’nde, dünyaca ünlü Kundalini-Yoga ustası Gurmukh, gerçek anlamda beden, zihin ve ruh sağlığını kazanmamızı sağlayan kadim yöntemleri açıklamaktadır. Otuz yıllık Kundalini-Yoga öğretmenliği boyunca, öğretmenlerden yazarlara ve Cindy Crawford, Courtney Love, Madonna gibi pop yıldızlarına kadar pek çok öğrencisinin hayatındaki etkileyici değişimi ve iyileşmeyi de örnekleriyle anlatmaktadır.


Öğrettiği Yoga çalışmaları, bedenimizin temel enerji merkezleri olan ve insanın sekiz yeteneğinin kaynağını oluşturan sekiz çakrayı uyandırmaktadır. Bu benzersiz yetenekler, kabullenicilik, yaratıcılık, gerçek, sezgi gibi niteliklerden oluşmaktadır. Aynı şekilde her yeteneğimizin öfke, korku, suçluluk gibi bir gölge duygusu vardır. Bu çakralardan birinde dengesizlik olduğunda ve bunun sonucunda da gölge taraf güçlendiğinde hastalıklar ortaya çıkmaya başlar.


Eğer yaratıcılığınızı artırmak, sezgilerinizi güçlendirmek, daha sağlıklı ve sevecen olmak istiyorsanız, İnsanın Sekiz Yeteneği sizin içindir. Sizi kemiren korkulardan ve öfkeden kurtulmak istiyorsanız, bu kitap, yaşamınızı temelden değiştirecek araçlarla donanmanızı sağlayacaktır.', 45, 1, 3, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (68, N'9786052221105', N'Yoga ile Büyüyorum-Çocuklar için Yoga', N'Acharya Balkrishna', 5, 128, 2018, CAST(11.11 AS Decimal(18, 2)), N'0001755964001-1.jpg', N'Binlerce yıl önce Hindistan’da ortaya çıkmış zihinsel ve fiziksel disiplinlerin bir bütünü olan Yoga, çocukların gelişiminde önemli bir rol oynamaktadır. Çağımızın hızlı ve stresli yaşantısı çocuklara da olumsuz yansımakta; onların gerginlik, sınav kaygısı, başarma hırsı, rekabet, iletişim sorunu gibi olumsuzluklar yaşamalarına neden olmaktadır. Yoga, sağladığı dinginlik ve iç huzurla bu tür çevresel olumsuzlukları gidermenin yanı sıra astım, hiperaktivite, dikkat eksikliği, sindirim sorunu, uykusuzluk, öğrenim güçlüğü gibi sorunların iyileştirilmesinde de destekleyici rol oynamaktadır. Yoga ayrıca vücuda kazandırdığı esneklik sayesinde çocukların fiziksel aktivitelerde daha başarılı olmasına katkı sağlamaktadır.

Yoga ile Büyüyorum, doğadan ve hayvanlardan esinlenilen basit Yoga duruşlarını eğlenceli çizimler ve basit ifadelerle anlatıyor. Her bir hareketin nasıl ve günün hangi saatlerinde yapıldığı, vücudun hangi kısımlarını çalıştırdığı, hangi fiziksel veya zihinsel rahatsızlığa iyi geldiği açıklanırken; aynı zamanda şiirler ve kısa hikayeler aracılığıyla çocuklara sağlıklı beslenmenin, sevginin, iyilik yapmanın, hoşgörünün ve yardımlaşmanın faydaları öğretiliyor.', 45, 1, 3, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (69, N'9786055143589', N'Montessori Yöntemiyle Çocuk Eğitimi', N'Eriman Topbaş', 5, 224, 2013, CAST(5.56 AS Decimal(18, 2)), N'0000000569647-1.jpg', N'Ailelerin ev ortamında çocuklarının gelişimine katkı sağlamak için bir dolu imkânları bulunmaktadır. Yapacakları tek şey, her türlü ev içi düzenlemede evde çocukların da yaşadıklarını bilmektir. Onların ihtiyaçlarını dikkate almak ve bu ihtiyaçlara saygı duymak yeterli olacaktır. Bu hassasiyet kesinlikle ek bir masraf getirmemektedir. Sadece biraz zaman ayırmak yeterli olacaktır. Aslında çocuğun varlığına gösterilecek özen, önce kendimize, toplumumuza ve insanlığa en güzel sonuç olarak geri dönecektir. Çünkü, "bardak ne ile dolu olursa içinden o dökülür."', 45, 1, 3, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (70, N'9786059371995', N'Dünyayı İnşa Edenler', N'Tuğba Ejder', 5, 392, 2017, CAST(14.90 AS Decimal(18, 2)), N'0001697336001-1.jpg', N'Başarı hikâyelerinin belki de en güzel yanı insana dokunan, onu etkileyen, kimi zaman da harekete geçiren bir yanının olmasıdır. Hayata yeni atılan veya başarısız olup yeniden deneyenlere de umut verir bu hikâyeler.


Dünyanın çehresini değiştiren iş adamlarının başarı hikâyelerini dinlediğinizde anlıyorsunuz ki başarı; banka hesabından, alınan eğitimden veya sahip olunan soyadından öte bir şey.


Biliyordum ki; herkesin bir öyküsü, bir yolu vardı. Bilmediğimse bu yolda yürürken karşılaştıkları zorluklardı.


İş adamlarımızın hayatına konuk olup hikâyelerini dinledikçe fark ettim ki; insanların zorluklarla baş etme yöntemleri, ürettikleri çözümler ve mücadele sırasındaki kazanımları, benzer zorluklar yaşayan insanlar için de bir ders niteliğinde.


Erken yaşta atıldıkları çalışma hayatında günler ayları, aylar yılları kovaladıkça azimle çalışmaya devam eden; kültürü, aile yapısı, hayat görüşü farklı, istihdam yaratma arzusu aynı on yedi iş adamının iç dünyasına konuk olup, yaşadıklarına tanık olmak güzel bir deneyimdi benim için.


Sıradan yaşamların bir anda sıra dışı hikâyelere dönüşmesi… İşte! Her hikâyenin beni şaşırtan yanı da buydu.


Evde, ailesi ile sıradan bir baba…


Türkiye’de, ortaya koyduğu ilklerle sıra dışı bir iş adamı…


Başarıları ülke sınırlarını aşan, uluslararası bir firma…


Kahramanları değişse de başarı hikâyelerinin değişmeyen unsurlarıydı bunlar.', 45, 1, 3, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (72, N'9786052221556', N'Nasıl Öğrenirsen Öyle Yaşarsın', N'Kay Peterson, David A. Kolb', 5, 256, 2018, CAST(12.22 AS Decimal(18, 2)), N'0001786338001-1.jpg', N'Mutluluğun, başarının ve kendinizi geliştirmenin sırlarından biri de ömür boyunca öğrenmektir.

Ancak bunun en iyi yöntemi nedir?

Kay Peterson ve David Kolb, bu soruyu sizin için cevaplayabilirler. Kendi baskın stilinizi oluşturabilmeniz için yol göstermek amacıyla, yaptıkları derin araştırmalara dayanan ideal öğrenme stillerine ilişkin görüşlerini elinizdeki kitapta sizlerle paylaşıyorlar.

Kendi öğrenme stilinizi keşfederek, yeni tanıştığınız birinin ismini anımsamak veya mesleki tarzınıza çok önemli özellikler eklemek gibi, günlük hayatınızda her zaman karşılaştığınız sorunlarla bile başa çıkabilirsiniz.

Bu kitap, her birimizin içinde yer alan öğrenme gücünü ortaya çıkarabilmek için kılavuz niteliği taşımaktadır.', 45, 1, 3, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (73, N'9786052221150', N'Atasözleri ve Deyimler Sözlüğü', N' Kolektif', 5, 256, 2019, CAST(5.56 AS Decimal(18, 2)), N'0001792765001-1.jpg', N'I·lköğreti·m Atasözleri· ve Deyi·mler Sözlüğü', 45, 1, 3, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (77, N'9789752444409', N'Men Kazanga Baramen', N'Dilaver Cebeci', 5, 144, 2017, CAST(5.83 AS Decimal(18, 2)), N'0001713058001-1.jpg', N'Bu kitap, Dilaver Cebeci’nin bir haftalık gezi notlarından oluşmuştur. Kitapla ölümsüz şair Abdullah Tukay’ı, onun eserlerini şimdilerde yaşatan büyük yazar Renat Muhammed’i, şair Ahmet Adil’i, değerli devlet adamı, hatip, ressam Rinat Haris’i ve Süyüm Bike gibi Tatarlar’ın efsanevî kadın kahramınını ve tarihe malolmuş nice Tatar-Türk büyüğünü tanıyacaksınız. Dolaylı olarak değinilmiş olsa da, Türk Dili’nin kutsiyetini, kardeş ülkeler arasındaki kültür birliğinin önemini ve bunlara ilişkin bazı konuları ilgiyle okuyacaksınız.', 45, 1, 3, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (81, N'9786052221198', N'Resimli Türkçe İngilizce-English Turkish Sözlük', N'Kolektif', 5, 264, 2019, CAST(8.33 AS Decimal(18, 2)), N'0001794000001-1.jpg', N'Resimli Türkçe - İngilizce English - Turkish Sözlük', 45, 1, 3, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (83, N'9786052221181', N'Resimli Türkçe Sözlük', N'Kolektif', 5, 272, 2019, CAST(8.33 AS Decimal(18, 2)), N'0001794001001-1.jpg', N'Resimli Türkçe Sözlük', 45, 1, 3, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (84, N'9789752444942', N'Başarıya Hükmedenler', N'Halim Bartal', 5, 176, 2018, CAST(7.22 AS Decimal(18, 2)), N'0001745339001-1.jpg', N'Üniversiteye giriş sınavlarında dereceye giren şampiyonlar başarılarının sırlarını anlatıyor.

Nasıl başardılar? Hedefleri neler?

Sınavlara gireceklere tavsiyeleri...

Bu kitabı sadece okumakla yetinmeyip, içinizdeki düşünceleri, başaranların stratejilerini kendi süzgecinizden geçirerek eyleme dönüştürürseniz başaramayacağınız hiçbir şey olmayacaktır.

Çünkü BAŞARIYA HÜKMEDENLER bilgiden çok eyleme geçmiş kişilerdir. Onların dünyasında olumsuz düşünceler, karamsarlıklar yoktur. Başaramayacaklarını düşündüklerinde,başarısızlığı çoktan garantileyeceklerini çok iyi bilirler.

Başarı onlar için bir varış değil, yaşam boyu devam eden bir yolculuktur.', 45, 1, 3, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (86, N'9786052221167', N'İlköğretim İngilizce Türkçe-Türkçe İngilizce Sözlük', N'Kolektif', 5, 320, 2019, CAST(5.56 AS Decimal(18, 2)), N'0001792767001-1.jpg', N'I·lköğreti·m I·ngi·li·zce - Türkçe Türkçe - İngi·li·zce Sözlük', 45, 1, 3, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (90, N'9786053758730', N'God of War: Resmi Roman Uyarlaması', N' J. M. Barlog', 6, 404, 2018, CAST(16.67 AS Decimal(18, 2)), N'0001782664001-1.jpg', N'Savaş Tanrısı’nın şimdiye kadarki en duygusal ve zorlu yolculuğunda siz de Kratos ve oğlu Atreus’a katılın…

Olimpos Tanrıları’ndan aldığı intikamın üzerinden yıllar geçen Kratos, artık hayatına İskandinav tanrılarının ve canavarlarının diyarında devam ediyordu. Bu sert ve amansız topraklarda hayatta kalmak için savaşması gerekiyordu… ve oğluna da bunun nasıl yapılacağını öğretmesi. God of War’un şaşırtıcı yeniden anlatımı, serinin tatminkâr savaş sahnelerini, nefes kesici atmosferini ve güçlü kurgusunu bir üst seviyeye taşıyor.

God of War 2’nin senaryo danışmanı olan J. M. Barlog’un God of War oyunlarının direktörü ve yazarı Cory Barlog’la işbirliği yaparak yazdığı roman, hem oyunun hayranları hem de fantastik edebiyat severler için eşsiz bir okuma vadediyor.', 45, 1, 5, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (91, N'9786053756040', N'Ben Robot', N'Isaac Asimov', 6, 248, 2016, CAST(16.85 AS Decimal(18, 2)), N'0000000720264-1.jpg', N'Ünlü bilimkurgu yazarı Isaac Asimov''un bilimkurguya en büyük katkısı Üç Robot Kanunu''dur. Üç Robot Kanunu''na göre;

-Robotlar, insanlara zarar veremez ya da eylemsiz kalarak onlara zarar gelmesine göz yumamaz.
-Robotlar, Birinci Kanun''la çakışmadığı sürece insanlar tarafından verilen emirlere itaat etmek zorundadır.
-Robotlar, Birinci ya da İkinci Kanun''la çakışmadığı sürece kendi varlıklarını korumak zorundadır.

Ben, Robot''ta, Isaac Asimov en ünlü 9 robot öyküsünü toplamıştır. Bu öyküler, gelecek nesillerin robot öyküleri için bir yol gösterici olmuş, bilimkurguda robotun ciddiye alınmasını sağlamıştır. Asimov, bu öykülerle konuşma yetisi olmayan robotlardan insanlığın iyiliğini gözeten makinelere kadar, robot tarihinin izini sürüyor.

Ben, Robot 25 sene sonra yeni edisyonuyla, İthaki Bilimkurgu Klasikleri dizisinin bir parçası olarak geri dönüyor.', 45, 1, 5, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (92, N'9786053758464', N'İskandinav Mitolojisi', N'Neil Gaiman', 6, 312, 2018, CAST(12.50 AS Decimal(18, 2)), N'0001776813001-1.jpg', N'Neil Gaiman, eserlerinde fantastik diyarlar yaratırken kadim mitolojilerden her zaman ilham alan bir yazar olmuştur. Şimdi ise dikkatini bu diyarların kaynağına yöneltiyor ve destansı kuzey masallarını kendine has üslubuyla anlatıyor.

İskandinav Mitolojisi’nde yazar mühim İskandinav tanrılarını tasavvur ederken mitlerin aslına sadık kalıyor: Odin, Yüceler Yücesi, bilge, cüretkâr ve kurnaz. Thor, Odin’in oğlu, muazzam kudretine rağmen tanrıların en bilgesi olduğu söylenemez. Ve Loki, Odin’in kan kardeşi, oyunbaz ve önünde kimsenin duramadığı bir düzenbaz.

Gaiman, eski çağa bu ait hikâyeleri tıpkı bir romancı gibi ele alıyor; hikâyeler efsanevi dokuz âlemin yaratılışından başlıyor ve tanrıların, cücelerin, devlerin maceralarıyla devam ediyor. Thor’un çekicinin nasıl çalındığından, içenlere şairane ilhamlar veren bal şarabının kaynağının ne olduğuna kadar pek çok mit Gaiman’ın nüktedan cümleleriyle yeniden hayat buluyor. En nihayetinde her şey tanrıların alacakaranlığında doruğa çıkıyor: Ragnarök’te…

 

“Gaiman’ın her zamanki gibi yalın ve su gibi akan kelimeleri ortaçağ metinlerinin dramatik gücünü yansıtmayı başarıyor. Hikâyeleri anlatma tarzı yediden yetmişe herkese uygun ve bu hem yerinde hem de akıllıca bir hamle.”

– Ursula K. Le Guin - 

 

“İskandinav Mitolojisi’nde Gaiman eski mitleri öyle canlı anlatmış ki okurken yatak odam Valhalla’ya dönüşecek sanmaya başladım. Cüceler, devler ve yaratıklar da dahil tüm İskandinav panteonunu bir film ya da roman gibi işliyor. Ne yalan söyleyeyim, kendime göğüs zırhı sipariş etmeme şu kadar kaldı. Takdiminde Gaiman’ın da dediği gibi, bu öyküler dünyayı yaratan ateş ve buzdan başlayıp dünyayı sona erdiren ateş ve buza giden yolculuğu anlatıyor.”

- Lidia Yuknavitch - 

 

“Bu kitap sayesinde, çocukken severek okuduğum mitler yeni nesle, baştan keşfedilmek üzere anlatılacak. Ne de olsa, tekrar anlatılamayan öyküler unutulmaya mahkumdur ve her neslin bu mitleri yeniden keşfetmesi ve anlaması gerekir.

- Joanne Harris - ', 45, 1, 5, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (93, N'9786053759157', N'Spider-Man: Düşmanca Devralma', N'David Liss', 6, 340, 2019, CAST(19.26 AS Decimal(18, 2)), N'0001795632001-1.jpg', N'Peter Parker karmakarışık bir ilişki ağının içerisindeydi. En ileri teknolojileri barındıran bir laboratuvarda çalışıp dünyayı değiştirmeye çalışan genç bir biliminsanıydı. Yine de ikinci işi olan suçla mücadelenin getirdiği sorumluluklarla baş etmekte zorlanıyordu…

Wilson Fisk, namıdiğer Kingpin, New York’a dönmüş ve kendisini halk arasında fedakâr bir girişimci ve hayırsever biri olarak gösterme çalışmalarına başlamıştı. Örümcek-Adam bunun böyle olmadığını bilse de gerçekleşmesi halinde “bir daha geri dönüşü olmayan” o kötü niyetli plana dair gerçekleri açığa çıkaramazdı.

Örümcek-Adam’ın kostümü ve özellikleriyle sokakları altüst etmeye başlayan yeni tehdit karşısında Ağ Kafa, yaşanan kötü olayların sorumlusu olmadığını gösterip masum olduğunu kanıtlayabilecek miydi? Zaman daralıyor ve insanların hayatı tehlikedeyken Örümcek-Adam, bu eli kanlı Örümcek’in cani saldırını durdurabilecek miydi? Örümcek-Adam düşmanlarına ve korkularına boyun mu eğecekti yoksa ayağa kalkıp eskisinden de güçlü olduğunu mu gösterecekti?', 45, 1, 5, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (94, N'9789752733732', N'Hobbit', N' J.R.R. Tolkien', 6, 333, 2017, CAST(21.07 AS Decimal(18, 2)), N'0000000244198-1.jpg', N'İngiliz Dilbilim Profesörü ve roman yazarı J.R.R. Tolkien’ın olağanüstü bir titizlikle kurguladığı Orta-Dünya adlı fantastik/mitolojik bir evrende geçen Hobbit, yazarın bu evrende geçen masalları çocuklarına anlatmaya başlamasıyla bir kitap haline gelmiştir.


Hobbit adlı eserin üzerine kurulduğu Orta-Dünya büyülü, çeşitli ırklara ve dillere sahip epik bir dünyadır. Bu dünyada İnsanlar, Cüceler, Elfler, Büyücüler, Ejderhalar, Goblinler ve Orklar yaşamaktadır. Cüceler, dağların kalbinde yaşayan kudretli, madenci bir halktır. Korkunç ve altına susamış şeytanî ejderha Smaug, Erebor adlı Cüce Kenti’ne saldırır ve burada yaşayan Cüce halkın başına korkunç felaketler getirir. Anavatanlarından kaçıp sürgün hayatı yaşamak zorunda kalan Erebor Tahtı’nın Varisi Thorin Meşekalkan ve kuzenleri, Gandalf adında bir büyücünün yardımıyla anavatanlarını ejderha Smaug’dan kurtarmak için olağanüstü bir plan yaparlar. Bu planda oynayacağı rol son derece önemli bir hal alacak Hobbit Bilbo Baggins’in kapısını çalarlar ve Bilbo, hiç beklemediği bir anda, destansı bir maceraya dahil olmak zorunda kalır.


Peter Jackson tarafından üçleme olarak sinemaya uyarlanan eser, yayımlandığı tarihte büyük bir ilgi görmüştür ve olumlu yorumlar alarak çok kısa zamanda kült eser mertebesine erişmiştir.


Hobbit, edebiyat çevrelerince büyük saygı gören Yüzüklerin Efendisi üçlemesinin başlangıcını anlatmasıyla da önemli bir yere sahiptir.', 45, 1, 5, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (96, N'9786053757993', N'Düşmüş Melekler', N'Richard K. Morgan', 6, 480, 2018, CAST(18.98 AS Decimal(18, 2)), N'0001752441001-1.jpg', N'21. yüzyıl bilimkurgu edebiyatının en önemli eserlerinden biri olan Değiştirilmiş Karbon serisi ve çarpıcı ana karakteri Takeshi Kovacs dizinin ikinci kitabı Düşmüş Melekler’le geri dönüyor!

 

Değiştirilmiş Karbon’daki olayların üzerinden otuz sene geçti. Ancak eski bir BM elçisi olan Takeshi Kovacs’ın maceraları hız kesmedi. Pek çok kez kariyer ve kılıf değiştirip yeni bir bedenle bu kez daha büyük olayların ortasında buldu kendini: Kanlı bir ayaklanmayı durdurmak üzere uzak bir gezegenin hükümetince tutulan bir askerdi artık.

 

Ancak mesele taraf tutmaya geldiğinde ona kimin ödeme yaptığına bakmaksızın Kovacs istediği tarafı seçerdi – yani kendininkini. Haliyle sıradışı bir ekip onu kadim bir uzaylı gemisine yapılacak hazine avı için çağırdığında bu teklife hayır diyemezdi. Kalaşnikoflarını hazırlayıp görevini yarıda bırakan Kovacs için bu yeni macera tek başına yapamayacağı kadar büyüktü. Ama o istediğini almak için her şeyi yapmaya hazırdı; ölüleri diriltmeye bile.

 

Yıldız Gemisi Askerleri ve Bitmeyen Savaş gibi eserlerin izinden giden askeri bilimkurgu/siberpunk türündeki Düşmüş Melekler, son zamanların en dikkat çeken bilimkurgu-aksiyon romanlarından biri.', 45, 1, 5, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (97, N'9786053756910', N'Kahramanın Sonsuz Yolculuğu
', N' Joseph Campbell', 6, 440, 2017, CAST(28.89 AS Decimal(18, 2)), N'0001711511001-1.jpg', N'Daha önce Kabalcı Yayınları''yla okucuyla buluşan Joseph Campbell''ın kült kitabı Kahramanın Sonsuz Yolculuğu - A Hero With A Thousand Faces, şimdi İthaki etiketiyle karşınızda. Mitoloji ve insan psikolojisi arasındaki güçlü bağa dair bu zamana kadar yazılmış en iyi kitap olma niteliğini taşıyan Kahramanın Sonsuz Yolculuğu, okuyucunun hayatını olumlu yönde değiştirecek bir özelliğe sahip. Nice kurgu eserinin ilham kaynağı olan kitap, özellikle Star Wars film serisinin başlıca esin kaynağı. 


 


Joseph Campbell, tüyleri diken diken edecek anlatımıyla en sevilen eserler listenize girmeyi bekliyor. Kahramanın Sonsuz Yolculuğu''nun çevirisi Sabri Gürses''e ait.


 


Yaratıcı yazarlık yapmak isteyenlere eşsiz bir kaynak!


 


(Editörden)


 


Mitlerin ve masalların gizemini çözmek için başvurulacak ilk kitap.


“Elinizdeki kitabın amacı, pek de karmaşık olmayan bir örnekler yığınını bir araya getirip kadim anlamın kendi kendini ortaya çıkarmasını sağlayarak dinsel ve mitolojik figürler altında çarpıtılmış bazı gerçekleri aydınlatmaktır. Eski öğretmenler ne dediklerini bilirlerdi. Hele onların simgesel dilini okumasını bir öğrendik mi, öğretilerinin anlaşılması için bir derlemecinin yeteneğinden fazlasına ihtiyacımız yoktur. Fakat ilk önce simgelerin dilbilgisini öğrenmeliyiz ve ben, bu esrara bir anahtar olarak psikanalizden daha iyi bir araç bilmiyorum.  


Psikanalizi konuya dair son söz olarak kabul etmesek bile, onun bir yaklaşım olarak iş görmesine izin verebiliriz. Buradan hareketle atılacak ikinci adım, dünyanın dört bir yanından bir dizi mitle halk hikâyesini bir araya getirmek ve simgelerin kendi adına konuşmalarına izin vermek olacaktır. Benzerlikler hemen gün yüzüne çıkacaktır; üstelik bunlar insanın gezegendeki binlerce yıllık ikameti boyunca yaşayageldiği temel gerçeklerin geniş ve şaşırtıcı biçimde değişmeyen bir ifadesini ortaya çıkaracaktır.”', 45, 1, 5, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (98, N'9786053756064', N'Watchmen', N'Dave Gibbons, Alan Moore', 6, 456, 2016, CAST(45.74 AS Decimal(18, 2)), N'0000000720184-1.jpg', N'Kim Gözleyecek Gözcüleri?
Seksenli yılların ortasında Alan Moore ve Dave Gibbons, çizgi roman tarihini kökten değiştiren ve popüler kültürün çizgi roman algısını yeni baştan yazan eşsiz bir eser yarattılar: WATCHMEN. Sıklıkla çizgi romanların ciddiye alınmasını sağlayan ilk eser olduğu söylenen WATCHMEN, süper kahramanların çok yönlülüğünü, psikolojik karakter derinliğini olabilecek en gerçekçi biçimde yansıtan yegâne eser.

Amerikalı süper kahramanların varlığının bile tarihe farklı bir yön verdiği bir dünyada, Amerika Vietnam Savaşı''nı kazanmıştır, Nixon hâlâ başkandır ve Soğuk Savaş devam etmektedir. WATCHMEN bir cinayet öyküsü olarak başlasa da kısa sürede tüm gezegeni ilgilendiren bir komplonun izleri ortaya çıkar. Nihayetinde, tekrar bir araya gelmiş bu kahramanlar -Rorscach, Gece Kuşu, İpek Hayalet, Dr. Manhattan ve Ozymandias-s inançlarının sınırlarını zorlamak ve iyi ile kötünün çizgisinin nereye çizileceğini kendilerine sormak zorunda kalacaklardır. 

Bu edisyonda, eserin yaratılış sürecindeki daha önce yayınlanmamış çizim taslakları ve çizer Dave Gibbons''ın yeni önsözü de metinlere eşlik ediyor.', 45, 1, 5, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (99, N'9786053757320', N'Tom Bombadil''in Maceraları', N'J.R.R. Tolkien', 6, 304, 2017, CAST(21.07 AS Decimal(18, 2)), N'0001730587001-1.jpg', N'“Elinizdeki kitap, bu ilgi çekici karakterlerin hikâyelerinin devamını bekleyen Hobbit hayranlarının kaçırmak istemeyeceği bir kitaptır.”


Elli yıl önce ilk kez basıldığında kitabın üzerine bu sözler yazılmıştı.


Yüzüklerin Efendisi’ndeki en ilginç karakterlerden biri olan eğlence dolu ve esrarengiz Tom Bombadil, Hobbitlerin yazdığına inanılan, Bilbo ile Frodo Baggins ve arkadaşlarının hikâyeleriyle beraber Kırmızı Kitap’a kaydedilen şiirlerde de yer almaktadır. Tom Bombadil’in Maceraları, bu şiirlerin yanı sıra Üçüncü Çağ’ın sonunda Shire’ın efsanelerini konu alan diğer şiirleri de bir araya getiriyor.


“Profesör Tolkien, Hobbit’in içerisine yerleştirdiği şiirlerde şarkılara, tekerlemelere ve baladlara yeteneği olduğunu bize göstermişti. Tom Bombadil’in Maceraları’nda bu yeteneğin deha seviyesinde olduğu anlaşılıyor.”


Listener


Bu özel edisyon Tolkien’in bazı şiirlerinin ilk kez yayımlanacak öncel versiyonları, Tom Bombadil’in nesir şeklinde yazılmaya başlanan hikâyesinin bir parçası ve Tolkien araştırmacıları Christina Scull ve Wayne G. Hammond’ın ayrıntılı notlarıyla genişletilmiştir.', 45, 1, 5, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (100, N'9786053757955', N'Büyük Wootton Demircisi', N' J.R.R. Tolkien', 6, 216, 2018, CAST(17.45 AS Decimal(18, 2)), N'0001752440001-1.jpg', N'Büyük Wootton köyünde her 24 senede bir İyi Çocuklar için Ziyafet düzenlenirdi. Bunu kutlamak adına da bu ziyafete davet edilen 24 çocuğu besleyecek bir Büyük Pasta hazırlanırdı. Pasta çok tatlı ve zengin olurdu, baştan aşağı da şekerli kremayla kaplanırdı. Ama bu pastanın içinde çok ama çok tuhaf malzemeler de kullanılırdı ve bunlardan birini yutan çocuklar Periler Diyarı’nı ziyaret edebilirlerdi…

 

Tolkien’in, George MacDonald’ın Altın Anahtar’ı için yazmaya başladığı önsöz, bu keyifli masala dönüşmüştür. Yüzüklerin Efendisi’nden neredeyse bir on yıl sonra ve yaratımı ömür boyu süren Silmarillion sona yaklaşırken yazdığı Büyük Wootton Demircisi, Tolkien’in ömrü boyunca edindiği tecrübe ve fikirlerin ürünüdür ve Tolkien hayattayken basılmış son kurgu eseridir.

 

Şimdi, neredeyse 55 yıl sonra, kendini Perilerin tehlikeli diyarında bulan bir gezginin bu hikâyesi; Tolkien’in ilk taslağı, hikâyenin çıkış noktasına dair notları, alternatif bir son ve Perilerin doğası üzerine yazdığı yayımlanmamış bir makaleyle beraber tekrar okurlarla buluşuyor.

 

“Bu kitabın akıldan silinmeyen bir etkisi var, ‘derin’ halk öykülerinin ortak bir özelliği. Harikulade ve akılda kalıcı.”

Times Educational Supplement

 

“Bu masalı ne kadar yakından incelerseniz, ardındaki fikrin ihtişamı kendini o kadar gösterecektir; ister yedi yaşında olun ister yetmiş yaşında, okumak isteyeceksiniz.”', 45, 1, 5, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (101, N'9786053757412', N'Dünyalar Savaşı', N' H. G. Wells', 6, 296, 2017, CAST(18.20 AS Decimal(18, 2)), N'0001734037001-1.jpg', N'“H. G. Wells’in yazdıkları insanı kendine hayran bırakan ve hiçbir zaman tam olarak kavrayamayacağımız türden.”


–Orson Welles


 


“Bay Wells’in eserleri zamanın eskitemeyeceği ve gerçekleşmesi pek de imkânsız olmayan hikâyeler anlatıyor.”


-Jules Verne-


 


“Her nesil Dünyalar Savaşı’nı kendi deneyimlerinin ışığında yeniden okuyup yeni bir şeyler öğrenebilir.”


-Arthur C. Clarke-


 


“BU BİR SAVAŞ DEĞİL. HİÇBİR ZAMAN SAVAŞ OLMADI; İNSANLARLA KARINCALAR ARASINDAKİ BİR SAVAŞTAN DAHA FAZLASI DEĞİL BU.”


 


H. G. Wells, bilimkurgunun atası, türe adını altın harflerle yazdırmış en büyük yazarlardan. Zaman Makinesi, Görünmez Adam, Doktor Moreau’nun Adası gibi eserleri ve düşünceleriyle âdeta zamanın ötesinden gelen bir yazar olan Wells, Dünyalar Savaşı’nda istila altındaki umutsuz ve çaresiz bir gezegenin hikâyesini anlatıyor: Dünya’nın.


 


Gökyüzünden İngiltere’nin güneyine düşen silindirlerin yarattığı merak hemen sonra yerini korkuya bırakmıştır. Dünya, Mars’tan gelen canlıların istilası altındadır. Henüz ne olduğunu anlayamadan Marslılar tarafından katledilmeye başlayan insanlar, var güçleriyle karşılık vermeye ve direnmeye çalışırlar.


 


Uzaylıların kontrolü altındaki İngiltere’de adsız anlatıcının tanıklıkları, insanlığın kaygı verici ümitsizliğinin ve hayatta kalma mücadelesinin karanlık bir portresini çizer. İnsanlığın Dünya üzerindeki binlerce yıllık hükümdarlığı son mu bulacaktır, yoksa bir kurtuluş ihtimali var mıdır?


 


Arthur C. Clarke’ın önsözüyle, Henrique Alvim Corrêa’nın çizimleriyle...', 45, 1, 5, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (102, N'9786053753964', N'Hobbit-Açıklamalı Notlarıyla', N'J.R.R. Tolkien', 6, 416, 2014, CAST(54.16 AS Decimal(18, 2)), N'0000000627661-1.jpg', N'Dünyadaki pek çok okuyucu için Hobbit; tüm zamanların en sevilen yazarlarından J.R.R. Tolkien''in zihninden yayılan hikâyeler aracılığıyla elflerin, büyücülerin, cücelerin, ejderhaların, orkların ve Yüzüklerin Efendisi''yle Silmarillion''da tasvir edilen birçok diğer yaratığın evi olan büyüleyici Orta-Dünya''nın kapısını açan unutulmaz bir eserdir. Douglas A. Anderson''un hazırladığı Açıklamalı Notlarıyla Hobbit, J.R.R. Tolkien''in bu önemli klasiğindeki karakterleri, kaynakları, mekânları, nesneleri ve yaratıkları derinlemesine inceleyip, perde arkasında kalanları açığa çıkarıyor. Orijinal hikâyenin düzeltilmiş ve tamamlanmış metninin yanına yerleştirilen, Hobbit''in tarihsel sürecini gösteren iki yüze yakın görsel, Orta-Dünya''yı tanıyıp sevenler için Anderson''ın notlarıyla hikâyenin gücünü bir kat daha artırıyor. Tolkien''in orijinal çizimlerinin, haritalarının ve renkli resimlerinin de dahil edilmesi bu baskıyı Hobbit''in var olan en detaylı baskısı yapıyor.
Açıklamalı Notlarıyla Hobbit, J.R.R. Tolkien''in bir yazar olarak nasıl çalıştığını, nelere ilgi duyup nelerden etkilendiğini ve bütün bunların Orta-Dünya''nın ayrıntılarına nasıl bağlandığını gösteriyor. Tolkien''in hayatına ve Hobbit''in yayınlanma geçmişine değerli bir bakış sunup, hikâyenin her bir detayının Tolkien''in yarattığı dünyanın diğer kısımlarıyla nasıl uyum içinde olduğunu gözler önüne seriyor. Burada, Gollum''un karakterinin Tek Yüzük''ün gerçek doğasını barındıracak şekilde nasıl değiştirildiğini öğrenebilir ve Erebor Seferi''nin tam metniyle Gandalf''ın Bilbo Baggins''i cücelerle bir yolculuğa nasıl göndermeye karar verdiğinin açıklamasını okuyabilirsiniz. Anderson ayrıca Beowulf''tan Alice''e; Grimm Kardeşler''den C.S. Lewis''e, bizim dünyamızdan ve edebiyat tarihimizden isimlerle de anlamlı ve şaşırtıcı bağlantılar kurup, Hobbit gibi bir efsaneyi hak ettiği yere ulaştırıyor.', 45, 1, 5, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (103, N'9786053757948', N'Ham''li Çiftçi Giles', N' J.R.R. Tolkien', 6, 200, 2018, CAST(15.65 AS Decimal(18, 2)), N'0001750930001-1.jpg', N'J.R.R. Tolkien’in Hobbit ile Yüzüklerin Efendisi arasında yayımlanmış klasik çocuk hikâyesi.

Ham’li Çiftçi Giles bir kahramana benzemiyordu. Kocaman bir göbeği vardı, sakalı kızıldı ve sakin, konforlu bir hayatı tercih ediyordu. Fakat bilmeden istemeden, nispeten sağır ve miyop bir devi korkutup kaçırınca, Çiftçi Giles’ın şöhreti diyara yayıldı. Ne yazık ki kurnaz ejderha Chrysoplax krallığın başına bela olunca, onunla dövüşmesi için de Çiftçi Giles çağırıldı.

Hobbit ve Roverandom gibi, Ham’li Çiftçi Giles da J.R.R. Tolkien tarafından başta çocuklarını eğlendirmek için uyduruldu, ancak hikâye genişledikçe daha ayrıntılı bir hal aldı. Nihai hali ise zekice anlatılmış, hayal gücü dolu hikâyeleri seven tüm okurlara hitap ediyor.

“Devlerin ve ejderhaların krallıkta gezindiği zamanlarda geçen muazzam bir öykü.”

- Sunday Times - 

Bu edisyonda, ilk kez 1949’da yayımlanmış tam metin ve Pauline Baynes’in çizdiği, Tolkien’in öyküsü için en uygun seçim olduğunu söylediği orijinal illüstrasyonlar bulunuyor. Aynı zamanda öykünün yazılmış ilk taslağını ve bir devam hikâyesi için Tolkien’in notlarını da içeriyor.', 45, 1, 5, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (104, N'9786053754862', N'Maymunlar Gezegeni', N'Pierre Boulle', 6, 208, 2015, CAST(13.24 AS Decimal(18, 2)), N'0000000667288-1.jpg', N'"Maymunlar Gezegeni, Gulliver''ın Gezileri''nin gelecekteki versiyonu."
-Louisville Times-

"Romanın şaşırtıcı finali bile tek başına dehşet verici."
-Newark News-

"Aklını kullanabilen insanlar mı? Hayır, bu mümkün değil; bu noktada yazar ne yazık ki maksadını aşıyor!"

Pierre Boulle, Avrupa''dan çıkıp yazdığı bilimkurgu romanıyla vahşi batılı meslektaşlarıyla baş edebilen ilk, belki de son frankofon. Maymunlar Cehennemi ve diğer sinema uyarlamalarına da ilham kaynağı olan Maymunlar Gezegeni ise, insanlığın en derin korkularından birinin eşsiz anlatısı.

Çok da uzak olmayan bir gelecekte üç uzay gezgini; verimli ormanları, yaşanabilir iklimi ve temiz havasıyla Dünya''ya fazlasıyla benzeyen bir gezegene iniş yapar. Bu gezegen her yönüyle kusursuz gözükse de aslında hiçbir şey göründüğü gibi değildir.

Gerçek, çok geçmeden açığa çıkar: Bu gezegende insanlar vahşiyken, uygar maymunlar onların efendileridir. Henüz maceranın başında yol arkadaşlarından kopup tek başına mücadele etmek zorunda kalan Ulysse Mérou, bu cennet görünümlü cehennemden kurtulmanın yollarını tek başına bulmak zorundadır.

Ulysse, insanlığın kurtarıcısı olmayı başarabilecek mi? Yoksa bu lanetli geleceğin son tanığı mı olacak?
Maymunlar Gezegeni, insanlar gezegeninden daha insani bir satir.', 45, 1, 5, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (105, N'9786053755548', N'Yıldız Gemisi Askerleri', N'Robert A. Heinlein', 6, 308, 2016, CAST(18.66 AS Decimal(18, 2)), N'0000000692600-1.jpg', N'Hugo En İyi Roman Ödülü 

"Heinlein bu kitapla birlikte, ben de dahil pek çok yazara ilham verdi."
-Samuel R. Delany-

"Büyük bir ustalıkla yazılmış, eşsiz bir askeri bilimkurgu."
-Jo Walton-

"Yaşlı Adamın Savaşı açıkça Yıldız Gemisi Askerleri''nden etkilendi."
-John Scalzi-

"Bu kitapla boy ölçüşebilecek bir şey henüz yazılmadı."
-Science Fiction Weekly-

"Bilimkurgunun en büyük yazarlarından."
-Wall Street Journal-

Yayımlandığından itibaren tartışmalar yaratan Yıldız Gemisi Askerleri ilk kez Türkçede. Asimov ve Clarke''la birlikte bilimkurgunun üç büyük ustasından biri olarak görülen, bilimkurgunun dekanı Heinlein''dan vatanseverliğe, militarizme, oy hakkına ve savaşa dair en coşkulu anlatılardan biri olan bu klasik eser, muzip üslubuyla da fark yaratıyor. 

"Silahlar tehlikeli değildir; insanlar tehlikelidir."

İnsanoğlunun başka gezegenlerde koloniler kurduğu ve karşılarına çıkan rakip türlerle savaştığı bir gelecek zaman. Ve Ordu''da iki yıl gönüllü askerlik yapanların vatandaş olup oy kullanabildiği Terra Federasyonu. On sekiz yaşındaki Juan Rico, vatandaşlık hakkını kazanmak (ve bir de çok sevdiği uzayda seyahat etmek için) iki yıl süren askerlik hizmetine yazıldığında ne Rasczak''ın Bıçkınları''ndan biri olacağını ne de ''Böcek Savaşı''nda müfreze liderliği yapmak zorunda kalacağını biliyordu. Ama öğrenecekti…', 45, 1, 5, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (106, N'9786053758310', N'Yüce Tanrı Pan', N'Arthur Machen', 6, 80, 2018, CAST(6.02 AS Decimal(18, 2)), N'0001767352001-1.jpg', N'Başta H. P. Lovecraft olmak üzere kendisinden sonraki birçok yazarı etkileyen Arthur Machen, modern korku edebiyatının erken dönem ustalarından biri. Doğaüstü, fantazi ve korku türlerinde verdiği eserlerin arasında en ünlüsü olan Yüce Tanrı Pan da yazıldığı dönemde cesur içeriğiyle büyük yankı uyandıran ve ünü günümüze kadar ulaşan bir başyapıt.

 

Dr. Raymond’ın ruhani dünyaya erişmek için yaptığı “Yüce Tanrı Pan’ı görmek” adlı deneyin sonucunda kentte gizemli olaylar vuku bulmaya başlamıştır. Bu deneyle birlikte Yunan mitolojisinde ormanların ve kırın tanrısı olan yarı keçi yarı insan Pan, hikâyede korkutucu bir figüre dönüşerek, eski çağların dehşetini on dokuzuncu yüzyıla taşır. Machen’ın benzersiz üslubuyla bilim, bir nevi, korkuya hayat verir.', 45, 1, 5, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (108, N'9786055686550', N'Avengers - Her Son Bir Başlangıçtır - Dağıldı', N'Brian Micheal Bendis', 7, 164, 2015, CAST(25.28 AS Decimal(18, 2)), N'0000000408263-1.jpg', N'Herşey, öldü sanılan takım üyesinin ölümden dönmesi ile başladı ve bittiğinde Avengers hakkında bildiğiniz hiçbir şey eskisi gibi olmayacak. Dünyanın En Güçlü Kahramanları etraflarındaki şok edici trajedi ile mücadele ederken takım tarihinin en kötü gününü yaşıyorlar. Bunun arkasında kim ve neden var? Takım parçalanacak mı? Kim Avengers''ın en büyük düşmanının ellerinde hayatını kaybedecek? Gelmiş geçmiş bütün Avengers tehlikede... istisnasız hepsi! (Tanıtım Bülteninden)', 45, 1, 1008, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (109, N'9786059141239', N'Tokyo Gul 1. Cilt', N'Sui İşida', 7, 224, 2015, CAST(12.96 AS Decimal(18, 2)), N'0000000671481-1.jpg', N'Tokyo Gûl, İşida Sui tarafından yazılan ve çizilen, Shueisha Yayıncılık tarafından 8 Eylül 2011 - 18 Eylül 2014 tarihleri arasında basılan, psikolojik, korku, dram, doğaüstü, aksiyon türünde 14 ciltlik bir manga serisidir. Serinin öncesini konu alan "Tokyo Gûl: JACK”, sonrasını konu alan "Tokyo Gûl:re” mangaları ile "Tokyo Gûl” ve "Tokyo Gûl ?A” olarak adlandırılan 2 sezon, 24 bölümlük animesi vardır.

 

Seri, Tokyo’da olan garip cinayetlerle başlar. Cinayet mahali ve delilleri inceleyen polis, faillerin insan yiyen gûllar olduğu sonucuna varmıştır. Tokyo sakinlerine korku salan bu canavarların gündüzleri nasıl saklandıkları, avlarını nasıl seçtikleri ve neden yedikleri bilinmemektedir. Manganın başkahramanı Ken Kaneki ve üniversite arkadaşı Hide, gûlların gündüzleri insan gibi davranarak, insanların arasına karışıp yaşadıklarını düşünmektedir.

 

Kitap okumayı seven Kaneki, sıklıkla gittiği kafede kendisi gibi kitap okumayı seven bir kızla karşılaşır. Rize adındaki bu güzel kızla beraber güzel bir gün geçiren Kaneki, onu evine bırakırken bu güzel kızın gerçek kimliği öğrenir ve şok olur. Rize, son dönemde sıklaşan cinayetlerin faili gûldur. Kaneki’yi yemek için böyle bir tuzak kurmuş olan Rize, iştahla avını parçalarken yanlarındaki inşaattan düşen demirler nedeniyle ölür.

Rize’nin iç organlarının kendisine nakledilmesiyle hayatta kalan Kaneki, yarı insan/ yarı gûl bir varlık olur. Yeni kimliğini kabullenemeyen Kaneki, kendini, gûlların peşindeki polisler, polislerin peşindeki terörist gûllar ve bu karmaşa arasında insanlarla huzur içinde yaşamak isteyen gûlların dünyasında bulur. Yeni tanıştığı insanlara çabucak güvenmek gibi kötü bir özelliği olan Kaneki’nin başı beladan kurtulmayacaktır.', 45, 1, 1008, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (111, N'9786059141949', N'Infinity Gaunlet', N'Jim Starlin', 7, 256, 2016, CAST(32.41 AS Decimal(18, 2)), N'0000000722235-1.jpg', N'Koca Evreni Avucunun İçinde Tutmak İçin Sadece Zırhlı Bir Eldiven Yeter Mi?

Thanos, hayatının aşkı olan Ölüm''ü etkilemek için evrendeki en güçlü nesnelerden olan Sonsuzluk Taşları''nı bir araya getirmeyi başarmış ve kendi hayalinde bile göremeyeceği bir gücü eline geçirmiştir. Tek bir amacı vardır. Evrendeki canlıların yarısını ortadan kaldırmak.

Marvel Evreni''ndeki en güçlü varlıklar Thanos''un bu çılgın planını ortadan kaldırmak ve onu elde ettiği tanrı mertebesinden indirmek için bir araya geliyorlar. Avengers''ın ise bu umutsuz savaşta evreni korumak için elinden ne gelebilir ki?', 45, 1, 1008, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (112, N'9786059141307', N'Tokyo Gul 2. Cilt', N'Sui İşida', 7, 208, 2016, CAST(12.96 AS Decimal(18, 2)), N'0000000682357-1.jpg', N'Tokyo Gûl, İşida Sui tarafından yazılan ve çizilen, Shueisha Yayıncılık tarafından 8 Eylül 2011 - 18 Eylül 2014 tarihleri arasında basılan, psikolojik, korku, dram, doğaüstü, aksiyon türünde 14 ciltlik bir manga serisidir. Serinin öncesini konu alan "Tokyo Gûl: JACK”, sonrasını konu alan "Tokyo Gûl:re” mangaları ile "Tokyo Gûl” ve "Tokyo Gûl ?A” olarak adlandırılan 2 sezon, 24 bölümlük animesi vardır.


 


Seri, Tokyo’da olan garip cinayetlerle başlar. Cinayet mahali ve delilleri inceleyen polis, faillerin insan yiyen gûllar olduğu sonucuna varmıştır. Tokyo sakinlerine korku salan bu canavarların gündüzleri nasıl saklandıkları, avlarını nasıl seçtikleri ve neden yedikleri bilinmemektedir. Manganın başkahramanı Ken Kaneki ve üniversite arkadaşı Hide, gûlların gündüzleri insan gibi davranarak, insanların arasına karışıp yaşadıklarını düşünmektedir.


 


Kitap okumayı seven Kaneki, sıklıkla gittiği kafede kendisi gibi kitap okumayı seven bir kızla karşılaşır. Rize adındaki bu güzel kızla beraber güzel bir gün geçiren Kaneki, onu evine bırakırken bu güzel kızın gerçek kimliği öğrenir ve şok olur. Rize, son dönemde sıklaşan cinayetlerin faili gûldur. Kaneki’yi yemek için böyle bir tuzak kurmuş olan Rize, iştahla avını parçalarken yanlarındaki inşaattan düşen demirler nedeniyle ölür.


Rize’nin iç organlarının kendisine nakledilmesiyle hayatta kalan Kaneki, yarı insan/ yarı gûl bir varlık olur. Yeni kimliğini kabullenemeyen Kaneki, kendini, gûlların peşindeki polisler, polislerin peşindeki terörist gûllar ve bu karmaşa arasında insanlarla huzur içinde yaşamak isteyen gûlların dünyasında bulur. Yeni tanıştığı insanlara çabucak güvenmek gibi kötü bir özelliği olan Kaneki’nin başı beladan kurtulmayacaktır.', 44, 1, 1008, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (113, N'9786059520768', N'Marvel Evreni-Son', N'Jim Starlin', 7, 168, 2017, CAST(25.93 AS Decimal(18, 2)), N'0001731669001-1.jpg', N'Ölçülebilir uzay ve zamanın çok ötelerinden ölümcül bir tehdit hızla Dünya’ya yaklaşıyor ve tüm evrenin temel doğasını bile tehlikeye atıyor. Bu yıkıcı, varoluşu sonlandırabilecek olay Dünya’nın en kudretli kahramanları ile kötülerinin kıyametten korunmak için el ele vermesine sebep oluyor. Ama bağlılıkları her an değişen, sürekli didşen kahramanlar ve kötüler tüm evreni kurtarma görevlerinde başarılı olabilecekler mi? Aslında çok da deli olmayan ama hem Dünya’ya hem de evrene daimi bir tehdit olan ve dahası Ölüm’e olan tutkusu yüzünden asla tam olarak güvenilemeyecek yarı tanrı Thanos önderliğinde Dünya’nın süper insanları, karşılaştıkları en büyük dehşete karşı omuz omuza vermek zorundalar; Varolan her şeyin sonu!', 45, 1, 1008, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (115, N'9786059141970', N'Secret Wars', N'Jonathan Hickman', 7, 308, 2016, CAST(37.59 AS Decimal(18, 2)), N'0000000722231-1.jpg', N'
Çokluevren çöktü. Geriye sadece iki boyut kaldı. Şimdi de Marvel Evreni ve Ultimate Evreni çarpışacak. İki dünyanın kahramanları da gezegenlerini kurtarmak için savaşacak ve başarısız olacaklar. Ama hiçliğin ortasından, kayıp dünyaların kalıntılarını yamayarak yapılmış inanılmaz bir gezegen ortaya çıkacak. Boyutlar tanıdığınız kişilerle ama farklı şekilleriyle dolu olacak. Bu gezegende sınırlar koyu çizgilerle çekilmiş halde, kanun ve düzeni Thorlar ordusu sağlıyor, günahkârlar ise Kalkan''ın arkasındaki kâbuslarla dolu çukura atılıyor. Bu Battleworld gezegeni sürekli iç karmaşa halinde ve daha önce bilinen bütün her şey mitler ve efsanelere dönüşmüş durumda. Her şeyi birarada tutan şey ise bir ad amın çelik iradesi ve öteden gelen gücü onu tanrı yapmış durumda. Tek kurtuluş yolu Doom''ken… insanlığın ne gibi bir umudu olabilir?', 45, 1, 1008, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (117, N'9786055686437', N'The New Avengers - İntikamcılar Sayı 2- Sentry', N'Brian Micheal Bendis', 7, 104, 2011, CAST(20.74 AS Decimal(18, 2)), N'0000000366774-1.jpg', N'Avengers, dünyadaki en güçlü süper kahramana, kim olduğunu ve nereden geldiğini keşfetmesi için yardım etmeye çalışıyor. Fakat bu bilgi yardım etmeye çalıştıkları adamın sonu mu olacak?', 45, 1, 1008, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (119, N'9786059141413', N'Thanos Yükseliyor', N'Simone Bianchi, Jason Aaron', 7, 120, 2016, CAST(23.33 AS Decimal(18, 2)), N'0000000689348-1.jpg', N'Kozmosun belası, perişanlığın eşsiz düzenbazı Thanos, trajedi, ihanet ve kaderin bu heyecanlı hikâyesinde hükümdarlığa yükseliyor. Ölüm ve yıkımın yarı-tanrısı nereden geldi ve daha da önemlisi, ne istiyor? Gerçek aşk, yalnızca bir çocuğun hayatının kan gölleriyle dolu olmasına yol açmayacak, ayrıca galaksinin çehresini Marvel Evreni''nin doğasını kökünden değiştirecek!', 45, 1, 1008, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (121, N'9786059520300', N'Infinity War', N'Jim Starlin', 7, 400, 2017, CAST(41.48 AS Decimal(18, 2)), N'0001700410001-1.jpg', N'Adam Warlock’un Infinity Gauntlet’ta geri dönmesinden sonra köt ü yarısı Magus da pek uzakta olamaz. Fantastic Four, X-Men, Avengers, Alpha Flight ve daha birçok kahraman şeytani ikizleriyle baş etmeye çalışırken nihai güce ulaşma sav aşı son hızıyla sürüyor!', 45, 1, 1008, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (122, N'9786055015428', N'Avengers Ultron Çağı', N'Brian Michael Bendis', 7, 288, 2015, CAST(35.65 AS Decimal(18, 2)), N'0000000639823-1.jpg', N'"Bendis, Tüm Çizgi Roman Yaratıcılarının Yapmak İstediği Şeyi İnanılmaz Bir Başarıyla Gerçekleştiriyor"
-ComicBookResources.com-

Yapay zeka Ultron, yıllardır insanlığı yok etmeye çalışıyor. Şimdiyse başarmaya hiç olmadığı kadar yakın. Hayatta kalabilen birkaç kahraman hırpalanmış, yıkılmış, yenilmiş ve artık aşırıya kaçmış çözümleri bile düşünmeye başlamışlar - ki bazıları bu çözümler arasından akla gelmemesi gerekenleri bile düşünür hale gelmiş. Fakat Wolverine Ultron''u yenmek için başına buyruk bir şekilde davranınca çözeceğinden çok daha fazla soruna mı yol açacak? Brian Michael Bendis sizlere, Avengers''ın en büyük düşmanlarından birinin nihai zaferinin dünyaları sarsacak öyküsünü sunuyor!', 45, 1, 1008, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (123, N'9786055686291', N'The New Avengers 1 - İntikamcılar - Firar', N'Brian Micheal Bendis', 7, 152, 2011, CAST(22.04 AS Decimal(18, 2)), N'0000000360167-1.jpg', N'Takımın en eski üyelerinden birinin saldırısı sonucu dağılan Avengers''ın yokluğunda karanlık planlar yürürlüğe konmuştur. Maksimum güvenlik hapisanesi Raft''tan, Electro''nun güvenlik sistemini bozması sonucu yüzlerce süper güçlü suçlu New York''ta terör estirmek için serbest kalmıştır. Bu ortamda bir grup kahraman beklenmedik şekilde şehri kurtarmak için birlikte çalışmak zorunda kalır. Savaşın heyecanı içinde Avengers''ın boşluğunu dolduracak yeni bir takım oluşur: NEW AVENGERS ', 45, 1, 1008, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (124, N'9786059520362', N'İhtiyar Logan 2-Sınır Kasabası', N'Jeff Lemire', 7, 112, 2017, CAST(22.04 AS Decimal(18, 2)), N'0001703443001-1.jpg', N'Kanada’nın Sessiz Bir Köşesinde yer alan Killhorn Falls Kasabası İhtiyar Logan’ın günümüz Marvel Evreni’ndeki (artık onu öldürmeye çalışmayı bıraktığına göre) yeni hayatı ile barış içinde yaşaması için mükemmel bir yere benzemektedir. Ama bir zamanlar Wolverine olan bu adam için asla kaçış yok. Lady Deathstrike ve Reavers onun için geldiğinde Logan Killhorn Falls sakinlerini ve gelecekte kendisiyle tanışması için hayatta kalmasını istediği tek kişiyi koruyabilecek mi? Bu, X-Men üyesinin en klasik anlarından biri: köşeye sıkışmış durumda ve hayatta kalması sadece zekasına, kararlılığına ve adamantium pençelerine bağlı! Bu nihai bir savaş ve İhtiyar Logan’ın önem verdiği her şey tehlikede!', 45, 1, 1008, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (126, N'9786059141789', N'Uncanny Avengers - Karşı Evrim', N'Rick Remender', 7, 112, 2016, CAST(22.04 AS Decimal(18, 2)), N'0000000712213-1.jpg', N'Uncanny Avengers, Axis''in Kalıntılarından Kurtulmak için Mücadele Veriyor!

Red Skull''ın Saldırısının Ardından Uncanny Avengers''ın kahramanları kim olduklarını - ve takımlarının ne ifade ettiğini hatırladı. Liderleri yok, hâlen Red Skull''ın ters çevirmelerinin etkisinde. Kendi arkadaşlarına saldırdılar. Neredeyse Dünya''yı yok ediyorlardı. Aciz hâldeler - ve bu durumdan faydalanmak isteyen biri olduğuna emin olabilirsiniz. Avengers''ın en eski düşmanlarından biri korkunç bir sırla geri dönüyor ve bu durum, hiç abartısız bir şekilde ekibin iki üyesinin hayatlarını paramparça edecek. Karşı Dünya nedir? Hangi korkunç sırların ev sahipliğini yapıyor?', 45, 1, 1008, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (127, N'9786059141444', N'Uncanyy Avengers - Axis''e Doğru', N'Rick Remender', 7, 144, 2016, CAST(22.04 AS Decimal(18, 2)), N'0000000689415-1.jpg', N'Kang''ın tehdidi bitti ama etkileri neler olacak? Uncanny Avengers yeniden birleşirken, Genosha''da karanlık bir sır ortaya çıkmaktadır ve Havok ile ekibi, hain S-Men''in ellerinden yenilgiyi tadarlar. Bunu takiben Red Skull, durdurulamaz intikamını almaya hazırdır: Toplu ortadan kaybolmalar başlamıştır! Uncanny Avengers çok geç kalır ve Havok, Skull''ın bugüne kadar yaptığı en haince şeye tanık olur! Bu sırada Magneto, ölen arkadaşı Xavier''in beyninin ve güçlerinin Skull''ın elinde olduğunu öğrenir… Ve arkadaşı adına savaşmak için Avengers''a ihtiyaç duymadan harekete geçer. Magneto ve Red Skull arasında geçecek kanlı savaşa hazırlanın çünkü bu savaş, Marvel Evreni''nin şeklini değiştirecek! Ayrıca: Mojoverse tamamen yeni ve tamamen ürkütücü bir Avengers''ı bir araya getiriyor! Doğaüstü olanların Avengers''ının şok edici ortaya çıkışına tanık olun!', 45, 1, 1008, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (128, N'9786059141703', N'Avengers 2 - Zaman Tükeniyor', N' Jonathan Hickman', 7, 124, 2016, CAST(22.04 AS Decimal(18, 2)), N'0000000707048-1.jpg', N'Her şey buraya dayandı... Son aşım! Yazar Jonathan Hickman, iki sene boyunca dikkatle geliştirdiği dehşet verici hikâyesini, büyük sonu için -- yani Son Aşım için, sekiz ay ileri alıyor! İlluminati''nin umutsuz, dünya yok eden davranışları ortaya çıkınca, Avengers parçalara ayrılacak. Bir grup, yaptıklarının hesabını vermesi için İlluminati''yi ararken, diğeri ise yeni Cabal''la savaşmaya başlayacak! Tony Stark''ın... ve Dr. Strange''in neye dönüştüklerini keşfedin! O kadar savaşa ve o kadar fedakârlığa rağmen... kimse kaçınılmaz an olan zamanın tükenmesi için hazır olmayacak. Jonathan Hickman''ın efsanevi öyküsünün muhteşem ikinci perdesi karşınızda! ', 45, 1, 1008, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (129, N'9786059141499', N'Avengers 5 - Uyum Sağla Ya Da Öl', N'Jonathan Hickman', 7, 132, 2016, CAST(22.04 AS Decimal(18, 2)), N'0000000694530-1.jpg', N'Avengers... Zamanla ve kendileriyle çarpışmaya doğru ilerliyor.

Infinity''nin ardından Captain America ve Iron Man, Avengers''ın yeni biçimini planlıyorlar.
Ama kısa süre sonra gelecekten kötü haberler getiren bir ziyaretçi tarafından yarıda
kesiliyor. Kontrolden çıkmış bir gezegen doğrudan Dünya''ya doğru yol almakta. Ekip zar
zor anladıkları bir çözüm bulmak için uğraşırken, zaman akışından yeni sorunlar ortaya
çıkıyor. Avengers, yeniden kendileriyle karşı karşıya geliyor. Bu anlaşmazlık X-Men''le
yaşadıkları kadar büyük olacak mı? Bilim Savaşları dünyaları ele geçirirken, bu zamanda
savrulmuş ekibin ardındaki sır ne?', 44, 1, 1008, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (131, N'9786059520317', N'Thanos vs. Hulk', N'Jim Starlin', 7, 112, 2017, CAST(22.04 AS Decimal(18, 2)), N'0001700409001-1.jpg', N'Zümrüt Avengers Üyesi Deli Titan’la Kafa Kafaya Çarpışıyor! Kozmik efsane ve okurların gözdesi yazar ve çizer Jim Starlin, Uzayla Parçalamanın karşı karşıya geldiği destansı bir hikâye ile karşınızda! Hulk’un Troll pip tarafından kaçırılıp Negatif Bölge’nin efendisi Annihilus’a götürülmesi kendi başına yeterince kötü bir olayken işin içine Thanos da karışacak ve her şey daha da karmaşıklaşacak! Annihilus, Hulk’u hiç beklenmedik bir şekilde kendi çıkarı için kullanmak istiyor ama Thanos hiç beklemeden bir entrikayla ona müdahale ediyor! Annihilus akıl almaz boyutlarda yeni bir kudrete sahip olurken Hulk, Negatif Bölge’nin altını üstüne getiriyor - ve ölümcül Blastaar da peşine düşüyor! Acaba Hulk, Thanos’un çevirdiği entrikadan sağ kurtulabilecek mi? Peki Thanos, Hulk’un saf fiziksel gücüne dayanabilecek mi? Hepsinin cevabı içeride!', 44, 1, 1008, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (133, N'9786059520782', N'Wolverine-Son', N'Paul Jenkins', 7, 144, 2017, CAST(24.63 AS Decimal(18, 2)), N'0001731668001-1.jpg', N'MARVEL’IN ELEŞTİRMENLERİN ÇOK BEĞENDİĞİ SON SERİSİ LOGAN’IN - YANİ WOLVERINE DENİLEN ADAMIN HAYATININ SON GÜNLERİNE BİR BAKIŞLA DEVAM EDİYOR!

 

Uzak gelecekte, garip bir olaylar serisi yaşlanan Wolverine’i kökenlerinin arkasındaki son gerçekleri öğrenmek üzere dünya çapında bir göreve çıkaracak. Ama karşısına geçmişinden gizemli biri çıkınca, bildiğini sandığı her şey tepetaklak olacak! Bu bir efsanenin sonu, hem de size hikâyenin başını sunan kişi olan Paul Jenkins (Wolverine: Origin) tarafından yazıldı ve Claudio Castellini (DC vs. Marvel) tarafından çizildi!', 44, 1, 1008, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (134, N'9786052172490', N'Marvel Miras', N'Jason Aaron', 7, 64, 2018, CAST(16.21 AS Decimal(18, 2)), N'0001785120001-1.jpg', N'Iron Fist. Yüce Büyücü Agamotto. Tarih öncesi bu Avengers, birlikte kozmik bir devi deviriyorlar - ve bir milyon yıl boyunca da o dev gömülü kalıyor. Ama bugünün Ghost Rider’ı ve Starbrand’i, Güney Afrika’ya çekiliyorlar ve savaş çıkıyor - ayrıca, korkunç bir şey de uyanıyor. Dünya’nın kahramanları, cesur ve yeni bir dünyada yerlerini bulurken, en iyilerden biri muhteşem bir geri dönüş yapıyor. Ayrıca, uzayın uzak köşelerindeki bir kız, gelecekle ilgili umutlarını paylaşıyor. Marvel’ın bir sonraki muhteşem döneminin destansı hikâyesinin başlangıcı burada.', 44, 1, 1008, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (136, N'9786055015251', N'Kuşatma Dark Avengers', N'Brian Michael Bendis', 7, 136, 2014, CAST(22.04 AS Decimal(18, 2)), N'0000000602009-1.jpg', N'Eski Thunderbolts lideri olan Norman Osborn, Tony Stark''ın görevini devralıp, kendi Avengers''ını da içeren ulusal barış gücü H.A.M.M.E.R''ın başına geçmişti.

Bu ekip ünlü Avengers''ın sembol isimlerine olan beznzerlikleriyle dikkat çeken tartışmalı bireylerden oluşuyordu ve kimlikleri de gizli tutuluyordu. Eski Mighty Avengers üyeleri Ares ve Sentry''nin de olduğu bu ekip, kiralık katil Bullseye, Hawkeye olarak; tövbe etmiş suçlu Moonstone, Ms. Marvel olarak; Wolverine''in sorunlu oğlu Daken, Wolverine olarak; Venom dönüştürülüp, Spider-Man olarak; ve Norman Osborn da yeni kimliği olan Iron Patrıot olarak katılmalarıyla oluşturulmuştu.

Norman bir yandan kendi şeytanlarıyla boğuşurken, Sentry''ye de aynı konuda yardım ediyordu. Bunu nasıl başardığı ise kimsenin bilmediği bir sırdı… Sentry iki kere ölmüştü. Bir keresinde savaşta, diğerinde de uzun süredir hasta olan karısı Lindy''nin kollarında. Bu iki ölümden de nasıl döndüğünü kimse bilmiyordu.Norman''ın Avengers''ının aslında bir grup çılgından ve kiralık katillerden oluştuğunu keşfeden Noh-Varr (Marvel olarak biliniyor) Avengers kulesi''nden ayrılmıştı ve bir daha kimse ondan haber almamıştı.

Gece, Norman Osborn''un Avengers''ının Üzerine Çökerken,En karanlık saatleri gelecek! Sentry''nin kökenleri ortaya çıktı. Bullseye akılalmaz bir cinayet işledi. Victoria Hand çok mu ileriye gittiğini merak ediyor. Ve Norman Osborn, Asgard Kuşatması''nın son aşamalarını planlarken, şeytani mirası olan Green Goblin''in etkisine giriyor-bu akıl hastalığı onun nihai zafer için ihtiyacı olan şey olabilir! Kazansalar da, kaybetseler de bunlar Dark Avengers''ın son saatleri olacak!', 45, 1, 1008, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (137, N'9786051067582', N'Zamanın Kısa Tarihi', N'Stephen Hawking', 8, 255, 2017, CAST(13.89 AS Decimal(18, 2)), N'0000000562120-1.jpg', N'Zamanın Kısa Tarihi 1988 yılındaki ilk basımından bu yana geçen yıllar içerisinde bilimsel yazın alanında bir başyapıt konumu kazandı. Kırk dile çevrildi ve dokuz milyonun üzerinde baskı yaparak dev bir uluslararası ün kazandı. Kitap o dönemde evrenin doğası hakkında öğrendiğimiz en son bilgiler göz önüne alınarak yazılmıştı, öte yandan o günden bu güne hem atom-altı dünyanın hem de büyük ölçekte evrenin gözlem teknolojilerinde olağanüstü ilerlemeler yaşandı. Bu yeni gözlemler Profesör Hawking’in kitabın ilk baskısında yaptığı kuramsal öngörülerin çoğunu doğrulayan nitelikteydi. Bu gözlemlere, evrenin başlangıcından 300.000 yıl sonrasını araştıran ve Hawking’in varlığını ileri sürdüğü uzayzaman dokusundaki kırışıklıkları tespit eden Kozmik Ardalan Kâşifi COBE uydusunun son bulguları da dahildir. 

Kaleme aldığı özgün metne kendisinin son araştırmasından ve en son gözlemlerden edindiğimiz yeni bilgileri katma arzusuyla Hawking, kitabının elinizdeki son baskısı için yeni bir önsöz yazmakla kalmadı, aynı zamanda solucan delikleri ve zaman yolculuğuyla ilgili çok etkileyici yepyeni bir bölüm kaleme alarak kitabını güncelledi. ', 45, 1, 1009, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (139, N'9786051715513', N'Kara Delikler', N'Stephen Hawking', 8, 75, 2017, CAST(8.33 AS Decimal(18, 2)), N'0001718325001-1.jpg', N'2016 yılının BBC Reith derslerinde Stephen Hawking, bütün bir ömür süren araştırmalarını on beş dakika içinde aktarma gibi gerçekten zorlu bir meydan okumayı kabul etti. Bu çok kısa süren derslerde Hawking, evrenin gizemlerini ortaya sererken, kara delikleri anladığımız takdirde uzayzamanın sırlarına erişebileceğimizi vurguluyor.', 45, 1, 1009, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (140, N'9786051060606', N'Benim Gözümden Dünya', N'Albert Einstein', 8, 115, 2008, CAST(9.44 AS Decimal(18, 2)), N'0000000288315-1.jpg', N'Benim Gözümden Dünya''da, Albert Einstein''ın hayata, yaşadığı dünyaya ve bilimsel çalışmalarına dair görüşlerini bulacaksınız. Büyüleyici, esprili ve zekice gözlemler, büyük bir kalbi ve az rastlanır bir aklı açığa vuran samimi itiraflar...Benim Gözümden Dünya, bu özel kişiliği, kendi yazdığı ya da başkası tarafından kaleme alınan hiçbir kitapla kıyaslanmayacak bir açıklıkta gözler önüne seriyor. Einstein insanlığa, yardımlaşmanın hakim olduğu barış dolu bir dünyaya ve bilimin yüce amaçlarına inanıyordu.  "İyi ve Kötü", "Din ve Bilim", "Aktif Pasifizm", "Hıristiyanlık ve Yahudilik" , "Azınlıklar" ve "Bir Arap''a Mektup" gibi farklı konu başlıklarının ele alındığı Benim Gözümden Dünya, işte bu inançların savunması niteliğindedir.

"İnsanın gerçek değeri kendi kendisinden özgürleşmeyi ne ölçüde ve ne anlamda becerebildiği ile belirlenir."', 41, 1, 1009, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (141, N'9786051719092', N'Büyük Sorulara Kısa Yanıtlar', N'Stephen Hawking', 8, 200, 2018, CAST(11.11 AS Decimal(18, 2)), N'0001791001001-1.jpg', N'İnsanlar her daim büyük sorulara yanıt bulmak istemiştir:
Tanrı Var mı? Nereden geldik? Her Şey Nasıl Başladı? Evrende Bizden Başka Akıllı Yaşam Var mı? Zamanda Yolculuk Mümkün mü? Yapay Zekâ Bize Üstün Gelecek mi? Her şeyin gerisinde duran anlam ve tasarı nedir? Geçmişin yaratılış üzerinden açıklamaları bugün artık çok daha az uygun ve güvenilir görünüyor. Bu açıklamaların yerini New Age’ten Star Trek’e uzanan kendilerine yalnızca hurafe diyebileceğimiz çeşitli şeyler aldı. Gelgelelim gerçek bilim, bilimkurgudan çok daha tuhaf ve tatmin edici olabilir. Günümüzde bilim bütün bu sorulara yanıt
bulmaya başladı.Hawking’in ölümünden önce yazdığı son yazıların derlemesi olan bu kitap,tarihin en önemli zihinlerinden birinin büyük sorulara verdiği yanıtlardan oluşuyor.
Her Şeyin Teorisi filmindeki performansıyla Oscar kazanan Eddie Redmayne’in önsöz, Nobel Ödüllü bilim insanı Kip Thorne’un giriş ve Hawking’in kızı Lucy’nin sonsöz kaleme aldığı Büyük Sorulara Kısa Yanıtlar bir dehanın dünyaya bıraktığı son mesaj niteliğinde.

“Hawking, insan zihninin artan gücünün bir sembolü.” -The Washington Post

“Hawking’in okuyuculara son mesajı insanlık için umut olduğu yönünde.” -CNN

“Büyük Sorulara Kısa Yanıtlar bilimin ve insanlığın geleceğine son derece açık ve anlaşılır bir bakış sunuyor.” -The Wall Street Journal

“Bu olağanüstü kitap, görkemli bir yıldızın son parıltısı.” -The Telegraph', 37, 1, 1009, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (142, N'9786051715308', N'Türlerin Kökeni', N'Charles Darwin', 8, 472, 2017, CAST(19.45 AS Decimal(18, 2)), N'0001719848001-1.jpg', N'İlk basımı 1859’da Londra’da yayımlanan Türlerin Kökeni, dünyamızın bilim ve kültür tarihini değiştiren kitapların başında gelir. Darwin’in 20 yıllık araştırması sonucu ortaya çıkan ve evrimin mekanizmalarını açıklayan Türlerin Kökeni sadece biyoloji bilimlerinin değil, aynı zamanda tüm doğa bilimlerine ve edebiyattan felsefeye tüm insanlık kültürüne yeni bir bakış kazandırarak, 


insanın dünyayı anlama macerasında bir dönüm noktası oldu. 


Türlerin Kökeni’nin bu çevirisi, Darwin’in ilk baskısındaki birkaç küçük dizgi hatasını düzelttiği ikinci baskıdan yapıldı. 


 


“Zaman içinde Darwinci devrim, dünya üzerindeki her eğitimli insanın aklında ve kalbinde emin ve rahat bir şekilde yerini alacaktır, fakat bugün, Darwin’in ölümünün üzerinden bir asırdan fazla zaman geçmesine rağmen, hâlâ onun parmak ısırtan çıkarımlarla dolu ifadelerini tam olarak hazmedebilmiş değiliz.”


–Daniel Dennett, Darwin’in Tehlikeli Fikri-


 


“Darwinci kuram yalnızca üstün bir açıklama gücüne sahip olmakla kalmaz; açıklamasındaki ekonomikliğin güç dolu bir zarafeti, dünyanın en unutulmaz başlangıç mitlerine bile üstün gelecek şiirsel bir güzelliği vardır.”


–Richard Dawkins, Cennetten Akan Irmak-


 


 “Hiçbir bilimsel devrim daha önceki alışkanlıklarımızı ve kanaatlerimizi değiştirmek açısından Darwin’in buluşuyla karşılaştırılamaz… Darwinci evrim çok derin bir biçimde, kendi varlığımız ve özümüze ilişkin algılarımızda ve bilimin işaret ettiği benzer sorular konusunda da bir devrim yaratmıştır: Biz kimiz? Buraya nasıl geldik? Diğer yaratıklarla ilişkimiz nedir?”


–Carl Zimmer, Evrim: Bir Fikrin Başarısı-', 35, 1, 1009, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (143, N'9786051712550', N'İnsanlık 2.0', N'Ray Kurzweil', 8, 720, 2016, CAST(25.67 AS Decimal(18, 2)), N'0000000688766-1.jpg', N'Ray Kurzweil, son yıllarda tekillik hakkında üretilen tüm bilgi birikimini tek bir ciltte toplamış, cildi de kapımıza çivilemiştir. Savları yine de öylesine inanılmaz ki, eğer bunlar doğruysa, bu, bildiğimiz anlamıyla dünyanın sonu ve ütopyanın başlangıcı anlamına gelmekte. On yılın en çok konuşulan kitaplarından biri olmaya aday.

"Ray Kurzweil, tanıdığım insanlar arasında yapay zekânın geleceğini en iyi öngörebilen kişi. İnsanı meraklandıran bu yeni kitabı, bilgi teknolojilerinin insanlığın biyolojik sınırlarını aşmasını sağlayacak kadar hızlı geliştiği, yaşamlarımızı bugün hayal bile edemeyeceğimiz biçimlerde dönüştüren bir geleceği öngörüyor. "
-Bill Gates-

"Kurzweil''in ana düşüncesini herkes kavrayabilir: İnsanlığın teknolojik bilgisi, geleceğe dair baş döndürücü beklentilerle çığ gibi büyümektedir. Temel konular net biçimde dile getirilmiş. Ama daha bilgili, daha araştırmacı olanlar için yazar görüşlerini büyüleyici ayrıntılarla ortaya koymuş... İnsanlık 2.0 sarsıcı bir bakışa ve yürekliliğe sahip."
-Janet Maslin, The New York Times-

"Gerçekten, ama gerçekten çok iyi. Müthiş bir biçimde iyi."
-Businessweek.com-

"Ray''in iyimser kitabı hem okunmayı hem de üzerinde düşünmeyi hak ediyor. Umutlar ve tehlikelerin dengesi konusunda Ray''den farklı düşünen benim gibiler için bu kitap, ivmelenen bu olanaklardan doğan daha büyük kaygıların ele alınması için sürdürülmesi gereken diyaloğa açık bir çağrıdır."
-Bill Joy, Sun Microsystems-', 44, 1, 1009, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (144, N'9786051066752', N'Eminim Şaka Yapıyorsunuz Bay Feynman - Meraklı Bir Şahsiyetin Maceraları', N'Richard P. Feynman', 8, 350, 2016, CAST(19.56 AS Decimal(18, 2)), N'0000000427673-1.jpg', N'Nobel ödüllü büyük fizikçi Richard Feynman (1918-1988) aykırı serüvenleri ile tanınmıştır. Burada kendisi, taklit edilemeyen sesiyle, Einstein ile Bohr arasındaki atom fiziğine ilişkin fikir alışverişini; Yunanlı Nick''le kumar konusundaki konuşmalarını; çok iyi saklandığı sanılan nükleer sırların bulunduğu kasaları açışını; bongo davuluyla bir baleye eşlik edişini; çıplak bir bayan boğa güreşçisi resmi yapışını; kuantum fiziğinin gizemlerinden barda kızlara içki ısmarlamanın kurallarını keşfedişine kadar bir çok hayrete düşürücü olayı anlatıyor. Kısacası burada tüm farklı parlaklığıyla Feynman''ın hayatını, -üstün bir zeka, sınırsız bir merak ve pervasızlığın patlayıcı bir karışımını- bulacaksınız. Zamanımızın en ünlü bilim kitaplarından biri olan bu enerji, anekdot ve hayat dolu eser, sizde de fizikçi olma arzusu yaratabilir.

"Feynman''ın yaşamı için zincirleme reaksiyon benzetmesini yapmak hiç yanlış olmaz.
Kritik kütleye sahip gri maddeden her yöne yayılarak ısı ve ışık saçıyor."
Time

"Feynman zekâsı ve farklılığıyla meslektaşları arasında bir efsanedir. Okurken gülmemek çok zor."
Newsweek

"Muhteşem, nefes kesici... Feynman''ın dili parlak, canlı ve yapmacıksız... Gerçekten ferahlatan bir mesaj."
Chicago Sun Times

"Eğer fizikte ya da fizikçilerde eğlenecek bir yön olmadığını düşünen kişilerden birisiyseniz Bay Feynman''la tanışın. Şimdiye kadar bir tutam atomla illüzyon yapabilen en komik kişilerden birisi."
Associated Press

"Dopdolu bir bilim adamının portresini çizebilecek tek bir kitap varsa, elinizdeki bu kitaptır."
Detroit Free Press

"Mark Twain geleneğinde bir hikayeci. Feynman, kahkahayla gülerken, aynı zamanda başınızı ellerinizin arasına alabileceğinizi ispat ediyor."
Science Digest', 43, 1, 1009, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (146, N'9786051068688', N'Bilim Nasıl Çalışır?', N'Kolektif', 8, 258, 2019, CAST(52.78 AS Decimal(18, 2)), N'0001794926001-1.jpg', N'En basit, görseli en bol bilim rehberi

Yapay zekâ dünyayı ele geçirecek mi?

Gen terapisi ne kadar işe yarar?

Higgs bozonu, kök hücre, kütleçekimsel dalga nedir?

Bilim göz korkutucu ölçüde karmaşık olabilir ve “iyi” bilimi “kötü” bilimden,  temel gerçekleri çoğu kez medyada yer alan abartılı atılımlardan ayırmak zordur.

Sade, anlaşılması kolay görsellerle ve büyüleyici geçeklerle dolu Bilim Nasıl Çalışır hem temel hem ileri bilimin sırlarını açıklıyor ve merak ettiğimiz sorulara yanıt veriyor.', 43, 1, 1009, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (147, N'9786051066509', N'Fizik Yasaları Üzerine', N' Richard P. Feynman', 8, 200, 2015, CAST(13.44 AS Decimal(18, 2)), N'0000000420296-1.jpg', N'1964 A. Einstein Ödülü ve 1965 Nobel Fizik Ödülü sahibi Profesör R. Feynman sadece fizik yasalarının kavranışına yaptığı katkılarla değil, fiziği fizikçi olmayanlar için de çekici kılma yeteneğiyle tanınır.

"Olağanüstü ... bu kitapta büyük bir fizikçinin düşünme biçimini görüyorsunuz."
Times Literary Supplement

"Feynman''ın "hiç kimse o kadar akıllı değildir" saptaması bana şunları çağrıştırıyor: Feynman''ın başarılarında "sihirli" bir yan yoktur, ama doğru düşünmek, doğanın gerçekliğine doğru bir şekilde yaklaşmak, doğru soruları sormak, geleneksel olmayan cevapları denemek, sahte seslere ve kanıtlanamaz varsayımlara karşı dikkatli olmak vardır."
Philip W. Anderson

Dick''in [Richard Feynman] fiziğinin insanlar tarafından anlaşılmasının zor yanı matematiksel denklem kullanmamasıdır. Nevvton''dan bu yana teorik fizikçiler denklemler yazarlar ve sonra bu denklemlerin çözümleri üzerine çalışırlar. Hans [Bethe], Oppy [Oppenheimer] ve Julian Schvvinger bu şekilde fizik yapmışlardır. Dick ise denklemleri yazmadan çözümleri kafasında yapar. Neler olup bittiğini kafasında canlandırır ve minimum matematik kullanarak çözümün ortaya koyduğu resmi çıkartır. Hayatları boyunca denklem çözmeye uğraşanların onun karşısında şaşırıp kalmalarını anlayabiliyorum. Onların zihinleri analitik çalışırken, Feynman''ınki resimseldir.
Freeman Dyson', 39, 1, 1009, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (148, N'9786051069302', N'Bilim Kitabı', N'Ahmet Fethi Yıldırım', 8, 355, 2015, CAST(58.05 AS Decimal(18, 2)), N'0000000631604-1.jpg', N'Evren bir Büyük Patlamayla mı başladı? Işık bir dalga mı, bir parçacık mıi yoksa her ikisi midir? Küresel ısınmanın nedeni biz miyiz? Her Şeyin Teorisi olanaklı mıdır? Bilim içinde yaşadığımız dünyayı ve ötesindeki çoklı evrenleri anlamamızı olanaklı kılmakla, teknolojik ilerlemeler sunmakta ve bilginin sınırlarını genişletmektedir.

Sade bir dille yazılmış olan Bilim Kitabı, kolayca anlaşılan kısa ve özlü açıklamaları, temel ilkelerin düğümlerini adım adım çözen şemaları, bilimsel keşifleri unutulmaz kılan klasik alıntıları ve bilim anlayışımızı alt üst eden esprili çizimleriyle başucu kitabınız olacak. Bilgi düzeyiniz ne olursa olsun, ister hevesli bir öğrenci ister konunun teorisyeni olun, bu kitapta sizi kışkırtıp canlandıracak çok şey bulacaksınız.

Katkıda Bulunanlar: Adam Hart-Davis, John Farndon, Dan Green, Derek Harvey, Penny Johnson, Douglas Palmer, Steve Parker, Giles Sparrow', 0, 0, 1009, 0)
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (149, N'9786051714615', N'Kuantum Mekaniği', N'Leonard Susskind, Art Friedman', 8, 342, 2017, CAST(21.39 AS Decimal(18, 2)), N'0001690412001-1.jpg', N'Kuantum Mekaniği, insanlara önce acayip gibi görünen kuantum mekaniği dünyasının kuramını ve ilgili matematiği sunarken, atom-altı cisimlerin davranışlarını matematiksel soyutlamalarla işleyerek bu zor alana temel bir giriş sunuyor. Kuantum mekaniğinin tuhaf gibi gelen yanlarını bazı popüler kitaplar çekine çekine verirler; oysa bu kitap kuantum mantığının tüm acayipliğini seve seve kucaklıyor. Kuantum mekaniğinin acayipliğinin tam olarak ne olduğunu, kesin matematiksel ayrıntılarla açıklıyor. Kitap, evrenimizde en temelde kuantum davranışının var olduğunu, evrenimizin sadece ve sadece kuantum yasaları uyarınca işlediğini, klasik mekaniğin ancak bir yaklaştırma olduğunu vurguluyor. Bu bağlamda, kuantum durumlarının ilkelerini, belirsizlik ve zamana bağlılığı, dolanıklık olgusunu, parçacık ve dalga ikiliğini en şeffaf biçimde ortaya seriyor. “Bu tam manasıyla bir kuantum mekaniği kitabıdır... Fizikçilerin dünyayı gerçekten nasıl düşündüklerini anlamak istiyorsanız, bu kitaptan başlamanız gerekir.”


 -Sean Carroll, Büyük Resim’in yazarı-


 


“Bir ıssız adada yaşama cezasına çarptırılsanız ve yanınıza sadece bir tek kitap almanıza izin verilse, o kitap işte budur. Yeterince zamanınız olduğu, dikkatinizi dağıtacak hiçbir şey olmadığı göz önünde tutulursa, kuantum mekaniğini en iyi şekilde öğrenmek için bu kitabı kullanabilirsiniz.”


-Science News-


 


“Susskind ve Friedman’ın ikna edici ve açık seçik örnekleri kuantum mekaniğini tam da gerektiği kadar özetliyor.”


-David Seery, Nature-


 


“Kuantum mekaniği öğrenmek isteyen herkes için.”


-Publishers Weekly-', 34, 1, 1009, 0)
GO
INSERT [dbo].[tblKitap] ([KitapID], [ISBNNo], [KitapAdi], [Yazar], [YayinEviID], [SayfaSayisi], [BasimYili], [Fiyati], [KapakResmi], [Aciklama], [Adet], [StokDurumu], [TurID], [SilindiMi]) VALUES (151, N'9789752123267', N'Başlangıç', N' Dan Brown', 2, 536, 2017, CAST(27.22 AS Decimal(18, 2)), N'baslangic.jpg', N'Kim olursan ol, neye inanırsan inan,     Çok yakında her şey değişecek...        Genç adam, aniden üç büyük dinin temsilcilerine döndü. “Şaşırtıcı bulacağınızı tahmin ettiğim bilimsel bir buluşum sebebiyle bugün buradayım. İnsanlık deneyimimizin en temel iki sorusuna cevap bulma ümidi ile yıllardır peşinden koşuyordum. Bu bilginin tüm inananları derinden etkileyeceğine inanıyorum. Nasıl desem, ‘yıkıcı’ diye tanımlanabilecek bir değişikliğe sebep olabilir. Birazdan görecekleriniz, dünyayla paylaşmayı umduğum sunumun kaba bir kesiti. Fakat bunu yapmadan önce dünyanın en etkili din adamlarına danışmak, en çok etkilenecek kişilerce nasıl algılanacağını öğrenmek istedim.”        Piskopos, haham ve ulema birbirlerine baktılar, sıkılmış görünüyorlardı. Piskopos, “İlginç bir girizgâh Bay Kirsch. Bize gösterecekleriniz dünya dinlerinin temelini sarsacakmış gibi konuşuyorsunuz," dedi. Genç adam kutsal metinlerin saklandığı bu eski mahzende etrafına baktı. Temellerini sarsmayacak, yıkacak, diye düşündü. Din adamları üç ', 0, 0, 1, 0)
SET IDENTITY_INSERT [dbo].[tblKitap] OFF
SET IDENTITY_INSERT [dbo].[tblKitapTur] ON 

INSERT [dbo].[tblKitapTur] ([TurID], [TurAdi]) VALUES (1, N'Roman')
INSERT [dbo].[tblKitapTur] ([TurID], [TurAdi]) VALUES (2, N'Psikolji')
INSERT [dbo].[tblKitapTur] ([TurID], [TurAdi]) VALUES (3, N'Eğitim Başvuru')
INSERT [dbo].[tblKitapTur] ([TurID], [TurAdi]) VALUES (4, N'Öykü')
INSERT [dbo].[tblKitapTur] ([TurID], [TurAdi]) VALUES (5, N'Fantastik')
INSERT [dbo].[tblKitapTur] ([TurID], [TurAdi]) VALUES (1006, N'Felsefe')
INSERT [dbo].[tblKitapTur] ([TurID], [TurAdi]) VALUES (1008, N'Çizgi Roman')
INSERT [dbo].[tblKitapTur] ([TurID], [TurAdi]) VALUES (1009, N'Bilim')
SET IDENTITY_INSERT [dbo].[tblKitapTur] OFF
SET IDENTITY_INSERT [dbo].[tblKullanici] ON 

INSERT [dbo].[tblKullanici] ([KullaniciID], [Ad], [Soyad], [Mail], [Sifre], [Adres], [KayitOlmaTarihi]) VALUES (1, N'Mehmet', N'AYDIN', N'test@test.com', N'MTIzNDU2Nzg5', N'Bursa', CAST(N'2019-04-04 19:34:54.460' AS DateTime))
INSERT [dbo].[tblKullanici] ([KullaniciID], [Ad], [Soyad], [Mail], [Sifre], [Adres], [KayitOlmaTarihi]) VALUES (7, N'Bilal', N'Aksal', N'test1@test.com', N'MTIzNDU2Nzg5', N'manisa', CAST(N'2019-01-10 19:34:54.460' AS DateTime))
INSERT [dbo].[tblKullanici] ([KullaniciID], [Ad], [Soyad], [Mail], [Sifre], [Adres], [KayitOlmaTarihi]) VALUES (8, N'adad', N'asdas', N'test3@test.com', N'MTIzNDU2Nzg5', NULL, CAST(N'2019-03-30 19:34:54.460' AS DateTime))
INSERT [dbo].[tblKullanici] ([KullaniciID], [Ad], [Soyad], [Mail], [Sifre], [Adres], [KayitOlmaTarihi]) VALUES (9, N'hasan', N'karataş', N'hasan@karatas.com', N'MTIzNDU2Nzg5', NULL, CAST(N'2019-02-25 19:34:54.460' AS DateTime))
INSERT [dbo].[tblKullanici] ([KullaniciID], [Ad], [Soyad], [Mail], [Sifre], [Adres], [KayitOlmaTarihi]) VALUES (10, N'serbay', N'şimşir', N'serbay@serbay.com', N'MTIzNDU2Nzg5', NULL, NULL)
INSERT [dbo].[tblKullanici] ([KullaniciID], [Ad], [Soyad], [Mail], [Sifre], [Adres], [KayitOlmaTarihi]) VALUES (11, N'Bil', N'Al', N'bilalaksal@gmail.com', N'MTIzNDU2Nzg5', N'turgutlu', NULL)
INSERT [dbo].[tblKullanici] ([KullaniciID], [Ad], [Soyad], [Mail], [Sifre], [Adres], [KayitOlmaTarihi]) VALUES (12, N'ai', N'asd', N'ali@ali.com', N'MTIzNDU2Nzg=', NULL, NULL)
INSERT [dbo].[tblKullanici] ([KullaniciID], [Ad], [Soyad], [Mail], [Sifre], [Adres], [KayitOlmaTarihi]) VALUES (13, N'veli', N'asd', N'veli@veli.com', N'MTIzNDU2Nzg=', NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblKullanici] OFF
SET IDENTITY_INSERT [dbo].[tblMesaj] ON 

INSERT [dbo].[tblMesaj] ([MesajId], [GonderciTipi], [AdSoyad], [Email], [Konu], [Mesaj], [OkunduMu]) VALUES (2, 0, N'umut AĞIRTAŞ', N'umut.agrts@gmail.com', N'Site Hakkında', N'Siteniz çok çok güzel olmuş tebrikler!.', 1)
INSERT [dbo].[tblMesaj] ([MesajId], [GonderciTipi], [AdSoyad], [Email], [Konu], [Mesaj], [OkunduMu]) VALUES (3, 1, N'serbay şimşir', N'serbay@bjk.com', N'Site Hakkında', N'Sitenizi hiç beğenmedim.', 0)
INSERT [dbo].[tblMesaj] ([MesajId], [GonderciTipi], [AdSoyad], [Email], [Konu], [Mesaj], [OkunduMu]) VALUES (4, 1, N'Bilal Aksal', N'bilalaksal@gmail.com', N'Site Hakkında', N'Sitemizin son testleri', 0)
INSERT [dbo].[tblMesaj] ([MesajId], [GonderciTipi], [AdSoyad], [Email], [Konu], [Mesaj], [OkunduMu]) VALUES (5, 0, N'kamil', N'mailim@mail.com', N'hata', N'asdas', 0)
INSERT [dbo].[tblMesaj] ([MesajId], [GonderciTipi], [AdSoyad], [Email], [Konu], [Mesaj], [OkunduMu]) VALUES (6, 1, N'kamil', N'bilalaksal@gmail.com', N'asd', N'şakşdlkasd', 1)
SET IDENTITY_INSERT [dbo].[tblMesaj] OFF
SET IDENTITY_INSERT [dbo].[tblPromosyon] ON 

INSERT [dbo].[tblPromosyon] ([PromosyonId], [UrunId], [KategoriId], [TumUrunler], [IndirimOrani]) VALUES (22, NULL, NULL, 1, 30)
INSERT [dbo].[tblPromosyon] ([PromosyonId], [UrunId], [KategoriId], [TumUrunler], [IndirimOrani]) VALUES (23, NULL, 1, 0, 10)
INSERT [dbo].[tblPromosyon] ([PromosyonId], [UrunId], [KategoriId], [TumUrunler], [IndirimOrani]) VALUES (24, 1, NULL, 0, 5)
INSERT [dbo].[tblPromosyon] ([PromosyonId], [UrunId], [KategoriId], [TumUrunler], [IndirimOrani]) VALUES (25, 1, NULL, 0, 95)
SET IDENTITY_INSERT [dbo].[tblPromosyon] OFF
SET IDENTITY_INSERT [dbo].[tblSatinAlinanlar] ON 

INSERT [dbo].[tblSatinAlinanlar] ([SatinAlinanID], [MusteriID], [UrunID], [SatinAlmaAdedi], [UrunBirimFiyati], [ToplamFiyat], [Adres], [SatinAlmaTarihi]) VALUES (10, 1, 140, 3, CAST(9.44 AS Decimal(18, 2)), CAST(28.32 AS Decimal(18, 2)), N'İstanbul', CAST(N'2019-02-15 22:08:46.647' AS DateTime))
INSERT [dbo].[tblSatinAlinanlar] ([SatinAlinanID], [MusteriID], [UrunID], [SatinAlmaAdedi], [UrunBirimFiyati], [ToplamFiyat], [Adres], [SatinAlmaTarihi]) VALUES (11, 1, 149, 1, CAST(21.39 AS Decimal(18, 2)), CAST(21.39 AS Decimal(18, 2)), N'Gaziantep', CAST(N'2019-03-30 23:43:56.043' AS DateTime))
INSERT [dbo].[tblSatinAlinanlar] ([SatinAlinanID], [MusteriID], [UrunID], [SatinAlmaAdedi], [UrunBirimFiyati], [ToplamFiyat], [Adres], [SatinAlmaTarihi]) VALUES (12, 1, 148, 1, CAST(58.05 AS Decimal(18, 2)), CAST(58.05 AS Decimal(18, 2)), N'Gaziantep', CAST(N'2019-03-30 23:43:56.080' AS DateTime))
INSERT [dbo].[tblSatinAlinanlar] ([SatinAlinanID], [MusteriID], [UrunID], [SatinAlmaAdedi], [UrunBirimFiyati], [ToplamFiyat], [Adres], [SatinAlmaTarihi]) VALUES (13, 1, 147, 1, CAST(13.44 AS Decimal(18, 2)), CAST(13.44 AS Decimal(18, 2)), N'Gaziantep', CAST(N'2019-03-30 23:43:56.093' AS DateTime))
INSERT [dbo].[tblSatinAlinanlar] ([SatinAlinanID], [MusteriID], [UrunID], [SatinAlmaAdedi], [UrunBirimFiyati], [ToplamFiyat], [Adres], [SatinAlmaTarihi]) VALUES (14, 1, 144, 1, CAST(19.56 AS Decimal(18, 2)), CAST(19.56 AS Decimal(18, 2)), N'Gaziantep', CAST(N'2019-03-30 23:43:56.110' AS DateTime))
INSERT [dbo].[tblSatinAlinanlar] ([SatinAlinanID], [MusteriID], [UrunID], [SatinAlmaAdedi], [UrunBirimFiyati], [ToplamFiyat], [Adres], [SatinAlmaTarihi]) VALUES (15, 1, 151, 1, CAST(27.22 AS Decimal(18, 2)), CAST(27.22 AS Decimal(18, 2)), N'Gaziantep/Nizip', CAST(N'2019-04-04 19:37:43.963' AS DateTime))
INSERT [dbo].[tblSatinAlinanlar] ([SatinAlinanID], [MusteriID], [UrunID], [SatinAlmaAdedi], [UrunBirimFiyati], [ToplamFiyat], [Adres], [SatinAlmaTarihi]) VALUES (16, 1, 151, 3, CAST(27.22 AS Decimal(18, 2)), CAST(81.66 AS Decimal(18, 2)), N'Bursa', CAST(N'2019-04-04 22:59:18.290' AS DateTime))
INSERT [dbo].[tblSatinAlinanlar] ([SatinAlinanID], [MusteriID], [UrunID], [SatinAlmaAdedi], [UrunBirimFiyati], [ToplamFiyat], [Adres], [SatinAlmaTarihi]) VALUES (17, 1, 149, 2, CAST(21.39 AS Decimal(18, 2)), CAST(42.78 AS Decimal(18, 2)), N'Bursa', CAST(N'2019-04-04 22:59:18.337' AS DateTime))
INSERT [dbo].[tblSatinAlinanlar] ([SatinAlinanID], [MusteriID], [UrunID], [SatinAlmaAdedi], [UrunBirimFiyati], [ToplamFiyat], [Adres], [SatinAlmaTarihi]) VALUES (18, 1, 148, 3, CAST(58.05 AS Decimal(18, 2)), CAST(174.15 AS Decimal(18, 2)), N'Bursa', CAST(N'2019-04-04 22:59:18.347' AS DateTime))
INSERT [dbo].[tblSatinAlinanlar] ([SatinAlinanID], [MusteriID], [UrunID], [SatinAlmaAdedi], [UrunBirimFiyati], [ToplamFiyat], [Adres], [SatinAlmaTarihi]) VALUES (19, 1, 147, 1, CAST(13.44 AS Decimal(18, 2)), CAST(13.44 AS Decimal(18, 2)), N'Bursa', CAST(N'2019-04-04 22:59:18.353' AS DateTime))
INSERT [dbo].[tblSatinAlinanlar] ([SatinAlinanID], [MusteriID], [UrunID], [SatinAlmaAdedi], [UrunBirimFiyati], [ToplamFiyat], [Adres], [SatinAlmaTarihi]) VALUES (20, 1, 146, 1, CAST(52.78 AS Decimal(18, 2)), CAST(52.78 AS Decimal(18, 2)), N'Bursa', CAST(N'2019-04-04 22:59:18.360' AS DateTime))
INSERT [dbo].[tblSatinAlinanlar] ([SatinAlinanID], [MusteriID], [UrunID], [SatinAlmaAdedi], [UrunBirimFiyati], [ToplamFiyat], [Adres], [SatinAlmaTarihi]) VALUES (21, 1, 144, 1, CAST(19.56 AS Decimal(18, 2)), CAST(19.56 AS Decimal(18, 2)), N'Bursa', CAST(N'2019-04-04 22:59:18.367' AS DateTime))
INSERT [dbo].[tblSatinAlinanlar] ([SatinAlinanID], [MusteriID], [UrunID], [SatinAlmaAdedi], [UrunBirimFiyati], [ToplamFiyat], [Adres], [SatinAlmaTarihi]) VALUES (22, 1, 143, 1, CAST(25.67 AS Decimal(18, 2)), CAST(25.67 AS Decimal(18, 2)), N'Bursa', CAST(N'2019-04-04 22:59:18.377' AS DateTime))
INSERT [dbo].[tblSatinAlinanlar] ([SatinAlinanID], [MusteriID], [UrunID], [SatinAlmaAdedi], [UrunBirimFiyati], [ToplamFiyat], [Adres], [SatinAlmaTarihi]) VALUES (23, 1, 142, 1, CAST(19.45 AS Decimal(18, 2)), CAST(19.45 AS Decimal(18, 2)), N'Bursa', CAST(N'2019-04-04 22:59:18.380' AS DateTime))
INSERT [dbo].[tblSatinAlinanlar] ([SatinAlinanID], [MusteriID], [UrunID], [SatinAlmaAdedi], [UrunBirimFiyati], [ToplamFiyat], [Adres], [SatinAlmaTarihi]) VALUES (24, 1, 142, 9, CAST(19.45 AS Decimal(18, 2)), CAST(175.05 AS Decimal(18, 2)), N'Bursa', CAST(N'2019-04-05 00:42:18.783' AS DateTime))
INSERT [dbo].[tblSatinAlinanlar] ([SatinAlinanID], [MusteriID], [UrunID], [SatinAlmaAdedi], [UrunBirimFiyati], [ToplamFiyat], [Adres], [SatinAlmaTarihi]) VALUES (25, 1, 141, 1, CAST(11.11 AS Decimal(18, 2)), CAST(11.11 AS Decimal(18, 2)), N'Bursa', CAST(N'2019-04-05 00:42:18.817' AS DateTime))
INSERT [dbo].[tblSatinAlinanlar] ([SatinAlinanID], [MusteriID], [UrunID], [SatinAlmaAdedi], [UrunBirimFiyati], [ToplamFiyat], [Adres], [SatinAlmaTarihi]) VALUES (26, 1, 140, 1, CAST(9.44 AS Decimal(18, 2)), CAST(9.44 AS Decimal(18, 2)), N'Bursa', CAST(N'2019-04-05 00:42:18.827' AS DateTime))
INSERT [dbo].[tblSatinAlinanlar] ([SatinAlinanID], [MusteriID], [UrunID], [SatinAlmaAdedi], [UrunBirimFiyati], [ToplamFiyat], [Adres], [SatinAlmaTarihi]) VALUES (27, 1, 134, 1, CAST(16.21 AS Decimal(18, 2)), CAST(16.21 AS Decimal(18, 2)), N'Bursa', CAST(N'2019-04-05 00:42:18.833' AS DateTime))
INSERT [dbo].[tblSatinAlinanlar] ([SatinAlinanID], [MusteriID], [UrunID], [SatinAlmaAdedi], [UrunBirimFiyati], [ToplamFiyat], [Adres], [SatinAlmaTarihi]) VALUES (28, 1, 133, 1, CAST(24.63 AS Decimal(18, 2)), CAST(24.63 AS Decimal(18, 2)), N'Bursa', CAST(N'2019-04-05 00:42:18.843' AS DateTime))
INSERT [dbo].[tblSatinAlinanlar] ([SatinAlinanID], [MusteriID], [UrunID], [SatinAlmaAdedi], [UrunBirimFiyati], [ToplamFiyat], [Adres], [SatinAlmaTarihi]) VALUES (29, 1, 129, 1, CAST(22.04 AS Decimal(18, 2)), CAST(22.04 AS Decimal(18, 2)), N'Bursa', CAST(N'2019-04-05 00:42:18.850' AS DateTime))
INSERT [dbo].[tblSatinAlinanlar] ([SatinAlinanID], [MusteriID], [UrunID], [SatinAlmaAdedi], [UrunBirimFiyati], [ToplamFiyat], [Adres], [SatinAlmaTarihi]) VALUES (30, 1, 131, 1, CAST(22.04 AS Decimal(18, 2)), CAST(22.04 AS Decimal(18, 2)), N'Bursa', CAST(N'2019-04-05 00:42:18.857' AS DateTime))
INSERT [dbo].[tblSatinAlinanlar] ([SatinAlinanID], [MusteriID], [UrunID], [SatinAlmaAdedi], [UrunBirimFiyati], [ToplamFiyat], [Adres], [SatinAlmaTarihi]) VALUES (31, 11, 151, 2, CAST(17.15 AS Decimal(18, 2)), CAST(34.30 AS Decimal(18, 2)), N'turgutlu', CAST(N'2019-04-05 07:32:55.047' AS DateTime))
INSERT [dbo].[tblSatinAlinanlar] ([SatinAlinanID], [MusteriID], [UrunID], [SatinAlmaAdedi], [UrunBirimFiyati], [ToplamFiyat], [Adres], [SatinAlmaTarihi]) VALUES (32, 11, 1, 2, CAST(15.13 AS Decimal(18, 2)), CAST(30.26 AS Decimal(18, 2)), N'turgutlu', CAST(N'2019-04-05 07:32:55.093' AS DateTime))
INSERT [dbo].[tblSatinAlinanlar] ([SatinAlinanID], [MusteriID], [UrunID], [SatinAlmaAdedi], [UrunBirimFiyati], [ToplamFiyat], [Adres], [SatinAlmaTarihi]) VALUES (33, 11, 147, 2, CAST(9.41 AS Decimal(18, 2)), CAST(18.82 AS Decimal(18, 2)), N'turgutlu', CAST(N'2019-04-05 17:57:15.770' AS DateTime))
INSERT [dbo].[tblSatinAlinanlar] ([SatinAlinanID], [MusteriID], [UrunID], [SatinAlmaAdedi], [UrunBirimFiyati], [ToplamFiyat], [Adres], [SatinAlmaTarihi]) VALUES (34, 11, 1, 1, CAST(15.13 AS Decimal(18, 2)), CAST(15.13 AS Decimal(18, 2)), N'turgutlu', CAST(N'2019-04-05 18:02:51.073' AS DateTime))
INSERT [dbo].[tblSatinAlinanlar] ([SatinAlinanID], [MusteriID], [UrunID], [SatinAlmaAdedi], [UrunBirimFiyati], [ToplamFiyat], [Adres], [SatinAlmaTarihi]) VALUES (35, 11, 19, 1, CAST(14.59 AS Decimal(18, 2)), CAST(14.59 AS Decimal(18, 2)), N'turgutlu', CAST(N'2019-04-05 18:02:51.110' AS DateTime))
INSERT [dbo].[tblSatinAlinanlar] ([SatinAlinanID], [MusteriID], [UrunID], [SatinAlmaAdedi], [UrunBirimFiyati], [ToplamFiyat], [Adres], [SatinAlmaTarihi]) VALUES (36, 12, 1, 1, CAST(15.13 AS Decimal(18, 2)), CAST(15.13 AS Decimal(18, 2)), N'', CAST(N'2019-04-05 18:04:12.680' AS DateTime))
INSERT [dbo].[tblSatinAlinanlar] ([SatinAlinanID], [MusteriID], [UrunID], [SatinAlmaAdedi], [UrunBirimFiyati], [ToplamFiyat], [Adres], [SatinAlmaTarihi]) VALUES (37, 12, 19, 1, CAST(14.59 AS Decimal(18, 2)), CAST(14.59 AS Decimal(18, 2)), N'', CAST(N'2019-04-05 18:04:12.717' AS DateTime))
INSERT [dbo].[tblSatinAlinanlar] ([SatinAlinanID], [MusteriID], [UrunID], [SatinAlmaAdedi], [UrunBirimFiyati], [ToplamFiyat], [Adres], [SatinAlmaTarihi]) VALUES (38, 12, 1, 1, CAST(15.13 AS Decimal(18, 2)), CAST(15.13 AS Decimal(18, 2)), N'', CAST(N'2019-04-05 18:05:02.707' AS DateTime))
INSERT [dbo].[tblSatinAlinanlar] ([SatinAlinanID], [MusteriID], [UrunID], [SatinAlmaAdedi], [UrunBirimFiyati], [ToplamFiyat], [Adres], [SatinAlmaTarihi]) VALUES (39, 12, 19, 1, CAST(14.59 AS Decimal(18, 2)), CAST(14.59 AS Decimal(18, 2)), N'', CAST(N'2019-04-05 18:05:02.740' AS DateTime))
SET IDENTITY_INSERT [dbo].[tblSatinAlinanlar] OFF
SET IDENTITY_INSERT [dbo].[tblYayinEvi] ON 

INSERT [dbo].[tblYayinEvi] ([YayinEviID], [YayinEviAdi]) VALUES (1, N'Pegasus')
INSERT [dbo].[tblYayinEvi] ([YayinEviID], [YayinEviAdi]) VALUES (2, N'Altın Kitaplar')
INSERT [dbo].[tblYayinEvi] ([YayinEviID], [YayinEviAdi]) VALUES (3, N' Küsürat Yayınları')
INSERT [dbo].[tblYayinEvi] ([YayinEviID], [YayinEviAdi]) VALUES (4, N'İş Bankası Kültür Yayınları')
INSERT [dbo].[tblYayinEvi] ([YayinEviID], [YayinEviAdi]) VALUES (5, N'Panama Yayıncılık')
INSERT [dbo].[tblYayinEvi] ([YayinEviID], [YayinEviAdi]) VALUES (6, N'İthaki Yayınları')
INSERT [dbo].[tblYayinEvi] ([YayinEviID], [YayinEviAdi]) VALUES (7, N'Gerekli Şeyler')
INSERT [dbo].[tblYayinEvi] ([YayinEviID], [YayinEviAdi]) VALUES (8, N'Alfa Yayıncılık')
SET IDENTITY_INSERT [dbo].[tblYayinEvi] OFF
SET IDENTITY_INSERT [dbo].[tblZiyaretci] ON 

INSERT [dbo].[tblZiyaretci] ([ZiyaretciID], [ZiyaretciMAC]) VALUES (10000, N'80FA5B469505')
SET IDENTITY_INSERT [dbo].[tblZiyaretci] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [UC_Mail]    Script Date: 5.04.2019 18:16:50 ******/
ALTER TABLE [dbo].[tblAdmin] ADD  CONSTRAINT [UC_Mail] UNIQUE NONCLUSTERED 
(
	[Mail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UC_KullaniciMail2]    Script Date: 5.04.2019 18:16:50 ******/
ALTER TABLE [dbo].[tblKullanici] ADD  CONSTRAINT [UC_KullaniciMail2] UNIQUE NONCLUSTERED 
(
	[Mail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblFavoriler]  WITH CHECK ADD  CONSTRAINT [FK_tblFavoriler_tblKitap] FOREIGN KEY([UrunID])
REFERENCES [dbo].[tblKitap] ([KitapID])
GO
ALTER TABLE [dbo].[tblFavoriler] CHECK CONSTRAINT [FK_tblFavoriler_tblKitap]
GO
ALTER TABLE [dbo].[tblFavoriler]  WITH CHECK ADD  CONSTRAINT [FK_tblFavoriler_tblKullanici] FOREIGN KEY([MusteriID])
REFERENCES [dbo].[tblKullanici] ([KullaniciID])
GO
ALTER TABLE [dbo].[tblFavoriler] CHECK CONSTRAINT [FK_tblFavoriler_tblKullanici]
GO
ALTER TABLE [dbo].[tblKitap]  WITH CHECK ADD  CONSTRAINT [FK_tblKitap_tblKitapTur] FOREIGN KEY([TurID])
REFERENCES [dbo].[tblKitapTur] ([TurID])
GO
ALTER TABLE [dbo].[tblKitap] CHECK CONSTRAINT [FK_tblKitap_tblKitapTur]
GO
ALTER TABLE [dbo].[tblKitap]  WITH CHECK ADD  CONSTRAINT [FK_tblKitap_tblYayinEvi] FOREIGN KEY([YayinEviID])
REFERENCES [dbo].[tblYayinEvi] ([YayinEviID])
GO
ALTER TABLE [dbo].[tblKitap] CHECK CONSTRAINT [FK_tblKitap_tblYayinEvi]
GO
ALTER TABLE [dbo].[tblPromosyon]  WITH CHECK ADD  CONSTRAINT [FK_tblPromosyon_tblKitap] FOREIGN KEY([UrunId])
REFERENCES [dbo].[tblKitap] ([KitapID])
GO
ALTER TABLE [dbo].[tblPromosyon] CHECK CONSTRAINT [FK_tblPromosyon_tblKitap]
GO
ALTER TABLE [dbo].[tblPromosyon]  WITH CHECK ADD  CONSTRAINT [FK_tblPromosyon_tblKitapTur] FOREIGN KEY([KategoriId])
REFERENCES [dbo].[tblKitapTur] ([TurID])
GO
ALTER TABLE [dbo].[tblPromosyon] CHECK CONSTRAINT [FK_tblPromosyon_tblKitapTur]
GO
ALTER TABLE [dbo].[tblSatinAlinanlar]  WITH CHECK ADD  CONSTRAINT [FK_tblSatinAlinanlar_tblKitap] FOREIGN KEY([UrunID])
REFERENCES [dbo].[tblKitap] ([KitapID])
GO
ALTER TABLE [dbo].[tblSatinAlinanlar] CHECK CONSTRAINT [FK_tblSatinAlinanlar_tblKitap]
GO
ALTER TABLE [dbo].[tblSatinAlinanlar]  WITH CHECK ADD  CONSTRAINT [FK_tblSatinAlinanlar_tblKullanici] FOREIGN KEY([MusteriID])
REFERENCES [dbo].[tblKullanici] ([KullaniciID])
GO
ALTER TABLE [dbo].[tblSatinAlinanlar] CHECK CONSTRAINT [FK_tblSatinAlinanlar_tblKullanici]
GO
ALTER TABLE [dbo].[tblSepet]  WITH CHECK ADD  CONSTRAINT [FK_tblSepet_tblKitap] FOREIGN KEY([UrunId])
REFERENCES [dbo].[tblKitap] ([KitapID])
GO
ALTER TABLE [dbo].[tblSepet] CHECK CONSTRAINT [FK_tblSepet_tblKitap]
GO
ALTER TABLE [dbo].[tblSepet]  WITH CHECK ADD  CONSTRAINT [FK_tblSepet_tblKullanici1] FOREIGN KEY([KullaniciId])
REFERENCES [dbo].[tblKullanici] ([KullaniciID])
GO
ALTER TABLE [dbo].[tblSepet] CHECK CONSTRAINT [FK_tblSepet_tblKullanici1]
GO
ALTER TABLE [dbo].[tblSepet]  WITH CHECK ADD  CONSTRAINT [FK_tblSepet_tblZiyaretci1] FOREIGN KEY([ZiyaretciId])
REFERENCES [dbo].[tblZiyaretci] ([ZiyaretciID])
GO
ALTER TABLE [dbo].[tblSepet] CHECK CONSTRAINT [FK_tblSepet_tblZiyaretci1]
GO
ALTER TABLE [dbo].[tblAdmin]  WITH CHECK ADD  CONSTRAINT [UC_Ad] CHECK  ((len([Ad])<=(50)))
GO
ALTER TABLE [dbo].[tblAdmin] CHECK CONSTRAINT [UC_Ad]
GO
ALTER TABLE [dbo].[tblAdmin]  WITH CHECK ADD  CONSTRAINT [UC_Mail2] CHECK  ((len([Mail])<=(50)))
GO
ALTER TABLE [dbo].[tblAdmin] CHECK CONSTRAINT [UC_Mail2]
GO
ALTER TABLE [dbo].[tblAdmin]  WITH CHECK ADD  CONSTRAINT [UC_Soyad] CHECK  ((len([Soyad])<=(50)))
GO
ALTER TABLE [dbo].[tblAdmin] CHECK CONSTRAINT [UC_Soyad]
GO
ALTER TABLE [dbo].[tblKitap]  WITH CHECK ADD  CONSTRAINT [UC_Adet] CHECK  (([Adet]>=(0) AND [Adet]<=(5000)))
GO
ALTER TABLE [dbo].[tblKitap] CHECK CONSTRAINT [UC_Adet]
GO
ALTER TABLE [dbo].[tblKitap]  WITH CHECK ADD  CONSTRAINT [UC_BasimYili] CHECK  ((len([BasimYili])=(4)))
GO
ALTER TABLE [dbo].[tblKitap] CHECK CONSTRAINT [UC_BasimYili]
GO
ALTER TABLE [dbo].[tblKitap]  WITH CHECK ADD  CONSTRAINT [UC_ISBN] CHECK  ((len([ISBNNo])=(13)))
GO
ALTER TABLE [dbo].[tblKitap] CHECK CONSTRAINT [UC_ISBN]
GO
ALTER TABLE [dbo].[tblKitap]  WITH CHECK ADD  CONSTRAINT [UC_KitapAd] CHECK  ((len([KitapAdi])<=(100)))
GO
ALTER TABLE [dbo].[tblKitap] CHECK CONSTRAINT [UC_KitapAd]
GO
ALTER TABLE [dbo].[tblKitap]  WITH CHECK ADD  CONSTRAINT [UC_SayfaSayisi] CHECK  ((len([SayfaSayisi])>(0) AND len([SayfaSayisi])<(2147483648.)))
GO
ALTER TABLE [dbo].[tblKitap] CHECK CONSTRAINT [UC_SayfaSayisi]
GO
ALTER TABLE [dbo].[tblKitap]  WITH CHECK ADD  CONSTRAINT [UC_Yazar] CHECK  ((len([Yazar])<=(50)))
GO
ALTER TABLE [dbo].[tblKitap] CHECK CONSTRAINT [UC_Yazar]
GO
ALTER TABLE [dbo].[tblKitapTur]  WITH CHECK ADD  CONSTRAINT [UC_KitapTurAd] CHECK  ((len([TurAdi])<=(50)))
GO
ALTER TABLE [dbo].[tblKitapTur] CHECK CONSTRAINT [UC_KitapTurAd]
GO
ALTER TABLE [dbo].[tblKullanici]  WITH CHECK ADD  CONSTRAINT [UC_KullaniciAd] CHECK  ((len([Ad])<=(50)))
GO
ALTER TABLE [dbo].[tblKullanici] CHECK CONSTRAINT [UC_KullaniciAd]
GO
ALTER TABLE [dbo].[tblKullanici]  WITH CHECK ADD  CONSTRAINT [UC_KullaniciMail] CHECK  ((len([Mail])<=(50)))
GO
ALTER TABLE [dbo].[tblKullanici] CHECK CONSTRAINT [UC_KullaniciMail]
GO
ALTER TABLE [dbo].[tblKullanici]  WITH CHECK ADD  CONSTRAINT [UC_KullaniciSoyad] CHECK  ((len([Soyad])<=(50)))
GO
ALTER TABLE [dbo].[tblKullanici] CHECK CONSTRAINT [UC_KullaniciSoyad]
GO
ALTER TABLE [dbo].[tblSatinAlinanlar]  WITH CHECK ADD  CONSTRAINT [UC_SAAdedi] CHECK  (([SatinAlmaAdedi]>(0)))
GO
ALTER TABLE [dbo].[tblSatinAlinanlar] CHECK CONSTRAINT [UC_SAAdedi]
GO
ALTER TABLE [dbo].[tblSepet]  WITH CHECK ADD  CONSTRAINT [UC_SUAdedi] CHECK  (([SepettekiAdet]>(0)))
GO
ALTER TABLE [dbo].[tblSepet] CHECK CONSTRAINT [UC_SUAdedi]
GO
/****** Object:  StoredProcedure [dbo].[deneme]    Script Date: 5.04.2019 18:16:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[deneme](@urunKod int)
as
select top 10 k.KitapID, count(sa.UrunID)as KacAdetSatildi from tblKitap k 
inner join tblSatinAlinanlar sa on sa.UrunID=k.KitapID 
inner join FN_AlanlarinKodu(@urunKod) FNA ON FNA.MusteriID=sa.MusteriID
where sa.UrunID  not in(@urunKod)
group by sa.UrunID,k.KitapID 
order by KacAdetSatildi desc 
GO
/****** Object:  StoredProcedure [dbo].[EnCokSatisYapanKategori]    Script Date: 5.04.2019 18:16:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[EnCokSatisYapanKategori]
as
select top 1 k.TurAdi,sum(sd.SatinAlmaAdedi) as adet 
from tblSatinAlinanlar Sd inner join tblKitap U 
on Sd.UrunID=u.KitapID
inner join tblKitapTur as K
on U.TurID=k.TurID
group by k.TurAdi
order by Adet Desc
GO
/****** Object:  StoredProcedure [dbo].[Encoksatisyapilanurunler]    Script Date: 5.04.2019 18:16:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Encoksatisyapilanurunler]    --Ya da CREATE PROC StokDurumu 
AS
select top 5 sd.UrunId,u.KitapAdi,sd.UrunBirimFiyati, sum(sd.SatinAlmaAdedi) as adet
from tblSatinAlinanlar sd join tblKitap U On sd.UrunId=u.KitapID
group by sd.UrunId,u.KitapAdi, sd.UrunBirimFiyati
order by adet desc
GO
/****** Object:  StoredProcedure [dbo].[EnCokSepeteEklenenUrunler]    Script Date: 5.04.2019 18:16:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[EnCokSepeteEklenenUrunler]
as
select top 5 s.UrunId,u.KitapAdi,s.SepettekiAdet, sum(s.SepettekiAdet) as adet
from tblSepet S inner join tblKitap U
on s.UrunId=u.KitapID
group by s.UrunId,u.KitapAdi,s.SepettekiAdet
order by adet desc
GO
/****** Object:  StoredProcedure [dbo].[GunlukKayitOlanKisiSayisi]    Script Date: 5.04.2019 18:16:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GunlukKayitOlanKisiSayisi]
as
select k.KayitOlmaTarihi, count(k.KayitOlmaTarihi) as adet
from tblKullanici k

group by k.KayitOlmaTarihi 
GO
/****** Object:  StoredProcedure [dbo].[GunlukKitapSatisSayisi]    Script Date: 5.04.2019 18:16:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[GunlukKitapSatisSayisi]
as
select sd.SatinAlmaTarihi, sum(sd.SatinAlmaAdedi) as adet
from tblSatinAlinanlar sd
group by sd.SatinAlmaTarihi
GO
/****** Object:  StoredProcedure [dbo].[ister]    Script Date: 5.04.2019 18:16:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[ister](@urunKod int)
as
SELECT DISTINCT k.KitapID,k.KitapAdi,k.StokDurumu, k.Fiyati FROM tblKitap k
JOIN tblSatinAlinanlar S ON k.KitapID=s.UrunID
JOIN FN_AlanlarinKodu(@urunKod) FNA ON
FNA.MusteriID=S.MusteriID where k.KitapID not in(@urunKod)
GO
/****** Object:  StoredProcedure [dbo].[ToplamKitapSatis]    Script Date: 5.04.2019 18:16:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ToplamKitapSatis]
as
select sum(sd.SatinAlmaAdedi) 'ToplamSatis'
from tblSatinAlinanlar Sd

GO
/****** Object:  StoredProcedure [dbo].[ToplamKitapSatisGunluk]    Script Date: 5.04.2019 18:16:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ToplamKitapSatisGunluk]
as
select count(*) 'ToplamSatis'
from tblSatinAlinanlar Sd where sd.SatinAlmaTarihi=GETDATE()
GO
/****** Object:  StoredProcedure [dbo].[ToplamKullaniciKaydi]    Script Date: 5.04.2019 18:16:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ToplamKullaniciKaydi]
as
select count(*) 'ToplamKullanici'
from tblKullanici
GO
