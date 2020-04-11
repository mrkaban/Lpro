unit PodborZameni;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls, lclintf;

type

  { TfPodborZameni }

  TfPodborZameni = class(TForm)
    bBezopasnost: TButton;
    bCdZapKomleks: TButton;
    bSkachat: TButton;
    bCdProchIsoEm: TButton;
    bCdProchDvdmenu: TButton;
    bCdProchVossdan: TButton;
    bBezAv: TButton;
    bBezAvSprover: TButton;
    bBezAvBezprover: TButton;
    bBezRezKop: TButton;
    bBezRezkopDomKomp: TButton;
    bBezRezkopRabkomp: TButton;
    bBezShifr: TButton;
    bBezShifrFile: TButton;
    bBezShifrHdd: TButton;
    bBezParol: TButton;
    bBezParolHranPar: TButton;
    bBezParolSozdpar: TButton;
    bBezProch: TButton;
    bBezProchAnonbrow: TButton;
    bBezProchFiltr: TButton;
    bBezProchMonIzmFile: TButton;
    bBezProchBezdel: TButton;
    bGraf: TButton;
    bGrafGrafedit: TButton;
    bGrafGrafeditVector: TButton;
    bGrafGrafeditRedfot: TButton;
    bGrafGrafeditRedico: TButton;
    bGrafGrafeditRedkart: TButton;
    bGrafGrafeditIzdsys: TButton;
    bGrafSapr: TButton;
    bGrafSaprSolveSpace: TButton;
    bGrafSaprFreeCAD: TButton;
    bGrafSaprNaroCAD: TButton;
    bGrafSaprBRLCAD: TButton;
    bGrafSaprLibreCAD: TButton;
    bGrafSaprKiCad: TButton;
    bGrafSaprQucs: TButton;
    bGraf2D: TButton;
    bGraf2DPencil2d: TButton;
    bGraf2DPencil: TButton;
    bGraf2DTupi: TButton;
    bGraf2DSynfigStudio: TButton;
    bGraf3D: TButton;
    bGraf3DMakeHuman: TButton;
    bGraf3DSeamless3d: TButton;
    bGraf3DOpenFX: TButton;
    bGraf3DK3D: TButton;
    bGraf3DArtofIllusion: TButton;
    bGraf3DBlender: TButton;
    bGraf3DSweetHome3D: TButton;
    bGrafProsmotr: TButton;
    bGrafProsmotrNomacs: TButton;
    bGrafProsmotrAdvancedPhoto: TButton;
    bGrafProsmotrJMG: TButton;
    bGrafProsmotrImageGlass: TButton;
    bGrafPreobr: TButton;
    bGrafPreobrCaesium: TButton;
    bGrafPreobrConverseen: TButton;
    bGrafPreobrSIET: TButton;
    bDrugie: TButton;
    bDrugieObr: TButton;
    bDrugieObrMnemosyne: TButton;
    bDrugieObrMaxima: TButton;
    bDrugieObriTest: TButton;
    bDrugieObrScilab: TButton;
    bDrugieObrOpenTeacher: TButton;
    bDrugieObrDWSIM: TButton;
    bDrugieVirtpl: TButton;
    bDrugieVirtplSkyChart: TButton;
    bDrugieVirtplStellarium: TButton;
    bDrugieVirtplCelestia: TButton;
    bDrugieKat: TButton;
    bDrugieKatStuffOrganizer: TButton;
    bDrugieKatDataCrow: TButton;
    bDrugieKatAntMovieCatalog: TButton;
    bDrugieKatGCstar: TButton;
    bDrugieZam: TButton;
    bDrugieZamOutWiker: TButton;
    bDrugieZamRedNotebook: TButton;
    bDrugieZamPNotes: TButton;
    bDrugieZamQQwnNotes: TButton;
    bMultim: TButton;
    bMultimVosp: TButton;
    bMultimVospOnline: TButton;
    bMultimVospVideo: TButton;
    bMultimVospAudio: TButton;
    bMultimVospMedCentr: TButton;
    bMultimEdit: TButton;
    bMultimEditVlmc: TButton;
    bMultimEditAvidemux: TButton;
    bMultimEditShotcut: TButton;
    bMultimEditAudacity: TButton;
    bMultimEditWaveShop: TButton;
    bMultimKonvert: TButton;
    bMultimKonvertHandBrake: TButton;
    bMultimKonvertQWinFF: TButton;
    bMultimKonvertTEncoder: TButton;
    bMultimKonvertfreac: TButton;
    bMultimKonvertTAudioConverter: TButton;
    bMultimZahvat: TButton;
    bMultimZahvatOBS: TButton;
    bMultimZahvatFoxToolsShooter: TButton;
    bMultimZahvatGreenshot: TButton;
    bMultimZahvatShareX: TButton;
    bOffice: TButton;
    bOfficeFinance: TButton;
    bOfficeFinanceAnanas: TButton;
    bOfficeFinanceHomeBank: TButton;
    bOfficeFinanceMoneyManagerEx: TButton;
    bOfficeFinanceKMyMoney: TButton;
    bOfficeFinanceRepairCenter: TButton;
    bOfficeFinanceFakturama: TButton;
    bOfficeFinanceFramingWorkshop: TButton;
    bOfficeFinanceSysUchZayv: TButton;
    bOfficeFinanceMoiprodazhi: TButton;
    bOfficeAnalog: TButton;
    bOfficeAnalogONLYOFFICEDesktopEditors: TButton;
    bOfficeAnalogLibreOffice: TButton;
    bOfficeAnalogApacheOpenOffice: TButton;
    bOfficeAnalogCalligraGemini: TButton;
    bOfficePdf: TButton;
    bOfficePdfSumatraPDF: TButton;
    bOfficePdfCalibre: TButton;
    bOfficePdfTEBookConverter: TButton;
    bOfficePdfRedaktorpdf: TButton;
    bOfficePdfPDFsamBasic: TButton;
    bOfficePdfFB2: TButton;
    bOfficeScan: TButton;
    bOfficeScanNASP2: TButton;
    bOfficeScanVietOCR: TButton;
    bOfficeScanCognitiveOpenOCR: TButton;
    bOfficeScanPDFCreator: TButton;
    bOfficePlan: TButton;
    bOfficePlanGanttProject: TButton;
    bOfficePlanProjectLibre: TButton;
    bOfficePlanWindowsPlanner: TButton;
    bOfficePlanTaskUnifier: TButton;
    bOfficePlanTaskCoach: TButton;
    bOfficePlanMozillaSunbird: TButton;
    bOfficePlanTheTimelineProject: TButton;
    bOfficePlaOnepointProjectBasicEdition: TButton;
    bRazrab: TButton;
    bRazrabHtml: TButton;
    bRazrabHtmlBrackets: TButton;
    bRazrabHtmlBluefish: TButton;
    bRazrabHtmlBlueGriffon: TButton;
    bRazrabHtmlkodeWeave: TButton;
    bRazrabHtmlNotepad: TButton;
    bRazrabCpp: TButton;
    bRazrabCppWxDev: TButton;
    bRazrabCppCodeBlocks: TButton;
    bRazrabCppNetBeans: TButton;
    bRazrabCppXamarinStudio: TButton;
    bRazrabCppBluefish: TButton;
    bRazrabOp: TButton;
    bRazrabOpLazarus: TButton;
    bInternet: TButton;
    bInternetBrow: TButton;
    bInternetBrowMozillaFirefox: TButton;
    bInternetBrowOtterBrowser: TButton;
    bInternetBrowChromium: TButton;
    bInternetTalk: TButton;
    bInternetTalkKVIrc: TButton;
    bInternetTalkTkabber: TButton;
    bInternetTalkPidgin: TButton;
    bInternetTalkMozillaThunderbird: TButton;
    bInternetTalkMumble: TButton;
    bInternetTalkBeeBEEP: TButton;
    bInternetTalkLinphone: TButton;
    bInternetDown: TButton;
    bInternetDownClipGrab: TButton;
    bInternetDownFileZilla: TButton;
    bInternetDownJDownloader: TButton;
    bInternetDownFdm: TButton;
    bInternetDownqBittorrent: TButton;
    bInternetSetut: TButton;
    bInternetSetutWireshark: TButton;
    bInternetSetutNmap: TButton;
    bInternetSetutOpenVisualTraceroute: TButton;
    bInternetSetutSecurepointSSLVPNClient: TButton;
    bInternetSetutruWinMTR: TButton;
    bInternetSetutLinkChecker: TButton;
    bInternetSetuthttpres: TButton;
    bInternetSetutSimpleSitemapCreator: TButton;
    bInternetRss: TButton;
    bInternetRssRSSBandit: TButton;
    bInternetRssQuiteRSS: TButton;
    bInternetRssMozillaThunderbird: TButton;
    bUtility: TButton;
    bUtilityRar: TButton;
    bUtilityRarPeaZip: TButton;
    bUtilityRarFreeArc: TButton;
    bUtilityRar7Zip: TButton;
    bUtilitySystem: TButton;
    bUtilitySystemProcessHacker: TButton;
    bUtilitySystemUltraDefrag: TButton;
    bUtilitySystemBulkCrapUninstaller: TButton;
    bUtilitySystemSmartSystemRepiar: TButton;
    bUtilitySystemSysOptimizer: TButton;
    bUtilitySystemPerformanceMaintainer: TButton;
    bUtilitySystemAspia: TButton;
    bUtilitySystemHDDGuardian: TButton;
    bUtilitySystemDitto: TButton;
    bUtilityFile: TButton;
    bUtilityFileFreeFileSync: TButton;
    bUtilityFileWinMerge: TButton;
    bUtilityFileKickassUndelete: TButton;
    bUtilityFileDoubleCommander: TButton;
    bUtilityFileFileOptimizer: TButton;
    bUtilityFileDUFF: TButton;
    bUtilityProch: TButton;
    bUtilityProchCloseTheDoor: TButton;
    bUtilityProchAngryIPScanner: TButton;
    bUtilityProchiTALC: TButton;
    bUtilityProchUltraVNC: TButton;
    bUtilityProchwxHexEditor: TButton;
    bUtilityProchFontForge: TButton;
    bUtilityProchVirtualBox: TButton;
    Label1: TLabel;
    lProgramName: TLabel;
    vCdZapis: TButton;
    bCdProch: TButton;
    bCDDVD: TButton;
    procedure bBezAvBezproverClick(Sender: TObject);
    procedure bBezAvClick(Sender: TObject);
    procedure bBezAvSproverClick(Sender: TObject);
    procedure bBezopasnostClick(Sender: TObject);
    procedure bBezParolClick(Sender: TObject);
    procedure bBezParolHranParClick(Sender: TObject);
    procedure bBezParolSozdparClick(Sender: TObject);
    procedure bBezProchAnonbrowClick(Sender: TObject);
    procedure bBezProchBezdelClick(Sender: TObject);
    procedure bBezProchClick(Sender: TObject);
    procedure bBezProchFiltrClick(Sender: TObject);
    procedure bBezProchMonIzmFileClick(Sender: TObject);
    procedure bBezRezKopClick(Sender: TObject);
    procedure bBezRezkopDomKompClick(Sender: TObject);
    procedure bBezRezkopRabkompClick(Sender: TObject);
    procedure bBezShifrClick(Sender: TObject);
    procedure bBezShifrFileClick(Sender: TObject);
    procedure bBezShifrHddClick(Sender: TObject);
    procedure bCDDVDClick(Sender: TObject);
    procedure bCdProchClick(Sender: TObject);
    procedure bCdProchDvdmenuClick(Sender: TObject);
    procedure bCdProchIsoEmClick(Sender: TObject);
    procedure bCdProchVossdanClick(Sender: TObject);
    procedure bCdZapKomleksClick(Sender: TObject);
    procedure bDrugieClick(Sender: TObject);
    procedure bDrugieKatAntMovieCatalogClick(Sender: TObject);
    procedure bDrugieKatClick(Sender: TObject);
    procedure bDrugieKatDataCrowClick(Sender: TObject);
    procedure bDrugieKatGCstarClick(Sender: TObject);
    procedure bDrugieKatStuffOrganizerClick(Sender: TObject);
    procedure bDrugieObrClick(Sender: TObject);
    procedure bDrugieObrDWSIMClick(Sender: TObject);
    procedure bDrugieObriTestClick(Sender: TObject);
    procedure bDrugieObrMaximaClick(Sender: TObject);
    procedure bDrugieObrMnemosyneClick(Sender: TObject);
    procedure bDrugieObrOpenTeacherClick(Sender: TObject);
    procedure bDrugieObrScilabClick(Sender: TObject);
    procedure bDrugieVirtplCelestiaClick(Sender: TObject);
    procedure bDrugieVirtplClick(Sender: TObject);
    procedure bDrugieVirtplSkyChartClick(Sender: TObject);
    procedure bDrugieVirtplStellariumClick(Sender: TObject);
    procedure bDrugieZamClick(Sender: TObject);
    procedure bDrugieZamOutWikerClick(Sender: TObject);
    procedure bDrugieZamPNotesClick(Sender: TObject);
    procedure bDrugieZamQQwnNotesClick(Sender: TObject);
    procedure bDrugieZamRedNotebookClick(Sender: TObject);
    procedure bGraf2DClick(Sender: TObject);
    procedure bGraf2DPencil2dClick(Sender: TObject);
    procedure bGraf2DPencilClick(Sender: TObject);
    procedure bGraf2DSynfigStudioClick(Sender: TObject);
    procedure bGraf2DTupiClick(Sender: TObject);
    procedure bGraf3DArtofIllusionClick(Sender: TObject);
    procedure bGraf3DBlenderClick(Sender: TObject);
    procedure bGraf3DClick(Sender: TObject);
    procedure bGraf3DK3DClick(Sender: TObject);
    procedure bGraf3DMakeHumanClick(Sender: TObject);
    procedure bGraf3DOpenFXClick(Sender: TObject);
    procedure bGraf3DSeamless3dClick(Sender: TObject);
    procedure bGraf3DSweetHome3DClick(Sender: TObject);
    procedure bGrafClick(Sender: TObject);
    procedure bGrafGrafeditClick(Sender: TObject);
    procedure bGrafGrafeditIzdsysClick(Sender: TObject);
    procedure bGrafGrafeditRedfotClick(Sender: TObject);
    procedure bGrafGrafeditRedicoClick(Sender: TObject);
    procedure bGrafGrafeditRedkartClick(Sender: TObject);
    procedure bGrafGrafeditVectorClick(Sender: TObject);
    procedure bGrafPreobrCaesiumClick(Sender: TObject);
    procedure bGrafPreobrClick(Sender: TObject);
    procedure bGrafPreobrConverseenClick(Sender: TObject);
    procedure bGrafPreobrSIETClick(Sender: TObject);
    procedure bGrafProsmotrAdvancedPhotoClick(Sender: TObject);
    procedure bGrafProsmotrClick(Sender: TObject);
    procedure bGrafProsmotrImageGlassClick(Sender: TObject);
    procedure bGrafProsmotrJMGClick(Sender: TObject);
    procedure bGrafProsmotrNomacsClick(Sender: TObject);
    procedure bGrafSaprBRLCADClick(Sender: TObject);
    procedure bGrafSaprClick(Sender: TObject);
    procedure bGrafSaprFreeCADClick(Sender: TObject);
    procedure bGrafSaprKiCadClick(Sender: TObject);
    procedure bGrafSaprLibreCADClick(Sender: TObject);
    procedure bGrafSaprNaroCADClick(Sender: TObject);
    procedure bGrafSaprQucsClick(Sender: TObject);
    procedure bGrafSaprSolveSpaceClick(Sender: TObject);
    procedure bInternetBrowChromiumClick(Sender: TObject);
    procedure bInternetBrowClick(Sender: TObject);
    procedure bInternetBrowMozillaFirefoxClick(Sender: TObject);
    procedure bInternetBrowOtterBrowserClick(Sender: TObject);
    procedure bInternetClick(Sender: TObject);
    procedure bInternetDownClick(Sender: TObject);
    procedure bInternetDownClipGrabClick(Sender: TObject);
    procedure bInternetDownFdmClick(Sender: TObject);
    procedure bInternetDownFileZillaClick(Sender: TObject);
    procedure bInternetDownJDownloaderClick(Sender: TObject);
    procedure bInternetDownqBittorrentClick(Sender: TObject);
    procedure bInternetRssClick(Sender: TObject);
    procedure bInternetRssMozillaThunderbirdClick(Sender: TObject);
    procedure bInternetRssQuiteRSSClick(Sender: TObject);
    procedure bInternetRssRSSBanditClick(Sender: TObject);
    procedure bInternetSetutClick(Sender: TObject);
    procedure bInternetSetuthttpresClick(Sender: TObject);
    procedure bInternetSetutLinkCheckerClick(Sender: TObject);
    procedure bInternetSetutNmapClick(Sender: TObject);
    procedure bInternetSetutOpenVisualTracerouteClick(Sender: TObject);
    procedure bInternetSetutruWinMTRClick(Sender: TObject);
    procedure bInternetSetutSecurepointSSLVPNClientClick(Sender: TObject);
    procedure bInternetSetutSimpleSitemapCreatorClick(Sender: TObject);
    procedure bInternetSetutWiresharkClick(Sender: TObject);
    procedure bInternetTalkBeeBEEPClick(Sender: TObject);
    procedure bInternetTalkClick(Sender: TObject);
    procedure bInternetTalkKVIrcClick(Sender: TObject);
    procedure bInternetTalkLinphoneClick(Sender: TObject);
    procedure bInternetTalkMozillaThunderbirdClick(Sender: TObject);
    procedure bInternetTalkMumbleClick(Sender: TObject);
    procedure bInternetTalkPidginClick(Sender: TObject);
    procedure bInternetTalkTkabberClick(Sender: TObject);
    procedure bMultimClick(Sender: TObject);
    procedure bMultimEditAudacityClick(Sender: TObject);
    procedure bMultimEditAvidemuxClick(Sender: TObject);
    procedure bMultimEditClick(Sender: TObject);
    procedure bMultimEditShotcutClick(Sender: TObject);
    procedure bMultimEditVlmcClick(Sender: TObject);
    procedure bMultimEditWaveShopClick(Sender: TObject);
    procedure bMultimKonvertClick(Sender: TObject);
    procedure bMultimKonvertfreacClick(Sender: TObject);
    procedure bMultimKonvertHandBrakeClick(Sender: TObject);
    procedure bMultimKonvertQWinFFClick(Sender: TObject);
    procedure bMultimKonvertTAudioConverterClick(Sender: TObject);
    procedure bMultimKonvertTEncoderClick(Sender: TObject);
    procedure bMultimVospAudioClick(Sender: TObject);
    procedure bMultimVospClick(Sender: TObject);
    procedure bMultimVospMedCentrClick(Sender: TObject);
    procedure bMultimVospOnlineClick(Sender: TObject);
    procedure bMultimVospVideoClick(Sender: TObject);
    procedure bMultimZahvatClick(Sender: TObject);
    procedure bMultimZahvatFoxToolsShooterClick(Sender: TObject);
    procedure bMultimZahvatGreenshotClick(Sender: TObject);
    procedure bMultimZahvatOBSClick(Sender: TObject);
    procedure bMultimZahvatShareXClick(Sender: TObject);
    procedure bOfficeAnalogApacheOpenOfficeClick(Sender: TObject);
    procedure bOfficeAnalogCalligraGeminiClick(Sender: TObject);
    procedure bOfficeAnalogClick(Sender: TObject);
    procedure bOfficeAnalogLibreOfficeClick(Sender: TObject);
    procedure bOfficeAnalogONLYOFFICEDesktopEditorsClick(Sender: TObject);
    procedure bOfficeClick(Sender: TObject);
    procedure bOfficeFinanceAnanasClick(Sender: TObject);
    procedure bOfficeFinanceClick(Sender: TObject);
    procedure bOfficeFinanceFakturamaClick(Sender: TObject);
    procedure bOfficeFinanceFramingWorkshopClick(Sender: TObject);
    procedure bOfficeFinanceHomeBankClick(Sender: TObject);
    procedure bOfficeFinanceKMyMoneyClick(Sender: TObject);
    procedure bOfficeFinanceMoiprodazhiClick(Sender: TObject);
    procedure bOfficeFinanceMoneyManagerExClick(Sender: TObject);
    procedure bOfficeFinanceRepairCenterClick(Sender: TObject);
    procedure bOfficeFinanceSysUchZayvClick(Sender: TObject);
    procedure bOfficePdfCalibreClick(Sender: TObject);
    procedure bOfficePdfClick(Sender: TObject);
    procedure bOfficePdfFB2Click(Sender: TObject);
    procedure bOfficePdfPDFsamBasicClick(Sender: TObject);
    procedure bOfficePdfRedaktorpdfClick(Sender: TObject);
    procedure bOfficePdfSumatraPDFClick(Sender: TObject);
    procedure bOfficePdfTEBookConverterClick(Sender: TObject);
    procedure bOfficePlanClick(Sender: TObject);
    procedure bOfficePlanGanttProjectClick(Sender: TObject);
    procedure bOfficePlanMozillaSunbirdClick(Sender: TObject);
    procedure bOfficePlanProjectLibreClick(Sender: TObject);
    procedure bOfficePlanTaskCoachClick(Sender: TObject);
    procedure bOfficePlanTaskUnifierClick(Sender: TObject);
    procedure bOfficePlanTheTimelineProjectClick(Sender: TObject);
    procedure bOfficePlanWindowsPlannerClick(Sender: TObject);
    procedure bOfficePlaOnepointProjectBasicEditionClick(Sender: TObject);
    procedure bOfficeScanClick(Sender: TObject);
    procedure bOfficeScanCognitiveOpenOCRClick(Sender: TObject);
    procedure bOfficeScanNASP2Click(Sender: TObject);
    procedure bOfficeScanPDFCreatorClick(Sender: TObject);
    procedure bOfficeScanVietOCRClick(Sender: TObject);
    procedure bRazrabClick(Sender: TObject);
    procedure bRazrabCppBluefishClick(Sender: TObject);
    procedure bRazrabCppClick(Sender: TObject);
    procedure bRazrabCppCodeBlocksClick(Sender: TObject);
    procedure bRazrabCppNetBeansClick(Sender: TObject);
    procedure bRazrabCppWxDevClick(Sender: TObject);
    procedure bRazrabCppXamarinStudioClick(Sender: TObject);
    procedure bRazrabHtmlBluefishClick(Sender: TObject);
    procedure bRazrabHtmlBlueGriffonClick(Sender: TObject);
    procedure bRazrabHtmlBracketsClick(Sender: TObject);
    procedure bRazrabHtmlClick(Sender: TObject);
    procedure bRazrabHtmlkodeWeaveClick(Sender: TObject);
    procedure bRazrabHtmlNotepadClick(Sender: TObject);
    procedure bRazrabOpClick(Sender: TObject);
    procedure bRazrabOpLazarusClick(Sender: TObject);
    procedure bSkachatClick(Sender: TObject);
    procedure bUtilityClick(Sender: TObject);
    procedure bUtilityFileClick(Sender: TObject);
    procedure bUtilityFileDoubleCommanderClick(Sender: TObject);
    procedure bUtilityFileDUFFClick(Sender: TObject);
    procedure bUtilityFileFileOptimizerClick(Sender: TObject);
    procedure bUtilityFileFreeFileSyncClick(Sender: TObject);
    procedure bUtilityFileKickassUndeleteClick(Sender: TObject);
    procedure bUtilityFileWinMergeClick(Sender: TObject);
    procedure bUtilityProchAngryIPScannerClick(Sender: TObject);
    procedure bUtilityProchClick(Sender: TObject);
    procedure bUtilityProchCloseTheDoorClick(Sender: TObject);
    procedure bUtilityProchFontForgeClick(Sender: TObject);
    procedure bUtilityProchiTALCClick(Sender: TObject);
    procedure bUtilityProchUltraVNCClick(Sender: TObject);
    procedure bUtilityProchVirtualBoxClick(Sender: TObject);
    procedure bUtilityProchwxHexEditorClick(Sender: TObject);
    procedure bUtilityRar7ZipClick(Sender: TObject);
    procedure bUtilityRarClick(Sender: TObject);
    procedure bUtilityRarFreeArcClick(Sender: TObject);
    procedure bUtilityRarPeaZipClick(Sender: TObject);
    procedure bUtilitySystemAspiaClick(Sender: TObject);
    procedure bUtilitySystemBulkCrapUninstallerClick(Sender: TObject);
    procedure bUtilitySystemClick(Sender: TObject);
    procedure bUtilitySystemDittoClick(Sender: TObject);
    procedure bUtilitySystemHDDGuardianClick(Sender: TObject);
    procedure bUtilitySystemPerformanceMaintainerClick(Sender: TObject);
    procedure bUtilitySystemProcessHackerClick(Sender: TObject);
    procedure bUtilitySystemSmartSystemRepiarClick(Sender: TObject);
    procedure bUtilitySystemSysOptimizerClick(Sender: TObject);
    procedure bUtilitySystemUltraDefragClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure vCdZapisClick(Sender: TObject);
  private
    { private declarations }
  public
    UrlAdress : String;
    { public declarations }
  end;

var
  fPodborZameni: TfPodborZameni;

implementation

{$R *.lfm}

{ TfPodborZameni }

procedure TfPodborZameni.bBezopasnostClick(Sender: TObject);
begin
  bBezAv.Visible:=true;
  bBezRezKop.Visible:=true;
  bBezShifr.Visible:=true;
  bBezParol.Visible:=true;
  bBezProch.Visible:=true;
  vCdZapis.Visible:=False;
  bCdProch.Visible:=False;
  bCdZapKomleks.Visible:=False;
  bCdProchIsoEm.Visible:=False;
  bCdProchIsoEm.Visible:=False;
  bCdProchDvdmenu.Visible:=False;
  bCdProchVossdan.Visible:=False;
  bBezAvSprover.Visible:=False;
  bBezAvBezprover.Visible:=False;
  bBezRezkopDomKomp.Visible:=False;
  bBezRezkopRabkomp.Visible:=False;
  bBezShifrFile.Visible:=False;
  bBezShifrHdd.Visible:=False;
  bBezParolHranPar.Visible:=False;
  bBezParolSozdpar.Visible:=False;
  bBezProchAnonbrow.Visible:=False;
  bBezProchFiltr.Visible:=False;
  bBezProchMonIzmFile.Visible:=False;
  bBezProchBezdel.Visible:=False;
  bGrafGrafedit.Visible:=False;
  bGrafGrafeditVector.Visible:=False;
  bGrafGrafeditRedfot.Visible:=False;
  bGrafGrafeditRedico.Visible:=False;
  bGrafGrafeditRedkart.Visible:=False;
  bGrafGrafeditIzdsys.Visible:=False;
  bGrafSapr.Visible:=False;
  bGrafSaprSolveSpace.Visible:=False;
  bGrafSaprFreeCAD.Visible:=False;
  bGrafSaprNaroCAD.Visible:=False;
  bGrafSaprBRLCAD.Visible:=False;
  bGrafSaprLibreCAD.Visible:=False;
  bGrafSaprKiCad.Visible:=False;
  bGrafSaprQucs.Visible:=False;
  bGraf2D.Visible:=False;
  bGraf2DPencil2d.Visible:=False;
  bGraf2DPencil.Visible:=False;
  bGraf2DTupi.Visible:=False;
  bGraf2DSynfigStudio.Visible:=False;
  bGraf3D.Visible:=False;
  bGraf3DMakeHuman.Visible:=False;
  bGraf3DSeamless3d.Visible:=False;
  bGraf3DOpenFX.Visible:=False;
  bGraf3DK3D.Visible:=False;
  bGraf3DArtofIllusion.Visible:=False;
  bGraf3DBlender.Visible:=False;
  bGraf3DSweetHome3D.Visible:=False;
  bGrafProsmotr.Visible:=False;
  bGrafProsmotrNomacs.Visible:=False;
  bGrafProsmotrAdvancedPhoto.Visible:=False;
  bGrafProsmotrJMG.Visible:=False;
  bGrafProsmotrImageGlass.Visible:=False;
  bGrafPreobr.Visible:=False;
  bGrafPreobrCaesium.Visible:=False;
  bGrafPreobrConverseen.Visible:=False;
  bGrafPreobrSIET.Visible:=False;
  bDrugieObr.Visible:=False;
  bDrugieObrMnemosyne.Visible:=False;
  bDrugieObrMaxima.Visible:=False;
  bDrugieObriTest.Visible:=False;
  bDrugieObrScilab.Visible:=False;
  bDrugieObrOpenTeacher.Visible:=False;
  bDrugieObrDWSIM.Visible:=False;
  bDrugieVirtpl.Visible:=False;
  bDrugieVirtplSkyChart.Visible:=False;
  bDrugieVirtplStellarium.Visible:=False;
  bDrugieVirtplCelestia.Visible:=False;
  bDrugieKat.Visible:=False;
  bDrugieKatStuffOrganizer.Visible:=False;
  bDrugieKatDataCrow.Visible:=False;
  bDrugieKatAntMovieCatalog.Visible:=False;
  bDrugieKatGCstar.Visible:=False;
  bDrugieZam.Visible:=False;
  bDrugieZamOutWiker.Visible:=False;
  bDrugieZamRedNotebook.Visible:=False;
  bDrugieZamPNotes.Visible:=False;
  bDrugieZamQQwnNotes.Visible:=False;
  bMultimVosp.Visible:=False;
  bMultimVospOnline.Visible:=False;
  bMultimVospVideo.Visible:=False;
  bMultimVospAudio.Visible:=False;
  bMultimVospMedCentr.Visible:=False;
  bMultimEdit.Visible:=False;
  bMultimEditVlmc.Visible:=False;
  bMultimEditAvidemux.Visible:=False;
  bMultimEditShotcut.Visible:=False;
  bMultimEditAudacity.Visible:=False;
  bMultimEditWaveShop.Visible:=False;
  bMultimKonvert.Visible:=False;
  bMultimKonvertHandBrake.Visible:=False;
  bMultimKonvertQWinFF.Visible:=False;
  bMultimKonvertTEncoder.Visible:=False;
  bMultimKonvertfreac.Visible:=False;
  bMultimKonvertTAudioConverter.Visible:=False;
  bMultimZahvat.Visible:=False;
  bMultimZahvatOBS.Visible:=False;
  bMultimZahvatFoxToolsShooter.Visible:=False;
  bMultimZahvatGreenshot.Visible:=False;
  bMultimZahvatShareX.Visible:=False;
  bOfficeFinance.Visible:=False;
  bOfficeFinanceAnanas.Visible:=False;
  bOfficeFinanceHomeBank.Visible:=False;
  bOfficeFinanceMoneyManagerEx.Visible:=False;
  bOfficeFinanceKMyMoney.Visible:=False;
  bOfficeFinanceRepairCenter.Visible:=False;
  bOfficeFinanceFramingWorkshop.Visible:=False;
  bOfficeFinanceSysUchZayv.Visible:=False;
  bOfficeFinanceMoiprodazhi.Visible:=False;
  bOfficeFinanceFakturama.Visible:=False;
  bOfficeAnalog.Visible:=False;
  bOfficeAnalogONLYOFFICEDesktopEditors.Visible:=False;
  bOfficeAnalogLibreOffice.Visible:=False;
  bOfficeAnalogApacheOpenOffice.Visible:=False;
  bOfficeAnalogCalligraGemini.Visible:=False;
  bOfficePdf.Visible:=False;
  bOfficePdfSumatraPDF.Visible:=False;
  bOfficePdfCalibre.Visible:=False;
  bOfficePdfTEBookConverter.Visible:=False;
  bOfficePdfRedaktorpdf.Visible:=False;
  bOfficePdfPDFsamBasic.Visible:=False;
  bOfficePdfFB2.Visible:=False;
  bOfficeScan.Visible:=False;
  bOfficeScanNASP2.Visible:=False;
  bOfficeScanVietOCR.Visible:=False;
  bOfficeScanCognitiveOpenOCR.Visible:=False;
  bOfficeScanPDFCreator.Visible:=False;
  bOfficePlan.Visible:=False;
  bOfficePlanGanttProject.Visible:=False;
  bOfficePlanProjectLibre.Visible:=False;
  bOfficePlanWindowsPlanner.Visible:=False;
  bOfficePlanTaskUnifier.Visible:=False;
  bOfficePlanTaskCoach.Visible:=False;
  bOfficePlanMozillaSunbird.Visible:=False;
  bOfficePlanTheTimelineProject.Visible:=False;
  bOfficePlaOnepointProjectBasicEdition.Visible:=False;
  bRazrabHtml.Visible:=False;
  bRazrabHtmlBrackets.Visible:=False;
  bRazrabHtmlBluefish.Visible:=False;
  bRazrabHtmlBlueGriffon.Visible:=False;
  bRazrabHtmlkodeWeave.Visible:=False;
  bRazrabHtmlNotepad.Visible:=False;
  bRazrabCpp.Visible:=False;
  bRazrabCppWxDev.Visible:=False;
  bRazrabCppCodeBlocks.Visible:=False;
  bRazrabCppNetBeans.Visible:=False;
  bRazrabCppXamarinStudio.Visible:=False;
  bRazrabCppBluefish.Visible:=False;
  bRazrabOp.Visible:=False;
  bRazrabOpLazarus.Visible:=False;
  bInternetBrow.Visible:=False;
  bInternetBrowMozillaFirefox.Visible:=False;
  bInternetBrowOtterBrowser.Visible:=False;
  bInternetBrowChromium.Visible:=False;
  bInternetTalk.Visible:=False;
  bInternetTalkKVIrc.Visible:=False;
  bInternetTalkTkabber.Visible:=False;
  bInternetTalkPidgin.Visible:=False;
  bInternetTalkMozillaThunderbird.Visible:=False;
  bInternetTalkMumble.Visible:=False;
  bInternetTalkBeeBEEP.Visible:=False;
  bInternetTalkLinphone.Visible:=False;
  bInternetDown.Visible:=False;
  bInternetDownClipGrab.Visible:=False;
  bInternetDownFileZilla.Visible:=False;
  bInternetDownJDownloader.Visible:=False;
  bInternetDownFdm.Visible:=False;
  bInternetDownqBittorrent.Visible:=False;
  bInternetSetut.Visible:=False;
  bInternetSetutWireshark.Visible:=False;
  bInternetSetutNmap.Visible:=False;
  bInternetSetutOpenVisualTraceroute.Visible:=False;
  bInternetSetutSecurepointSSLVPNClient.Visible:=False;
  bInternetSetutruWinMTR.Visible:=False;
  bInternetSetutLinkChecker.Visible:=False;
  bInternetSetuthttpres.Visible:=False;
  bInternetSetutSimpleSitemapCreator.Visible:=False;
  bInternetRssRSSBandit.Visible:=False;
  bInternetRss.Visible:=False;
  bInternetRssQuiteRSS.Visible:=False;
  bInternetRssMozillaThunderbird.Visible:=False;
  bUtilityRar.Visible:=False;
  bUtilityRarPeaZip.Visible:=False;
  bUtilityRarFreeArc.Visible:=False;
  bUtilityRar7Zip.Visible:=False;
  bUtilitySystem.Visible:=False;
  bUtilitySystemProcessHacker.Visible:=False;
  bUtilitySystemUltraDefrag.Visible:=False;
  bUtilitySystemBulkCrapUninstaller.Visible:=False;
  bUtilitySystemSmartSystemRepiar.Visible:=False;
  bUtilitySystemSysOptimizer.Visible:=False;
  bUtilitySystemPerformanceMaintainer.Visible:=False;
  bUtilitySystemAspia.Visible:=False;
  bUtilitySystemHDDGuardian.Visible:=False;
  bUtilitySystemDitto.Visible:=False;
  bUtilityFile.Visible:=False;
  bUtilityFileFreeFileSync.Visible:=False;
  bUtilityFileWinMerge.Visible:=False;
  bUtilityFileKickassUndelete.Visible:=False;
  bUtilityFileDoubleCommander.Visible:=False;
  bUtilityFileFileOptimizer.Visible:=False;
  bUtilityFileDUFF.Visible:=False;
  bUtilityProch.Visible:=False;
  bUtilityProchCloseTheDoor.Visible:=False;
  bUtilityProchAngryIPScanner.Visible:=False;
  bUtilityProchiTALC.Visible:=False;
  bUtilityProchUltraVNC.Visible:=False;
  bUtilityProchwxHexEditor.Visible:=False;
  bUtilityProchFontForge.Visible:=False;
  bUtilityProchVirtualBox.Visible:=False;
end;

procedure TfPodborZameni.bBezParolClick(Sender: TObject);
begin
    bBezParolHranPar.Visible:=true;
    bBezParolSozdpar.Visible:=true;
    bBezRezkopDomKomp.Visible:=False;
    bBezRezkopRabkomp.Visible:=False;
    bBezAvSprover.Visible:=False;
    bBezAvBezprover.Visible:=False;
    bBezShifrFile.Visible:=False;
    bBezShifrHdd.Visible:=False;
    bBezProchAnonbrow.Visible:=False;
    bBezProchFiltr.Visible:=False;
    bBezProchMonIzmFile.Visible:=False;
    bBezProchBezdel.Visible:=False;
end;

procedure TfPodborZameni.bBezParolHranParClick(Sender: TObject);
begin
    lProgramName.Caption:='KeePass';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%B1%D0%B5%D0%B7%D0%BE%D0%BF%D0%B0%D1%81%D0%BD%D0%BE%D1%81%D1%82%D1%8C/%D0%BF%D0%B0%D1%80%D0%BE%D0%BB%D0%B8/keepass-%D1%85%D1%80%D0%B0%D0%BD%D0%B8%D1%82%D0%B5%D0%BB%D1%8C-%D0%BF%D0%B0%D1%80%D0%BE%D0%BB%D0%B5%D0%B9-%D1%85%D1%80%D0%B0%D0%BD%D0%B8%D0%BB%D0%B8%D1%89%D0%B5.html';
end;

procedure TfPodborZameni.bBezParolSozdparClick(Sender: TObject);
begin
    lProgramName.Caption:='PWGen';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%B1%D0%B5%D0%B7%D0%BE%D0%BF%D0%B0%D1%81%D0%BD%D0%BE%D1%81%D1%82%D1%8C/%D0%BF%D0%B0%D1%80%D0%BE%D0%BB%D0%B8/pwgen-%D0%BF%D1%80%D0%BE%D1%84%D0%B5%D1%81%D1%81%D0%B8%D0%BE%D0%BD%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D0%B9-%D0%B3%D0%B5%D0%BD%D0%B5%D1%80%D0%B0%D1%82%D0%BE%D1%80-%D0%BF%D0%B0%D1%80%D0%BE%D0%BB%D0%B5%D0%B9.html';
end;

procedure TfPodborZameni.bBezProchAnonbrowClick(Sender: TObject);
begin
    lProgramName.Caption:='Tor';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%B1%D0%B5%D0%B7%D0%BE%D0%BF%D0%B0%D1%81%D0%BD%D0%BE%D1%81%D1%82%D1%8C/%D0%BF%D1%80%D0%BE%D1%87%D0%B5%D0%B5/tor-%D0%B0%D0%BD%D0%BE%D0%BD%D0%B8%D0%BC%D0%BD%D1%8B%D0%B9-%D0%B1%D1%80%D0%B0%D1%83%D0%B7%D0%B5%D1%80-%D0%BD%D0%B0-%D1%80%D1%83%D1%81%D1%81%D0%BA%D0%BE%D0%BC.html';
end;

procedure TfPodborZameni.bBezProchBezdelClick(Sender: TObject);
begin
    lProgramName.Caption:='Eraser';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%B1%D0%B5%D0%B7%D0%BE%D0%BF%D0%B0%D1%81%D0%BD%D0%BE%D1%81%D1%82%D1%8C/%D0%BF%D1%80%D0%BE%D1%87%D0%B5%D0%B5/eraser-%D0%B1%D0%B5%D0%B7%D0%BE%D0%BF%D0%B0%D1%81%D0%BD%D0%BE%D0%B5-%D1%83%D0%B4%D0%B0%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5-%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D1%85-%D1%81-%D0%B4%D0%B8%D1%81%D0%BA%D0%B0.html';
end;

procedure TfPodborZameni.bBezProchClick(Sender: TObject);
begin
 bBezProchAnonbrow.Visible:=true;
 bBezProchFiltr.Visible:=true;
 bBezProchMonIzmFile.Visible:=true;
 bBezProchBezdel.Visible:=true;
 bBezAvSprover.Visible:=False;
 bBezAvBezprover.Visible:=False;
 bBezRezkopDomKomp.Visible:=False;
 bBezRezkopRabkomp.Visible:=False;
 bBezShifrFile.Visible:=False;
 bBezShifrHdd.Visible:=False;
 bBezParolHranPar.Visible:=False;
 bBezParolSozdpar.Visible:=False;
end;

procedure TfPodborZameni.bBezProchFiltrClick(Sender: TObject);
begin
    lProgramName.Caption:='PeerBlock';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%B1%D0%B5%D0%B7%D0%BE%D0%BF%D0%B0%D1%81%D0%BD%D0%BE%D1%81%D1%82%D1%8C/%D0%BF%D1%80%D0%BE%D1%87%D0%B5%D0%B5/peerblock-%D0%B1%D1%80%D0%B0%D0%BD%D0%B4%D0%BC%D0%B0%D1%83%D1%8D%D1%80.html';
end;

procedure TfPodborZameni.bBezProchMonIzmFileClick(Sender: TObject);
begin
    lProgramName.Caption:='DaemonFS';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%B1%D0%B5%D0%B7%D0%BE%D0%BF%D0%B0%D1%81%D0%BD%D0%BE%D1%81%D1%82%D1%8C/%D0%BF%D1%80%D0%BE%D1%87%D0%B5%D0%B5/daemonfs-%D0%BC%D0%BE%D0%BD%D0%B8%D1%82%D0%BE%D1%80%D0%B8%D0%BD%D0%B3-%D0%B8%D0%B7%D0%BC%D0%B5%D0%BD%D0%B5%D0%BD%D0%B8%D0%B9-%D1%84%D0%B0%D0%B9%D0%BB%D0%BE%D0%B2.html';
end;

procedure TfPodborZameni.bBezRezKopClick(Sender: TObject);
begin
    bBezRezkopDomKomp.Visible:=true;
    bBezRezkopRabkomp.Visible:=true;
    bBezAvSprover.Visible:=False;
    bBezAvBezprover.Visible:=False;
    bBezShifrFile.Visible:=False;
    bBezShifrHdd.Visible:=False;
    bBezParolHranPar.Visible:=False;
    bBezParolSozdpar.Visible:=False;
    bBezProchAnonbrow.Visible:=False;
    bBezProchFiltr.Visible:=False;
    bBezProchMonIzmFile.Visible:=False;
    bBezProchBezdel.Visible:=False;
end;

procedure TfPodborZameni.bBezRezkopDomKompClick(Sender: TObject);
begin
    lProgramName.Caption:='Cobian Backup';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%B1%D0%B5%D0%B7%D0%BE%D0%BF%D0%B0%D1%81%D0%BD%D0%BE%D1%81%D1%82%D1%8C/%D1%80%D0%B5%D0%B7%D0%B5%D1%80%D0%B2%D0%BD%D0%BE%D0%B5-%D0%BA%D0%BE%D0%BF%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5/cobian-backup-%D1%80%D0%B5%D0%B7%D0%B5%D1%80%D0%B2%D0%BD%D0%BE%D0%B5-%D0%BA%D0%BE%D0%BF%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5.html';
end;

procedure TfPodborZameni.bBezRezkopRabkompClick(Sender: TObject);
begin
    lProgramName.Caption:='Duplicati';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%B1%D0%B5%D0%B7%D0%BE%D0%BF%D0%B0%D1%81%D0%BD%D0%BE%D1%81%D1%82%D1%8C/%D1%80%D0%B5%D0%B7%D0%B5%D1%80%D0%B2%D0%BD%D0%BE%D0%B5-%D0%BA%D0%BE%D0%BF%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5/duplicati-%D0%B8%D0%BD%D0%BA%D1%80%D0%B5%D0%BC%D0%B5%D0%BD%D1%82%D0%BD%D0%BE%D0%B5-%D1%80%D0%B5%D0%B7%D0%B5%D1%80%D0%B2%D0%BD%D0%BE%D0%B5-%D0%BA%D0%BE%D0%BF%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5.html';
end;

procedure TfPodborZameni.bBezShifrClick(Sender: TObject);
begin
    bBezShifrFile.Visible:=true;
    bBezShifrHdd.Visible:=true;
    bBezRezkopDomKomp.Visible:=False;
    bBezRezkopRabkomp.Visible:=False;
    bBezAvSprover.Visible:=False;
    bBezAvBezprover.Visible:=False;
    bBezParolHranPar.Visible:=False;
    bBezParolSozdpar.Visible:=False;
    bBezProchAnonbrow.Visible:=False;
    bBezProchFiltr.Visible:=False;
    bBezProchMonIzmFile.Visible:=False;
    bBezProchBezdel.Visible:=False;
end;

procedure TfPodborZameni.bBezShifrFileClick(Sender: TObject);
begin
    lProgramName.Caption:='AxCrypt';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%B1%D0%B5%D0%B7%D0%BE%D0%BF%D0%B0%D1%81%D0%BD%D0%BE%D1%81%D1%82%D1%8C/%D1%88%D0%B8%D1%84%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5/axcrypt-%D1%88%D0%B8%D1%84%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5-%D1%84%D0%B0%D0%B9%D0%BB%D0%BE%D0%B2.html';
end;

procedure TfPodborZameni.bBezShifrHddClick(Sender: TObject);
begin
    lProgramName.Caption:='VeraCrypt';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%B1%D0%B5%D0%B7%D0%BE%D0%BF%D0%B0%D1%81%D0%BD%D0%BE%D1%81%D1%82%D1%8C/%D1%88%D0%B8%D1%84%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5/veracrypt-%D1%88%D0%B8%D1%84%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5-%D0%B6%D0%B5%D1%81%D1%82%D0%BA%D0%BE%D0%B3%D0%BE-%D0%B4%D0%B8%D1%81%D0%BA%D0%B0.html';
end;

procedure TfPodborZameni.bBezAvClick(Sender: TObject);
begin
 bBezAvSprover.Visible:=true;
 bBezAvBezprover.Visible:=true;
 bBezRezkopDomKomp.Visible:=False;
 bBezRezkopRabkomp.Visible:=False;
 bBezShifrFile.Visible:=False;
 bBezShifrHdd.Visible:=False;
 bBezParolHranPar.Visible:=False;
 bBezParolSozdpar.Visible:=False;
 bBezProchAnonbrow.Visible:=False;
 bBezProchFiltr.Visible:=False;
 bBezProchMonIzmFile.Visible:=False;
 bBezProchBezdel.Visible:=False;
end;

procedure TfPodborZameni.bBezAvBezproverClick(Sender: TObject);
begin
    lProgramName.Caption:='ClamWin';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%B1%D0%B5%D0%B7%D0%BE%D0%BF%D0%B0%D1%81%D0%BD%D0%BE%D1%81%D1%82%D1%8C/%D0%B0%D0%BD%D1%82%D0%B8%D0%B2%D0%B8%D1%80%D1%83%D1%81%D1%8B/clamwin-%D0%B0%D0%BD%D1%82%D0%B8%D0%B2%D0%B8%D1%80%D1%83%D1%81%D0%BD%D1%8B%D0%B9-%D1%81%D0%BA%D0%B0%D0%BD%D0%B5%D1%80-%D0%B1%D0%B5%D1%81%D0%BF%D0%BB%D0%B0%D1%82%D0%BD%D1%8B%D0%B9-%D0%B0%D0%BD%D1%82%D0%B8%D0%B2%D0%B8%D1%80%D1%83%D1%81.html';
end;

procedure TfPodborZameni.bBezAvSproverClick(Sender: TObject);
begin
    lProgramName.Caption:='Clam Sentinel';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%B1%D0%B5%D0%B7%D0%BE%D0%BF%D0%B0%D1%81%D0%BD%D0%BE%D1%81%D1%82%D1%8C/%D0%B0%D0%BD%D1%82%D0%B8%D0%B2%D0%B8%D1%80%D1%83%D1%81%D1%8B/clam-sentinel-%D0%B0%D0%BD%D1%82%D0%B8%D0%B2%D0%B8%D1%80%D1%83%D1%81%D0%BD%D1%8B%D0%B9-%D0%BC%D0%BE%D0%BD%D0%B8%D1%82%D0%BE%D1%80-%D1%80%D0%B5%D0%B7%D0%B8%D0%B4%D0%B5%D0%BD%D1%82%D0%BD%D1%8B%D0%B9.html';
end;

procedure TfPodborZameni.bCDDVDClick(Sender: TObject);
begin
  vCdZapis.Visible:=true;
  bCdProch.Visible:=true;
  bBezAv.Visible:=False;
  bBezAvSprover.Visible:=False;
  bBezAvBezprover.Visible:=False;
  bBezRezKop.Visible:=False;
  bBezRezkopDomKomp.Visible:=False;
  bBezRezkopRabkomp.Visible:=False;
  bBezShifrFile.Visible:=False;
  bBezShifrHdd.Visible:=False;
  bBezShifr.Visible:=False;
  bBezParol.Visible:=False;
  bBezParolHranPar.Visible:=False;
  bBezParolSozdpar.Visible:=False;
  bBezProch.Visible:=False;
  bBezProchAnonbrow.Visible:=False;
  bBezProchFiltr.Visible:=False;
  bBezProchMonIzmFile.Visible:=False;
  bBezProchBezdel.Visible:=False;
  bGrafGrafedit.Visible:=False;
  bGrafGrafeditVector.Visible:=False;
  bGrafGrafeditRedfot.Visible:=False;
  bGrafGrafeditRedico.Visible:=False;
  bGrafGrafeditRedkart.Visible:=False;
  bGrafGrafeditIzdsys.Visible:=False;
  bGrafSapr.Visible:=False;
  bGrafSaprSolveSpace.Visible:=False;
  bGrafSaprFreeCAD.Visible:=False;
  bGrafSaprNaroCAD.Visible:=False;
  bGrafSaprBRLCAD.Visible:=False;
  bGrafSaprLibreCAD.Visible:=False;
  bGrafSaprKiCad.Visible:=False;
  bGrafSaprQucs.Visible:=False;
  bGraf2D.Visible:=False;
  bGraf2DPencil2d.Visible:=False;
  bGraf2DPencil.Visible:=False;
  bGraf2DTupi.Visible:=False;
  bGraf2DSynfigStudio.Visible:=False;
  bGraf3D.Visible:=False;
  bGraf3DMakeHuman.Visible:=False;
  bGraf3DSeamless3d.Visible:=False;
  bGraf3DOpenFX.Visible:=False;
  bGraf3DK3D.Visible:=False;
  bGraf3DArtofIllusion.Visible:=False;
  bGraf3DBlender.Visible:=False;
  bGraf3DSweetHome3D.Visible:=False;
  bGrafProsmotr.Visible:=False;
  bGrafProsmotrNomacs.Visible:=False;
  bGrafProsmotrAdvancedPhoto.Visible:=False;
  bGrafProsmotrJMG.Visible:=False;
  bGrafProsmotrImageGlass.Visible:=False;
  bGrafPreobr.Visible:=False;
  bGrafPreobrCaesium.Visible:=False;
  bGrafPreobrConverseen.Visible:=False;
  bGrafPreobrSIET.Visible:=False;
  bDrugieObrMnemosyne.Visible:=False;
  bDrugieObrMaxima.Visible:=False;
  bDrugieObriTest.Visible:=False;
  bDrugieObrScilab.Visible:=False;
  bDrugieObrOpenTeacher.Visible:=False;
  bDrugieObrDWSIM.Visible:=False;
  bDrugieObr.Visible:=False;
  bDrugieVirtpl.Visible:=False;
  bDrugieVirtplSkyChart.Visible:=False;
  bDrugieVirtplStellarium.Visible:=False;
  bDrugieVirtplCelestia.Visible:=False;
  bDrugieKat.Visible:=False;
  bDrugieKatStuffOrganizer.Visible:=False;
  bDrugieKatDataCrow.Visible:=False;
  bDrugieKatAntMovieCatalog.Visible:=False;
  bDrugieKatGCstar.Visible:=False;
  bDrugieZam.Visible:=False;
  bDrugieZamOutWiker.Visible:=False;
  bDrugieZamRedNotebook.Visible:=False;
  bDrugieZamPNotes.Visible:=False;
  bDrugieZamQQwnNotes.Visible:=False;
  bMultimVosp.Visible:=False;
  bMultimVospOnline.Visible:=False;
  bMultimVospVideo.Visible:=False;
  bMultimVospAudio.Visible:=False;
  bMultimVospMedCentr.Visible:=False;
  bMultimEdit.Visible:=False;
  bMultimEditVlmc.Visible:=False;
  bMultimEditAvidemux.Visible:=False;
  bMultimEditShotcut.Visible:=False;
  bMultimEditAudacity.Visible:=False;
  bMultimEditWaveShop.Visible:=False;
  bMultimKonvert.Visible:=False;
  bMultimKonvertHandBrake.Visible:=False;
  bMultimKonvertQWinFF.Visible:=False;
  bMultimKonvertTEncoder.Visible:=False;
  bMultimKonvertfreac.Visible:=False;
  bMultimKonvertTAudioConverter.Visible:=False;
  bMultimZahvat.Visible:=False;
  bMultimZahvatOBS.Visible:=False;
  bMultimZahvatFoxToolsShooter.Visible:=False;
  bMultimZahvatGreenshot.Visible:=False;
  bMultimZahvatShareX.Visible:=False;
  bOfficeFinance.Visible:=False;
  bOfficeFinanceAnanas.Visible:=False;
  bOfficeFinanceHomeBank.Visible:=False;
  bOfficeFinanceMoneyManagerEx.Visible:=False;
  bOfficeFinanceKMyMoney.Visible:=False;
  bOfficeFinanceRepairCenter.Visible:=False;
  bOfficeFinanceFramingWorkshop.Visible:=False;
  bOfficeFinanceSysUchZayv.Visible:=False;
  bOfficeFinanceMoiprodazhi.Visible:=False;
  bOfficeFinanceFakturama.Visible:=False;
  bOfficeAnalog.Visible:=False;
  bOfficeAnalogONLYOFFICEDesktopEditors.Visible:=False;
  bOfficeAnalogLibreOffice.Visible:=False;
  bOfficeAnalogApacheOpenOffice.Visible:=False;
  bOfficeAnalogCalligraGemini.Visible:=False;
  bOfficePdf.Visible:=False;
  bOfficePdfSumatraPDF.Visible:=False;
  bOfficePdfCalibre.Visible:=False;
  bOfficePdfTEBookConverter.Visible:=False;
  bOfficePdfRedaktorpdf.Visible:=False;
  bOfficePdfPDFsamBasic.Visible:=False;
  bOfficePdfFB2.Visible:=False;
  bOfficeScanNASP2.Visible:=False;
  bOfficeScan.Visible:=False;
  bOfficeScanVietOCR.Visible:=False;
  bOfficeScanCognitiveOpenOCR.Visible:=False;
  bOfficeScanPDFCreator.Visible:=False;
  bOfficePlan.Visible:=False;
  bOfficePlanGanttProject.Visible:=False;
  bOfficePlanProjectLibre.Visible:=False;
  bOfficePlanWindowsPlanner.Visible:=False;
  bOfficePlanTaskUnifier.Visible:=False;
  bOfficePlanTaskCoach.Visible:=False;
  bOfficePlanMozillaSunbird.Visible:=False;
  bOfficePlanTheTimelineProject.Visible:=False;
  bOfficePlaOnepointProjectBasicEdition.Visible:=False;
  bRazrabHtml.Visible:=False;
  bRazrabHtmlBrackets.Visible:=False;
  bRazrabHtmlBluefish.Visible:=False;
  bRazrabHtmlBlueGriffon.Visible:=False;
  bRazrabHtmlkodeWeave.Visible:=False;
  bRazrabHtmlNotepad.Visible:=False;
  bRazrabCpp.Visible:=False;
  bRazrabCppWxDev.Visible:=False;
  bRazrabCppCodeBlocks.Visible:=False;
  bRazrabCppNetBeans.Visible:=False;
  bRazrabCppXamarinStudio.Visible:=False;
  bRazrabCppBluefish.Visible:=False;
  bRazrabOp.Visible:=False;
  bRazrabOpLazarus.Visible:=False;
  bInternetBrow.Visible:=False;
  bInternetBrowMozillaFirefox.Visible:=False;
  bInternetBrowOtterBrowser.Visible:=False;
  bInternetBrowChromium.Visible:=False;
  bInternetTalk.Visible:=False;
  bInternetTalkKVIrc.Visible:=False;
  bInternetTalkTkabber.Visible:=False;
  bInternetTalkPidgin.Visible:=False;
  bInternetTalkMozillaThunderbird.Visible:=False;
  bInternetTalkMumble.Visible:=False;
  bInternetTalkBeeBEEP.Visible:=False;
  bInternetTalkLinphone.Visible:=False;
  bInternetDown.Visible:=False;
  bInternetDownClipGrab.Visible:=False;
  bInternetDownFileZilla.Visible:=False;
  bInternetDownJDownloader.Visible:=False;
  bInternetDownFdm.Visible:=False;
  bInternetDownqBittorrent.Visible:=False;
  bInternetSetut.Visible:=False;
  bInternetSetutWireshark.Visible:=False;
  bInternetSetutNmap.Visible:=False;
  bInternetSetutOpenVisualTraceroute.Visible:=False;
  bInternetSetutSecurepointSSLVPNClient.Visible:=False;
  bInternetSetutruWinMTR.Visible:=False;
  bInternetSetutLinkChecker.Visible:=False;
  bInternetSetuthttpres.Visible:=False;
  bInternetSetutSimpleSitemapCreator.Visible:=False;
  bInternetRssRSSBandit.Visible:=False;
  bInternetRss.Visible:=False;
  bInternetRssQuiteRSS.Visible:=False;
  bInternetRssMozillaThunderbird.Visible:=False;
  bUtilityRar.Visible:=False;
  bUtilityRarPeaZip.Visible:=False;
  bUtilityRarFreeArc.Visible:=False;
  bUtilityRar7Zip.Visible:=False;
  bUtilitySystem.Visible:=False;
  bUtilitySystemProcessHacker.Visible:=False;
  bUtilitySystemUltraDefrag.Visible:=False;
  bUtilitySystemBulkCrapUninstaller.Visible:=False;
  bUtilitySystemSmartSystemRepiar.Visible:=False;
  bUtilitySystemSysOptimizer.Visible:=False;
  bUtilitySystemPerformanceMaintainer.Visible:=False;
  bUtilitySystemAspia.Visible:=False;
  bUtilitySystemHDDGuardian.Visible:=False;
  bUtilitySystemDitto.Visible:=False;
  bUtilityFile.Visible:=False;
  bUtilityFileFreeFileSync.Visible:=False;
  bUtilityFileWinMerge.Visible:=False;
  bUtilityFileKickassUndelete.Visible:=False;
  bUtilityFileDoubleCommander.Visible:=False;
  bUtilityFileFileOptimizer.Visible:=False;
  bUtilityFileDUFF.Visible:=False;
  bUtilityProch.Visible:=False;
  bUtilityProchCloseTheDoor.Visible:=False;
  bUtilityProchAngryIPScanner.Visible:=False;
  bUtilityProchiTALC.Visible:=False;
  bUtilityProchUltraVNC.Visible:=False;
  bUtilityProchwxHexEditor.Visible:=False;
  bUtilityProchFontForge.Visible:=False;
  bUtilityProchVirtualBox.Visible:=False;
end;

procedure TfPodborZameni.bCdProchClick(Sender: TObject);
begin
  bCdProchIsoEm.Visible:=true;
  bCdProchDvdmenu.Visible:=true;
  bCdProchVossdan.Visible:=true;
  bCdZapKomleks.Visible:=False;
end;

procedure TfPodborZameni.bCdProchDvdmenuClick(Sender: TObject);
begin
    lProgramName.Caption:='DVDStyler';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/cd-dvd/%D0%BF%D1%80%D0%BE%D1%87%D0%B5%D0%B5/dvdstyler-%D0%B1%D0%B5%D1%81%D0%BF%D0%BB%D0%B0%D1%82%D0%BD%D0%BE%D0%B5-%D0%BF%D1%80%D0%B8%D0%BB%D0%BE%D0%B6%D0%B5%D0%BD%D0%B8%D0%B5-%D0%B4%D0%BB%D1%8F-%D0%B0%D0%B2%D1%82%D0%BE%D1%80%D0%B8%D0%BD%D0%B3%D0%B0-dvd.html';
end;

procedure TfPodborZameni.bCdProchIsoEmClick(Sender: TObject);
begin
    lProgramName.Caption:='WinCDEmu';
     UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/cd-dvd/%D0%BF%D1%80%D0%BE%D1%87%D0%B5%D0%B5/wincdemu-iso-%D1%8D%D0%BC%D1%83%D0%BB%D1%8F%D1%82%D0%BE%D1%80.html';

end;

procedure TfPodborZameni.bCdProchVossdanClick(Sender: TObject);
begin
    lProgramName.Caption:='dvdisaster';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/cd-dvd/%D0%BF%D1%80%D0%BE%D1%87%D0%B5%D0%B5/dvdisaster-%D0%B2%D0%BE%D1%81%D1%81%D1%82%D0%B0%D0%BD%D0%BE%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5-%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D1%85-%D1%81-%D0%BF%D0%BE%D0%B2%D1%80%D0%B5%D0%B6%D0%B4%D1%91%D0%BD%D0%BD%D0%BE%D0%B3%D0%BE-%D0%BE%D0%BF%D1%82%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%BE%D0%B3%D0%BE-%D0%B4%D0%B8%D1%81%D0%BA%D0%B0.html';
end;

procedure TfPodborZameni.bCdZapKomleksClick(Sender: TObject);
begin
    lProgramName.Caption:='InfraRecorder';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/cd-dvd/%D0%B7%D0%B0%D0%BF%D0%B8%D1%81%D1%8C/infrarecorder-%D0%B1%D0%B5%D1%81%D0%BF%D0%BB%D0%B0%D1%82%D0%BD%D0%B0%D1%8F-%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D0%B0-%D0%B4%D0%BB%D1%8F-%D0%B7%D0%B0%D0%BF%D0%B8%D1%81%D0%B8-%D0%B4%D0%B8%D1%81%D0%BA%D0%BE%D0%B2.html';
end;

procedure TfPodborZameni.bDrugieClick(Sender: TObject);
begin
  bDrugieObr.Visible:=true;
  bDrugieVirtpl.Visible:=true;
  bDrugieKat.Visible:=true;
  bDrugieZam.Visible:=true;
  vCdZapis.Visible:=False;
  bCdProch.Visible:=False;
  bBezAv.Visible:=False;
  bBezAvSprover.Visible:=False;
  bBezAvBezprover.Visible:=False;
  bBezRezKop.Visible:=False;
  bBezRezkopDomKomp.Visible:=False;
  bBezRezkopRabkomp.Visible:=False;
  bBezShifrFile.Visible:=False;
  bBezShifrHdd.Visible:=False;
  bBezShifr.Visible:=False;
  bBezParol.Visible:=False;
  bBezParolHranPar.Visible:=False;
  bBezParolSozdpar.Visible:=False;
  bBezProch.Visible:=False;
  bBezProchAnonbrow.Visible:=False;
  bBezProchFiltr.Visible:=False;
  bBezProchMonIzmFile.Visible:=False;
  bBezProchBezdel.Visible:=False;
  bGrafGrafedit.Visible:=False;
  bGrafGrafeditVector.Visible:=False;
  bGrafGrafeditRedfot.Visible:=False;
  bGrafGrafeditRedico.Visible:=False;
  bGrafGrafeditRedkart.Visible:=False;
  bGrafGrafeditIzdsys.Visible:=False;
  bGrafSapr.Visible:=False;
  bGrafSaprSolveSpace.Visible:=False;
  bGrafSaprFreeCAD.Visible:=False;
  bGrafSaprNaroCAD.Visible:=False;
  bGrafSaprBRLCAD.Visible:=False;
  bGrafSaprLibreCAD.Visible:=False;
  bGrafSaprKiCad.Visible:=False;
  bGrafSaprQucs.Visible:=False;
  bGraf2D.Visible:=False;
  bGraf2DPencil2d.Visible:=False;
  bGraf2DPencil.Visible:=False;
  bGraf2DTupi.Visible:=False;
  bGraf2DSynfigStudio.Visible:=False;
  bGraf3D.Visible:=False;
  bGraf3DMakeHuman.Visible:=False;
  bGraf3DSeamless3d.Visible:=False;
  bGraf3DOpenFX.Visible:=False;
  bGraf3DK3D.Visible:=False;
  bGraf3DArtofIllusion.Visible:=False;
  bGraf3DBlender.Visible:=False;
  bGraf3DSweetHome3D.Visible:=False;
  bGrafProsmotr.Visible:=False;
  bGrafProsmotrNomacs.Visible:=False;
  bGrafProsmotrAdvancedPhoto.Visible:=False;
  bGrafProsmotrJMG.Visible:=False;
  bGrafProsmotrImageGlass.Visible:=False;
  bGrafPreobr.Visible:=False;
  bGrafPreobrCaesium.Visible:=False;
  bGrafPreobrConverseen.Visible:=False;
  bGrafPreobrSIET.Visible:=False;
  bDrugieObrMnemosyne.Visible:=False;
  bDrugieObrMaxima.Visible:=False;
  bDrugieObriTest.Visible:=False;
  bDrugieObrScilab.Visible:=False;
  bDrugieObrOpenTeacher.Visible:=False;
  bDrugieObrDWSIM.Visible:=False;
  bDrugieVirtplSkyChart.Visible:=False;
  bDrugieVirtplStellarium.Visible:=False;
  bDrugieVirtplCelestia.Visible:=False;
  bDrugieKatStuffOrganizer.Visible:=False;
  bDrugieKatDataCrow.Visible:=False;
  bDrugieKatAntMovieCatalog.Visible:=False;
  bDrugieKatGCstar.Visible:=False;
  bDrugieZamOutWiker.Visible:=False;
  bDrugieZamRedNotebook.Visible:=False;
  bDrugieZamPNotes.Visible:=False;
  bDrugieZamQQwnNotes.Visible:=False;
  bMultimVosp.Visible:=False;
  bMultimVospOnline.Visible:=False;
  bMultimVospVideo.Visible:=False;
  bMultimVospAudio.Visible:=False;
  bMultimVospMedCentr.Visible:=False;
  bMultimEdit.Visible:=False;
  bMultimEditVlmc.Visible:=False;
  bMultimEditAvidemux.Visible:=False;
  bMultimEditShotcut.Visible:=False;
  bMultimEditAudacity.Visible:=False;
  bMultimEditWaveShop.Visible:=False;
  bMultimKonvert.Visible:=False;
  bMultimKonvertHandBrake.Visible:=False;
  bMultimKonvertQWinFF.Visible:=False;
  bMultimKonvertTEncoder.Visible:=False;
  bMultimKonvertfreac.Visible:=False;
  bMultimKonvertTAudioConverter.Visible:=False;
  bMultimZahvat.Visible:=False;
  bMultimZahvatOBS.Visible:=False;
  bMultimZahvatFoxToolsShooter.Visible:=False;
  bMultimZahvatGreenshot.Visible:=False;
  bMultimZahvatShareX.Visible:=False;
  bOfficeFinance.Visible:=False;
  bOfficeFinanceAnanas.Visible:=False;
  bOfficeFinanceHomeBank.Visible:=False;
  bOfficeFinanceMoneyManagerEx.Visible:=False;
  bOfficeFinanceKMyMoney.Visible:=False;
  bOfficeFinanceRepairCenter.Visible:=False;
  bOfficeFinanceFramingWorkshop.Visible:=False;
  bOfficeFinanceSysUchZayv.Visible:=False;
  bOfficeFinanceMoiprodazhi.Visible:=False;
  bOfficeFinanceFakturama.Visible:=False;
  bOfficeAnalog.Visible:=False;
  bOfficeAnalogONLYOFFICEDesktopEditors.Visible:=False;
  bOfficeAnalogLibreOffice.Visible:=False;
  bOfficeAnalogApacheOpenOffice.Visible:=False;
  bOfficeAnalogCalligraGemini.Visible:=False;
  bOfficePdf.Visible:=False;
  bOfficePdfSumatraPDF.Visible:=False;
  bOfficePdfCalibre.Visible:=False;
  bOfficePdfTEBookConverter.Visible:=False;
  bOfficePdfRedaktorpdf.Visible:=False;
  bOfficePdfPDFsamBasic.Visible:=False;
  bOfficePdfFB2.Visible:=False;
  bOfficeScanNASP2.Visible:=False;
  bOfficeScan.Visible:=False;
  bOfficeScanVietOCR.Visible:=False;
  bOfficeScanCognitiveOpenOCR.Visible:=False;
  bOfficeScanPDFCreator.Visible:=False;
  bOfficePlan.Visible:=False;
  bOfficePlanGanttProject.Visible:=False;
  bOfficePlanProjectLibre.Visible:=False;
  bOfficePlanWindowsPlanner.Visible:=False;
  bOfficePlanTaskUnifier.Visible:=False;
  bOfficePlanTaskCoach.Visible:=False;
  bOfficePlanMozillaSunbird.Visible:=False;
  bOfficePlanTheTimelineProject.Visible:=False;
  bOfficePlaOnepointProjectBasicEdition.Visible:=False;
  bRazrabHtml.Visible:=False;
  bRazrabHtmlBrackets.Visible:=False;
  bRazrabHtmlBluefish.Visible:=False;
  bRazrabHtmlBlueGriffon.Visible:=False;
  bRazrabHtmlkodeWeave.Visible:=False;
  bRazrabHtmlNotepad.Visible:=False;
  bRazrabCpp.Visible:=False;
  bRazrabCppWxDev.Visible:=False;
  bRazrabCppCodeBlocks.Visible:=False;
  bRazrabCppNetBeans.Visible:=False;
  bRazrabCppXamarinStudio.Visible:=False;
  bRazrabCppBluefish.Visible:=False;
  bRazrabOp.Visible:=False;
  bRazrabOpLazarus.Visible:=False;
  bInternetBrow.Visible:=False;
  bInternetBrowMozillaFirefox.Visible:=False;
  bInternetBrowOtterBrowser.Visible:=False;
  bInternetBrowChromium.Visible:=False;
  bInternetTalk.Visible:=False;
  bInternetTalkKVIrc.Visible:=False;
  bInternetTalkTkabber.Visible:=False;
  bInternetTalkPidgin.Visible:=False;
  bInternetTalkMozillaThunderbird.Visible:=False;
  bInternetTalkMumble.Visible:=False;
  bInternetTalkBeeBEEP.Visible:=False;
  bInternetTalkLinphone.Visible:=False;
  bInternetDown.Visible:=False;
  bInternetDownClipGrab.Visible:=False;
  bInternetDownFileZilla.Visible:=False;
  bInternetDownJDownloader.Visible:=False;
  bInternetDownFdm.Visible:=False;
  bInternetDownqBittorrent.Visible:=False;
  bInternetSetut.Visible:=False;
  bInternetSetutWireshark.Visible:=False;
  bInternetSetutNmap.Visible:=False;
  bInternetSetutOpenVisualTraceroute.Visible:=False;
  bInternetSetutSecurepointSSLVPNClient.Visible:=False;
  bInternetSetutruWinMTR.Visible:=False;
  bInternetSetutLinkChecker.Visible:=False;
  bInternetSetuthttpres.Visible:=False;
  bInternetSetutSimpleSitemapCreator.Visible:=False;
  bInternetRssRSSBandit.Visible:=False;
  bInternetRss.Visible:=False;
  bInternetRssQuiteRSS.Visible:=False;
  bInternetRssMozillaThunderbird.Visible:=False;
  bUtilityRar.Visible:=False;
  bUtilityRarPeaZip.Visible:=False;
  bUtilityRarFreeArc.Visible:=False;
  bUtilityRar7Zip.Visible:=False;
  bUtilitySystem.Visible:=False;
  bUtilitySystemProcessHacker.Visible:=False;
  bUtilitySystemUltraDefrag.Visible:=False;
  bUtilitySystemBulkCrapUninstaller.Visible:=False;
  bUtilitySystemSmartSystemRepiar.Visible:=False;
  bUtilitySystemSysOptimizer.Visible:=False;
  bUtilitySystemPerformanceMaintainer.Visible:=False;
  bUtilitySystemAspia.Visible:=False;
  bUtilitySystemHDDGuardian.Visible:=False;
  bUtilitySystemDitto.Visible:=False;
  bUtilityFile.Visible:=False;
  bUtilityFileFreeFileSync.Visible:=False;
  bUtilityFileWinMerge.Visible:=False;
  bUtilityFileKickassUndelete.Visible:=False;
  bUtilityFileDoubleCommander.Visible:=False;
  bUtilityFileFileOptimizer.Visible:=False;
  bUtilityFileDUFF.Visible:=False;
  bUtilityProch.Visible:=False;
  bUtilityProchCloseTheDoor.Visible:=False;
  bUtilityProchAngryIPScanner.Visible:=False;
  bUtilityProchiTALC.Visible:=False;
  bUtilityProchUltraVNC.Visible:=False;
  bUtilityProchwxHexEditor.Visible:=False;
  bUtilityProchFontForge.Visible:=False;
  bUtilityProchVirtualBox.Visible:=False;
end;

procedure TfPodborZameni.bDrugieKatAntMovieCatalogClick(Sender: TObject);
begin
    lProgramName.Caption:='Ant Movie Catalog';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%B4%D1%80%D1%83%D0%B3%D0%B8%D0%B5-%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D1%8B/ant-movie-catalog-%D1%83%D0%BF%D1%80%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5-%D0%B2%D0%B0%D1%88%D0%B5%D0%B9-%D0%BA%D0%BE%D0%BB%D0%BB%D0%B5%D0%BA%D1%86%D0%B8%D0%B5%D0%B9-%D1%84%D0%B8%D0%BB%D1%8C%D0%BC%D0%BE%D0%B2.html';
end;

procedure TfPodborZameni.bDrugieKatClick(Sender: TObject);
begin
  bDrugieKatStuffOrganizer.Visible:=true;
  bDrugieKatDataCrow.Visible:=true;
  bDrugieKatAntMovieCatalog.Visible:=true;
  bDrugieKatGCstar.Visible:=true;
  bDrugieObrMnemosyne.Visible:=False;
  bDrugieObrMaxima.Visible:=False;
  bDrugieObriTest.Visible:=False;
  bDrugieObrScilab.Visible:=False;
  bDrugieObrOpenTeacher.Visible:=False;
  bDrugieObrDWSIM.Visible:=False;
  bDrugieVirtplSkyChart.Visible:=False;
  bDrugieVirtplStellarium.Visible:=False;
  bDrugieVirtplCelestia.Visible:=False;
  bDrugieZamOutWiker.Visible:=False;
  bDrugieZamRedNotebook.Visible:=False;
  bDrugieZamPNotes.Visible:=False;
  bDrugieZamQQwnNotes.Visible:=False;
end;

procedure TfPodborZameni.bDrugieKatDataCrowClick(Sender: TObject);
begin
    lProgramName.Caption:='Data Crow';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%B4%D1%80%D1%83%D0%B3%D0%B8%D0%B5-%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D1%8B/data-crow-%D0%BA%D0%B0%D1%82%D0%B0%D0%BB%D0%BE%D0%B3%D0%B8%D0%B7%D0%B0%D1%82%D0%BE%D1%80-%D1%84%D0%B8%D0%BB%D1%8C%D0%BC%D0%BE%D0%B2,-%D1%84%D0%BE%D1%82%D0%BE%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D0%B9.html';
end;

procedure TfPodborZameni.bDrugieKatGCstarClick(Sender: TObject);
begin
    lProgramName.Caption:='GCstar';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%B4%D1%80%D1%83%D0%B3%D0%B8%D0%B5-%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D1%8B/gcstar-%D1%83%D0%BF%D1%80%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5-%D0%BA%D0%BE%D0%BB%D0%BB%D0%B5%D0%BA%D1%86%D0%B8%D1%8F%D0%BC%D0%B8.html';
end;

procedure TfPodborZameni.bDrugieKatStuffOrganizerClick(Sender: TObject);
begin
    lProgramName.Caption:='Stuff Organizer';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%B4%D1%80%D1%83%D0%B3%D0%B8%D0%B5-%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D1%8B/stuff-organizer-%D0%BA%D0%B0%D1%82%D0%B0%D0%BB%D0%BE%D0%B3%D0%B8%D0%B7%D0%B0%D1%82%D0%BE%D1%80-%D0%BA%D0%BD%D0%B8%D0%B3,-%D1%84%D0%BE%D1%82%D0%BE%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D0%B9,-%D0%BC%D1%83%D0%B7%D1%8B%D0%BA%D0%B8.html';
end;

procedure TfPodborZameni.bDrugieObrClick(Sender: TObject);
begin
    bDrugieObrMnemosyne.Visible:=true;
    bDrugieObrMaxima.Visible:=true;
    bDrugieObriTest.Visible:=true;
    bDrugieObrScilab.Visible:=true;
    bDrugieObrOpenTeacher.Visible:=true;
    bDrugieObrDWSIM.Visible:=true;
    bDrugieVirtplSkyChart.Visible:=False;
    bDrugieVirtplStellarium.Visible:=False;
    bDrugieVirtplCelestia.Visible:=False;
    bDrugieKatStuffOrganizer.Visible:=False;
    bDrugieKatDataCrow.Visible:=False;
    bDrugieKatAntMovieCatalog.Visible:=False;
    bDrugieKatGCstar.Visible:=False;
    bDrugieZamOutWiker.Visible:=False;
    bDrugieZamRedNotebook.Visible:=False;
    bDrugieZamPNotes.Visible:=False;
    bDrugieZamQQwnNotes.Visible:=False;
end;

procedure TfPodborZameni.bDrugieObrDWSIMClick(Sender: TObject);
begin
    lProgramName.Caption:='DWSIM';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%B4%D1%80%D1%83%D0%B3%D0%B8%D0%B5-%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D1%8B/dwsim-%D1%81%D0%B8%D0%BC%D1%83%D0%BB%D1%8F%D1%82%D0%BE%D1%80-%D1%85%D0%B8%D0%BC%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D1%85-%D0%BF%D1%80%D0%BE%D1%86%D0%B5%D1%81%D1%81%D0%BE%D0%B2.html';
end;

procedure TfPodborZameni.bDrugieObriTestClick(Sender: TObject);
begin
    lProgramName.Caption:='iTest';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%B4%D1%80%D1%83%D0%B3%D0%B8%D0%B5-%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D1%8B/itest-%D1%82%D0%B5%D1%81%D1%82%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5-%D1%83%D1%87%D0%B0%D1%89%D0%B8%D1%85%D1%81%D1%8F.html';
end;

procedure TfPodborZameni.bDrugieObrMaximaClick(Sender: TObject);
begin
    lProgramName.Caption:='Maxima';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%B4%D1%80%D1%83%D0%B3%D0%B8%D0%B5-%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D1%8B/maxima-%D1%81%D0%B8%D1%81%D1%82%D0%B5%D0%BC%D0%B0-%D0%B0%D0%BD%D0%B0%D0%BB%D0%B8%D1%82%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D1%85-%D0%B2%D1%8B%D1%87%D0%B8%D1%81%D0%BB%D0%B5%D0%BD%D0%B8%D0%B9.html';
end;

procedure TfPodborZameni.bDrugieObrMnemosyneClick(Sender: TObject);
begin
    lProgramName.Caption:='Mnemosyne';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%B4%D1%80%D1%83%D0%B3%D0%B8%D0%B5-%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D1%8B/mnemosyne-%D0%B8%D0%BD%D1%81%D1%82%D1%80%D1%83%D0%BC%D0%B5%D0%BD%D1%82-%D0%B4%D0%BB%D1%8F-%D0%B8%D0%BD%D1%82%D0%B5%D1%80%D0%B2%D0%B0%D0%BB%D1%8C%D0%BD%D0%BE%D0%B3%D0%BE-%D0%BF%D0%BE%D0%B2%D1%82%D0%BE%D1%80%D0%B5%D0%BD%D0%B8%D1%8F.html';
end;

procedure TfPodborZameni.bDrugieObrOpenTeacherClick(Sender: TObject);
begin
    lProgramName.Caption:='OpenTeacher';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%B4%D1%80%D1%83%D0%B3%D0%B8%D0%B5-%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D1%8B/openteacher-%D1%83%D1%87%D0%B8%D1%82%D0%B5%D0%BB%D1%8C-%D0%B8%D0%BD%D0%BE%D1%81%D1%82%D1%80%D0%B0%D0%BD%D0%BD%D1%8B%D1%85-%D1%8F%D0%B7%D1%8B%D0%BA%D0%BE%D0%B2.html';
end;

procedure TfPodborZameni.bDrugieObrScilabClick(Sender: TObject);
begin
    lProgramName.Caption:='Scilab';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%B4%D1%80%D1%83%D0%B3%D0%B8%D0%B5-%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D1%8B/scilab-%D0%BF%D0%B0%D0%BA%D0%B5%D1%82-%D0%BF%D1%80%D0%B8%D0%BA%D0%BB%D0%B0%D0%B4%D0%BD%D1%8B%D1%85-%D0%BC%D0%B0%D1%82%D0%B5%D0%BC%D0%B0%D1%82%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D1%85-%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC.html';
end;

procedure TfPodborZameni.bDrugieVirtplCelestiaClick(Sender: TObject);
begin
    lProgramName.Caption:='Celestia';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%B4%D1%80%D1%83%D0%B3%D0%B8%D0%B5-%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D1%8B/celestia-%D0%B2%D0%B8%D1%80%D1%82%D1%83%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D0%B9-%D0%BF%D0%BB%D0%B0%D0%BD%D0%B5%D1%82%D0%B0%D1%80%D0%B8%D0%B9.html';
end;

procedure TfPodborZameni.bDrugieVirtplClick(Sender: TObject);
begin
    bDrugieVirtplCelestia.Visible:=true;
    bDrugieVirtplSkyChart.Visible:=true;
    bDrugieVirtplStellarium.Visible:=true;
    bDrugieObrMnemosyne.Visible:=False;
    bDrugieObrMaxima.Visible:=False;
    bDrugieObriTest.Visible:=False;
    bDrugieObrScilab.Visible:=False;
    bDrugieObrOpenTeacher.Visible:=False;
    bDrugieObrDWSIM.Visible:=False;
    bDrugieKatStuffOrganizer.Visible:=False;
    bDrugieKatDataCrow.Visible:=False;
    bDrugieKatAntMovieCatalog.Visible:=False;
    bDrugieKatGCstar.Visible:=False;
    bDrugieZamOutWiker.Visible:=False;
    bDrugieZamRedNotebook.Visible:=False;
    bDrugieZamPNotes.Visible:=False;
    bDrugieZamQQwnNotes.Visible:=False;
end;

procedure TfPodborZameni.bDrugieVirtplSkyChartClick(Sender: TObject);
begin
    lProgramName.Caption:='Sky Chart / Cartes du Ciel';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%B4%D1%80%D1%83%D0%B3%D0%B8%D0%B5-%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D1%8B/sky-chart-%D0%BF%D0%BB%D0%B0%D0%BD%D0%B5%D1%82%D0%B0%D1%80%D0%B8%D0%B9.html';
end;

procedure TfPodborZameni.bDrugieVirtplStellariumClick(Sender: TObject);
begin
    lProgramName.Caption:='Stellarium';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%B4%D1%80%D1%83%D0%B3%D0%B8%D0%B5-%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D1%8B/stellarium-%D0%B2%D0%B8%D1%80%D1%82%D1%83%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D0%B9-%D0%BF%D0%BB%D0%B0%D0%BD%D0%B5%D1%82%D0%B0%D1%80%D0%B8%D0%B9.html';
end;

procedure TfPodborZameni.bDrugieZamClick(Sender: TObject);
begin
    bDrugieZamOutWiker.Visible:=true;
    bDrugieZamRedNotebook.Visible:=true;
    bDrugieZamPNotes.Visible:=true;
    bDrugieZamQQwnNotes.Visible:=true;
    bDrugieVirtplCelestia.Visible:=False;
    bDrugieVirtplSkyChart.Visible:=False;
    bDrugieVirtplStellarium.Visible:=False;
    bDrugieObrMnemosyne.Visible:=False;
    bDrugieObrMaxima.Visible:=False;
    bDrugieObriTest.Visible:=False;
    bDrugieObrScilab.Visible:=False;
    bDrugieObrOpenTeacher.Visible:=False;
    bDrugieObrDWSIM.Visible:=False;
    bDrugieKatStuffOrganizer.Visible:=False;
    bDrugieKatDataCrow.Visible:=False;
    bDrugieKatAntMovieCatalog.Visible:=False;
    bDrugieKatGCstar.Visible:=False;
end;

procedure TfPodborZameni.bDrugieZamOutWikerClick(Sender: TObject);
begin
    lProgramName.Caption:='OutWiker';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%B4%D1%80%D1%83%D0%B3%D0%B8%D0%B5-%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D1%8B/outwiker-%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D0%B0-%D0%B4%D0%BB%D1%8F-%D1%85%D1%80%D0%B0%D0%BD%D0%B5%D0%BD%D0%B8%D1%8F-%D0%B7%D0%B0%D0%BC%D0%B5%D1%82%D0%BE%D0%BA.html';
end;

procedure TfPodborZameni.bDrugieZamPNotesClick(Sender: TObject);
begin
    lProgramName.Caption:='PNotes';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%B4%D1%80%D1%83%D0%B3%D0%B8%D0%B5-%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D1%8B/pnotes-%D0%BC%D0%B5%D0%BD%D0%B5%D0%B4%D0%B6%D0%B5%D1%80-%D0%B7%D0%B0%D0%BC%D0%B5%D1%82%D0%BE%D0%BA.html';
end;

procedure TfPodborZameni.bDrugieZamQQwnNotesClick(Sender: TObject);
begin
    lProgramName.Caption:='QQwnNotes';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%B4%D1%80%D1%83%D0%B3%D0%B8%D0%B5-%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D1%8B/qqwnnotes-%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D0%B0-%D1%81-%D0%B7%D0%B0%D0%BC%D0%B5%D1%82%D0%BA%D0%B0%D0%BC%D0%B8.html';
end;

procedure TfPodborZameni.bDrugieZamRedNotebookClick(Sender: TObject);
begin
    lProgramName.Caption:='RedNotebook';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%B4%D1%80%D1%83%D0%B3%D0%B8%D0%B5-%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D1%8B/rednotebook-%D1%81%D0%BE%D0%B2%D1%80%D0%B5%D0%BC%D0%B5%D0%BD%D0%BD%D1%8B%D0%B9-%D0%B6%D1%83%D1%80%D0%BD%D0%B0%D0%BB.html';
end;

procedure TfPodborZameni.bGraf2DClick(Sender: TObject);
begin
  bGraf2DPencil2d.Visible:=true;
  bGraf2DPencil.Visible:=true;
  bGraf2DTupi.Visible:=true;
  bGraf2DSynfigStudio.Visible:=true;
  bGrafGrafeditVector.Visible:=False;
  bGrafGrafeditRedfot.Visible:=False;
  bGrafGrafeditRedico.Visible:=False;
  bGrafGrafeditRedkart.Visible:=False;
  bGrafGrafeditIzdsys.Visible:=False;
  bGrafSaprSolveSpace.Visible:=False;
  bGrafSaprFreeCAD.Visible:=False;
  bGrafSaprNaroCAD.Visible:=False;
  bGrafSaprBRLCAD.Visible:=False;
  bGrafSaprLibreCAD.Visible:=False;
  bGrafSaprKiCad.Visible:=False;
  bGrafSaprQucs.Visible:=False;
  bGraf3DMakeHuman.Visible:=False;
  bGraf3DSeamless3d.Visible:=False;
  bGraf3DOpenFX.Visible:=False;
  bGraf3DK3D.Visible:=False;
  bGraf3DArtofIllusion.Visible:=False;
  bGraf3DBlender.Visible:=False;
  bGraf3DSweetHome3D.Visible:=False;
  bGrafProsmotrNomacs.Visible:=False;
  bGrafProsmotrAdvancedPhoto.Visible:=False;
  bGrafProsmotrJMG.Visible:=False;
  bGrafProsmotrImageGlass.Visible:=False;
  bGrafPreobrCaesium.Visible:=False;
  bGrafPreobrConverseen.Visible:=False;
  bGrafPreobrSIET.Visible:=False;
end;

procedure TfPodborZameni.bGraf2DPencil2dClick(Sender: TObject);
begin
    lProgramName.Caption:='Pencil2D';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D0%BA%D0%B0/2d-%D0%B8-3d/pencil2d-2d-%D0%B0%D0%BD%D0%B8%D0%BC%D0%B0%D1%86%D0%B8%D1%8F.html';
end;

procedure TfPodborZameni.bGraf2DPencilClick(Sender: TObject);
begin
    lProgramName.Caption:='Pencil';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D0%BA%D0%B0/2d-%D0%B8-3d/pencil-2d-%D0%B0%D0%BD%D0%B8%D0%BC%D0%B0%D1%86%D0%B8%D1%8F.html';
end;

procedure TfPodborZameni.bGraf2DSynfigStudioClick(Sender: TObject);
begin
    lProgramName.Caption:='Synfig Studio';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D0%BA%D0%B0/2d-%D0%B8-3d/synfig-studio-%D1%81%D0%BE%D0%B7%D0%B4%D0%B0%D0%BD%D0%B8%D0%B5-2d-%D0%B0%D0%BD%D0%B8%D0%BC%D0%B0%D1%86%D0%B8%D0%B8.html';
end;

procedure TfPodborZameni.bGraf2DTupiClick(Sender: TObject);
begin
    lProgramName.Caption:='Tupi';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D0%BA%D0%B0/2d-%D0%B8-3d/tupi-%D1%81%D0%BE%D0%B7%D0%B4%D0%B0%D0%BD%D0%B8%D0%B5-2d-%D0%B0%D0%BD%D0%B8%D0%BC%D0%B0%D1%86%D0%B8%D0%B8.html';
end;

procedure TfPodborZameni.bGraf3DArtofIllusionClick(Sender: TObject);
begin
    lProgramName.Caption:='Art of Illusion';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D0%BA%D0%B0/2d-%D0%B8-3d/art-of-illusion-%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D0%B0-%D0%B4%D0%BB%D1%8F-3d-%D0%BC%D0%BE%D0%B4%D0%B5%D0%BB%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8F.html';
end;

procedure TfPodborZameni.bGraf3DBlenderClick(Sender: TObject);
begin
    lProgramName.Caption:='Blender';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D0%BA%D0%B0/2d-%D0%B8-3d/blender-%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D0%B0-%D0%B4%D0%BB%D1%8F-3d-%D0%BC%D0%BE%D0%B4%D0%B5%D0%BB%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8F.html';
end;

procedure TfPodborZameni.bGraf3DClick(Sender: TObject);
begin
    bGraf3DMakeHuman.Visible:=true;
    bGraf3DSeamless3d.Visible:=true;
    bGraf3DOpenFX.Visible:=true;
    bGraf3DK3D.Visible:=true;
    bGraf3DArtofIllusion.Visible:=true;
    bGraf3DBlender.Visible:=true;
    bGraf3DSweetHome3D.Visible:=true;
    bGrafSaprSolveSpace.Visible:=False;
    bGrafSaprFreeCAD.Visible:=False;
    bGrafSaprNaroCAD.Visible:=False;
    bGrafSaprBRLCAD.Visible:=False;
    bGrafSaprLibreCAD.Visible:=False;
    bGrafSaprKiCad.Visible:=False;
    bGrafSaprQucs.Visible:=False;
    bGrafGrafeditVector.Visible:=False;
    bGrafGrafeditRedfot.Visible:=False;
    bGrafGrafeditRedico.Visible:=False;
    bGrafGrafeditRedkart.Visible:=False;
    bGrafGrafeditIzdsys.Visible:=False;
    bGraf2DPencil2d.Visible:=False;
    bGraf2DPencil.Visible:=False;
    bGraf2DTupi.Visible:=False;
    bGraf2DSynfigStudio.Visible:=False;
    bGrafProsmotrNomacs.Visible:=False;
    bGrafProsmotrAdvancedPhoto.Visible:=False;
    bGrafProsmotrJMG.Visible:=False;
    bGrafProsmotrImageGlass.Visible:=False;
    bGrafPreobrCaesium.Visible:=False;
    bGrafPreobrConverseen.Visible:=False;
    bGrafPreobrSIET.Visible:=False;
end;

procedure TfPodborZameni.bGraf3DK3DClick(Sender: TObject);
begin
    lProgramName.Caption:='K-3D';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D0%BA%D0%B0/2d-%D0%B8-3d/k-3d-%D1%81%D0%BE%D0%B7%D0%B4%D0%B0%D0%BD%D0%B8%D0%B5-3d-%D0%BC%D0%BE%D0%B4%D0%B5%D0%BB%D0%B5%D0%B9-%D0%B8-%D0%B0%D0%BD%D0%B8%D0%BC%D0%B0%D1%86%D0%B8%D0%B8.html';
end;

procedure TfPodborZameni.bGraf3DMakeHumanClick(Sender: TObject);
begin
    lProgramName.Caption:='MakeHuman';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D0%BA%D0%B0/2d-%D0%B8-3d/makehuman-3d-%D0%BC%D0%BE%D0%B4%D0%B5%D0%BB%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5-%D1%87%D0%B5%D0%BB%D0%BE%D0%B2%D0%B5%D0%BA%D0%B0.html';
end;

procedure TfPodborZameni.bGraf3DOpenFXClick(Sender: TObject);
begin
    lProgramName.Caption:='OpenFX';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D0%BA%D0%B0/2d-%D0%B8-3d/openfx-%D1%81%D0%B2%D0%BE%D0%B1%D0%BE%D0%B4%D0%BD%D0%B0%D1%8F-%D1%81%D1%82%D1%83%D0%B4%D0%B8%D1%8F-%D0%BC%D0%BE%D0%B4%D0%B5%D0%BB%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8F-%D0%B8-%D0%B0%D0%BD%D0%B8%D0%BC%D0%B0%D1%86%D0%B8%D0%B8.html';
end;

procedure TfPodborZameni.bGraf3DSeamless3dClick(Sender: TObject);
begin
    lProgramName.Caption:='Seamless3d';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D0%BA%D0%B0/2d-%D0%B8-3d/seamless3d-%D0%BC%D0%BE%D0%B4%D0%B5%D0%BB%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5-%D0%B8-3d-%D0%B0%D0%BD%D0%B8%D0%BC%D0%B0%D1%86%D0%B8%D1%8F.html';
end;

procedure TfPodborZameni.bGraf3DSweetHome3DClick(Sender: TObject);
begin
    lProgramName.Caption:='Sweet Home 3D';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D0%BA%D0%B0/2d-%D0%B8-3d/sweet-home-3d-%D1%82%D1%80%D0%B5%D1%85%D0%BC%D0%B5%D1%80%D0%BD%D0%BE%D0%B5-%D0%BC%D0%BE%D0%B4%D0%B5%D0%BB%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5-%D0%B8%D0%BD%D1%82%D0%B5%D1%80%D1%8C%D0%B5%D1%80%D0%B0.html';
end;

procedure TfPodborZameni.bGrafClick(Sender: TObject);
begin
  bGrafSapr.Visible:=true;
  bGrafGrafedit.Visible:=true;
  bGraf2D.Visible:=true;
  bGraf3D.Visible:=true;
  bGrafProsmotr.Visible:=true;
  bGrafPreobr.Visible:=true;
  vCdZapis.Visible:=False;
  bCdProch.Visible:=False;
  bCdZapKomleks.Visible:=False;
  bCdProchIsoEm.Visible:=False;
  bCdProchIsoEm.Visible:=False;
  bCdProchDvdmenu.Visible:=False;
  bCdProchVossdan.Visible:=False;
  bBezAv.Visible:=False;
  bBezAvSprover.Visible:=False;
  bBezAvBezprover.Visible:=False;
  bBezRezKop.Visible:=False;
  bBezRezkopDomKomp.Visible:=False;
  bBezRezkopRabkomp.Visible:=False;
  bBezShifrFile.Visible:=False;
  bBezShifrHdd.Visible:=False;
  bBezShifr.Visible:=False;
  bBezParol.Visible:=False;
  bBezParolHranPar.Visible:=False;
  bBezParolSozdpar.Visible:=False;
  bBezProch.Visible:=False;
  bBezProchAnonbrow.Visible:=False;
  bBezProchFiltr.Visible:=False;
  bBezProchMonIzmFile.Visible:=False;
  bBezProchBezdel.Visible:=False;
  bGrafGrafeditVector.Visible:=False;
  bGrafGrafeditRedfot.Visible:=False;
  bGrafGrafeditRedico.Visible:=False;
  bGrafGrafeditRedkart.Visible:=False;
  bGrafGrafeditIzdsys.Visible:=False;
  bGrafSaprSolveSpace.Visible:=False;
  bGrafSaprFreeCAD.Visible:=False;
  bGrafSaprNaroCAD.Visible:=False;
  bGrafSaprBRLCAD.Visible:=False;
  bGrafSaprLibreCAD.Visible:=False;
  bGrafSaprKiCad.Visible:=False;
  bGrafSaprQucs.Visible:=False;
  bGraf2DPencil2d.Visible:=False;
  bGraf2DPencil.Visible:=False;
  bGraf2DTupi.Visible:=False;
  bGraf2DSynfigStudio.Visible:=False;
  bGraf3DMakeHuman.Visible:=False;
  bGraf3DSeamless3d.Visible:=False;
  bGraf3DOpenFX.Visible:=False;
  bGraf3DK3D.Visible:=False;
  bGraf3DArtofIllusion.Visible:=False;
  bGraf3DBlender.Visible:=False;
  bGraf3DSweetHome3D.Visible:=False;
  bGrafProsmotrNomacs.Visible:=False;
  bGrafProsmotrAdvancedPhoto.Visible:=False;
  bGrafProsmotrJMG.Visible:=False;
  bGrafProsmotrImageGlass.Visible:=False;
  bGrafPreobrCaesium.Visible:=False;
  bGrafPreobrConverseen.Visible:=False;
  bGrafPreobrSIET.Visible:=False;
  bDrugieObrMnemosyne.Visible:=False;
  bDrugieObrMaxima.Visible:=False;
  bDrugieObriTest.Visible:=False;
  bDrugieObrScilab.Visible:=False;
  bDrugieObrOpenTeacher.Visible:=False;
  bDrugieObrDWSIM.Visible:=False;
  bDrugieObr.Visible:=False;
  bDrugieVirtpl.Visible:=False;
  bDrugieVirtplSkyChart.Visible:=False;
  bDrugieVirtplStellarium.Visible:=False;
  bDrugieVirtplCelestia.Visible:=False;
  bDrugieKat.Visible:=False;
  bDrugieKatStuffOrganizer.Visible:=False;
  bDrugieKatDataCrow.Visible:=False;
  bDrugieKatAntMovieCatalog.Visible:=False;
  bDrugieKatGCstar.Visible:=False;
  bDrugieZam.Visible:=False;
  bDrugieZamOutWiker.Visible:=False;
  bDrugieZamRedNotebook.Visible:=False;
  bDrugieZamPNotes.Visible:=False;
  bDrugieZamQQwnNotes.Visible:=False;
  bMultimVosp.Visible:=False;
  bMultimVospOnline.Visible:=False;
  bMultimVospVideo.Visible:=False;
  bMultimVospAudio.Visible:=False;
  bMultimVospMedCentr.Visible:=False;
  bMultimEdit.Visible:=False;
  bMultimEditVlmc.Visible:=False;
  bMultimEditAvidemux.Visible:=False;
  bMultimEditShotcut.Visible:=False;
  bMultimEditAudacity.Visible:=False;
  bMultimEditWaveShop.Visible:=False;
  bMultimKonvert.Visible:=False;
  bMultimKonvertHandBrake.Visible:=False;
  bMultimKonvertQWinFF.Visible:=False;
  bMultimKonvertTEncoder.Visible:=False;
  bMultimKonvertfreac.Visible:=False;
  bMultimKonvertTAudioConverter.Visible:=False;
  bMultimZahvat.Visible:=False;
  bMultimZahvatOBS.Visible:=False;
  bMultimZahvatFoxToolsShooter.Visible:=False;
  bMultimZahvatGreenshot.Visible:=False;
  bMultimZahvatShareX.Visible:=False;
  bOfficeFinance.Visible:=False;
  bOfficeFinanceAnanas.Visible:=False;
  bOfficeFinanceHomeBank.Visible:=False;
  bOfficeFinanceMoneyManagerEx.Visible:=False;
  bOfficeFinanceKMyMoney.Visible:=False;
  bOfficeFinanceRepairCenter.Visible:=False;
  bOfficeFinanceFramingWorkshop.Visible:=False;
  bOfficeFinanceSysUchZayv.Visible:=False;
  bOfficeFinanceMoiprodazhi.Visible:=False;
  bOfficeFinanceFakturama.Visible:=False;
  bOfficeAnalog.Visible:=False;
  bOfficeAnalogONLYOFFICEDesktopEditors.Visible:=False;
  bOfficeAnalogLibreOffice.Visible:=False;
  bOfficeAnalogApacheOpenOffice.Visible:=False;
  bOfficeAnalogCalligraGemini.Visible:=False;
  bOfficePdf.Visible:=False;
  bOfficePdfSumatraPDF.Visible:=False;
  bOfficePdfCalibre.Visible:=False;
  bOfficePdfTEBookConverter.Visible:=False;
  bOfficePdfRedaktorpdf.Visible:=False;
  bOfficePdfPDFsamBasic.Visible:=False;
  bOfficePdfFB2.Visible:=False;
  bOfficeScanNASP2.Visible:=False;
  bOfficeScan.Visible:=False;
  bOfficeScanVietOCR.Visible:=False;
  bOfficeScanCognitiveOpenOCR.Visible:=False;
  bOfficeScanPDFCreator.Visible:=False;
  bOfficePlan.Visible:=False;
  bOfficePlanGanttProject.Visible:=False;
  bOfficePlanProjectLibre.Visible:=False;
  bOfficePlanWindowsPlanner.Visible:=False;
  bOfficePlanTaskUnifier.Visible:=False;
  bOfficePlanTaskCoach.Visible:=False;
  bOfficePlanMozillaSunbird.Visible:=False;
  bOfficePlanTheTimelineProject.Visible:=False;
  bOfficePlaOnepointProjectBasicEdition.Visible:=False;
  bRazrabHtml.Visible:=False;
  bRazrabHtmlBrackets.Visible:=False;
  bRazrabHtmlBluefish.Visible:=False;
  bRazrabHtmlBlueGriffon.Visible:=False;
  bRazrabHtmlkodeWeave.Visible:=False;
  bRazrabHtmlNotepad.Visible:=False;
  bRazrabCpp.Visible:=False;
  bRazrabCppWxDev.Visible:=False;
  bRazrabCppCodeBlocks.Visible:=False;
  bRazrabCppNetBeans.Visible:=False;
  bRazrabCppXamarinStudio.Visible:=False;
  bRazrabCppBluefish.Visible:=False;
  bRazrabOp.Visible:=False;
  bRazrabOpLazarus.Visible:=False;
  bInternetBrow.Visible:=False;
  bInternetBrowMozillaFirefox.Visible:=False;
  bInternetBrowOtterBrowser.Visible:=False;
  bInternetBrowChromium.Visible:=False;
  bInternetTalk.Visible:=False;
  bInternetTalkKVIrc.Visible:=False;
  bInternetTalkTkabber.Visible:=False;
  bInternetTalkPidgin.Visible:=False;
  bInternetTalkMozillaThunderbird.Visible:=False;
  bInternetTalkMumble.Visible:=False;
  bInternetTalkBeeBEEP.Visible:=False;
  bInternetTalkLinphone.Visible:=False;
  bInternetDown.Visible:=False;
  bInternetDownClipGrab.Visible:=False;
  bInternetDownFileZilla.Visible:=False;
  bInternetDownJDownloader.Visible:=False;
  bInternetDownFdm.Visible:=False;
  bInternetDownqBittorrent.Visible:=False;
  bInternetSetut.Visible:=False;
  bInternetSetutWireshark.Visible:=False;
  bInternetSetutNmap.Visible:=False;
  bInternetSetutOpenVisualTraceroute.Visible:=False;
  bInternetSetutSecurepointSSLVPNClient.Visible:=False;
  bInternetSetutruWinMTR.Visible:=False;
  bInternetSetutLinkChecker.Visible:=False;
  bInternetSetuthttpres.Visible:=False;
  bInternetSetutSimpleSitemapCreator.Visible:=False;
  bInternetRssRSSBandit.Visible:=False;
  bInternetRss.Visible:=False;
  bInternetRssQuiteRSS.Visible:=False;
  bInternetRssMozillaThunderbird.Visible:=False;
  bUtilityRar.Visible:=False;
  bUtilityRarPeaZip.Visible:=False;
  bUtilityRarFreeArc.Visible:=False;
  bUtilityRar7Zip.Visible:=False;
  bUtilitySystem.Visible:=False;
  bUtilitySystemProcessHacker.Visible:=False;
  bUtilitySystemUltraDefrag.Visible:=False;
  bUtilitySystemBulkCrapUninstaller.Visible:=False;
  bUtilitySystemSmartSystemRepiar.Visible:=False;
  bUtilitySystemSysOptimizer.Visible:=False;
  bUtilitySystemPerformanceMaintainer.Visible:=False;
  bUtilitySystemAspia.Visible:=False;
  bUtilitySystemHDDGuardian.Visible:=False;
  bUtilitySystemDitto.Visible:=False;
  bUtilityFile.Visible:=False;
  bUtilityFileFreeFileSync.Visible:=False;
  bUtilityFileWinMerge.Visible:=False;
  bUtilityFileKickassUndelete.Visible:=False;
  bUtilityFileDoubleCommander.Visible:=False;
  bUtilityFileFileOptimizer.Visible:=False;
  bUtilityFileDUFF.Visible:=False;
  bUtilityProch.Visible:=False;
  bUtilityProchCloseTheDoor.Visible:=False;
  bUtilityProchAngryIPScanner.Visible:=False;
  bUtilityProchiTALC.Visible:=False;
  bUtilityProchUltraVNC.Visible:=False;
  bUtilityProchwxHexEditor.Visible:=False;
  bUtilityProchFontForge.Visible:=False;
  bUtilityProchVirtualBox.Visible:=False;
end;

procedure TfPodborZameni.bGrafGrafeditClick(Sender: TObject);
begin
  bGrafGrafeditVector.Visible:=true;
  bGrafGrafeditRedfot.Visible:=true;
  bGrafGrafeditRedico.Visible:=true;
  bGrafGrafeditRedkart.Visible:=true;
  bGrafGrafeditIzdsys.Visible:=true;
  bGrafSaprSolveSpace.Visible:=False;
  bGrafSaprFreeCAD.Visible:=False;
  bGrafSaprNaroCAD.Visible:=False;
  bGrafSaprBRLCAD.Visible:=False;
  bGrafSaprLibreCAD.Visible:=False;
  bGrafSaprKiCad.Visible:=False;
  bGrafSaprQucs.Visible:=False;
  bGraf2DPencil2d.Visible:=False;
  bGraf2DPencil.Visible:=False;
  bGraf2DTupi.Visible:=False;
  bGraf2DSynfigStudio.Visible:=False;
  bGraf3DMakeHuman.Visible:=False;
  bGraf3DSeamless3d.Visible:=False;
  bGraf3DOpenFX.Visible:=False;
  bGraf3DK3D.Visible:=False;
  bGraf3DArtofIllusion.Visible:=False;
  bGraf3DBlender.Visible:=False;
  bGraf3DSweetHome3D.Visible:=False;
  bGrafProsmotrNomacs.Visible:=False;
  bGrafProsmotrAdvancedPhoto.Visible:=False;
  bGrafProsmotrJMG.Visible:=False;
  bGrafProsmotrImageGlass.Visible:=False;
  bGrafPreobrCaesium.Visible:=False;
  bGrafPreobrConverseen.Visible:=False;
  bGrafPreobrSIET.Visible:=False;
end;

procedure TfPodborZameni.bGrafGrafeditIzdsysClick(Sender: TObject);
begin
    lProgramName.Caption:='Scribus';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D0%BA%D0%B0/%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D0%B5-%D1%80%D0%B5%D0%B4%D0%B0%D0%BA%D1%82%D0%BE%D1%80%D1%8B/scribus-%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D0%B0-%D0%B2%D0%B8%D0%B7%D1%83%D0%B0%D0%BB%D1%8C%D0%BD%D0%BE%D0%B9-%D0%B2%D0%B5%D1%80%D1%81%D1%82%D0%BA%D0%B8-%D0%B4%D0%BE%D0%BA%D1%83%D0%BC%D0%B5%D0%BD%D1%82%D0%BE%D0%B2-%D0%B8%D0%B7%D0%B4%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%D1%81%D0%BA%D0%B0%D1%8F-%D1%81%D0%B8%D1%81%D1%82%D0%B5%D0%BC%D0%B0.html';
end;

procedure TfPodborZameni.bGrafGrafeditRedfotClick(Sender: TObject);
begin
    lProgramName.Caption:='GIMP';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D0%BA%D0%B0/%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D0%B5-%D1%80%D0%B5%D0%B4%D0%B0%D0%BA%D1%82%D0%BE%D1%80%D1%8B/gimp-%D0%B1%D0%B5%D1%81%D0%BF%D0%BB%D0%B0%D1%82%D0%BD%D1%8B%D0%B9-%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D0%B9-%D1%80%D0%B5%D0%B4%D0%B0%D0%BA%D1%82%D0%BE%D1%80-%D1%80%D0%B0%D1%81%D1%82%D1%80%D0%BE%D0%B2%D0%BE%D0%B9-%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D0%BA%D0%B8.html';
end;

procedure TfPodborZameni.bGrafGrafeditRedicoClick(Sender: TObject);
begin
    lProgramName.Caption:='Greenfish Icon Editor Pro';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D0%BA%D0%B0/%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D0%B5-%D1%80%D0%B5%D0%B4%D0%B0%D0%BA%D1%82%D0%BE%D1%80%D1%8B/gfie-pro-%D1%80%D0%B5%D0%B4%D0%B0%D0%BA%D1%82%D0%BE%D1%80-%D0%B8%D0%BA%D0%BE%D0%BD%D0%BE%D0%BA.html';
end;

procedure TfPodborZameni.bGrafGrafeditRedkartClick(Sender: TObject);
begin
    lProgramName.Caption:='Krita';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D0%BA%D0%B0/%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D0%B5-%D1%80%D0%B5%D0%B4%D0%B0%D0%BA%D1%82%D0%BE%D1%80%D1%8B/krita-%D1%80%D0%B0%D1%81%D1%82%D1%80%D0%BE%D0%B2%D1%8B%D0%B9-%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D0%B9-%D1%80%D0%B5%D0%B4%D0%B0%D0%BA%D1%82%D0%BE%D1%80.html';
end;

procedure TfPodborZameni.bGrafGrafeditVectorClick(Sender: TObject);
begin
    lProgramName.Caption:='Inkscape';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D0%BA%D0%B0/%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D0%B5-%D1%80%D0%B5%D0%B4%D0%B0%D0%BA%D1%82%D0%BE%D1%80%D1%8B/inkscape-%D0%B1%D0%B5%D1%81%D0%BF%D0%BB%D0%B0%D1%82%D0%BD%D1%8B%D0%B9-%D0%B2%D0%B5%D0%BA%D1%82%D0%BE%D1%80%D0%BD%D1%8B%D0%B9-%D1%80%D0%B5%D0%B4%D0%B0%D0%BA%D1%82%D0%BE%D1%80.html';
end;

procedure TfPodborZameni.bGrafPreobrCaesiumClick(Sender: TObject);
begin
    lProgramName.Caption:='Caesium';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D0%BA%D0%B0/%D0%BF%D1%80%D0%BE%D1%87%D0%B5%D0%B5/caesium-%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D0%B0-%D0%B4%D0%BB%D1%8F-%D1%81%D0%B6%D0%B0%D1%82%D0%B8%D1%8F-%D1%84%D0%BE%D1%82%D0%BE%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D0%B9.html';
end;

procedure TfPodborZameni.bGrafPreobrClick(Sender: TObject);
begin
    bGrafPreobrCaesium.Visible:=true;
    bGrafPreobrConverseen.Visible:=true;
    bGrafPreobrSIET.Visible:=true;
    bGrafSaprSolveSpace.Visible:=False;
    bGrafSaprFreeCAD.Visible:=False;
    bGrafSaprNaroCAD.Visible:=False;
    bGrafSaprBRLCAD.Visible:=False;
    bGrafSaprLibreCAD.Visible:=False;
    bGrafSaprKiCad.Visible:=False;
    bGrafSaprQucs.Visible:=False;
    bGrafGrafeditVector.Visible:=False;
    bGrafGrafeditRedfot.Visible:=False;
    bGrafGrafeditRedico.Visible:=False;
    bGrafGrafeditRedkart.Visible:=False;
    bGrafGrafeditIzdsys.Visible:=False;
    bGraf2DPencil2d.Visible:=False;
    bGraf2DPencil.Visible:=False;
    bGraf2DTupi.Visible:=False;
    bGraf2DSynfigStudio.Visible:=False;
    bGraf3DMakeHuman.Visible:=False;
    bGraf3DSeamless3d.Visible:=False;
    bGraf3DOpenFX.Visible:=False;
    bGraf3DK3D.Visible:=False;
    bGraf3DArtofIllusion.Visible:=False;
    bGraf3DBlender.Visible:=False;
    bGraf3DSweetHome3D.Visible:=False;
    bGrafProsmotrNomacs.Visible:=False;
    bGrafProsmotrAdvancedPhoto.Visible:=False;
    bGrafProsmotrJMG.Visible:=False;
    bGrafProsmotrImageGlass.Visible:=False;
end;

procedure TfPodborZameni.bGrafPreobrConverseenClick(Sender: TObject);
begin
    lProgramName.Caption:='Converseen';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D0%BA%D0%B0/%D0%BF%D1%80%D0%BE%D1%87%D0%B5%D0%B5/converseen-%D0%BF%D0%B0%D0%BA%D0%B5%D1%82%D0%BD%D1%8B%D0%B9-%D0%BA%D0%BE%D0%BD%D0%B2%D0%B5%D1%80%D1%82%D0%B5%D1%80-%D0%B8%D0%B7%D0%BE%D0%B1%D1%80%D0%B0%D0%B6%D0%B5%D0%BD%D0%B8%D0%B9.html';
end;

procedure TfPodborZameni.bGrafPreobrSIETClick(Sender: TObject);
begin
    lProgramName.Caption:='SIET';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D0%BA%D0%B0/%D0%BF%D1%80%D0%BE%D1%87%D0%B5%D0%B5/siet-%D0%BF%D0%B0%D0%BA%D0%B5%D1%82%D0%BD%D0%BE%D0%B5-%D0%BF%D1%80%D0%B5%D0%BE%D0%B1%D1%80%D0%B0%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5-%D0%B8%D0%B7%D0%BE%D0%B1%D1%80%D0%B0%D0%B6%D0%B5%D0%BD%D0%B8%D0%B9.html';
end;

procedure TfPodborZameni.bGrafProsmotrAdvancedPhotoClick(Sender: TObject);
begin
    lProgramName.Caption:='Advanced Photo';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D0%BA%D0%B0/%D0%BF%D1%80%D0%BE%D1%87%D0%B5%D0%B5/advanced-photo-%D0%BF%D1%80%D0%BE%D1%81%D0%BC%D0%BE%D1%82%D1%80-%D0%BA%D0%B0%D1%80%D1%82%D0%B8%D0%BD%D0%BE%D0%BA.html';
end;

procedure TfPodborZameni.bGrafProsmotrClick(Sender: TObject);
begin
    bGrafProsmotrNomacs.Visible:=true;
    bGrafProsmotrAdvancedPhoto.Visible:=true;
    bGrafProsmotrJMG.Visible:=true;
    bGrafProsmotrImageGlass.Visible:=true;
    bGrafSaprSolveSpace.Visible:=False;
    bGrafSaprFreeCAD.Visible:=False;
    bGrafSaprNaroCAD.Visible:=False;
    bGrafSaprBRLCAD.Visible:=False;
    bGrafSaprLibreCAD.Visible:=False;
    bGrafSaprKiCad.Visible:=False;
    bGrafSaprQucs.Visible:=False;
    bGrafGrafeditVector.Visible:=False;
    bGrafGrafeditRedfot.Visible:=False;
    bGrafGrafeditRedico.Visible:=False;
    bGrafGrafeditRedkart.Visible:=False;
    bGrafGrafeditIzdsys.Visible:=False;
    bGraf2DPencil2d.Visible:=False;
    bGraf2DPencil.Visible:=False;
    bGraf2DTupi.Visible:=False;
    bGraf2DSynfigStudio.Visible:=False;
    bGraf3DMakeHuman.Visible:=False;
    bGraf3DSeamless3d.Visible:=False;
    bGraf3DOpenFX.Visible:=False;
    bGraf3DK3D.Visible:=False;
    bGraf3DArtofIllusion.Visible:=False;
    bGraf3DBlender.Visible:=False;
    bGraf3DSweetHome3D.Visible:=False;
    bGrafPreobrCaesium.Visible:=False;
    bGrafPreobrConverseen.Visible:=False;
    bGrafPreobrSIET.Visible:=False;
end;

procedure TfPodborZameni.bGrafProsmotrImageGlassClick(Sender: TObject);
begin
    lProgramName.Caption:='ImageGlass';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D0%BA%D0%B0/%D0%BF%D1%80%D0%BE%D1%87%D0%B5%D0%B5/imageglass-%D0%BF%D1%80%D0%BE%D1%81%D0%BC%D0%BE%D1%82%D1%80-%D0%B8%D0%B7%D0%BE%D0%B1%D1%80%D0%B0%D0%B6%D0%B5%D0%BD%D0%B8%D0%B9.html';
end;

procedure TfPodborZameni.bGrafProsmotrJMGClick(Sender: TObject);
begin
    lProgramName.Caption:='JMG Photo Printer';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D0%BA%D0%B0/%D0%BF%D1%80%D0%BE%D1%87%D0%B5%D0%B5/jmg-photo-printer-%D0%BF%D1%80%D0%BE%D1%81%D0%BC%D0%BE%D1%82%D1%80-%D0%B8-%D0%BF%D0%B5%D1%87%D0%B0%D1%82%D1%8C-%D1%84%D0%BE%D1%82%D0%BE%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D0%B9.html';

end;

procedure TfPodborZameni.bGrafProsmotrNomacsClick(Sender: TObject);
begin
    lProgramName.Caption:='nomacs Image Lounge';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D0%BA%D0%B0/%D0%BF%D1%80%D0%BE%D1%87%D0%B5%D0%B5/advanced-photo-%D0%BF%D1%80%D0%BE%D1%81%D0%BC%D0%BE%D1%82%D1%80-%D0%BA%D0%B0%D1%80%D1%82%D0%B8%D0%BD%D0%BE%D0%BA.html';
end;

procedure TfPodborZameni.bGrafSaprBRLCADClick(Sender: TObject);
begin
    lProgramName.Caption:='BRL-CAD';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D0%BA%D0%B0/%D1%81%D0%B0%D0%BF%D1%80/brl-cad-%D0%BC%D0%BE%D0%B4%D0%B5%D0%BB%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5-%D1%81%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D0%BD%D1%8B%D1%85-%D0%BE%D0%B1%D1%8A%D1%91%D0%BC%D0%BD%D1%8B%D1%85-%D1%82%D0%B5%D0%BB.html';
end;

procedure TfPodborZameni.bGrafSaprClick(Sender: TObject);
begin
    bGrafSaprSolveSpace.Visible:=true;
    bGrafSaprFreeCAD.Visible:=true;
    bGrafSaprNaroCAD.Visible:=true;
    bGrafSaprBRLCAD.Visible:=true;
    bGrafSaprLibreCAD.Visible:=true;
    bGrafSaprKiCad.Visible:=true;
    bGrafSaprQucs.Visible:=true;
    bGrafGrafeditVector.Visible:=False;
    bGrafGrafeditRedfot.Visible:=False;
    bGrafGrafeditRedico.Visible:=False;
    bGrafGrafeditRedkart.Visible:=False;
    bGrafGrafeditIzdsys.Visible:=False;
    bGraf2DPencil2d.Visible:=False;
    bGraf2DPencil.Visible:=False;
    bGraf2DTupi.Visible:=False;
    bGraf2DSynfigStudio.Visible:=False;
    bGraf3DMakeHuman.Visible:=False;
    bGraf3DSeamless3d.Visible:=False;
    bGraf3DOpenFX.Visible:=False;
    bGraf3DK3D.Visible:=False;
    bGraf3DArtofIllusion.Visible:=False;
    bGraf3DBlender.Visible:=False;
    bGraf3DSweetHome3D.Visible:=False;
    bGrafProsmotrNomacs.Visible:=False;
    bGrafProsmotrAdvancedPhoto.Visible:=False;
    bGrafProsmotrJMG.Visible:=False;
    bGrafProsmotrImageGlass.Visible:=False;
    bGrafPreobrCaesium.Visible:=False;
    bGrafPreobrConverseen.Visible:=False;
    bGrafPreobrSIET.Visible:=False;
end;

procedure TfPodborZameni.bGrafSaprFreeCADClick(Sender: TObject);
begin
    lProgramName.Caption:='FreeCAD';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D0%BA%D0%B0/%D1%81%D0%B0%D0%BF%D1%80/freecad-%D0%B1%D0%B5%D1%81%D0%BF%D0%BB%D0%B0%D1%82%D0%BD%D0%B0%D1%8F-%D1%82%D1%80%D0%B5%D1%85%D0%BC%D0%B5%D1%80%D0%BD%D0%B0%D1%8F-%D1%81%D0%B0%D0%BF%D1%80.html';
end;

procedure TfPodborZameni.bGrafSaprKiCadClick(Sender: TObject);
begin
    lProgramName.Caption:='KiCad';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D0%BA%D0%B0/%D1%81%D0%B0%D0%BF%D1%80/kicad-%D1%80%D0%B0%D0%B7%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D0%BA%D0%B0-%D1%8D%D0%BB%D0%B5%D0%BA%D1%82%D1%80%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D1%85-%D1%81%D1%85%D0%B5%D0%BC-%D0%B8-%D0%BF%D0%B5%D1%87%D0%B0%D1%82%D0%BD%D1%8B%D1%85-%D0%BF%D0%BB%D0%B0%D1%82.html';
end;

procedure TfPodborZameni.bGrafSaprLibreCADClick(Sender: TObject);
begin
    lProgramName.Caption:='LibreCAD';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D0%BA%D0%B0/%D1%81%D0%B0%D0%BF%D1%80/librecad-%D0%B1%D0%B5%D1%81%D0%BF%D0%BB%D0%B0%D1%82%D0%BD%D0%B0%D1%8F-%D1%81%D0%B0%D0%BF%D1%80.html';
end;

procedure TfPodborZameni.bGrafSaprNaroCADClick(Sender: TObject);
begin
    lProgramName.Caption:='NaroCAD';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D0%BA%D0%B0/%D1%81%D0%B0%D0%BF%D1%80/narocad-3d-cad-%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D0%BD%D0%BE%D0%B5-%D0%BE%D0%B1%D0%B5%D1%81%D0%BF%D0%B5%D1%87%D0%B5%D0%BD%D0%B8%D0%B5.html';
end;

procedure TfPodborZameni.bGrafSaprQucsClick(Sender: TObject);
begin
    lProgramName.Caption:='Qucs';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D0%BA%D0%B0/%D1%81%D0%B0%D0%BF%D1%80/qucs-%D0%BF%D0%BE%D1%87%D1%82%D0%B8-%D1%83%D0%BD%D0%B8%D0%B2%D0%B5%D1%80%D1%81%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D0%B9-%D1%81%D0%B8%D0%BC%D1%83%D0%BB%D1%8F%D1%82%D0%BE%D1%80-%D1%8D%D0%BB%D0%B5%D0%BA%D1%82%D1%80%D0%BE%D0%BD%D0%BD%D1%8B%D1%85-%D1%86%D0%B5%D0%BF%D0%B5%D0%B9.html';
end;

procedure TfPodborZameni.bGrafSaprSolveSpaceClick(Sender: TObject);
begin
    lProgramName.Caption:='SolveSpace';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D0%BA%D0%B0/%D1%81%D0%B0%D0%BF%D1%80/solvespace-2d-%D0%B8-3d-cad.html';
end;

procedure TfPodborZameni.bInternetBrowChromiumClick(Sender: TObject);
begin
    lProgramName.Caption:='Chromium';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D1%81%D0%B5%D1%82%D1%8C,-%D0%B8%D0%BD%D1%82%D0%B5%D1%80%D0%BD%D0%B5%D1%82/%D0%B8%D0%BD%D1%82%D0%B5%D1%80%D0%BD%D0%B5%D1%82-%D0%BE%D0%B1%D0%BE%D0%B7%D1%80%D0%B5%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B8/chromium-%D0%B2%D0%B5%D0%B1-%D0%B1%D1%80%D0%B0%D1%83%D0%B7%D0%B5%D1%80.html';
end;

procedure TfPodborZameni.bInternetBrowClick(Sender: TObject);
begin
    bInternetBrowMozillaFirefox.Visible:=true;
    bInternetBrowOtterBrowser.Visible:=true;
    bInternetBrowChromium.Visible:=true;
    bInternetTalkKVIrc.Visible:=False;
    bInternetTalkTkabber.Visible:=False;
    bInternetTalkPidgin.Visible:=False;
    bInternetTalkMozillaThunderbird.Visible:=False;
    bInternetTalkMumble.Visible:=False;
    bInternetTalkBeeBEEP.Visible:=False;
    bInternetTalkLinphone.Visible:=False;
    bInternetDownClipGrab.Visible:=False;
    bInternetDownFileZilla.Visible:=False;
    bInternetDownJDownloader.Visible:=False;
    bInternetDownFdm.Visible:=False;
    bInternetDownqBittorrent.Visible:=False;
    bInternetSetutWireshark.Visible:=False;
    bInternetSetutNmap.Visible:=False;
    bInternetSetutOpenVisualTraceroute.Visible:=False;
    bInternetSetutSecurepointSSLVPNClient.Visible:=False;
    bInternetSetutruWinMTR.Visible:=False;
    bInternetSetutLinkChecker.Visible:=False;
    bInternetSetuthttpres.Visible:=False;
    bInternetSetutSimpleSitemapCreator.Visible:=False;
    bInternetRssRSSBandit.Visible:=False;
    bInternetRssQuiteRSS.Visible:=False;
    bInternetRssMozillaThunderbird.Visible:=False;
end;

procedure TfPodborZameni.bInternetBrowMozillaFirefoxClick(Sender: TObject);
begin
    lProgramName.Caption:='Mozilla Firefox';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D1%81%D0%B5%D1%82%D1%8C,-%D0%B8%D0%BD%D1%82%D0%B5%D1%80%D0%BD%D0%B5%D1%82/%D0%B8%D0%BD%D1%82%D0%B5%D1%80%D0%BD%D0%B5%D1%82-%D0%BE%D0%B1%D0%BE%D0%B7%D1%80%D0%B5%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B8/mozilla-firefox-%D0%B8%D0%BD%D1%82%D0%B5%D1%80%D0%BD%D0%B5%D1%82-%D0%BE%D0%B1%D0%BE%D0%B7%D1%80%D0%B5%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C.html';
end;

procedure TfPodborZameni.bInternetBrowOtterBrowserClick(Sender: TObject);
begin
    lProgramName.Caption:='Otter Browser';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D1%81%D0%B5%D1%82%D1%8C,-%D0%B8%D0%BD%D1%82%D0%B5%D1%80%D0%BD%D0%B5%D1%82/%D0%B8%D0%BD%D1%82%D0%B5%D1%80%D0%BD%D0%B5%D1%82-%D0%BE%D0%B1%D0%BE%D0%B7%D1%80%D0%B5%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B8/otter-browser-%D0%B2%D0%B5%D0%B1-%D0%B1%D1%80%D0%B0%D1%83%D0%B7%D0%B5%D1%80.html';
end;

procedure TfPodborZameni.bInternetClick(Sender: TObject);
begin
    bInternetBrow.Visible:=true;
    bInternetTalk.Visible:=true;
    bInternetDown.Visible:=true;
    bInternetSetut.Visible:=true;
    bInternetRss.Visible:=true;
    bMultimVosp.Visible:=False;
    bMultimEdit.Visible:=False;
    bMultimKonvert.Visible:=False;
    bMultimZahvat.Visible:=False;
    bGrafSapr.Visible:=False;
    bGrafGrafedit.Visible:=False;
    bGraf2D.Visible:=False;
    bGraf3D.Visible:=False;
    bGrafProsmotr.Visible:=False;
    bGrafPreobr.Visible:=False;
    vCdZapis.Visible:=False;
    bCdProch.Visible:=False;
    bCdZapKomleks.Visible:=False;
    bCdProchIsoEm.Visible:=False;
    bCdProchIsoEm.Visible:=False;
    bCdProchDvdmenu.Visible:=False;
    bCdProchVossdan.Visible:=False;
    bBezAv.Visible:=False;
    bBezAvSprover.Visible:=False;
    bBezAvBezprover.Visible:=False;
    bBezRezKop.Visible:=False;
    bBezRezkopDomKomp.Visible:=False;
    bBezRezkopRabkomp.Visible:=False;
    bBezShifrFile.Visible:=False;
    bBezShifrHdd.Visible:=False;
    bBezShifr.Visible:=False;
    bBezParol.Visible:=False;
    bBezParolHranPar.Visible:=False;
    bBezParolSozdpar.Visible:=False;
    bBezProch.Visible:=False;
    bBezProchAnonbrow.Visible:=False;
    bBezProchFiltr.Visible:=False;
    bBezProchMonIzmFile.Visible:=False;
    bBezProchBezdel.Visible:=False;
    bGrafGrafeditVector.Visible:=False;
    bGrafGrafeditRedfot.Visible:=False;
    bGrafGrafeditRedico.Visible:=False;
    bGrafGrafeditRedkart.Visible:=False;
    bGrafGrafeditIzdsys.Visible:=False;
    bGrafSaprSolveSpace.Visible:=False;
    bGrafSaprFreeCAD.Visible:=False;
    bGrafSaprNaroCAD.Visible:=False;
    bGrafSaprBRLCAD.Visible:=False;
    bGrafSaprLibreCAD.Visible:=False;
    bGrafSaprKiCad.Visible:=False;
    bGrafSaprQucs.Visible:=False;
    bGraf2DPencil2d.Visible:=False;
    bGraf2DPencil.Visible:=False;
    bGraf2DTupi.Visible:=False;
    bGraf2DSynfigStudio.Visible:=False;
    bGraf3DMakeHuman.Visible:=False;
    bGraf3DSeamless3d.Visible:=False;
    bGraf3DOpenFX.Visible:=False;
    bGraf3DK3D.Visible:=False;
    bGraf3DArtofIllusion.Visible:=False;
    bGraf3DBlender.Visible:=False;
    bGraf3DSweetHome3D.Visible:=False;
    bGrafProsmotrNomacs.Visible:=False;
    bGrafProsmotrAdvancedPhoto.Visible:=False;
    bGrafProsmotrJMG.Visible:=False;
    bGrafProsmotrImageGlass.Visible:=False;
    bGrafPreobrCaesium.Visible:=False;
    bGrafPreobrConverseen.Visible:=False;
    bGrafPreobrSIET.Visible:=False;
    bDrugieObrMnemosyne.Visible:=False;
    bDrugieObrMaxima.Visible:=False;
    bDrugieObriTest.Visible:=False;
    bDrugieObrScilab.Visible:=False;
    bDrugieObrOpenTeacher.Visible:=False;
    bDrugieObrDWSIM.Visible:=False;
    bDrugieObr.Visible:=False;
    bDrugieVirtpl.Visible:=False;
    bDrugieVirtplSkyChart.Visible:=False;
    bDrugieVirtplStellarium.Visible:=False;
    bDrugieVirtplCelestia.Visible:=False;
    bDrugieKat.Visible:=False;
    bDrugieKatStuffOrganizer.Visible:=False;
    bDrugieKatDataCrow.Visible:=False;
    bDrugieKatAntMovieCatalog.Visible:=False;
    bDrugieKatGCstar.Visible:=False;
    bDrugieZam.Visible:=False;
    bDrugieZamOutWiker.Visible:=False;
    bDrugieZamRedNotebook.Visible:=False;
    bDrugieZamPNotes.Visible:=False;
    bDrugieZamQQwnNotes.Visible:=False;
    bMultimVospOnline.Visible:=False;
    bMultimVospVideo.Visible:=False;
    bMultimVospAudio.Visible:=False;
    bMultimVospMedCentr.Visible:=False;
    bMultimEditVlmc.Visible:=False;
    bMultimEditAvidemux.Visible:=False;
    bMultimEditShotcut.Visible:=False;
    bMultimEditAudacity.Visible:=False;
    bMultimEditWaveShop.Visible:=False;
    bMultimKonvertHandBrake.Visible:=False;
    bMultimKonvertQWinFF.Visible:=False;
    bMultimKonvertTEncoder.Visible:=False;
    bMultimKonvertfreac.Visible:=False;
    bMultimKonvertTAudioConverter.Visible:=False;
    bMultimZahvatOBS.Visible:=False;
    bMultimZahvatFoxToolsShooter.Visible:=False;
    bMultimZahvatGreenshot.Visible:=False;
    bMultimZahvatShareX.Visible:=False;
    bOfficeFinance.Visible:=False;
    bOfficeFinanceAnanas.Visible:=False;
    bOfficeFinanceHomeBank.Visible:=False;
    bOfficeFinanceMoneyManagerEx.Visible:=False;
    bOfficeFinanceKMyMoney.Visible:=False;
    bOfficeFinanceRepairCenter.Visible:=False;
    bOfficeFinanceFramingWorkshop.Visible:=False;
    bOfficeFinanceSysUchZayv.Visible:=False;
    bOfficeFinanceMoiprodazhi.Visible:=False;
    bOfficeFinanceFakturama.Visible:=False;
    bOfficeAnalog.Visible:=False;
    bOfficeAnalogONLYOFFICEDesktopEditors.Visible:=False;
    bOfficeAnalogLibreOffice.Visible:=False;
    bOfficeAnalogApacheOpenOffice.Visible:=False;
    bOfficeAnalogCalligraGemini.Visible:=False;
    bOfficePdf.Visible:=False;
    bOfficePdfSumatraPDF.Visible:=False;
    bOfficePdfCalibre.Visible:=False;
    bOfficePdfTEBookConverter.Visible:=False;
    bOfficePdfRedaktorpdf.Visible:=False;
    bOfficePdfPDFsamBasic.Visible:=False;
    bOfficePdfFB2.Visible:=False;
    bOfficeScanNASP2.Visible:=False;
    bOfficeScan.Visible:=False;
    bOfficeScanVietOCR.Visible:=False;
    bOfficeScanCognitiveOpenOCR.Visible:=False;
    bOfficeScanPDFCreator.Visible:=False;
    bOfficePlan.Visible:=False;
    bOfficePlanGanttProject.Visible:=False;
    bOfficePlanProjectLibre.Visible:=False;
    bOfficePlanWindowsPlanner.Visible:=False;
    bOfficePlanTaskUnifier.Visible:=False;
    bOfficePlanTaskCoach.Visible:=False;
    bOfficePlanMozillaSunbird.Visible:=False;
    bOfficePlanTheTimelineProject.Visible:=False;
    bOfficePlaOnepointProjectBasicEdition.Visible:=False;
    bRazrabHtml.Visible:=False;
    bRazrabHtmlBrackets.Visible:=False;
    bRazrabHtmlBluefish.Visible:=False;
    bRazrabHtmlBlueGriffon.Visible:=False;
    bRazrabHtmlkodeWeave.Visible:=False;
    bRazrabHtmlNotepad.Visible:=False;
    bRazrabCpp.Visible:=False;
    bRazrabCppWxDev.Visible:=False;
    bRazrabCppCodeBlocks.Visible:=False;
    bRazrabCppNetBeans.Visible:=False;
    bRazrabCppXamarinStudio.Visible:=False;
    bRazrabCppBluefish.Visible:=False;
    bRazrabOp.Visible:=False;
    bRazrabOpLazarus.Visible:=False;
    bInternetBrowMozillaFirefox.Visible:=False;
    bInternetBrowOtterBrowser.Visible:=False;
    bInternetBrowChromium.Visible:=False;
    bInternetTalkKVIrc.Visible:=False;
    bInternetTalkTkabber.Visible:=False;
    bInternetTalkPidgin.Visible:=False;
    bInternetTalkMozillaThunderbird.Visible:=False;
    bInternetTalkMumble.Visible:=False;
    bInternetTalkBeeBEEP.Visible:=False;
    bInternetTalkLinphone.Visible:=False;
    bInternetDownClipGrab.Visible:=False;
    bInternetDownFileZilla.Visible:=False;
    bInternetDownJDownloader.Visible:=False;
    bInternetDownFdm.Visible:=False;
    bInternetDownqBittorrent.Visible:=False;
    bInternetSetutWireshark.Visible:=False;
    bInternetSetutNmap.Visible:=False;
    bInternetSetutOpenVisualTraceroute.Visible:=False;
    bInternetSetutSecurepointSSLVPNClient.Visible:=False;
    bInternetSetutruWinMTR.Visible:=False;
    bInternetSetutLinkChecker.Visible:=False;
    bInternetSetuthttpres.Visible:=False;
    bInternetSetutSimpleSitemapCreator.Visible:=False;
    bInternetRssQuiteRSS.Visible:=False;
    bInternetRssRSSBandit.Visible:=False;
    bInternetRssMozillaThunderbird.Visible:=False;
    bUtilityRar.Visible:=False;
    bUtilityRarPeaZip.Visible:=False;
    bUtilityRarFreeArc.Visible:=False;
    bUtilityRar7Zip.Visible:=False;
    bUtilitySystem.Visible:=False;
    bUtilitySystemProcessHacker.Visible:=False;
    bUtilitySystemUltraDefrag.Visible:=False;
    bUtilitySystemBulkCrapUninstaller.Visible:=False;
    bUtilitySystemSmartSystemRepiar.Visible:=False;
    bUtilitySystemSysOptimizer.Visible:=False;
    bUtilitySystemPerformanceMaintainer.Visible:=False;
    bUtilitySystemAspia.Visible:=False;
    bUtilitySystemHDDGuardian.Visible:=False;
    bUtilitySystemDitto.Visible:=False;
    bUtilityFile.Visible:=False;
    bUtilityFileFreeFileSync.Visible:=False;
    bUtilityFileWinMerge.Visible:=False;
    bUtilityFileKickassUndelete.Visible:=False;
    bUtilityFileDoubleCommander.Visible:=False;
    bUtilityFileFileOptimizer.Visible:=False;
    bUtilityFileDUFF.Visible:=False;
    bUtilityProch.Visible:=False;
    bUtilityProchCloseTheDoor.Visible:=False;
    bUtilityProchAngryIPScanner.Visible:=False;
    bUtilityProchiTALC.Visible:=False;
    bUtilityProchUltraVNC.Visible:=False;
    bUtilityProchwxHexEditor.Visible:=False;
    bUtilityProchFontForge.Visible:=False;
    bUtilityProchVirtualBox.Visible:=False;
end;

procedure TfPodborZameni.bInternetDownClick(Sender: TObject);
begin
    bInternetDownClipGrab.Visible:=true;
    bInternetDownFileZilla.Visible:=true;
    bInternetDownJDownloader.Visible:=true;
    bInternetDownFdm.Visible:=true;
    bInternetDownqBittorrent.Visible:=true;
    bInternetTalkKVIrc.Visible:=False;
    bInternetTalkTkabber.Visible:=False;
    bInternetTalkPidgin.Visible:=False;
    bInternetTalkMozillaThunderbird.Visible:=False;
    bInternetTalkMumble.Visible:=False;
    bInternetTalkBeeBEEP.Visible:=False;
    bInternetTalkLinphone.Visible:=False;
    bInternetBrowMozillaFirefox.Visible:=False;
    bInternetBrowOtterBrowser.Visible:=False;
    bInternetBrowChromium.Visible:=False;
    bInternetSetutWireshark.Visible:=False;
    bInternetSetutNmap.Visible:=False;
    bInternetSetutOpenVisualTraceroute.Visible:=False;
    bInternetSetutSecurepointSSLVPNClient.Visible:=False;
    bInternetSetutruWinMTR.Visible:=False;
    bInternetSetutLinkChecker.Visible:=False;
    bInternetSetuthttpres.Visible:=False;
    bInternetSetutSimpleSitemapCreator.Visible:=False;
    bInternetRssQuiteRSS.Visible:=False;
    bInternetRssRSSBandit.Visible:=False;
    bInternetRssMozillaThunderbird.Visible:=False;
end;

procedure TfPodborZameni.bInternetDownClipGrabClick(Sender: TObject);
begin
    lProgramName.Caption:='ClipGrab';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D1%81%D0%B5%D1%82%D1%8C,-%D0%B8%D0%BD%D1%82%D0%B5%D1%80%D0%BD%D0%B5%D1%82/%D0%B7%D0%B0%D0%B3%D1%80%D1%83%D0%B7%D0%BA%D0%B8/clipgrab-%D0%B7%D0%B0%D0%B3%D1%80%D1%83%D0%B7%D0%BA%D0%B0-%D0%B2%D0%B8%D0%B4%D0%B5%D0%BE-%D1%81-%D0%BF%D0%BE%D0%BF%D1%83%D0%BB%D1%8F%D1%80%D0%BD%D1%8B%D1%85-%D0%B2%D0%B8%D0%B4%D0%B5%D0%BE-%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81%D0%BE%D0%B2.html';
end;

procedure TfPodborZameni.bInternetDownFdmClick(Sender: TObject);
begin
    lProgramName.Caption:='Free Download Manager';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D1%81%D0%B5%D1%82%D1%8C,-%D0%B8%D0%BD%D1%82%D0%B5%D1%80%D0%BD%D0%B5%D1%82/%D0%B7%D0%B0%D0%B3%D1%80%D1%83%D0%B7%D0%BA%D0%B8/free-download-manager-%D0%BC%D0%B5%D0%BD%D0%B5%D0%B4%D0%B6%D0%B5%D1%80-%D0%B7%D0%B0%D0%B3%D1%80%D1%83%D0%B7%D0%BE%D0%BA.html';
end;

procedure TfPodborZameni.bInternetDownFileZillaClick(Sender: TObject);
begin
    lProgramName.Caption:='FileZilla';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D1%81%D0%B5%D1%82%D1%8C,-%D0%B8%D0%BD%D1%82%D0%B5%D1%80%D0%BD%D0%B5%D1%82/%D0%B7%D0%B0%D0%B3%D1%80%D1%83%D0%B7%D0%BA%D0%B8/filezilla-%D0%B1%D0%B5%D1%81%D0%BF%D0%BB%D0%B0%D1%82%D0%BD%D1%8B%D0%B9-ftp-%D0%BA%D0%BB%D0%B8%D0%B5%D0%BD%D1%82.html';
end;

procedure TfPodborZameni.bInternetDownJDownloaderClick(Sender: TObject);
begin
    lProgramName.Caption:='JDownloader';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D1%81%D0%B5%D1%82%D1%8C,-%D0%B8%D0%BD%D1%82%D0%B5%D1%80%D0%BD%D0%B5%D1%82/%D0%B7%D0%B0%D0%B3%D1%80%D1%83%D0%B7%D0%BA%D0%B8/jdownloader-%D0%BC%D0%B5%D0%BD%D0%B5%D0%B4%D0%B6%D0%B5%D1%80-%D0%B7%D0%B0%D0%BA%D0%B0%D1%87%D0%B5%D0%BA-%D0%B4%D0%BB%D1%8F-windows.html';
end;

procedure TfPodborZameni.bInternetDownqBittorrentClick(Sender: TObject);
begin
    lProgramName.Caption:='qBittorrent';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D1%81%D0%B5%D1%82%D1%8C,-%D0%B8%D0%BD%D1%82%D0%B5%D1%80%D0%BD%D0%B5%D1%82/%D0%B7%D0%B0%D0%B3%D1%80%D1%83%D0%B7%D0%BA%D0%B8/qbittorrent-bittorrent-%D0%BA%D0%BB%D0%B8%D0%B5%D0%BD%D1%82.html';
end;

procedure TfPodborZameni.bInternetRssClick(Sender: TObject);
begin
    bInternetRssRSSBandit.Visible:=true;
    bInternetRssQuiteRSS.Visible:=true;
    bInternetRssMozillaThunderbird.Visible:=true;
    bInternetSetutWireshark.Visible:=False;
    bInternetSetutNmap.Visible:=False;
    bInternetSetutOpenVisualTraceroute.Visible:=False;
    bInternetSetutSecurepointSSLVPNClient.Visible:=False;
    bInternetSetutruWinMTR.Visible:=False;
    bInternetSetutLinkChecker.Visible:=False;
    bInternetSetuthttpres.Visible:=False;
    bInternetSetutSimpleSitemapCreator.Visible:=False;
    bInternetTalkKVIrc.Visible:=False;
    bInternetTalkTkabber.Visible:=False;
    bInternetTalkPidgin.Visible:=False;
    bInternetTalkMozillaThunderbird.Visible:=False;
    bInternetTalkMumble.Visible:=False;
    bInternetTalkBeeBEEP.Visible:=False;
    bInternetTalkLinphone.Visible:=False;
    bInternetBrowMozillaFirefox.Visible:=False;
    bInternetBrowOtterBrowser.Visible:=False;
    bInternetBrowChromium.Visible:=False;
    bInternetDownClipGrab.Visible:=False;
    bInternetDownFileZilla.Visible:=False;
    bInternetDownJDownloader.Visible:=False;
    bInternetDownFdm.Visible:=False;
    bInternetDownqBittorrent.Visible:=False;
end;

procedure TfPodborZameni.bInternetRssMozillaThunderbirdClick(Sender: TObject);
begin
    lProgramName.Caption:='Mozilla Thunderbird';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D1%81%D0%B5%D1%82%D1%8C,-%D0%B8%D0%BD%D1%82%D0%B5%D1%80%D0%BD%D0%B5%D1%82/%D0%BE%D0%B1%D1%89%D0%B5%D0%BD%D0%B8%D0%B5/mozilla-thunderbird-%D0%BF%D0%BE%D1%87%D1%82%D0%BE%D0%B2%D0%B0%D1%8F-%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D0%B0.html';
end;

procedure TfPodborZameni.bInternetRssQuiteRSSClick(Sender: TObject);
begin
    lProgramName.Caption:='QuiteRSS';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D1%81%D0%B5%D1%82%D1%8C,-%D0%B8%D0%BD%D1%82%D0%B5%D1%80%D0%BD%D0%B5%D1%82/%D0%BF%D1%80%D0%BE%D1%87%D0%B5%D0%B5/quiterss-%D1%87%D1%82%D0%B5%D0%BD%D0%B8%D0%B5-%D0%BD%D0%BE%D0%B2%D0%BE%D1%81%D1%82%D0%BD%D1%8B%D1%85-%D0%BB%D0%B5%D0%BD%D1%82-rss-atom.html';
end;

procedure TfPodborZameni.bInternetRssRSSBanditClick(Sender: TObject);
begin
    lProgramName.Caption:='RSS Bandit';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D1%81%D0%B5%D1%82%D1%8C,-%D0%B8%D0%BD%D1%82%D0%B5%D1%80%D0%BD%D0%B5%D1%82/%D0%BF%D1%80%D0%BE%D1%87%D0%B5%D0%B5/rss-bandit-rss-%D0%B8-atom-%D0%B0%D0%B3%D1%80%D0%B5%D0%B3%D0%B0%D1%82%D0%BE%D1%80.html';
end;

procedure TfPodborZameni.bInternetSetutClick(Sender: TObject);
begin
    bInternetSetutWireshark.Visible:=true;
    bInternetSetutNmap.Visible:=true;
    bInternetSetutOpenVisualTraceroute.Visible:=true;
    bInternetSetutSecurepointSSLVPNClient.Visible:=true;
    bInternetSetutruWinMTR.Visible:=true;
    bInternetSetutLinkChecker.Visible:=true;
    bInternetSetuthttpres.Visible:=true;
    bInternetSetutSimpleSitemapCreator.Visible:=true;
    bInternetTalkKVIrc.Visible:=False;
    bInternetTalkTkabber.Visible:=False;
    bInternetTalkPidgin.Visible:=False;
    bInternetTalkMozillaThunderbird.Visible:=False;
    bInternetTalkMumble.Visible:=False;
    bInternetTalkBeeBEEP.Visible:=False;
    bInternetTalkLinphone.Visible:=False;
    bInternetBrowMozillaFirefox.Visible:=False;
    bInternetBrowOtterBrowser.Visible:=False;
    bInternetBrowChromium.Visible:=False;
    bInternetDownClipGrab.Visible:=False;
    bInternetDownFileZilla.Visible:=False;
    bInternetDownJDownloader.Visible:=False;
    bInternetDownFdm.Visible:=False;
    bInternetDownqBittorrent.Visible:=False;
    bInternetRssRSSBandit.Visible:=False;
    bInternetRssQuiteRSS.Visible:=False;
    bInternetRssMozillaThunderbird.Visible:=False;
end;

procedure TfPodborZameni.bInternetSetuthttpresClick(Sender: TObject);
begin
    lProgramName.Caption:='httpres';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D1%81%D0%B5%D1%82%D1%8C,-%D0%B8%D0%BD%D1%82%D0%B5%D1%80%D0%BD%D0%B5%D1%82/%D0%BF%D1%80%D0%BE%D1%87%D0%B5%D0%B5/httpres-%D0%BE%D1%82%D0%BE%D0%B1%D1%80%D0%B0%D0%B6%D0%B5%D0%BD%D0%B8%D0%B5-%D0%BA%D0%BE%D0%B4%D0%B0-http-%D0%BE%D1%82%D0%B2%D0%B5%D1%82%D0%B0.html';
end;

procedure TfPodborZameni.bInternetSetutLinkCheckerClick(Sender: TObject);
begin
    lProgramName.Caption:='LinkChecker';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D1%81%D0%B5%D1%82%D1%8C,-%D0%B8%D0%BD%D1%82%D0%B5%D1%80%D0%BD%D0%B5%D1%82/%D0%BF%D1%80%D0%BE%D1%87%D0%B5%D0%B5/linkchecker-%D0%BF%D0%BE%D0%B8%D1%81%D0%BA-%D0%B1%D0%B8%D1%82%D1%8B%D1%85-%D1%81%D1%81%D1%8B%D0%BB%D0%BE%D0%BA-%D0%BD%D0%B0-%D1%81%D0%B0%D0%B9%D1%82%D0%B5.html';
end;

procedure TfPodborZameni.bInternetSetutNmapClick(Sender: TObject);
begin
    lProgramName.Caption:='Nmap';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D1%81%D0%B5%D1%82%D1%8C,-%D0%B8%D0%BD%D1%82%D0%B5%D1%80%D0%BD%D0%B5%D1%82/%D0%BF%D1%80%D0%BE%D1%87%D0%B5%D0%B5/nmap-%D1%81%D0%BA%D0%B0%D0%BD%D0%B5%D1%80-%D0%B1%D0%B5%D0%B7%D0%BE%D0%BF%D0%B0%D1%81%D0%BD%D0%BE%D1%81%D1%82%D0%B8.html';
end;

procedure TfPodborZameni.bInternetSetutOpenVisualTracerouteClick(Sender: TObject
  );
begin
    lProgramName.Caption:='Open Visual Traceroute';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D1%81%D0%B5%D1%82%D1%8C,-%D0%B8%D0%BD%D1%82%D0%B5%D1%80%D0%BD%D0%B5%D1%82/%D0%BF%D1%80%D0%BE%D1%87%D0%B5%D0%B5/open-visual-traceroute-%D0%B2%D0%B8%D0%B7%D1%83%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D0%B9-%D0%BC%D0%B0%D1%80%D1%88%D1%80%D1%83%D1%82-ip-%D0%BF%D0%B0%D0%BA%D0%B5%D1%82%D0%BE%D0%B2.html';
end;

procedure TfPodborZameni.bInternetSetutruWinMTRClick(Sender: TObject);
begin
    lProgramName.Caption:='ruWinMTR';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D1%81%D0%B5%D1%82%D1%8C,-%D0%B8%D0%BD%D1%82%D0%B5%D1%80%D0%BD%D0%B5%D1%82/%D0%BF%D1%80%D0%BE%D1%87%D0%B5%D0%B5/ruwinmtr-%D0%B4%D0%B8%D0%B0%D0%B3%D0%BD%D0%BE%D1%81%D1%82%D0%B8%D0%BA%D0%B0-%D1%81%D0%B5%D1%82%D0%B5%D0%B2%D0%BE%D0%B3%D0%BE-%D1%82%D1%80%D0%B0%D1%84%D0%B8%D0%BA%D0%B0.html';
end;

procedure TfPodborZameni.bInternetSetutSecurepointSSLVPNClientClick(
  Sender: TObject);
begin
    lProgramName.Caption:='Securepoint SSL VPN Client';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D1%81%D0%B5%D1%82%D1%8C,-%D0%B8%D0%BD%D1%82%D0%B5%D1%80%D0%BD%D0%B5%D1%82/%D0%BF%D1%80%D0%BE%D1%87%D0%B5%D0%B5/open-vpn-client-windows-vpn-%D0%BA%D0%BB%D0%B8%D0%B5%D0%BD%D1%82.html';
end;

procedure TfPodborZameni.bInternetSetutSimpleSitemapCreatorClick(Sender: TObject
  );
begin
    lProgramName.Caption:='Simple Sitemap Creator';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D1%81%D0%B5%D1%82%D1%8C,-%D0%B8%D0%BD%D1%82%D0%B5%D1%80%D0%BD%D0%B5%D1%82/%D0%BF%D1%80%D0%BE%D1%87%D0%B5%D0%B5/simple-sitemap-creator-%D1%81%D0%BE%D0%B7%D0%B4%D0%B0%D0%BD%D0%B8%D0%B5-%D0%BA%D0%B0%D1%80%D1%82%D1%8B-%D1%81%D0%B0%D0%B9%D1%82%D0%B0.html';
end;

procedure TfPodborZameni.bInternetSetutWiresharkClick(Sender: TObject);
begin
    lProgramName.Caption:='Wireshark';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D1%81%D0%B5%D1%82%D1%8C,-%D0%B8%D0%BD%D1%82%D0%B5%D1%80%D0%BD%D0%B5%D1%82/%D0%BF%D1%80%D0%BE%D1%87%D0%B5%D0%B5/wireshark-%D0%B0%D0%BD%D0%B0%D0%BB%D0%B8%D0%B7%D0%B0%D1%82%D0%BE%D1%80-%D1%82%D1%80%D0%B0%D1%84%D0%B8%D0%BA%D0%B0-%D0%BA%D0%BE%D0%BC%D0%BF%D1%8C%D1%8E%D1%82%D0%B5%D1%80%D0%BD%D1%8B%D1%85-%D1%81%D0%B5%D1%82%D0%B5%D0%B9.html';
end;

procedure TfPodborZameni.bInternetTalkBeeBEEPClick(Sender: TObject);
begin
    lProgramName.Caption:='BeeBEEP';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D1%81%D0%B5%D1%82%D1%8C,-%D0%B8%D0%BD%D1%82%D0%B5%D1%80%D0%BD%D0%B5%D1%82/%D0%BE%D0%B1%D1%89%D0%B5%D0%BD%D0%B8%D0%B5/beebeep-%D0%B1%D0%B5%D0%B7%D0%BE%D0%BF%D0%B0%D1%81%D0%BD%D1%8B%D0%B9-%D1%87%D0%B0%D1%82-%D0%B2-%D0%BB%D0%BE%D0%BA%D0%B0%D0%BB%D1%8C%D0%BD%D0%BE%D0%B9-%D1%81%D0%B5%D1%82%D0%B8.html';
end;

procedure TfPodborZameni.bInternetTalkClick(Sender: TObject);
begin
    bInternetTalkKVIrc.Visible:=true;
    bInternetTalkTkabber.Visible:=true;
    bInternetTalkPidgin.Visible:=true;
    bInternetTalkMozillaThunderbird.Visible:=true;
    bInternetTalkMumble.Visible:=true;
    bInternetTalkBeeBEEP.Visible:=true;
    bInternetTalkLinphone.Visible:=true;
    bInternetBrowMozillaFirefox.Visible:=False;
    bInternetBrowOtterBrowser.Visible:=False;
    bInternetBrowChromium.Visible:=False;
    bInternetDownClipGrab.Visible:=False;
    bInternetDownFileZilla.Visible:=False;
    bInternetDownJDownloader.Visible:=False;
    bInternetDownFdm.Visible:=False;
    bInternetDownqBittorrent.Visible:=False;
    bInternetSetutWireshark.Visible:=False;
    bInternetSetutNmap.Visible:=False;
    bInternetSetutOpenVisualTraceroute.Visible:=False;
    bInternetSetutSecurepointSSLVPNClient.Visible:=False;
    bInternetSetutruWinMTR.Visible:=False;
    bInternetSetutLinkChecker.Visible:=False;
    bInternetSetuthttpres.Visible:=False;
    bInternetSetutSimpleSitemapCreator.Visible:=False;
    bInternetRssRSSBandit.Visible:=False;
    bInternetRssQuiteRSS.Visible:=False;
    bInternetRssMozillaThunderbird.Visible:=False;
end;

procedure TfPodborZameni.bInternetTalkKVIrcClick(Sender: TObject);
begin
    lProgramName.Caption:='KVIrc';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D1%81%D0%B5%D1%82%D1%8C,-%D0%B8%D0%BD%D1%82%D0%B5%D1%80%D0%BD%D0%B5%D1%82/%D0%BE%D0%B1%D1%89%D0%B5%D0%BD%D0%B8%D0%B5/kvirc-irc-%D0%BA%D0%BB%D0%B8%D0%B5%D0%BD%D1%82.html';
end;

procedure TfPodborZameni.bInternetTalkLinphoneClick(Sender: TObject);
begin
    lProgramName.Caption:='Linphone';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D1%81%D0%B5%D1%82%D1%8C,-%D0%B8%D0%BD%D1%82%D0%B5%D1%80%D0%BD%D0%B5%D1%82/%D0%BE%D0%B1%D1%89%D0%B5%D0%BD%D0%B8%D0%B5/linphone-sip-%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D0%B0.html';
end;

procedure TfPodborZameni.bInternetTalkMozillaThunderbirdClick(Sender: TObject);
begin
    lProgramName.Caption:='Mozilla Thunderbird';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D1%81%D0%B5%D1%82%D1%8C,-%D0%B8%D0%BD%D1%82%D0%B5%D1%80%D0%BD%D0%B5%D1%82/%D0%BE%D0%B1%D1%89%D0%B5%D0%BD%D0%B8%D0%B5/mozilla-thunderbird-%D0%BF%D0%BE%D1%87%D1%82%D0%BE%D0%B2%D0%B0%D1%8F-%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D0%B0.html';
end;

procedure TfPodborZameni.bInternetTalkMumbleClick(Sender: TObject);
begin
    lProgramName.Caption:='Mumble';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D1%81%D0%B5%D1%82%D1%8C,-%D0%B8%D0%BD%D1%82%D0%B5%D1%80%D0%BD%D0%B5%D1%82/%D0%BE%D0%B1%D1%89%D0%B5%D0%BD%D0%B8%D0%B5/mumble-%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D0%B0-%D0%B4%D0%BB%D1%8F-%D0%BF%D0%B5%D1%80%D0%B5%D0%B4%D0%B0%D1%87%D0%B8-%D0%B3%D0%BE%D0%BB%D0%BE%D1%81%D0%B0-%D0%BF%D0%BE-ip.html';
end;

procedure TfPodborZameni.bInternetTalkPidginClick(Sender: TObject);
begin
    lProgramName.Caption:='Pidgin';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D1%81%D0%B5%D1%82%D1%8C,-%D0%B8%D0%BD%D1%82%D0%B5%D1%80%D0%BD%D0%B5%D1%82/%D0%BE%D0%B1%D1%89%D0%B5%D0%BD%D0%B8%D0%B5/pidgin-%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D0%B0-%D0%BE%D0%B1%D0%BC%D0%B5%D0%BD%D0%B0-%D0%BC%D0%B3%D0%BD%D0%BE%D0%B2%D0%B5%D0%BD%D0%BD%D1%8B%D0%BC%D0%B8-%D1%81%D0%BE%D0%BE%D0%B1%D1%89%D0%B5%D0%BD%D0%B8%D1%8F%D0%BC%D0%B8.html';
end;

procedure TfPodborZameni.bInternetTalkTkabberClick(Sender: TObject);
begin
    lProgramName.Caption:='Tkabber';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D1%81%D0%B5%D1%82%D1%8C,-%D0%B8%D0%BD%D1%82%D0%B5%D1%80%D0%BD%D0%B5%D1%82/%D0%BE%D0%B1%D1%89%D0%B5%D0%BD%D0%B8%D0%B5/tkabber-%D0%BA%D0%BB%D0%B8%D0%B5%D0%BD%D1%82-%D0%BC%D0%B3%D0%BD%D0%BE%D0%B2%D0%B5%D0%BD%D0%BD%D0%BE%D0%B3%D0%BE-%D0%BE%D0%B1%D0%BC%D0%B5%D0%BD%D0%B0-%D1%81%D0%BE%D0%BE%D0%B1%D1%89%D0%B5%D0%BD%D0%B8%D1%8F%D0%BC%D0%B8.html';
end;

procedure TfPodborZameni.bMultimClick(Sender: TObject);
begin
    bMultimVosp.Visible:=true;
    bMultimEdit.Visible:=true;
    bMultimKonvert.Visible:=true;
    bMultimZahvat.Visible:=true;
    bGrafSapr.Visible:=False;
    bGrafGrafedit.Visible:=False;
    bGraf2D.Visible:=False;
    bGraf3D.Visible:=False;
    bGrafProsmotr.Visible:=False;
    bGrafPreobr.Visible:=False;
    vCdZapis.Visible:=False;
    bCdProch.Visible:=False;
    bCdZapKomleks.Visible:=False;
    bCdProchIsoEm.Visible:=False;
    bCdProchIsoEm.Visible:=False;
    bCdProchDvdmenu.Visible:=False;
    bCdProchVossdan.Visible:=False;
    bBezAv.Visible:=False;
    bBezAvSprover.Visible:=False;
    bBezAvBezprover.Visible:=False;
    bBezRezKop.Visible:=False;
    bBezRezkopDomKomp.Visible:=False;
    bBezRezkopRabkomp.Visible:=False;
    bBezShifrFile.Visible:=False;
    bBezShifrHdd.Visible:=False;
    bBezShifr.Visible:=False;
    bBezParol.Visible:=False;
    bBezParolHranPar.Visible:=False;
    bBezParolSozdpar.Visible:=False;
    bBezProch.Visible:=False;
    bBezProchAnonbrow.Visible:=False;
    bBezProchFiltr.Visible:=False;
    bBezProchMonIzmFile.Visible:=False;
    bBezProchBezdel.Visible:=False;
    bGrafGrafeditVector.Visible:=False;
    bGrafGrafeditRedfot.Visible:=False;
    bGrafGrafeditRedico.Visible:=False;
    bGrafGrafeditRedkart.Visible:=False;
    bGrafGrafeditIzdsys.Visible:=False;
    bGrafSaprSolveSpace.Visible:=False;
    bGrafSaprFreeCAD.Visible:=False;
    bGrafSaprNaroCAD.Visible:=False;
    bGrafSaprBRLCAD.Visible:=False;
    bGrafSaprLibreCAD.Visible:=False;
    bGrafSaprKiCad.Visible:=False;
    bGrafSaprQucs.Visible:=False;
    bGraf2DPencil2d.Visible:=False;
    bGraf2DPencil.Visible:=False;
    bGraf2DTupi.Visible:=False;
    bGraf2DSynfigStudio.Visible:=False;
    bGraf3DMakeHuman.Visible:=False;
    bGraf3DSeamless3d.Visible:=False;
    bGraf3DOpenFX.Visible:=False;
    bGraf3DK3D.Visible:=False;
    bGraf3DArtofIllusion.Visible:=False;
    bGraf3DBlender.Visible:=False;
    bGraf3DSweetHome3D.Visible:=False;
    bGrafProsmotrNomacs.Visible:=False;
    bGrafProsmotrAdvancedPhoto.Visible:=False;
    bGrafProsmotrJMG.Visible:=False;
    bGrafProsmotrImageGlass.Visible:=False;
    bGrafPreobrCaesium.Visible:=False;
    bGrafPreobrConverseen.Visible:=False;
    bGrafPreobrSIET.Visible:=False;
    bDrugieObrMnemosyne.Visible:=False;
    bDrugieObrMaxima.Visible:=False;
    bDrugieObriTest.Visible:=False;
    bDrugieObrScilab.Visible:=False;
    bDrugieObrOpenTeacher.Visible:=False;
    bDrugieObrDWSIM.Visible:=False;
    bDrugieObr.Visible:=False;
    bDrugieVirtpl.Visible:=False;
    bDrugieVirtplSkyChart.Visible:=False;
    bDrugieVirtplStellarium.Visible:=False;
    bDrugieVirtplCelestia.Visible:=False;
    bDrugieKat.Visible:=False;
    bDrugieKatStuffOrganizer.Visible:=False;
    bDrugieKatDataCrow.Visible:=False;
    bDrugieKatAntMovieCatalog.Visible:=False;
    bDrugieKatGCstar.Visible:=False;
    bDrugieZam.Visible:=False;
    bDrugieZamOutWiker.Visible:=False;
    bDrugieZamRedNotebook.Visible:=False;
    bDrugieZamPNotes.Visible:=False;
    bDrugieZamQQwnNotes.Visible:=False;
    bMultimVospOnline.Visible:=False;
    bMultimVospVideo.Visible:=False;
    bMultimVospAudio.Visible:=False;
    bMultimVospMedCentr.Visible:=False;
    bMultimEditVlmc.Visible:=False;
    bMultimEditAvidemux.Visible:=False;
    bMultimEditShotcut.Visible:=False;
    bMultimEditAudacity.Visible:=False;
    bMultimEditWaveShop.Visible:=False;
    bMultimKonvertHandBrake.Visible:=False;
    bMultimKonvertQWinFF.Visible:=False;
    bMultimKonvertTEncoder.Visible:=False;
    bMultimKonvertfreac.Visible:=False;
    bMultimKonvertTAudioConverter.Visible:=False;
    bMultimZahvatOBS.Visible:=False;
    bMultimZahvatFoxToolsShooter.Visible:=False;
    bMultimZahvatGreenshot.Visible:=False;
    bMultimZahvatShareX.Visible:=False;
    bOfficeFinance.Visible:=False;
    bOfficeFinanceAnanas.Visible:=False;
    bOfficeFinanceHomeBank.Visible:=False;
    bOfficeFinanceMoneyManagerEx.Visible:=False;
    bOfficeFinanceKMyMoney.Visible:=False;
    bOfficeFinanceRepairCenter.Visible:=False;
    bOfficeFinanceFramingWorkshop.Visible:=False;
    bOfficeFinanceSysUchZayv.Visible:=False;
    bOfficeFinanceMoiprodazhi.Visible:=False;
    bOfficeFinanceFakturama.Visible:=False;
    bOfficeAnalog.Visible:=False;
    bOfficeAnalogONLYOFFICEDesktopEditors.Visible:=False;
    bOfficeAnalogLibreOffice.Visible:=False;
    bOfficeAnalogApacheOpenOffice.Visible:=False;
    bOfficeAnalogCalligraGemini.Visible:=False;
    bOfficePdf.Visible:=False;
    bOfficePdfSumatraPDF.Visible:=False;
    bOfficePdfCalibre.Visible:=False;
    bOfficePdfTEBookConverter.Visible:=False;
    bOfficePdfRedaktorpdf.Visible:=False;
    bOfficePdfPDFsamBasic.Visible:=False;
    bOfficePdfFB2.Visible:=False;
    bOfficeScanNASP2.Visible:=False;
    bOfficeScan.Visible:=False;
    bOfficeScanVietOCR.Visible:=False;
    bOfficeScanCognitiveOpenOCR.Visible:=False;
    bOfficeScanPDFCreator.Visible:=False;
    bOfficePlan.Visible:=False;
    bOfficePlanGanttProject.Visible:=False;
    bOfficePlanProjectLibre.Visible:=False;
    bOfficePlanWindowsPlanner.Visible:=False;
    bOfficePlanTaskUnifier.Visible:=False;
    bOfficePlanTaskCoach.Visible:=False;
    bOfficePlanMozillaSunbird.Visible:=False;
    bOfficePlanTheTimelineProject.Visible:=False;
    bOfficePlaOnepointProjectBasicEdition.Visible:=False;
    bRazrabHtml.Visible:=False;
    bRazrabHtmlBrackets.Visible:=False;
    bRazrabHtmlBluefish.Visible:=False;
    bRazrabHtmlBlueGriffon.Visible:=False;
    bRazrabHtmlkodeWeave.Visible:=False;
    bRazrabHtmlNotepad.Visible:=False;
    bRazrabCpp.Visible:=False;
    bRazrabCppWxDev.Visible:=False;
    bRazrabCppCodeBlocks.Visible:=False;
    bRazrabCppNetBeans.Visible:=False;
    bRazrabCppXamarinStudio.Visible:=False;
    bRazrabCppBluefish.Visible:=False;
    bRazrabOp.Visible:=False;
    bRazrabOpLazarus.Visible:=False;
    bInternetBrow.Visible:=False;
    bInternetBrowMozillaFirefox.Visible:=False;
    bInternetBrowOtterBrowser.Visible:=False;
    bInternetBrowChromium.Visible:=False;
    bInternetTalk.Visible:=False;
    bInternetTalkKVIrc.Visible:=False;
    bInternetTalkTkabber.Visible:=False;
    bInternetTalkPidgin.Visible:=False;
    bInternetTalkMozillaThunderbird.Visible:=False;
    bInternetTalkMumble.Visible:=False;
    bInternetTalkBeeBEEP.Visible:=False;
    bInternetTalkLinphone.Visible:=False;
    bInternetDown.Visible:=False;
    bInternetDownClipGrab.Visible:=False;
    bInternetDownFileZilla.Visible:=False;
    bInternetDownJDownloader.Visible:=False;
    bInternetDownFdm.Visible:=False;
    bInternetDownqBittorrent.Visible:=False;
    bInternetSetut.Visible:=False;
    bInternetSetutWireshark.Visible:=False;
    bInternetSetutNmap.Visible:=False;
    bInternetSetutOpenVisualTraceroute.Visible:=False;
    bInternetSetutSecurepointSSLVPNClient.Visible:=False;
    bInternetSetutruWinMTR.Visible:=False;
    bInternetSetutLinkChecker.Visible:=False;
    bInternetSetuthttpres.Visible:=False;
    bInternetSetutSimpleSitemapCreator.Visible:=False;
    bInternetRssRSSBandit.Visible:=False;
    bInternetRss.Visible:=False;
    bInternetRssQuiteRSS.Visible:=False;
    bInternetRssMozillaThunderbird.Visible:=False;
    bUtilityRar.Visible:=False;
    bUtilityRarPeaZip.Visible:=False;
    bUtilityRarFreeArc.Visible:=False;
    bUtilityRar7Zip.Visible:=False;
    bUtilitySystem.Visible:=False;
    bUtilitySystemProcessHacker.Visible:=False;
    bUtilitySystemUltraDefrag.Visible:=False;
    bUtilitySystemBulkCrapUninstaller.Visible:=False;
    bUtilitySystemSmartSystemRepiar.Visible:=False;
    bUtilitySystemSysOptimizer.Visible:=False;
    bUtilitySystemPerformanceMaintainer.Visible:=False;
    bUtilitySystemAspia.Visible:=False;
    bUtilitySystemHDDGuardian.Visible:=False;
    bUtilitySystemDitto.Visible:=False;
    bUtilityFile.Visible:=False;
    bUtilityFileFreeFileSync.Visible:=False;
    bUtilityFileWinMerge.Visible:=False;
    bUtilityFileKickassUndelete.Visible:=False;
    bUtilityFileDoubleCommander.Visible:=False;
    bUtilityFileFileOptimizer.Visible:=False;
    bUtilityFileDUFF.Visible:=False;
    bUtilityProch.Visible:=False;
    bUtilityProchCloseTheDoor.Visible:=False;
    bUtilityProchAngryIPScanner.Visible:=False;
    bUtilityProchiTALC.Visible:=False;
    bUtilityProchUltraVNC.Visible:=False;
    bUtilityProchwxHexEditor.Visible:=False;
    bUtilityProchFontForge.Visible:=False;
    bUtilityProchVirtualBox.Visible:=False;
end;

procedure TfPodborZameni.bMultimEditAudacityClick(Sender: TObject);
begin
    lProgramName.Caption:='Audacity';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%BC%D1%83%D0%BB%D1%8C%D1%82%D0%B8%D0%BC%D0%B5%D0%B4%D0%B8%D0%B0/%D1%80%D0%B5%D0%B4%D0%B0%D0%BA%D1%82%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5/audacity-%D1%80%D0%B5%D0%B4%D0%B0%D0%BA%D1%82%D0%BE%D1%80-%D0%B0%D1%83%D0%B4%D0%B8%D0%BE-%D1%84%D0%B0%D0%B9%D0%BB%D0%BE%D0%B2.html';
end;

procedure TfPodborZameni.bMultimEditAvidemuxClick(Sender: TObject);
begin
    lProgramName.Caption:='avidemux';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%BC%D1%83%D0%BB%D1%8C%D1%82%D0%B8%D0%BC%D0%B5%D0%B4%D0%B8%D0%B0/%D1%80%D0%B5%D0%B4%D0%B0%D0%BA%D1%82%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5/avidemux-%D1%81%D0%B2%D0%BE%D0%B1%D0%BE%D0%B4%D0%BD%D1%8B%D0%B9-%D1%80%D0%B5%D0%B4%D0%B0%D0%BA%D1%82%D0%BE%D1%80-%D0%B2%D0%B8%D0%B4%D0%B5%D0%BE.html';
end;

procedure TfPodborZameni.bMultimEditClick(Sender: TObject);
begin
    bMultimEditVlmc.Visible:=true;
    bMultimEditAvidemux.Visible:=true;
    bMultimEditShotcut.Visible:=true;
    bMultimEditAudacity.Visible:=true;
    bMultimEditWaveShop.Visible:=true;
    bMultimVospOnline.Visible:=False;
    bMultimVospVideo.Visible:=False;
    bMultimVospAudio.Visible:=False;
    bMultimVospMedCentr.Visible:=False;
    bMultimKonvertHandBrake.Visible:=False;
    bMultimKonvertQWinFF.Visible:=False;
    bMultimKonvertTEncoder.Visible:=False;
    bMultimKonvertfreac.Visible:=False;
    bMultimKonvertTAudioConverter.Visible:=False;
    bMultimZahvatOBS.Visible:=False;
    bMultimZahvatFoxToolsShooter.Visible:=False;
    bMultimZahvatGreenshot.Visible:=False;
    bMultimZahvatShareX.Visible:=False;
end;

procedure TfPodborZameni.bMultimEditShotcutClick(Sender: TObject);
begin
    lProgramName.Caption:='Shotcut';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%BC%D1%83%D0%BB%D1%8C%D1%82%D0%B8%D0%BC%D0%B5%D0%B4%D0%B8%D0%B0/%D1%80%D0%B5%D0%B4%D0%B0%D0%BA%D1%82%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5/shotcut-%D0%BF%D1%80%D0%B8%D0%BB%D0%BE%D0%B6%D0%B5%D0%BD%D0%B8%D0%B5-%D0%B4%D0%BB%D1%8F-%D1%80%D0%B5%D0%B4%D0%B0%D0%BA%D1%82%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8F-%D0%B2%D0%B8%D0%B4%D0%B5%D0%BE.html';
end;

procedure TfPodborZameni.bMultimEditVlmcClick(Sender: TObject);
begin
    lProgramName.Caption:='VideoLAN Movie Creator';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%BC%D1%83%D0%BB%D1%8C%D1%82%D0%B8%D0%BC%D0%B5%D0%B4%D0%B8%D0%B0/%D1%80%D0%B5%D0%B4%D0%B0%D0%BA%D1%82%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5/videolan-movie-creator-%D0%B2%D0%B8%D0%B4%D0%B5%D0%BE-%D1%80%D0%B5%D0%B4%D0%B0%D0%BA%D1%82%D0%BE%D1%80.html';
end;

procedure TfPodborZameni.bMultimEditWaveShopClick(Sender: TObject);
begin
    lProgramName.Caption:='WaveShop';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%BC%D1%83%D0%BB%D1%8C%D1%82%D0%B8%D0%BC%D0%B5%D0%B4%D0%B8%D0%B0/%D1%80%D0%B5%D0%B4%D0%B0%D0%BA%D1%82%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5/waveshop-%D1%80%D0%B5%D0%B4%D0%B0%D0%BA%D1%82%D0%BE%D1%80-%D0%B0%D1%83%D0%B4%D0%B8%D0%BE-%D1%84%D0%B0%D0%B9%D0%BB%D0%BE%D0%B2.html';
end;

procedure TfPodborZameni.bMultimKonvertClick(Sender: TObject);
begin
    bMultimKonvertHandBrake.Visible:=true;
    bMultimKonvertQWinFF.Visible:=true;
    bMultimKonvertTEncoder.Visible:=true;
    bMultimKonvertfreac.Visible:=true;
    bMultimKonvertTAudioConverter.Visible:=true;
    bMultimVospOnline.Visible:=False;
    bMultimVospVideo.Visible:=False;
    bMultimVospAudio.Visible:=False;
    bMultimVospMedCentr.Visible:=False;
    bMultimEditVlmc.Visible:=False;
    bMultimEditAvidemux.Visible:=False;
    bMultimEditShotcut.Visible:=False;
    bMultimEditAudacity.Visible:=False;
    bMultimEditWaveShop.Visible:=False;
    bMultimZahvatOBS.Visible:=False;
    bMultimZahvatFoxToolsShooter.Visible:=False;
    bMultimZahvatGreenshot.Visible:=False;
    bMultimZahvatShareX.Visible:=False;
end;

procedure TfPodborZameni.bMultimKonvertfreacClick(Sender: TObject);
begin
    lProgramName.Caption:='fre:ac';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%BC%D1%83%D0%BB%D1%8C%D1%82%D0%B8%D0%BC%D0%B5%D0%B4%D0%B8%D0%B0/%D0%BA%D0%BE%D0%BD%D0%B2%D0%B5%D1%80%D1%82%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5/fre-ac-%D0%B0%D1%83%D0%B4%D0%B8%D0%BE-%D0%BA%D0%BE%D0%BD%D0%B2%D0%B5%D1%80%D1%82%D0%B5%D1%80-%D0%B1%D0%B5%D1%81%D0%BF%D0%BB%D0%B0%D1%82%D0%BD%D1%8B%D0%B9.html';
end;

procedure TfPodborZameni.bMultimKonvertHandBrakeClick(Sender: TObject);
begin
    lProgramName.Caption:='HandBrake';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%BC%D1%83%D0%BB%D1%8C%D1%82%D0%B8%D0%BC%D0%B5%D0%B4%D0%B8%D0%B0/%D0%BA%D0%BE%D0%BD%D0%B2%D0%B5%D1%80%D1%82%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5/handbrake-%D0%B1%D0%B5%D1%81%D0%BF%D0%BB%D0%B0%D1%82%D0%BD%D1%8B%D0%B9-%D0%BA%D0%BE%D0%BD%D0%B2%D0%B5%D1%80%D1%82%D0%B5%D1%80-%D0%B2%D0%B8%D0%B4%D0%B5%D0%BE-%D0%B2-mp4.html';
end;

procedure TfPodborZameni.bMultimKonvertQWinFFClick(Sender: TObject);
begin
lProgramName.Caption:='QWinFF';
UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%BC%D1%83%D0%BB%D1%8C%D1%82%D0%B8%D0%BC%D0%B5%D0%B4%D0%B8%D0%B0/%D0%BA%D0%BE%D0%BD%D0%B2%D0%B5%D1%80%D1%82%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5/qwinff-%D0%BC%D0%B5%D0%B4%D0%B8%D0%B0%D0%BA%D0%BE%D0%BD%D0%B2%D0%B5%D1%80%D1%82%D0%B5%D1%80.html';
end;

procedure TfPodborZameni.bMultimKonvertTAudioConverterClick(Sender: TObject);
begin
    lProgramName.Caption:='TAudioConverter';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%BC%D1%83%D0%BB%D1%8C%D1%82%D0%B8%D0%BC%D0%B5%D0%B4%D0%B8%D0%B0/%D0%BA%D0%BE%D0%BD%D0%B2%D0%B5%D1%80%D1%82%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5/taudioconverter-%D0%BA%D0%BE%D0%BD%D0%B2%D0%B5%D1%80%D1%82%D0%B5%D1%80-%D0%B0%D1%83%D0%B4%D0%B8%D0%BE-%D1%84%D0%B0%D0%B9%D0%BB%D0%BE%D0%B2.html';
    end;

procedure TfPodborZameni.bMultimKonvertTEncoderClick(Sender: TObject);
begin
    lProgramName.Caption:='TEncoder Video Converter';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%BC%D1%83%D0%BB%D1%8C%D1%82%D0%B8%D0%BC%D0%B5%D0%B4%D0%B8%D0%B0/%D0%BA%D0%BE%D0%BD%D0%B2%D0%B5%D1%80%D1%82%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5/tencoder-video-converter-%D0%BC%D0%BD%D0%BE%D0%B3%D0%BE%D0%BF%D0%BE%D1%82%D0%BE%D1%87%D0%BD%D1%8B%D0%B9-%D0%B0%D1%83%D0%B4%D0%B8%D0%BE-%D0%B2%D0%B8%D0%B4%D0%B5%D0%BE-%D0%BA%D0%BE%D0%BD%D0%B2%D0%B5%D1%80%D1%82%D0%B5%D1%80.html';
end;

procedure TfPodborZameni.bMultimVospAudioClick(Sender: TObject);
begin
lProgramName.Caption:='Clementine';
UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%BC%D1%83%D0%BB%D1%8C%D1%82%D0%B8%D0%BC%D0%B5%D0%B4%D0%B8%D0%B0/%D0%B2%D0%BE%D1%81%D0%BF%D1%80%D0%BE%D0%B8%D0%B7%D0%B2%D0%B5%D0%B4%D0%B5%D0%BD%D0%B8%D0%B5/clementine-%D0%B0%D1%83%D0%B4%D0%B8%D0%BE%D0%BF%D0%BB%D0%B5%D0%B5%D1%80-%D0%B8-%D0%BC%D0%B5%D0%BD%D0%B5%D0%B4%D0%B6%D0%B5%D1%80-%D0%BC%D1%83%D0%B7%D1%8B%D0%BA%D0%B0%D0%BB%D1%8C%D0%BD%D0%BE%D0%B9-%D0%B1%D0%B8%D0%B1%D0%BB%D0%B8%D0%BE%D1%82%D0%B5%D0%BA%D0%B8.html';
end;

procedure TfPodborZameni.bMultimVospClick(Sender: TObject);
begin
    bMultimVospOnline.Visible:=true;
    bMultimVospVideo.Visible:=true;
    bMultimVospAudio.Visible:=true;
    bMultimVospMedCentr.Visible:=true;
    bMultimEditVlmc.Visible:=False;
    bMultimEditAvidemux.Visible:=False;
    bMultimEditShotcut.Visible:=False;
    bMultimEditAudacity.Visible:=False;
    bMultimEditWaveShop.Visible:=False;
    bMultimKonvertHandBrake.Visible:=False;
    bMultimKonvertQWinFF.Visible:=False;
    bMultimKonvertTEncoder.Visible:=False;
    bMultimKonvertfreac.Visible:=False;
    bMultimKonvertTAudioConverter.Visible:=False;
    bMultimZahvatOBS.Visible:=False;
    bMultimZahvatFoxToolsShooter.Visible:=False;
    bMultimZahvatGreenshot.Visible:=False;
    bMultimZahvatShareX.Visible:=False;
end;

procedure TfPodborZameni.bMultimVospMedCentrClick(Sender: TObject);
begin
    lProgramName.Caption:='MediaPortal';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%BC%D1%83%D0%BB%D1%8C%D1%82%D0%B8%D0%BC%D0%B5%D0%B4%D0%B8%D0%B0/%D0%B2%D0%BE%D1%81%D0%BF%D1%80%D0%BE%D0%B8%D0%B7%D0%B2%D0%B5%D0%B4%D0%B5%D0%BD%D0%B8%D0%B5/mediaportal-%D0%BC%D0%B5%D0%B4%D0%B8%D0%B0-%D1%86%D0%B5%D0%BD%D1%82%D1%80-%D0%B2%D0%B8%D0%BD%D0%B4%D0%BE%D0%B2%D1%81-7.html';
end;

procedure TfPodborZameni.bMultimVospOnlineClick(Sender: TObject);
begin
    lProgramName.Caption:='Tomahawk';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%BC%D1%83%D0%BB%D1%8C%D1%82%D0%B8%D0%BC%D0%B5%D0%B4%D0%B8%D0%B0/%D0%B2%D0%BE%D1%81%D0%BF%D1%80%D0%BE%D0%B8%D0%B7%D0%B2%D0%B5%D0%B4%D0%B5%D0%BD%D0%B8%D0%B5/tomahawk-%D0%BC%D0%B5%D0%B4%D0%B8%D0%B0-%D0%BF%D0%BB%D0%B5%D0%B5%D1%80-%D0%B4%D0%BB%D1%8F-%D0%BE%D0%BD%D0%BB%D0%B0%D0%B9%D0%BD-%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81%D0%BE%D0%B2.html';
end;

procedure TfPodborZameni.bMultimVospVideoClick(Sender: TObject);
begin
    lProgramName.Caption:='VLC media player';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%BC%D1%83%D0%BB%D1%8C%D1%82%D0%B8%D0%BC%D0%B5%D0%B4%D0%B8%D0%B0/%D0%B2%D0%BE%D1%81%D0%BF%D1%80%D0%BE%D0%B8%D0%B7%D0%B2%D0%B5%D0%B4%D0%B5%D0%BD%D0%B8%D0%B5/vlc-media-player-%D0%BC%D0%B5%D0%B4%D0%B8%D0%B0%D0%BF%D1%80%D0%BE%D0%B8%D0%B3%D1%80%D1%8B%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C.html';
end;

procedure TfPodborZameni.bMultimZahvatClick(Sender: TObject);
begin
    bMultimZahvatOBS.Visible:=true;
    bMultimZahvatFoxToolsShooter.Visible:=true;
    bMultimZahvatGreenshot.Visible:=true;
    bMultimZahvatShareX.Visible:=true;
    bMultimVospOnline.Visible:=False;
    bMultimVospVideo.Visible:=False;
    bMultimVospAudio.Visible:=False;
    bMultimVospMedCentr.Visible:=False;
    bMultimEditVlmc.Visible:=False;
    bMultimEditAvidemux.Visible:=False;
    bMultimEditShotcut.Visible:=False;
    bMultimEditAudacity.Visible:=False;
    bMultimEditWaveShop.Visible:=False;
    bMultimKonvertHandBrake.Visible:=False;
    bMultimKonvertQWinFF.Visible:=False;
    bMultimKonvertTEncoder.Visible:=False;
    bMultimKonvertfreac.Visible:=False;
    bMultimKonvertTAudioConverter.Visible:=False;
end;

procedure TfPodborZameni.bMultimZahvatFoxToolsShooterClick(Sender: TObject);
begin
    lProgramName.Caption:='FoxTools Shooter';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%BC%D1%83%D0%BB%D1%8C%D1%82%D0%B8%D0%BC%D0%B5%D0%B4%D0%B8%D0%B0/%D0%BF%D1%80%D0%BE%D1%87%D0%B5%D0%B5/foxtools-shooter-%D1%85%D0%B8%D1%82%D1%80%D1%8B%D0%B9-%D1%81%D1%82%D1%80%D0%B5%D0%BB%D0%BE%D0%BA-%D1%8D%D0%BA%D1%80%D0%B0%D0%BD%D0%BE%D0%B2.html';
end;

procedure TfPodborZameni.bMultimZahvatGreenshotClick(Sender: TObject);
begin
    lProgramName.Caption:='Greenshot';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%BC%D1%83%D0%BB%D1%8C%D1%82%D0%B8%D0%BC%D0%B5%D0%B4%D0%B8%D0%B0/%D0%BF%D1%80%D0%BE%D1%87%D0%B5%D0%B5/greenshot-%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D0%B0-%D0%B4%D0%BB%D1%8F-%D1%81%D0%BD%D1%8F%D1%82%D0%B8%D1%8F-%D1%81%D0%BA%D1%80%D0%B8%D0%BD%D1%88%D0%BE%D1%82%D0%BE%D0%B2.html';
end;

procedure TfPodborZameni.bMultimZahvatOBSClick(Sender: TObject);
begin
    lProgramName.Caption:='OBS';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%BC%D1%83%D0%BB%D1%8C%D1%82%D0%B8%D0%BC%D0%B5%D0%B4%D0%B8%D0%B0/%D0%BF%D1%80%D0%BE%D1%87%D0%B5%D0%B5/obs-%D0%B7%D0%B0%D1%85%D0%B2%D0%B0%D1%82-%D0%B8-%D1%82%D1%80%D0%B0%D0%BD%D1%81%D0%BB%D1%8F%D1%86%D0%B8%D1%8F-%D1%8D%D0%BA%D1%80%D0%B0%D0%BD%D0%B0-%D0%BC%D0%BE%D0%BD%D0%B8%D1%82%D0%BE%D1%80%D0%B0.html';
end;

procedure TfPodborZameni.bMultimZahvatShareXClick(Sender: TObject);
begin
    lProgramName.Caption:='ShareX';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%BC%D1%83%D0%BB%D1%8C%D1%82%D0%B8%D0%BC%D0%B5%D0%B4%D0%B8%D0%B0/%D0%BF%D1%80%D0%BE%D1%87%D0%B5%D0%B5/sharex-%D1%81%D0%BD%D1%8F%D1%82%D0%B8%D0%B5-%D0%B8-%D0%BF%D1%83%D0%B1%D0%BB%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D1%8F-%D1%81%D0%BA%D1%80%D0%B8%D0%BD%D1%88%D0%BE%D1%82%D0%BE%D0%B2.html';
end;

procedure TfPodborZameni.bOfficeAnalogApacheOpenOfficeClick(Sender: TObject);
begin
    lProgramName.Caption:='Apache OpenOffice';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%BE%D1%84%D0%B8%D1%81/%D1%80%D0%B5%D0%B4%D0%B0%D0%BA%D1%82%D0%BE%D1%80%D1%8B-%D0%B4%D0%BE%D0%BA%D1%83%D0%BC%D0%B5%D0%BD%D1%82%D0%BE%D0%B2/apache-openoffice-%D0%B1%D0%B5%D1%81%D0%BF%D0%BB%D0%B0%D1%82%D0%BD%D1%8B%D0%B9-%D0%B0%D0%BD%D0%B0%D0%BB%D0%BE%D0%B3-microsoft-office.html';
end;

procedure TfPodborZameni.bOfficeAnalogCalligraGeminiClick(Sender: TObject);
begin
    lProgramName.Caption:='Calligra Gemini';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%BE%D1%84%D0%B8%D1%81/%D1%80%D0%B5%D0%B4%D0%B0%D0%BA%D1%82%D0%BE%D1%80%D1%8B-%D0%B4%D0%BE%D0%BA%D1%83%D0%BC%D0%B5%D0%BD%D1%82%D0%BE%D0%B2/calligra-suite-%D0%BE%D1%84%D0%B8%D1%81%D0%BD%D1%8B%D0%B9-%D0%BF%D0%B0%D0%BA%D0%B5%D1%82.html';
end;

procedure TfPodborZameni.bOfficeAnalogClick(Sender: TObject);
begin
    bOfficeAnalogONLYOFFICEDesktopEditors.Visible:=true;
    bOfficeAnalogLibreOffice.Visible:=true;
    bOfficeAnalogApacheOpenOffice.Visible:=true;
    bOfficeAnalogCalligraGemini.Visible:=true;
    bOfficeFinanceAnanas.Visible:=False;
    bOfficeFinanceHomeBank.Visible:=False;
    bOfficeFinanceMoneyManagerEx.Visible:=False;
    bOfficeFinanceKMyMoney.Visible:=False;
    bOfficeFinanceRepairCenter.Visible:=False;
    bOfficeFinanceFakturama.Visible:=False;
    bOfficeFinanceFramingWorkshop.Visible:=False;
    bOfficeFinanceSysUchZayv.Visible:=False;
    bOfficeFinanceMoiprodazhi.Visible:=False;
    bOfficePdfSumatraPDF.Visible:=False;
    bOfficePdfCalibre.Visible:=False;
    bOfficePdfTEBookConverter.Visible:=False;
    bOfficePdfRedaktorpdf.Visible:=False;
    bOfficePdfPDFsamBasic.Visible:=False;
    bOfficePdfFB2.Visible:=False;
    bOfficeScanNASP2.Visible:=False;
    bOfficeScanVietOCR.Visible:=False;
    bOfficeScanCognitiveOpenOCR.Visible:=False;
    bOfficeScanPDFCreator.Visible:=False;
    bOfficePlanGanttProject.Visible:=False;
    bOfficePlanProjectLibre.Visible:=False;
    bOfficePlanWindowsPlanner.Visible:=False;
    bOfficePlanTaskUnifier.Visible:=False;
    bOfficePlanTaskCoach.Visible:=False;
    bOfficePlanMozillaSunbird.Visible:=False;
    bOfficePlanTheTimelineProject.Visible:=False;
    bOfficePlaOnepointProjectBasicEdition.Visible:=False;
end;

procedure TfPodborZameni.bOfficeAnalogLibreOfficeClick(Sender: TObject);
begin
    lProgramName.Caption:='LibreOffice';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%BE%D1%84%D0%B8%D1%81/%D1%80%D0%B5%D0%B4%D0%B0%D0%BA%D1%82%D0%BE%D1%80%D1%8B-%D0%B4%D0%BE%D0%BA%D1%83%D0%BC%D0%B5%D0%BD%D1%82%D0%BE%D0%B2/libreoffice-%D0%B1%D0%B5%D1%81%D0%BF%D0%BB%D0%B0%D1%82%D0%BD%D1%8B%D0%B9-%D0%B0%D0%BD%D0%B0%D0%BB%D0%BE%D0%B3-word,excel.html';
end;

procedure TfPodborZameni.bOfficeAnalogONLYOFFICEDesktopEditorsClick(
  Sender: TObject);
begin
    lProgramName.Caption:='ONLYOFFICE Desktop Editors';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%BE%D1%84%D0%B8%D1%81/%D1%80%D0%B5%D0%B4%D0%B0%D0%BA%D1%82%D0%BE%D1%80%D1%8B-%D0%B4%D0%BE%D0%BA%D1%83%D0%BC%D0%B5%D0%BD%D1%82%D0%BE%D0%B2/onlyoffice-desktop-editors-%D1%81%D0%B2%D0%BE%D0%B1%D0%BE%D0%B4%D0%BD%D1%8B%D0%B9-%D0%BE%D1%84%D0%B8%D1%81%D0%BD%D1%8B%D0%B9-%D0%BF%D0%B0%D0%BA%D0%B5%D1%82.html';
end;

procedure TfPodborZameni.bOfficeClick(Sender: TObject);
begin
    bOfficeFinance.Visible:=true;
    bOfficeAnalog.Visible:=true;
    bOfficePdf.Visible:=true;
    bOfficeScan.Visible:=true;
    bOfficePlan.Visible:=true;
    bMultimVosp.Visible:=False;
    bMultimEdit.Visible:=False;
    bMultimKonvert.Visible:=False;
    bMultimZahvat.Visible:=False;
    bGrafSapr.Visible:=False;
    bGrafGrafedit.Visible:=False;
    bGraf2D.Visible:=False;
    bGraf3D.Visible:=False;
    bGrafProsmotr.Visible:=False;
    bGrafPreobr.Visible:=False;
    vCdZapis.Visible:=False;
    bCdProch.Visible:=False;
    bCdZapKomleks.Visible:=False;
    bCdProchIsoEm.Visible:=False;
    bCdProchIsoEm.Visible:=False;
    bCdProchDvdmenu.Visible:=False;
    bCdProchVossdan.Visible:=False;
    bBezAv.Visible:=False;
    bBezAvSprover.Visible:=False;
    bBezAvBezprover.Visible:=False;
    bBezRezKop.Visible:=False;
    bBezRezkopDomKomp.Visible:=False;
    bBezRezkopRabkomp.Visible:=False;
    bBezShifrFile.Visible:=False;
    bBezShifrHdd.Visible:=False;
    bBezShifr.Visible:=False;
    bBezParol.Visible:=False;
    bBezParolHranPar.Visible:=False;
    bBezParolSozdpar.Visible:=False;
    bBezProch.Visible:=False;
    bBezProchAnonbrow.Visible:=False;
    bBezProchFiltr.Visible:=False;
    bBezProchMonIzmFile.Visible:=False;
    bBezProchBezdel.Visible:=False;
    bGrafGrafeditVector.Visible:=False;
    bGrafGrafeditRedfot.Visible:=False;
    bGrafGrafeditRedico.Visible:=False;
    bGrafGrafeditRedkart.Visible:=False;
    bGrafGrafeditIzdsys.Visible:=False;
    bGrafSaprSolveSpace.Visible:=False;
    bGrafSaprFreeCAD.Visible:=False;
    bGrafSaprNaroCAD.Visible:=False;
    bGrafSaprBRLCAD.Visible:=False;
    bGrafSaprLibreCAD.Visible:=False;
    bGrafSaprKiCad.Visible:=False;
    bGrafSaprQucs.Visible:=False;
    bGraf2DPencil2d.Visible:=False;
    bGraf2DPencil.Visible:=False;
    bGraf2DTupi.Visible:=False;
    bGraf2DSynfigStudio.Visible:=False;
    bGraf3DMakeHuman.Visible:=False;
    bGraf3DSeamless3d.Visible:=False;
    bGraf3DOpenFX.Visible:=False;
    bGraf3DK3D.Visible:=False;
    bGraf3DArtofIllusion.Visible:=False;
    bGraf3DBlender.Visible:=False;
    bGraf3DSweetHome3D.Visible:=False;
    bGrafProsmotrNomacs.Visible:=False;
    bGrafProsmotrAdvancedPhoto.Visible:=False;
    bGrafProsmotrJMG.Visible:=False;
    bGrafProsmotrImageGlass.Visible:=False;
    bGrafPreobrCaesium.Visible:=False;
    bGrafPreobrConverseen.Visible:=False;
    bGrafPreobrSIET.Visible:=False;
    bDrugieObrMnemosyne.Visible:=False;
    bDrugieObrMaxima.Visible:=False;
    bDrugieObriTest.Visible:=False;
    bDrugieObrScilab.Visible:=False;
    bDrugieObrOpenTeacher.Visible:=False;
    bDrugieObrDWSIM.Visible:=False;
    bDrugieObr.Visible:=False;
    bDrugieVirtpl.Visible:=False;
    bDrugieVirtplSkyChart.Visible:=False;
    bDrugieVirtplStellarium.Visible:=False;
    bDrugieVirtplCelestia.Visible:=False;
    bDrugieKat.Visible:=False;
    bDrugieKatStuffOrganizer.Visible:=False;
    bDrugieKatDataCrow.Visible:=False;
    bDrugieKatAntMovieCatalog.Visible:=False;
    bDrugieKatGCstar.Visible:=False;
    bDrugieZam.Visible:=False;
    bDrugieZamOutWiker.Visible:=False;
    bDrugieZamRedNotebook.Visible:=False;
    bDrugieZamPNotes.Visible:=False;
    bDrugieZamQQwnNotes.Visible:=False;
    bMultimVospOnline.Visible:=False;
    bMultimVospVideo.Visible:=False;
    bMultimVospAudio.Visible:=False;
    bMultimVospMedCentr.Visible:=False;
    bMultimEditVlmc.Visible:=False;
    bMultimEditAvidemux.Visible:=False;
    bMultimEditShotcut.Visible:=False;
    bMultimEditAudacity.Visible:=False;
    bMultimEditWaveShop.Visible:=False;
    bMultimKonvertHandBrake.Visible:=False;
    bMultimKonvertQWinFF.Visible:=False;
    bMultimKonvertTEncoder.Visible:=False;
    bMultimKonvertfreac.Visible:=False;
    bMultimKonvertTAudioConverter.Visible:=False;
    bMultimZahvatOBS.Visible:=False;
    bMultimZahvatFoxToolsShooter.Visible:=False;
    bMultimZahvatGreenshot.Visible:=False;
    bMultimZahvatShareX.Visible:=False;
    bOfficeFinanceAnanas.Visible:=False;
    bOfficeFinanceHomeBank.Visible:=False;
    bOfficeFinanceMoneyManagerEx.Visible:=False;
    bOfficeFinanceKMyMoney.Visible:=False;
    bOfficeFinanceRepairCenter.Visible:=False;
    bOfficeFinanceFramingWorkshop.Visible:=False;
    bOfficeFinanceSysUchZayv.Visible:=False;
    bOfficeFinanceMoiprodazhi.Visible:=False;
    bOfficeFinanceFakturama.Visible:=False;
    bOfficeAnalogONLYOFFICEDesktopEditors.Visible:=False;
    bOfficeAnalogLibreOffice.Visible:=False;
    bOfficeAnalogApacheOpenOffice.Visible:=False;
    bOfficeAnalogCalligraGemini.Visible:=False;
    bOfficePdfSumatraPDF.Visible:=False;
    bOfficePdfCalibre.Visible:=False;
    bOfficePdfTEBookConverter.Visible:=False;
    bOfficePdfRedaktorpdf.Visible:=False;
    bOfficePdfPDFsamBasic.Visible:=False;
    bOfficePdfFB2.Visible:=False;
    bOfficeScanNASP2.Visible:=False;
    bOfficeScanVietOCR.Visible:=False;
    bOfficeScanCognitiveOpenOCR.Visible:=False;
    bOfficeScanPDFCreator.Visible:=False;
    bOfficePlanGanttProject.Visible:=False;
    bOfficePlanProjectLibre.Visible:=False;
    bOfficePlanWindowsPlanner.Visible:=False;
    bOfficePlanTaskUnifier.Visible:=False;
    bOfficePlanTaskCoach.Visible:=False;
    bOfficePlanMozillaSunbird.Visible:=False;
    bOfficePlanTheTimelineProject.Visible:=False;
    bOfficePlaOnepointProjectBasicEdition.Visible:=False;
    bRazrabHtml.Visible:=False;
    bRazrabHtmlBrackets.Visible:=False;
    bRazrabHtmlBluefish.Visible:=False;
    bRazrabHtmlBlueGriffon.Visible:=False;
    bRazrabHtmlkodeWeave.Visible:=False;
    bRazrabHtmlNotepad.Visible:=False;
    bRazrabCpp.Visible:=False;
    bRazrabCppWxDev.Visible:=False;
    bRazrabCppCodeBlocks.Visible:=False;
    bRazrabCppNetBeans.Visible:=False;
    bRazrabCppXamarinStudio.Visible:=False;
    bRazrabCppBluefish.Visible:=False;
    bRazrabOp.Visible:=False;
    bRazrabOpLazarus.Visible:=False;
    bInternetBrow.Visible:=False;
    bInternetBrowMozillaFirefox.Visible:=False;
    bInternetBrowOtterBrowser.Visible:=False;
    bInternetBrowChromium.Visible:=False;
    bInternetTalk.Visible:=False;
    bInternetTalkKVIrc.Visible:=False;
    bInternetTalkTkabber.Visible:=False;
    bInternetTalkPidgin.Visible:=False;
    bInternetTalkMozillaThunderbird.Visible:=False;
    bInternetTalkMumble.Visible:=False;
    bInternetTalkBeeBEEP.Visible:=False;
    bInternetTalkLinphone.Visible:=False;
    bInternetDown.Visible:=False;
    bInternetDownClipGrab.Visible:=False;
    bInternetDownFileZilla.Visible:=False;
    bInternetDownJDownloader.Visible:=False;
    bInternetDownFdm.Visible:=False;
    bInternetDownqBittorrent.Visible:=False;
    bInternetSetut.Visible:=False;
    bInternetSetutWireshark.Visible:=False;
    bInternetSetutNmap.Visible:=False;
    bInternetSetutOpenVisualTraceroute.Visible:=False;
    bInternetSetutSecurepointSSLVPNClient.Visible:=False;
    bInternetSetutruWinMTR.Visible:=False;
    bInternetSetutLinkChecker.Visible:=False;
    bInternetSetuthttpres.Visible:=False;
    bInternetSetutSimpleSitemapCreator.Visible:=False;
    bInternetRssRSSBandit.Visible:=False;
    bInternetRss.Visible:=False;
    bInternetRssQuiteRSS.Visible:=False;
    bInternetRssMozillaThunderbird.Visible:=False;
    bUtilityRar.Visible:=False;
    bUtilityRarPeaZip.Visible:=False;
    bUtilityRarFreeArc.Visible:=False;
    bUtilityRar7Zip.Visible:=False;
    bUtilitySystem.Visible:=False;
    bUtilitySystemProcessHacker.Visible:=False;
    bUtilitySystemUltraDefrag.Visible:=False;
    bUtilitySystemBulkCrapUninstaller.Visible:=False;
    bUtilitySystemSmartSystemRepiar.Visible:=False;
    bUtilitySystemSysOptimizer.Visible:=False;
    bUtilitySystemPerformanceMaintainer.Visible:=False;
    bUtilitySystemAspia.Visible:=False;
    bUtilitySystemHDDGuardian.Visible:=False;
    bUtilitySystemDitto.Visible:=False;
    bUtilityFile.Visible:=False;
    bUtilityFileFreeFileSync.Visible:=False;
    bUtilityFileWinMerge.Visible:=False;
    bUtilityFileKickassUndelete.Visible:=False;
    bUtilityFileDoubleCommander.Visible:=False;
    bUtilityFileFileOptimizer.Visible:=False;
    bUtilityFileDUFF.Visible:=False;
    bUtilityProch.Visible:=False;
    bUtilityProchCloseTheDoor.Visible:=False;
    bUtilityProchAngryIPScanner.Visible:=False;
    bUtilityProchiTALC.Visible:=False;
    bUtilityProchUltraVNC.Visible:=False;
    bUtilityProchwxHexEditor.Visible:=False;
    bUtilityProchFontForge.Visible:=False;
    bUtilityProchVirtualBox.Visible:=False;
end;

procedure TfPodborZameni.bOfficeFinanceAnanasClick(Sender: TObject);
begin
    lProgramName.Caption:='Ananas';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%BE%D1%84%D0%B8%D1%81/%D1%84%D0%B8%D0%BD%D0%B0%D0%BD%D1%81%D1%8B/1%D1%81-%D0%B1%D0%B5%D1%81%D0%BF%D0%BB%D0%B0%D1%82%D0%BD%D1%8B%D0%B9-%D0%B0%D0%BD%D0%B0%D0%BB%D0%BE%D0%B3.html';
end;

procedure TfPodborZameni.bOfficeFinanceClick(Sender: TObject);
begin
     bOfficeFinanceAnanas.Visible:=true;
     bOfficeFinanceHomeBank.Visible:=true;
     bOfficeFinanceMoneyManagerEx.Visible:=true;
     bOfficeFinanceKMyMoney.Visible:=true;
     bOfficeFinanceRepairCenter.Visible:=true;
     bOfficeFinanceFakturama.Visible:=true;
     bOfficeFinanceFramingWorkshop.Visible:=true;
     bOfficeFinanceSysUchZayv.Visible:=true;
     bOfficeFinanceMoiprodazhi.Visible:=true;
     bOfficeAnalogONLYOFFICEDesktopEditors.Visible:=False;
     bOfficeAnalogLibreOffice.Visible:=False;
     bOfficeAnalogApacheOpenOffice.Visible:=False;
     bOfficeAnalogCalligraGemini.Visible:=False;
     bOfficePdfSumatraPDF.Visible:=False;
     bOfficePdfCalibre.Visible:=False;
     bOfficePdfTEBookConverter.Visible:=False;
     bOfficePdfRedaktorpdf.Visible:=False;
     bOfficePdfPDFsamBasic.Visible:=False;
     bOfficePdfFB2.Visible:=False;
     bOfficeScanNASP2.Visible:=False;
     bOfficeScanVietOCR.Visible:=False;
     bOfficeScanCognitiveOpenOCR.Visible:=False;
     bOfficeScanPDFCreator.Visible:=False;
     bOfficePlanGanttProject.Visible:=False;
     bOfficePlanProjectLibre.Visible:=False;
     bOfficePlanWindowsPlanner.Visible:=False;
     bOfficePlanTaskUnifier.Visible:=False;
     bOfficePlanTaskCoach.Visible:=False;
     bOfficePlanMozillaSunbird.Visible:=False;
     bOfficePlanTheTimelineProject.Visible:=False;
     bOfficePlaOnepointProjectBasicEdition.Visible:=False;
end;

procedure TfPodborZameni.bOfficeFinanceFakturamaClick(Sender: TObject);
begin
    lProgramName.Caption:='Fakturama';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%BE%D1%84%D0%B8%D1%81/%D1%84%D0%B8%D0%BD%D0%B0%D0%BD%D1%81%D1%8B/fakturama-%D1%83%D1%87%D0%B5%D1%82-%D0%B4%D0%BB%D1%8F-%D0%B8%D0%BD%D1%82%D0%B5%D1%80%D0%BD%D0%B5%D1%82-%D0%BC%D0%B0%D0%B3%D0%B0%D0%B7%D0%B8%D0%BD%D0%B0.html';
end;

procedure TfPodborZameni.bOfficeFinanceFramingWorkshopClick(Sender: TObject);
begin
    lProgramName.Caption:='Framing Workshop';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%BE%D1%84%D0%B8%D1%81/%D1%84%D0%B8%D0%BD%D0%B0%D0%BD%D1%81%D1%8B/framing-workshop-%D1%83%D1%87%D0%B5%D1%82-%D0%B4%D0%BB%D1%8F-%D0%B1%D0%B0%D0%B3%D0%B5%D1%82%D0%BD%D0%BE%D0%B9-%D0%BC%D0%B0%D1%81%D1%82%D0%B5%D1%80%D1%81%D0%BA%D0%BE%D0%B9.html';
end;

procedure TfPodborZameni.bOfficeFinanceHomeBankClick(Sender: TObject);
begin
    lProgramName.Caption:='HomeBank';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%BE%D1%84%D0%B8%D1%81/%D1%84%D0%B8%D0%BD%D0%B0%D0%BD%D1%81%D1%8B/homebank-%D1%83%D1%87%D0%B5%D1%82-%D0%BB%D0%B8%D1%87%D0%BD%D1%8B%D1%85-%D1%84%D0%B8%D0%BD%D0%B0%D0%BD%D1%81%D0%BE%D0%B2.html';
end;

procedure TfPodborZameni.bOfficeFinanceKMyMoneyClick(Sender: TObject);
begin
    lProgramName.Caption:='KMyMoney';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%BE%D1%84%D0%B8%D1%81/%D1%84%D0%B8%D0%BD%D0%B0%D0%BD%D1%81%D1%8B/kmymoney-%D0%BF%D0%B5%D1%80%D1%81%D0%BE%D0%BD%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D0%B9-%D0%BC%D0%B5%D0%BD%D0%B5%D0%B4%D0%B6%D0%B5%D1%80-%D1%84%D0%B8%D0%BD%D0%B0%D0%BD%D1%81%D0%BE%D0%B2.html';
end;

procedure TfPodborZameni.bOfficeFinanceMoiprodazhiClick(Sender: TObject);
begin
    lProgramName.Caption:='Мои продажи';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%BE%D1%84%D0%B8%D1%81/%D1%84%D0%B8%D0%BD%D0%B0%D0%BD%D1%81%D1%8B/%D0%BC%D0%BE%D0%B8-%D0%BF%D1%80%D0%BE%D0%B4%D0%B0%D0%B6%D0%B8-%D1%83%D1%87%D0%B5%D1%82-%D0%BF%D1%80%D0%BE%D0%B4%D0%B0%D0%B6-%D0%B4%D0%BB%D1%8F-%D1%82%D0%BE%D1%80%D0%B3%D0%BE%D0%B2%D1%8B%D1%85-%D1%82%D0%BE%D1%87%D0%B5%D0%BA.html';
end;

procedure TfPodborZameni.bOfficeFinanceMoneyManagerExClick(Sender: TObject);
begin
    lProgramName.Caption:='Money Manager Ex';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%BE%D1%84%D0%B8%D1%81/%D1%84%D0%B8%D0%BD%D0%B0%D0%BD%D1%81%D1%8B/money-manager-ex-%D0%BB%D0%B8%D1%87%D0%BD%D1%8B%D0%B9-%D0%BC%D0%B5%D0%BD%D0%B5%D0%B4%D0%B6%D0%B5%D1%80-%D1%84%D0%B8%D0%BD%D0%B0%D0%BD%D1%81%D0%BE%D0%B2.html';
end;

procedure TfPodborZameni.bOfficeFinanceRepairCenterClick(Sender: TObject);
begin
    lProgramName.Caption:='RepairCenter';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%BE%D1%84%D0%B8%D1%81/%D0%BF%D1%80%D0%BE%D1%87%D0%B5%D0%B5/repaircenter-%D1%83%D1%87%D0%B5%D1%82-%D0%B7%D0%B0%D0%BA%D0%B0%D0%B7%D0%BE%D0%B2-%D0%B2-%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81%D0%BD%D0%BE%D0%BC-%D1%86%D0%B5%D0%BD%D1%82%D1%80%D0%B5.html';
end;

procedure TfPodborZameni.bOfficeFinanceSysUchZayvClick(Sender: TObject);
begin
    lProgramName.Caption:='Система Учета Заявок';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%BE%D1%84%D0%B8%D1%81/%D0%BF%D1%80%D0%BE%D1%87%D0%B5%D0%B5/%D1%81%D0%B8%D1%81%D1%82%D0%B5%D0%BC%D0%B0-%D1%83%D1%87%D0%B5%D1%82%D0%B0-%D0%B7%D0%B0%D1%8F%D0%B2%D0%BE%D0%BA-%D1%83%D1%87%D0%B5%D1%82-%D0%B8-%D0%BA%D0%BE%D0%BD%D1%82%D1%80%D0%BE%D0%BB%D1%8C-%D0%B2%D1%8B%D0%BF%D0%BE%D0%BB%D0%BD%D0%B5%D0%BD%D0%B8%D1%8F-%D0%B7%D0%B0%D1%8F%D0%B2%D0%BE%D0%BA.html';
end;

procedure TfPodborZameni.bOfficePdfCalibreClick(Sender: TObject);
begin
    lProgramName.Caption:='calibre';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%BE%D1%84%D0%B8%D1%81/pdf-%D0%B8-djvu/%D1%81alibre-%D0%BA%D0%BE%D0%BD%D0%B2%D0%B5%D1%80%D1%82%D0%B5%D1%80-%D1%8D%D0%BB%D0%B5%D0%BA%D1%82%D1%80%D0%BE%D0%BD%D0%BD%D1%8B%D1%85-%D0%BA%D0%BD%D0%B8%D0%B3.html';
end;

procedure TfPodborZameni.bOfficePdfClick(Sender: TObject);
begin
    bOfficePdfSumatraPDF.Visible:=true;
    bOfficePdfCalibre.Visible:=true;
    bOfficePdfTEBookConverter.Visible:=true;
    bOfficePdfRedaktorpdf.Visible:=true;
    bOfficePdfPDFsamBasic.Visible:=true;
    bOfficePdfFB2.Visible:=true;
    bOfficeFinanceAnanas.Visible:=False;
    bOfficeFinanceHomeBank.Visible:=False;
    bOfficeFinanceMoneyManagerEx.Visible:=False;
    bOfficeFinanceKMyMoney.Visible:=False;
    bOfficeFinanceRepairCenter.Visible:=False;
    bOfficeFinanceFakturama.Visible:=False;
    bOfficeFinanceFramingWorkshop.Visible:=False;
    bOfficeFinanceSysUchZayv.Visible:=False;
    bOfficeFinanceMoiprodazhi.Visible:=False;
    bOfficeAnalogONLYOFFICEDesktopEditors.Visible:=False;
    bOfficeAnalogLibreOffice.Visible:=False;
    bOfficeAnalogApacheOpenOffice.Visible:=False;
    bOfficeAnalogCalligraGemini.Visible:=False;
    bOfficeScanNASP2.Visible:=False;
    bOfficeScanVietOCR.Visible:=False;
    bOfficeScanCognitiveOpenOCR.Visible:=False;
    bOfficeScanPDFCreator.Visible:=False;
    bOfficePlanGanttProject.Visible:=False;
    bOfficePlanProjectLibre.Visible:=False;
    bOfficePlanWindowsPlanner.Visible:=False;
    bOfficePlanTaskUnifier.Visible:=False;
    bOfficePlanTaskCoach.Visible:=False;
    bOfficePlanMozillaSunbird.Visible:=False;
    bOfficePlanTheTimelineProject.Visible:=False;
    bOfficePlaOnepointProjectBasicEdition.Visible:=False;
end;

procedure TfPodborZameni.bOfficePdfFB2Click(Sender: TObject);
begin
    lProgramName.Caption:='fb2edit';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%BE%D1%84%D0%B8%D1%81/pdf-%D0%B8-djvu/fb2edit-%D1%80%D0%B5%D0%B4%D0%B0%D0%BA%D1%82%D0%BE%D1%80-%D1%8D%D0%BB%D0%B5%D0%BA%D1%82%D1%80%D0%BE%D0%BD%D0%BD%D1%8B%D1%85-%D0%BA%D0%BD%D0%B8%D0%B3-fb2.html';
end;

procedure TfPodborZameni.bOfficePdfPDFsamBasicClick(Sender: TObject);
begin
    lProgramName.Caption:='PDFsam Basic';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%BE%D1%84%D0%B8%D1%81/pdf-%D0%B8-djvu/pdftk-builder-%D0%BE%D0%B1%D1%8A%D0%B5%D0%B4%D0%B8%D0%BD%D0%B5%D0%BD%D0%B8%D0%B5,-%D1%81%D0%BB%D0%B8%D1%8F%D0%BD%D0%B8%D0%B5-%D0%B8-%D0%B2%D1%80%D0%B0%D1%89%D0%B5%D0%BD%D0%B8%D0%B5-pdf.html';
end;

procedure TfPodborZameni.bOfficePdfRedaktorpdfClick(Sender: TObject);
begin
    lProgramName.Caption:='PDFedit';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%BE%D1%84%D0%B8%D1%81/pdf-%D0%B8-djvu/pdfedit-%D1%80%D0%B5%D0%B4%D0%B0%D0%BA%D1%82%D0%BE%D1%80-pdf-%D1%84%D0%B0%D0%B9%D0%BB%D0%BE%D0%B2.html';
end;

procedure TfPodborZameni.bOfficePdfSumatraPDFClick(Sender: TObject);
begin
    lProgramName.Caption:='Sumatra PDF';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%BE%D1%84%D0%B8%D1%81/pdf-%D0%B8-djvu/sumatra-pdf-%D0%BF%D1%80%D0%BE%D1%81%D0%BC%D0%BE%D1%82%D1%80%D1%89%D0%B8%D0%BA-pdf-%D1%84%D0%B0%D0%B9%D0%BB%D0%BE%D0%B2.html';
end;

procedure TfPodborZameni.bOfficePdfTEBookConverterClick(Sender: TObject);
begin
    lProgramName.Caption:='TEBookConverter';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%BE%D1%84%D0%B8%D1%81/pdf-%D0%B8-djvu/tebookconverter-%D0%BF%D1%80%D0%B5%D0%BE%D0%B1%D1%80%D0%B0%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5-%D1%8D%D0%BB%D0%B5%D0%BA%D1%82%D1%80%D0%BE%D0%BD%D0%BD%D1%8B%D1%85-%D0%BA%D0%BD%D0%B8%D0%B3.html';
end;

procedure TfPodborZameni.bOfficePlanClick(Sender: TObject);
begin
    bOfficePlanGanttProject.Visible:=true;
    bOfficePlanProjectLibre.Visible:=true;
    bOfficePlanWindowsPlanner.Visible:=true;
    bOfficePlanTaskUnifier.Visible:=true;
    bOfficePlanTaskCoach.Visible:=true;
    bOfficePlanMozillaSunbird.Visible:=true;
    bOfficePlanTheTimelineProject.Visible:=true;
    bOfficePlaOnepointProjectBasicEdition.Visible:=true;
    bOfficeScanNASP2.Visible:=False;
    bOfficeScanVietOCR.Visible:=False;
    bOfficeScanCognitiveOpenOCR.Visible:=False;
    bOfficeScanPDFCreator.Visible:=False;
    bOfficePdfSumatraPDF.Visible:=False;
    bOfficePdfCalibre.Visible:=False;
    bOfficePdfTEBookConverter.Visible:=False;
    bOfficePdfRedaktorpdf.Visible:=False;
    bOfficePdfPDFsamBasic.Visible:=False;
    bOfficePdfFB2.Visible:=False;
    bOfficeFinanceAnanas.Visible:=False;
    bOfficeFinanceHomeBank.Visible:=False;
    bOfficeFinanceMoneyManagerEx.Visible:=False;
    bOfficeFinanceKMyMoney.Visible:=False;
    bOfficeFinanceRepairCenter.Visible:=False;
    bOfficeFinanceFakturama.Visible:=False;
    bOfficeFinanceFramingWorkshop.Visible:=False;
    bOfficeFinanceSysUchZayv.Visible:=False;
    bOfficeFinanceMoiprodazhi.Visible:=False;
    bOfficeAnalogONLYOFFICEDesktopEditors.Visible:=False;
    bOfficeAnalogLibreOffice.Visible:=False;
    bOfficeAnalogApacheOpenOffice.Visible:=False;
    bOfficeAnalogCalligraGemini.Visible:=False;
end;

procedure TfPodborZameni.bOfficePlanGanttProjectClick(Sender: TObject);
begin
    lProgramName.Caption:='GanttProject';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%BE%D1%84%D0%B8%D1%81/%D0%BF%D1%80%D0%BE%D1%87%D0%B5%D0%B5/ganttproject-%D1%83%D0%BF%D1%80%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5-%D0%BF%D1%80%D0%BE%D0%B5%D0%BA%D1%82%D0%B0%D0%BC%D0%B8.html';
end;

procedure TfPodborZameni.bOfficePlanMozillaSunbirdClick(Sender: TObject);
begin
    lProgramName.Caption:='Mozilla Sunbird';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%BE%D1%84%D0%B8%D1%81/%D0%BF%D1%80%D0%BE%D1%87%D0%B5%D0%B5/mozilla-sunbird-%D0%BA%D0%B0%D0%BB%D0%B5%D0%BD%D0%B4%D0%B0%D1%80%D1%8C,-%D0%BE%D1%80%D0%B3%D0%B0%D0%BD%D0%B0%D0%B9%D0%B7%D0%B5%D1%80.html';
end;

procedure TfPodborZameni.bOfficePlanProjectLibreClick(Sender: TObject);
begin
    lProgramName.Caption:='ProjectLibre';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%BE%D1%84%D0%B8%D1%81/%D0%BF%D1%80%D0%BE%D1%87%D0%B5%D0%B5/projectlibre-%D1%81%D0%B8%D1%81%D1%82%D0%B5%D0%BC%D0%B0-%D1%83%D0%BF%D1%80%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D1%8F-%D0%BF%D1%80%D0%BE%D0%B5%D0%BA%D1%82%D0%B0%D0%BC%D0%B8.html';
end;

procedure TfPodborZameni.bOfficePlanTaskCoachClick(Sender: TObject);
begin
    lProgramName.Caption:='Task Coach';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%BE%D1%84%D0%B8%D1%81/%D0%BF%D1%80%D0%BE%D1%87%D0%B5%D0%B5/task-coach-%D0%BC%D0%B5%D0%BD%D0%B5%D0%B4%D0%B6%D0%B5%D1%80-%D0%BF%D0%B5%D1%80%D1%81%D0%BE%D0%BD%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D1%85-%D0%B7%D0%B0%D0%B4%D0%B0%D1%87.html';
end;

procedure TfPodborZameni.bOfficePlanTaskUnifierClick(Sender: TObject);
begin
    lProgramName.Caption:='TaskUnifier';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%BE%D1%84%D0%B8%D1%81/%D0%BF%D1%80%D0%BE%D1%87%D0%B5%D0%B5/taskunifier-%D1%83%D0%BF%D1%80%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5-%D0%B7%D0%B0%D0%B4%D0%B0%D1%87%D0%B0%D0%BC%D0%B8.html';
end;

procedure TfPodborZameni.bOfficePlanTheTimelineProjectClick(Sender: TObject);
begin
    lProgramName.Caption:='The Timeline Project';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%BE%D1%84%D0%B8%D1%81/%D0%BF%D1%80%D0%BE%D1%87%D0%B5%D0%B5/the-timeline-project-%D0%BE%D1%82%D0%BE%D0%B1%D1%80%D0%B0%D0%B6%D0%B5%D0%BD%D0%B8%D0%B5-%D0%B8-%D0%BD%D0%B0%D0%B2%D0%B8%D0%B3%D0%B0%D1%86%D0%B8%D1%8F-%D1%81%D0%BE%D0%B1%D1%8B%D1%82%D0%B8%D0%B9.html';
end;

procedure TfPodborZameni.bOfficePlanWindowsPlannerClick(Sender: TObject);
begin
    lProgramName.Caption:='Windows Planner';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%BE%D1%84%D0%B8%D1%81/%D0%BF%D1%80%D0%BE%D1%87%D0%B5%D0%B5/windows-planner-%D1%83%D0%BF%D1%80%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5-%D0%BF%D1%80%D0%BE%D0%B5%D0%BA%D1%82%D0%B0%D0%BC%D0%B8.html';
end;

procedure TfPodborZameni.bOfficePlaOnepointProjectBasicEditionClick(
  Sender: TObject);
begin
    lProgramName.Caption:='Onepoint Project Basic Edition';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%BE%D1%84%D0%B8%D1%81/%D0%BF%D1%80%D0%BE%D1%87%D0%B5%D0%B5/onepoint-project-basic-edition-%D1%83%D0%BF%D1%80%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5-%D0%BF%D1%80%D0%BE%D0%B5%D0%BA%D1%82%D0%B0%D0%BC%D0%B8.html';
end;

procedure TfPodborZameni.bOfficeScanClick(Sender: TObject);
begin
    bOfficeScanNASP2.Visible:=true;
    bOfficeScanVietOCR.Visible:=true;
    bOfficeScanCognitiveOpenOCR.Visible:=true;
    bOfficeScanPDFCreator.Visible:=true;
    bOfficePdfSumatraPDF.Visible:=False;
    bOfficePdfCalibre.Visible:=False;
    bOfficePdfTEBookConverter.Visible:=False;
    bOfficePdfRedaktorpdf.Visible:=False;
    bOfficePdfPDFsamBasic.Visible:=False;
    bOfficePdfFB2.Visible:=False;
    bOfficeFinanceAnanas.Visible:=False;
    bOfficeFinanceHomeBank.Visible:=False;
    bOfficeFinanceMoneyManagerEx.Visible:=False;
    bOfficeFinanceKMyMoney.Visible:=False;
    bOfficeFinanceRepairCenter.Visible:=False;
    bOfficeFinanceFakturama.Visible:=False;
    bOfficeFinanceFramingWorkshop.Visible:=False;
    bOfficeFinanceSysUchZayv.Visible:=False;
    bOfficeFinanceMoiprodazhi.Visible:=False;
    bOfficeAnalogONLYOFFICEDesktopEditors.Visible:=False;
    bOfficeAnalogLibreOffice.Visible:=False;
    bOfficeAnalogApacheOpenOffice.Visible:=False;
    bOfficeAnalogCalligraGemini.Visible:=False;
    bOfficePlanGanttProject.Visible:=False;
    bOfficePlanProjectLibre.Visible:=False;
    bOfficePlanWindowsPlanner.Visible:=False;
    bOfficePlanTaskUnifier.Visible:=False;
    bOfficePlanTaskCoach.Visible:=False;
    bOfficePlanMozillaSunbird.Visible:=False;
    bOfficePlanTheTimelineProject.Visible:=False;
    bOfficePlaOnepointProjectBasicEdition.Visible:=False;
end;

procedure TfPodborZameni.bOfficeScanCognitiveOpenOCRClick(Sender: TObject);
begin
    lProgramName.Caption:='Cognitive OpenOCR';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%BE%D1%84%D0%B8%D1%81/%D0%BF%D1%80%D0%BE%D1%87%D0%B5%D0%B5/cognitive-openocr-%D1%80%D0%B0%D1%81%D0%BF%D0%BE%D0%B7%D0%BD%D0%B0%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5-%D1%82%D0%B5%D0%BA%D1%81%D1%82%D0%B0.html';
end;

procedure TfPodborZameni.bOfficeScanNASP2Click(Sender: TObject);
begin
    lProgramName.Caption:='NASP2';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%BE%D1%84%D0%B8%D1%81/%D0%BF%D1%80%D0%BE%D1%87%D0%B5%D0%B5/nasp2-%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D0%B0-%D0%B4%D0%BB%D1%8F-%D1%81%D0%BA%D0%B0%D0%BD%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8F-%D0%B4%D0%BE%D0%BA%D1%83%D0%BC%D0%B5%D0%BD%D1%82%D0%BE%D0%B2.html';
end;

procedure TfPodborZameni.bOfficeScanPDFCreatorClick(Sender: TObject);
begin
    lProgramName.Caption:='PDFCreator';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%BE%D1%84%D0%B8%D1%81/%D0%BF%D1%80%D0%BE%D1%87%D0%B5%D0%B5/pdfcreator-%D0%B2%D0%B8%D1%80%D1%82%D1%83%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D0%B9-%D0%BF%D1%80%D0%B8%D0%BD%D1%82%D0%B5%D1%80.html';
end;

procedure TfPodborZameni.bOfficeScanVietOCRClick(Sender: TObject);
begin
    lProgramName.Caption:='VietOCR';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D0%BE%D1%84%D0%B8%D1%81/%D0%BF%D1%80%D0%BE%D1%87%D0%B5%D0%B5/vietocr-%D1%81%D0%BA%D0%B0%D0%BD%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5-%D0%B8-%D1%80%D0%B0%D1%81%D0%BF%D0%BE%D0%B7%D0%BD%D0%B0%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5.html';
end;

procedure TfPodborZameni.bRazrabClick(Sender: TObject);
begin
    bRazrabHtml.Visible:=true;
    bRazrabCpp.Visible:=true;
    bRazrabOp.Visible:=true;
    bOfficeFinance.Visible:=False;
    bOfficeAnalog.Visible:=False;
    bOfficePdf.Visible:=False;
    bOfficeScan.Visible:=False;
    bOfficePlan.Visible:=False;
    bMultimVosp.Visible:=False;
    bMultimEdit.Visible:=False;
    bMultimKonvert.Visible:=False;
    bMultimZahvat.Visible:=False;
    bGrafSapr.Visible:=False;
    bGrafGrafedit.Visible:=False;
    bGraf2D.Visible:=False;
    bGraf3D.Visible:=False;
    bGrafProsmotr.Visible:=False;
    bGrafPreobr.Visible:=False;
    vCdZapis.Visible:=False;
    bCdProch.Visible:=False;
    bCdZapKomleks.Visible:=False;
    bCdProchIsoEm.Visible:=False;
    bCdProchIsoEm.Visible:=False;
    bCdProchDvdmenu.Visible:=False;
    bCdProchVossdan.Visible:=False;
    bBezAv.Visible:=False;
    bBezAvSprover.Visible:=False;
    bBezAvBezprover.Visible:=False;
    bBezRezKop.Visible:=False;
    bBezRezkopDomKomp.Visible:=False;
    bBezRezkopRabkomp.Visible:=False;
    bBezShifrFile.Visible:=False;
    bBezShifrHdd.Visible:=False;
    bBezShifr.Visible:=False;
    bBezParol.Visible:=False;
    bBezParolHranPar.Visible:=False;
    bBezParolSozdpar.Visible:=False;
    bBezProch.Visible:=False;
    bBezProchAnonbrow.Visible:=False;
    bBezProchFiltr.Visible:=False;
    bBezProchMonIzmFile.Visible:=False;
    bBezProchBezdel.Visible:=False;
    bGrafGrafeditVector.Visible:=False;
    bGrafGrafeditRedfot.Visible:=False;
    bGrafGrafeditRedico.Visible:=False;
    bGrafGrafeditRedkart.Visible:=False;
    bGrafGrafeditIzdsys.Visible:=False;
    bGrafSaprSolveSpace.Visible:=False;
    bGrafSaprFreeCAD.Visible:=False;
    bGrafSaprNaroCAD.Visible:=False;
    bGrafSaprBRLCAD.Visible:=False;
    bGrafSaprLibreCAD.Visible:=False;
    bGrafSaprKiCad.Visible:=False;
    bGrafSaprQucs.Visible:=False;
    bGraf2DPencil2d.Visible:=False;
    bGraf2DPencil.Visible:=False;
    bGraf2DTupi.Visible:=False;
    bGraf2DSynfigStudio.Visible:=False;
    bGraf3DMakeHuman.Visible:=False;
    bGraf3DSeamless3d.Visible:=False;
    bGraf3DOpenFX.Visible:=False;
    bGraf3DK3D.Visible:=False;
    bGraf3DArtofIllusion.Visible:=False;
    bGraf3DBlender.Visible:=False;
    bGraf3DSweetHome3D.Visible:=False;
    bGrafProsmotrNomacs.Visible:=False;
    bGrafProsmotrAdvancedPhoto.Visible:=False;
    bGrafProsmotrJMG.Visible:=False;
    bGrafProsmotrImageGlass.Visible:=False;
    bGrafPreobrCaesium.Visible:=False;
    bGrafPreobrConverseen.Visible:=False;
    bGrafPreobrSIET.Visible:=False;
    bDrugieObrMnemosyne.Visible:=False;
    bDrugieObrMaxima.Visible:=False;
    bDrugieObriTest.Visible:=False;
    bDrugieObrScilab.Visible:=False;
    bDrugieObrOpenTeacher.Visible:=False;
    bDrugieObrDWSIM.Visible:=False;
    bDrugieObr.Visible:=False;
    bDrugieVirtpl.Visible:=False;
    bDrugieVirtplSkyChart.Visible:=False;
    bDrugieVirtplStellarium.Visible:=False;
    bDrugieVirtplCelestia.Visible:=False;
    bDrugieKat.Visible:=False;
    bDrugieKatStuffOrganizer.Visible:=False;
    bDrugieKatDataCrow.Visible:=False;
    bDrugieKatAntMovieCatalog.Visible:=False;
    bDrugieKatGCstar.Visible:=False;
    bDrugieZam.Visible:=False;
    bDrugieZamOutWiker.Visible:=False;
    bDrugieZamRedNotebook.Visible:=False;
    bDrugieZamPNotes.Visible:=False;
    bDrugieZamQQwnNotes.Visible:=False;
    bMultimVospOnline.Visible:=False;
    bMultimVospVideo.Visible:=False;
    bMultimVospAudio.Visible:=False;
    bMultimVospMedCentr.Visible:=False;
    bMultimEditVlmc.Visible:=False;
    bMultimEditAvidemux.Visible:=False;
    bMultimEditShotcut.Visible:=False;
    bMultimEditAudacity.Visible:=False;
    bMultimEditWaveShop.Visible:=False;
    bMultimKonvertHandBrake.Visible:=False;
    bMultimKonvertQWinFF.Visible:=False;
    bMultimKonvertTEncoder.Visible:=False;
    bMultimKonvertfreac.Visible:=False;
    bMultimKonvertTAudioConverter.Visible:=False;
    bMultimZahvatOBS.Visible:=False;
    bMultimZahvatFoxToolsShooter.Visible:=False;
    bMultimZahvatGreenshot.Visible:=False;
    bMultimZahvatShareX.Visible:=False;
    bOfficeFinanceAnanas.Visible:=False;
    bOfficeFinanceHomeBank.Visible:=False;
    bOfficeFinanceMoneyManagerEx.Visible:=False;
    bOfficeFinanceKMyMoney.Visible:=False;
    bOfficeFinanceRepairCenter.Visible:=False;
    bOfficeFinanceFramingWorkshop.Visible:=False;
    bOfficeFinanceSysUchZayv.Visible:=False;
    bOfficeFinanceMoiprodazhi.Visible:=False;
    bOfficeFinanceFakturama.Visible:=False;
    bOfficeAnalogONLYOFFICEDesktopEditors.Visible:=False;
    bOfficeAnalogLibreOffice.Visible:=False;
    bOfficeAnalogApacheOpenOffice.Visible:=False;
    bOfficeAnalogCalligraGemini.Visible:=False;
    bOfficePdfSumatraPDF.Visible:=False;
    bOfficePdfCalibre.Visible:=False;
    bOfficePdfTEBookConverter.Visible:=False;
    bOfficePdfRedaktorpdf.Visible:=False;
    bOfficePdfPDFsamBasic.Visible:=False;
    bOfficePdfFB2.Visible:=False;
    bOfficeScanNASP2.Visible:=False;
    bOfficeScanVietOCR.Visible:=False;
    bOfficeScanCognitiveOpenOCR.Visible:=False;
    bOfficeScanPDFCreator.Visible:=False;
    bOfficePlanGanttProject.Visible:=False;
    bOfficePlanProjectLibre.Visible:=False;
    bOfficePlanWindowsPlanner.Visible:=False;
    bOfficePlanTaskUnifier.Visible:=False;
    bOfficePlanTaskCoach.Visible:=False;
    bOfficePlanMozillaSunbird.Visible:=False;
    bOfficePlanTheTimelineProject.Visible:=False;
    bOfficePlaOnepointProjectBasicEdition.Visible:=False;
    bRazrabHtmlBrackets.Visible:=False;
    bRazrabHtmlBluefish.Visible:=False;
    bRazrabHtmlBlueGriffon.Visible:=False;
    bRazrabHtmlkodeWeave.Visible:=False;
    bRazrabHtmlNotepad.Visible:=False;
    bRazrabCppWxDev.Visible:=False;
    bRazrabCppCodeBlocks.Visible:=False;
    bRazrabCppNetBeans.Visible:=False;
    bRazrabCppXamarinStudio.Visible:=False;
    bRazrabCppBluefish.Visible:=False;
    bRazrabOpLazarus.Visible:=False;
    bInternetBrow.Visible:=False;
    bInternetBrowMozillaFirefox.Visible:=False;
    bInternetBrowOtterBrowser.Visible:=False;
    bInternetBrowChromium.Visible:=False;
    bInternetTalk.Visible:=False;
    bInternetTalkKVIrc.Visible:=False;
    bInternetTalkTkabber.Visible:=False;
    bInternetTalkPidgin.Visible:=False;
    bInternetTalkMozillaThunderbird.Visible:=False;
    bInternetTalkMumble.Visible:=False;
    bInternetTalkBeeBEEP.Visible:=False;
    bInternetTalkLinphone.Visible:=False;
    bInternetDown.Visible:=False;
    bInternetDownClipGrab.Visible:=False;
    bInternetDownFileZilla.Visible:=False;
    bInternetDownJDownloader.Visible:=False;
    bInternetDownFdm.Visible:=False;
    bInternetDownqBittorrent.Visible:=False;
    bInternetSetut.Visible:=False;
    bInternetSetutWireshark.Visible:=False;
    bInternetSetutNmap.Visible:=False;
    bInternetSetutOpenVisualTraceroute.Visible:=False;
    bInternetSetutSecurepointSSLVPNClient.Visible:=False;
    bInternetSetutruWinMTR.Visible:=False;
    bInternetSetutLinkChecker.Visible:=False;
    bInternetSetuthttpres.Visible:=False;
    bInternetSetutSimpleSitemapCreator.Visible:=False;
    bInternetRssRSSBandit.Visible:=False;
    bInternetRss.Visible:=False;
    bInternetRssQuiteRSS.Visible:=False;
    bInternetRssMozillaThunderbird.Visible:=False;
    bUtilityRar.Visible:=False;
    bUtilityRarPeaZip.Visible:=False;
    bUtilityRarFreeArc.Visible:=False;
    bUtilityRar7Zip.Visible:=False;
    bUtilitySystem.Visible:=False;
    bUtilitySystemProcessHacker.Visible:=False;
    bUtilitySystemUltraDefrag.Visible:=False;
    bUtilitySystemBulkCrapUninstaller.Visible:=False;
    bUtilitySystemSmartSystemRepiar.Visible:=False;
    bUtilitySystemSysOptimizer.Visible:=False;
    bUtilitySystemPerformanceMaintainer.Visible:=False;
    bUtilitySystemAspia.Visible:=False;
    bUtilitySystemHDDGuardian.Visible:=False;
    bUtilitySystemDitto.Visible:=False;
    bUtilityFile.Visible:=False;
    bUtilityFileFreeFileSync.Visible:=False;
    bUtilityFileWinMerge.Visible:=False;
    bUtilityFileKickassUndelete.Visible:=False;
    bUtilityFileDoubleCommander.Visible:=False;
    bUtilityFileFileOptimizer.Visible:=False;
    bUtilityFileDUFF.Visible:=False;
    bUtilityProch.Visible:=False;
    bUtilityProchCloseTheDoor.Visible:=False;
    bUtilityProchAngryIPScanner.Visible:=False;
    bUtilityProchiTALC.Visible:=False;
    bUtilityProchUltraVNC.Visible:=False;
    bUtilityProchwxHexEditor.Visible:=False;
    bUtilityProchFontForge.Visible:=False;
    bUtilityProchVirtualBox.Visible:=False;
end;

procedure TfPodborZameni.bRazrabCppBluefishClick(Sender: TObject);
begin
    lProgramName.Caption:='Bluefish';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D1%80%D0%B0%D0%B7%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D1%87%D0%B8%D0%BA%D1%83/ide/bluefish-%D1%82%D0%B5%D0%BA%D1%81%D1%82%D0%BE%D0%B2%D1%8B%D0%B9-%D1%80%D0%B5%D0%B4%D0%B0%D0%BA%D1%82%D0%BE%D1%80-%D1%81-%D0%BF%D0%BE%D0%B4%D1%81%D0%B2%D0%B5%D1%82%D0%BA%D0%BE%D0%B9-%D1%81%D0%B8%D0%BD%D1%82%D0%B0%D0%BA%D1%81%D0%B8%D1%81%D0%B0.html';
end;

procedure TfPodborZameni.bRazrabCppClick(Sender: TObject);
begin
    bRazrabCppWxDev.Visible:=true;
    bRazrabCppCodeBlocks.Visible:=true;
    bRazrabCppNetBeans.Visible:=true;
    bRazrabCppXamarinStudio.Visible:=true;
    bRazrabCppBluefish.Visible:=true;
    bRazrabHtmlBrackets.Visible:=False;
    bRazrabHtmlBluefish.Visible:=False;
    bRazrabHtmlBlueGriffon.Visible:=False;
    bRazrabHtmlkodeWeave.Visible:=False;
    bRazrabHtmlNotepad.Visible:=False;
    bRazrabOpLazarus.Visible:=False;
end;

procedure TfPodborZameni.bRazrabCppCodeBlocksClick(Sender: TObject);
begin
    lProgramName.Caption:='Code::Blocks';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D1%80%D0%B0%D0%B7%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D1%87%D0%B8%D0%BA%D1%83/ide/code-blocks-%D1%81%D1%80%D0%B5%D0%B4%D0%B0-%D1%80%D0%B0%D0%B7%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D0%BA%D0%B8-%D0%BD%D0%B0-c,-c-%D0%B8-fortran.html';
end;

procedure TfPodborZameni.bRazrabCppNetBeansClick(Sender: TObject);
begin
    lProgramName.Caption:='NetBeans';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D1%80%D0%B0%D0%B7%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D1%87%D0%B8%D0%BA%D1%83/ide/netbeans-%D1%81%D0%B2%D0%BE%D0%B1%D0%BE%D0%B4%D0%BD%D0%B0%D1%8F-%D0%B8%D0%BD%D1%82%D0%B5%D0%B3%D1%80%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%BD%D0%B0%D1%8F-%D1%81%D1%80%D0%B5%D0%B4%D0%B0-%D1%80%D0%B0%D0%B7%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D0%BA%D0%B8-%D0%BF%D1%80%D0%B8%D0%BB%D0%BE%D0%B6%D0%B5%D0%BD%D0%B8%D0%B9-ide.html';
end;

procedure TfPodborZameni.bRazrabCppWxDevClick(Sender: TObject);
begin
    lProgramName.Caption:='WxDev-C++';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D1%80%D0%B0%D0%B7%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D1%87%D0%B8%D0%BA%D1%83/ide/wxdev-c-%D0%B8%D0%BD%D1%82%D0%B5%D0%B3%D1%80%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%BD%D0%B0%D1%8F-%D1%81%D1%80%D0%B5%D0%B4%D0%B0-%D1%80%D0%B0%D0%B7%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D0%BA%D0%B8-%D0%BD%D0%B0-c-c.html';
end;

procedure TfPodborZameni.bRazrabCppXamarinStudioClick(Sender: TObject);
begin
    lProgramName.Caption:='Xamarin Studio';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D1%80%D0%B0%D0%B7%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D1%87%D0%B8%D0%BA%D1%83/ide/xamarin-studio-%D0%B8%D0%BD%D1%82%D0%B5%D0%B3%D1%80%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%BD%D0%B0%D1%8F-%D1%81%D1%80%D0%B5%D0%B4%D0%B0-%D1%80%D0%B0%D0%B7%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D0%BA%D0%B8.html';
end;

procedure TfPodborZameni.bRazrabHtmlBluefishClick(Sender: TObject);
begin
    lProgramName.Caption:='Bluefish';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D1%80%D0%B0%D0%B7%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D1%87%D0%B8%D0%BA%D1%83/ide/bluefish-%D1%82%D0%B5%D0%BA%D1%81%D1%82%D0%BE%D0%B2%D1%8B%D0%B9-%D1%80%D0%B5%D0%B4%D0%B0%D0%BA%D1%82%D0%BE%D1%80-%D1%81-%D0%BF%D0%BE%D0%B4%D1%81%D0%B2%D0%B5%D1%82%D0%BA%D0%BE%D0%B9-%D1%81%D0%B8%D0%BD%D1%82%D0%B0%D0%BA%D1%81%D0%B8%D1%81%D0%B0.html';
end;

procedure TfPodborZameni.bRazrabHtmlBlueGriffonClick(Sender: TObject);
begin
    lProgramName.Caption:='BlueGriffon';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D1%80%D0%B0%D0%B7%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D1%87%D0%B8%D0%BA%D1%83/ide/bluegriffon-wysiwyg-%D1%80%D0%B5%D0%B4%D0%B0%D0%BA%D1%82%D0%BE%D1%80.html';
end;

procedure TfPodborZameni.bRazrabHtmlBracketsClick(Sender: TObject);
begin
    lProgramName.Caption:='Brackets';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D1%80%D0%B0%D0%B7%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D1%87%D0%B8%D0%BA%D1%83/ide/brackets-%D1%80%D0%B5%D0%B4%D0%B0%D0%BA%D1%82%D0%BE%D1%80-html-%D0%BA%D0%BE%D0%B4%D0%B0.html';
end;

procedure TfPodborZameni.bRazrabHtmlClick(Sender: TObject);
begin
    bRazrabHtmlBrackets.Visible:=true;
    bRazrabHtmlBluefish.Visible:=true;
    bRazrabHtmlBlueGriffon.Visible:=true;
    bRazrabHtmlkodeWeave.Visible:=true;
    bRazrabHtmlNotepad.Visible:=true;
    bRazrabCppWxDev.Visible:=False;
    bRazrabCppCodeBlocks.Visible:=False;
    bRazrabCppNetBeans.Visible:=False;
    bRazrabCppXamarinStudio.Visible:=False;
    bRazrabCppBluefish.Visible:=False;
    bRazrabOpLazarus.Visible:=False;
end;

procedure TfPodborZameni.bRazrabHtmlkodeWeaveClick(Sender: TObject);
begin
    lProgramName.Caption:='kodeWeave';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D1%80%D0%B0%D0%B7%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D1%87%D0%B8%D0%BA%D1%83/ide/kodeweave-%D1%80%D0%B0%D0%B7%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D0%BA%D0%B0-%D0%BD%D0%B0-html-css-js.html';
end;

procedure TfPodborZameni.bRazrabHtmlNotepadClick(Sender: TObject);
begin
    lProgramName.Caption:='Notepad++';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D1%80%D0%B0%D0%B7%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D1%87%D0%B8%D0%BA%D1%83/%D1%80%D0%B5%D0%B4%D0%B0%D0%BA%D1%82%D0%BE%D1%80%D1%8B-%D0%BA%D0%BE%D0%B4%D0%B0/notepad-%D1%82%D0%B5%D0%BA%D1%81%D1%82%D0%BE%D0%B2%D1%8B%D0%B9-%D1%80%D0%B5%D0%B4%D0%B0%D0%BA%D1%82%D0%BE%D1%80.html';
end;

procedure TfPodborZameni.bRazrabOpClick(Sender: TObject);
begin
    bRazrabOpLazarus.Visible:=true;
    bRazrabHtmlBrackets.Visible:=False;
    bRazrabHtmlBluefish.Visible:=False;
    bRazrabHtmlBlueGriffon.Visible:=False;
    bRazrabHtmlkodeWeave.Visible:=False;
    bRazrabHtmlNotepad.Visible:=False;
    bRazrabCppWxDev.Visible:=False;
    bRazrabCppCodeBlocks.Visible:=False;
    bRazrabCppNetBeans.Visible:=False;
    bRazrabCppXamarinStudio.Visible:=False;
    bRazrabCppBluefish.Visible:=False;
end;

procedure TfPodborZameni.bRazrabOpLazarusClick(Sender: TObject);
begin
    lProgramName.Caption:='Lazarus';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D1%80%D0%B0%D0%B7%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D1%87%D0%B8%D0%BA%D1%83/ide/lazarus-%D1%81%D1%80%D0%B5%D0%B4%D0%B0-%D1%80%D0%B0%D0%B7%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D0%BA%D0%B8-%D0%BD%D0%B0-%D1%8F%D0%B7%D1%8B%D0%BA%D0%B5-object-pascal.html';
end;

procedure TfPodborZameni.bSkachatClick(Sender: TObject);
begin
    OpenURL(UrlAdress);
end;

procedure TfPodborZameni.bUtilityClick(Sender: TObject);
begin
    bUtilityRar.Visible:=true;
    bUtilitySystem.Visible:=true;
    bUtilityFile.Visible:=true;
    bUtilityProch.Visible:=true;
    bRazrabHtml.Visible:=False;
    bRazrabCpp.Visible:=False;
    bRazrabOp.Visible:=False;
    bOfficeFinance.Visible:=False;
    bOfficeAnalog.Visible:=False;
    bOfficePdf.Visible:=False;
    bOfficeScan.Visible:=False;
    bOfficePlan.Visible:=False;
    bMultimVosp.Visible:=False;
    bMultimEdit.Visible:=False;
    bMultimKonvert.Visible:=False;
    bMultimZahvat.Visible:=False;
    bGrafSapr.Visible:=False;
    bGrafGrafedit.Visible:=False;
    bGraf2D.Visible:=False;
    bGraf3D.Visible:=False;
    bGrafProsmotr.Visible:=False;
    bGrafPreobr.Visible:=False;
    vCdZapis.Visible:=False;
    bCdProch.Visible:=False;
    bCdZapKomleks.Visible:=False;
    bCdProchIsoEm.Visible:=False;
    bCdProchIsoEm.Visible:=False;
    bCdProchDvdmenu.Visible:=False;
    bCdProchVossdan.Visible:=False;
    bBezAv.Visible:=False;
    bBezAvSprover.Visible:=False;
    bBezAvBezprover.Visible:=False;
    bBezRezKop.Visible:=False;
    bBezRezkopDomKomp.Visible:=False;
    bBezRezkopRabkomp.Visible:=False;
    bBezShifrFile.Visible:=False;
    bBezShifrHdd.Visible:=False;
    bBezShifr.Visible:=False;
    bBezParol.Visible:=False;
    bBezParolHranPar.Visible:=False;
    bBezParolSozdpar.Visible:=False;
    bBezProch.Visible:=False;
    bBezProchAnonbrow.Visible:=False;
    bBezProchFiltr.Visible:=False;
    bBezProchMonIzmFile.Visible:=False;
    bBezProchBezdel.Visible:=False;
    bGrafGrafeditVector.Visible:=False;
    bGrafGrafeditRedfot.Visible:=False;
    bGrafGrafeditRedico.Visible:=False;
    bGrafGrafeditRedkart.Visible:=False;
    bGrafGrafeditIzdsys.Visible:=False;
    bGrafSaprSolveSpace.Visible:=False;
    bGrafSaprFreeCAD.Visible:=False;
    bGrafSaprNaroCAD.Visible:=False;
    bGrafSaprBRLCAD.Visible:=False;
    bGrafSaprLibreCAD.Visible:=False;
    bGrafSaprKiCad.Visible:=False;
    bGrafSaprQucs.Visible:=False;
    bGraf2DPencil2d.Visible:=False;
    bGraf2DPencil.Visible:=False;
    bGraf2DTupi.Visible:=False;
    bGraf2DSynfigStudio.Visible:=False;
    bGraf3DMakeHuman.Visible:=False;
    bGraf3DSeamless3d.Visible:=False;
    bGraf3DOpenFX.Visible:=False;
    bGraf3DK3D.Visible:=False;
    bGraf3DArtofIllusion.Visible:=False;
    bGraf3DBlender.Visible:=False;
    bGraf3DSweetHome3D.Visible:=False;
    bGrafProsmotrNomacs.Visible:=False;
    bGrafProsmotrAdvancedPhoto.Visible:=False;
    bGrafProsmotrJMG.Visible:=False;
    bGrafProsmotrImageGlass.Visible:=False;
    bGrafPreobrCaesium.Visible:=False;
    bGrafPreobrConverseen.Visible:=False;
    bGrafPreobrSIET.Visible:=False;
    bDrugieObrMnemosyne.Visible:=False;
    bDrugieObrMaxima.Visible:=False;
    bDrugieObriTest.Visible:=False;
    bDrugieObrScilab.Visible:=False;
    bDrugieObrOpenTeacher.Visible:=False;
    bDrugieObrDWSIM.Visible:=False;
    bDrugieObr.Visible:=False;
    bDrugieVirtpl.Visible:=False;
    bDrugieVirtplSkyChart.Visible:=False;
    bDrugieVirtplStellarium.Visible:=False;
    bDrugieVirtplCelestia.Visible:=False;
    bDrugieKat.Visible:=False;
    bDrugieKatStuffOrganizer.Visible:=False;
    bDrugieKatDataCrow.Visible:=False;
    bDrugieKatAntMovieCatalog.Visible:=False;
    bDrugieKatGCstar.Visible:=False;
    bDrugieZam.Visible:=False;
    bDrugieZamOutWiker.Visible:=False;
    bDrugieZamRedNotebook.Visible:=False;
    bDrugieZamPNotes.Visible:=False;
    bDrugieZamQQwnNotes.Visible:=False;
    bMultimVospOnline.Visible:=False;
    bMultimVospVideo.Visible:=False;
    bMultimVospAudio.Visible:=False;
    bMultimVospMedCentr.Visible:=False;
    bMultimEditVlmc.Visible:=False;
    bMultimEditAvidemux.Visible:=False;
    bMultimEditShotcut.Visible:=False;
    bMultimEditAudacity.Visible:=False;
    bMultimEditWaveShop.Visible:=False;
    bMultimKonvertHandBrake.Visible:=False;
    bMultimKonvertQWinFF.Visible:=False;
    bMultimKonvertTEncoder.Visible:=False;
    bMultimKonvertfreac.Visible:=False;
    bMultimKonvertTAudioConverter.Visible:=False;
    bMultimZahvatOBS.Visible:=False;
    bMultimZahvatFoxToolsShooter.Visible:=False;
    bMultimZahvatGreenshot.Visible:=False;
    bMultimZahvatShareX.Visible:=False;
    bOfficeFinanceAnanas.Visible:=False;
    bOfficeFinanceHomeBank.Visible:=False;
    bOfficeFinanceMoneyManagerEx.Visible:=False;
    bOfficeFinanceKMyMoney.Visible:=False;
    bOfficeFinanceRepairCenter.Visible:=False;
    bOfficeFinanceFramingWorkshop.Visible:=False;
    bOfficeFinanceSysUchZayv.Visible:=False;
    bOfficeFinanceMoiprodazhi.Visible:=False;
    bOfficeFinanceFakturama.Visible:=False;
    bOfficeAnalogONLYOFFICEDesktopEditors.Visible:=False;
    bOfficeAnalogLibreOffice.Visible:=False;
    bOfficeAnalogApacheOpenOffice.Visible:=False;
    bOfficeAnalogCalligraGemini.Visible:=False;
    bOfficePdfSumatraPDF.Visible:=False;
    bOfficePdfCalibre.Visible:=False;
    bOfficePdfTEBookConverter.Visible:=False;
    bOfficePdfRedaktorpdf.Visible:=False;
    bOfficePdfPDFsamBasic.Visible:=False;
    bOfficePdfFB2.Visible:=False;
    bOfficeScanNASP2.Visible:=False;
    bOfficeScanVietOCR.Visible:=False;
    bOfficeScanCognitiveOpenOCR.Visible:=False;
    bOfficeScanPDFCreator.Visible:=False;
    bOfficePlanGanttProject.Visible:=False;
    bOfficePlanProjectLibre.Visible:=False;
    bOfficePlanWindowsPlanner.Visible:=False;
    bOfficePlanTaskUnifier.Visible:=False;
    bOfficePlanTaskCoach.Visible:=False;
    bOfficePlanMozillaSunbird.Visible:=False;
    bOfficePlanTheTimelineProject.Visible:=False;
    bOfficePlaOnepointProjectBasicEdition.Visible:=False;
    bRazrabHtmlBrackets.Visible:=False;
    bRazrabHtmlBluefish.Visible:=False;
    bRazrabHtmlBlueGriffon.Visible:=False;
    bRazrabHtmlkodeWeave.Visible:=False;
    bRazrabHtmlNotepad.Visible:=False;
    bRazrabCppWxDev.Visible:=False;
    bRazrabCppCodeBlocks.Visible:=False;
    bRazrabCppNetBeans.Visible:=False;
    bRazrabCppXamarinStudio.Visible:=False;
    bRazrabCppBluefish.Visible:=False;
    bRazrabOpLazarus.Visible:=False;
    bInternetBrow.Visible:=False;
    bInternetBrowMozillaFirefox.Visible:=False;
    bInternetBrowOtterBrowser.Visible:=False;
    bInternetBrowChromium.Visible:=False;
    bInternetTalk.Visible:=False;
    bInternetTalkKVIrc.Visible:=False;
    bInternetTalkTkabber.Visible:=False;
    bInternetTalkPidgin.Visible:=False;
    bInternetTalkMozillaThunderbird.Visible:=False;
    bInternetTalkMumble.Visible:=False;
    bInternetTalkBeeBEEP.Visible:=False;
    bInternetTalkLinphone.Visible:=False;
    bInternetDown.Visible:=False;
    bInternetDownClipGrab.Visible:=False;
    bInternetDownFileZilla.Visible:=False;
    bInternetDownJDownloader.Visible:=False;
    bInternetDownFdm.Visible:=False;
    bInternetDownqBittorrent.Visible:=False;
    bInternetSetut.Visible:=False;
    bInternetSetutWireshark.Visible:=False;
    bInternetSetutNmap.Visible:=False;
    bInternetSetutOpenVisualTraceroute.Visible:=False;
    bInternetSetutSecurepointSSLVPNClient.Visible:=False;
    bInternetSetutruWinMTR.Visible:=False;
    bInternetSetutLinkChecker.Visible:=False;
    bInternetSetuthttpres.Visible:=False;
    bInternetSetutSimpleSitemapCreator.Visible:=False;
    bInternetRssRSSBandit.Visible:=False;
    bInternetRss.Visible:=False;
    bInternetRssQuiteRSS.Visible:=False;
    bInternetRssMozillaThunderbird.Visible:=False;
    bUtilityRarPeaZip.Visible:=False;
    bUtilityRarFreeArc.Visible:=False;
    bUtilityRar7Zip.Visible:=False;
    bUtilitySystemProcessHacker.Visible:=False;
    bUtilitySystemUltraDefrag.Visible:=False;
    bUtilitySystemBulkCrapUninstaller.Visible:=False;
    bUtilitySystemSmartSystemRepiar.Visible:=False;
    bUtilitySystemSysOptimizer.Visible:=False;
    bUtilitySystemPerformanceMaintainer.Visible:=False;
    bUtilitySystemAspia.Visible:=False;
    bUtilitySystemHDDGuardian.Visible:=False;
    bUtilitySystemDitto.Visible:=False;
    bUtilityFileFreeFileSync.Visible:=False;
    bUtilityFileWinMerge.Visible:=False;
    bUtilityFileKickassUndelete.Visible:=False;
    bUtilityFileDoubleCommander.Visible:=False;
    bUtilityFileFileOptimizer.Visible:=False;
    bUtilityFileDUFF.Visible:=False;
    bUtilityProchCloseTheDoor.Visible:=False;
    bUtilityProchAngryIPScanner.Visible:=False;
    bUtilityProchiTALC.Visible:=False;
    bUtilityProchUltraVNC.Visible:=False;
    bUtilityProchwxHexEditor.Visible:=False;
    bUtilityProchFontForge.Visible:=False;
    bUtilityProchVirtualBox.Visible:=False;
end;

procedure TfPodborZameni.bUtilityFileClick(Sender: TObject);
begin
    bUtilityFileFreeFileSync.Visible:=true;
    bUtilityFileWinMerge.Visible:=true;
    bUtilityFileKickassUndelete.Visible:=true;
    bUtilityFileDoubleCommander.Visible:=true;
    bUtilityFileFileOptimizer.Visible:=true;
    bUtilityFileDUFF.Visible:=true;
    bUtilityRarPeaZip.Visible:=False;
    bUtilityRarFreeArc.Visible:=False;
    bUtilityRar7Zip.Visible:=False;
    bUtilitySystemProcessHacker.Visible:=False;
    bUtilitySystemUltraDefrag.Visible:=False;
    bUtilitySystemBulkCrapUninstaller.Visible:=False;
    bUtilitySystemSmartSystemRepiar.Visible:=False;
    bUtilitySystemSysOptimizer.Visible:=False;
    bUtilitySystemPerformanceMaintainer.Visible:=False;
    bUtilitySystemAspia.Visible:=False;
    bUtilitySystemHDDGuardian.Visible:=False;
    bUtilitySystemDitto.Visible:=False;
    bUtilityProchCloseTheDoor.Visible:=False;
    bUtilityProchAngryIPScanner.Visible:=False;
    bUtilityProchiTALC.Visible:=False;
    bUtilityProchUltraVNC.Visible:=False;
    bUtilityProchwxHexEditor.Visible:=False;
    bUtilityProchFontForge.Visible:=False;
    bUtilityProchVirtualBox.Visible:=False;
end;

procedure TfPodborZameni.bUtilityFileDoubleCommanderClick(Sender: TObject);
begin
    lProgramName.Caption:='Double Commander';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D1%83%D1%82%D0%B8%D0%BB%D0%B8%D1%82%D1%8B/%D1%84%D0%B0%D0%B9%D0%BB%D1%8B-%D0%B8-%D0%BF%D0%B0%D0%BF%D0%BA%D0%B8/double-commander-%D0%B0%D0%BD%D0%B0%D0%BB%D0%BE%D0%B3-total-commander.html';
end;

procedure TfPodborZameni.bUtilityFileDUFFClick(Sender: TObject);
begin
    lProgramName.Caption:='DUFF';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D1%83%D1%82%D0%B8%D0%BB%D0%B8%D1%82%D1%8B/%D1%84%D0%B0%D0%B9%D0%BB%D1%8B-%D0%B8-%D0%BF%D0%B0%D0%BF%D0%BA%D0%B8/duff-%D0%BF%D0%BE%D0%B8%D1%81%D0%BA-%D0%B4%D1%83%D0%B1%D0%BB%D0%B8%D0%BA%D0%B0%D1%82%D0%BE%D0%B2-%D1%84%D0%B0%D0%B9%D0%BB%D0%BE%D0%B2-%D0%BD%D0%B0-windows.html';
end;

procedure TfPodborZameni.bUtilityFileFileOptimizerClick(Sender: TObject);
begin
    lProgramName.Caption:='FileOptimizer';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D1%83%D1%82%D0%B8%D0%BB%D0%B8%D1%82%D1%8B/%D1%84%D0%B0%D0%B9%D0%BB%D1%8B-%D0%B8-%D0%BF%D0%B0%D0%BF%D0%BA%D0%B8/fileoptimizer-%D0%BE%D0%BF%D1%82%D0%B8%D0%BC%D0%B8%D0%B7%D0%B0%D1%86%D0%B8%D1%8F-%D1%84%D0%B0%D0%B9%D0%BB%D0%BE%D0%B2-%D0%BC%D0%BD%D0%BE%D0%B6%D0%B5%D1%81%D1%82%D0%B2%D0%B0-%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%82%D0%BE%D0%B2.html';
end;

procedure TfPodborZameni.bUtilityFileFreeFileSyncClick(Sender: TObject);
begin
    lProgramName.Caption:='FreeFileSync';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D1%83%D1%82%D0%B8%D0%BB%D0%B8%D1%82%D1%8B/%D1%84%D0%B0%D0%B9%D0%BB%D1%8B-%D0%B8-%D0%BF%D0%B0%D0%BF%D0%BA%D0%B8/freefilesync-%D1%81%D0%B8%D0%BD%D1%85%D1%80%D0%BE%D0%BD%D0%B8%D0%B7%D0%B0%D1%86%D0%B8%D1%8F-%D0%B8-%D1%81%D1%80%D0%B0%D0%B2%D0%BD%D0%B5%D0%BD%D0%B8%D0%B5-%D0%BA%D0%B0%D1%82%D0%B0%D0%BB%D0%BE%D0%B3%D0%BE%D0%B2.html';
end;

procedure TfPodborZameni.bUtilityFileKickassUndeleteClick(Sender: TObject);
begin
    lProgramName.Caption:='Kickass Undelete';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D1%83%D1%82%D0%B8%D0%BB%D0%B8%D1%82%D1%8B/%D1%84%D0%B0%D0%B9%D0%BB%D1%8B-%D0%B8-%D0%BF%D0%B0%D0%BF%D0%BA%D0%B8/kickass-undelete-%D0%B2%D0%BE%D1%81%D1%81%D1%82%D0%B0%D0%BD%D0%BE%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5-%D1%84%D0%B0%D0%B9%D0%BB%D0%BE%D0%B2.html';
end;

procedure TfPodborZameni.bUtilityFileWinMergeClick(Sender: TObject);
begin
    lProgramName.Caption:='WinMerge';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D1%83%D1%82%D0%B8%D0%BB%D0%B8%D1%82%D1%8B/%D1%84%D0%B0%D0%B9%D0%BB%D1%8B-%D0%B8-%D0%BF%D0%B0%D0%BF%D0%BA%D0%B8/winmerge-%D1%81%D1%80%D0%B0%D0%B2%D0%BD%D0%B5%D0%BD%D0%B8%D0%B5-%D0%B8-%D1%81%D0%B8%D0%BD%D1%85%D1%80%D0%BE%D0%BD%D0%B8%D0%B7%D0%B0%D1%86%D0%B8%D1%8F-%D0%BF%D0%B0%D0%BF%D0%BE%D0%BA.html';
end;

procedure TfPodborZameni.bUtilityProchAngryIPScannerClick(Sender: TObject);
begin
    lProgramName.Caption:='Angry IP Scanner';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D1%83%D1%82%D0%B8%D0%BB%D0%B8%D1%82%D1%8B/%D0%BF%D1%80%D0%BE%D1%87%D0%B5%D0%B5/angry-ip-scanner-%D1%81%D0%B5%D1%82%D0%B5%D0%B2%D0%BE%D0%B9-%D1%81%D0%BA%D0%B0%D0%BD%D0%B5%D1%80.html';
end;

procedure TfPodborZameni.bUtilityProchClick(Sender: TObject);
begin
    bUtilityProchCloseTheDoor.Visible:=true;
    bUtilityProchAngryIPScanner.Visible:=true;
    bUtilityProchiTALC.Visible:=true;
    bUtilityProchUltraVNC.Visible:=true;
    bUtilityProchwxHexEditor.Visible:=true;
    bUtilityProchFontForge.Visible:=true;
    bUtilityProchVirtualBox.Visible:=true;
    bUtilityRarPeaZip.Visible:=False;
    bUtilityRarFreeArc.Visible:=False;
    bUtilityRar7Zip.Visible:=False;
    bUtilitySystemProcessHacker.Visible:=False;
    bUtilitySystemUltraDefrag.Visible:=False;
    bUtilitySystemBulkCrapUninstaller.Visible:=False;
    bUtilitySystemSmartSystemRepiar.Visible:=False;
    bUtilitySystemSysOptimizer.Visible:=False;
    bUtilitySystemPerformanceMaintainer.Visible:=False;
    bUtilitySystemAspia.Visible:=False;
    bUtilitySystemHDDGuardian.Visible:=False;
    bUtilitySystemDitto.Visible:=False;
    bUtilityFileFreeFileSync.Visible:=False;
    bUtilityFileWinMerge.Visible:=False;
    bUtilityFileKickassUndelete.Visible:=False;
    bUtilityFileDoubleCommander.Visible:=False;
    bUtilityFileFileOptimizer.Visible:=False;
    bUtilityFileDUFF.Visible:=False;
end;

procedure TfPodborZameni.bUtilityProchCloseTheDoorClick(Sender: TObject);
begin
    lProgramName.Caption:='CloseTheDoor';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D1%83%D1%82%D0%B8%D0%BB%D0%B8%D1%82%D1%8B/%D0%BF%D1%80%D0%BE%D1%87%D0%B5%D0%B5/closethedoor-%D0%BF%D1%80%D0%BE%D1%81%D0%BB%D1%83%D1%88%D0%B8%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5-%D0%BF%D0%BE%D1%80%D1%82%D0%BE%D0%B2-tcp-udp.html';
end;

procedure TfPodborZameni.bUtilityProchFontForgeClick(Sender: TObject);
begin
    lProgramName.Caption:='FontForge';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D1%83%D1%82%D0%B8%D0%BB%D0%B8%D1%82%D1%8B/%D0%BF%D1%80%D0%BE%D1%87%D0%B5%D0%B5/fontforge-%D1%80%D0%B5%D0%B4%D0%B0%D0%BA%D1%82%D0%BE%D1%80-%D1%88%D1%80%D0%B8%D1%84%D1%82%D0%BE%D0%B2.html';
end;

procedure TfPodborZameni.bUtilityProchiTALCClick(Sender: TObject);
begin
    lProgramName.Caption:='iTALC';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D1%83%D1%82%D0%B8%D0%BB%D0%B8%D1%82%D1%8B/%D0%BF%D1%80%D0%BE%D1%87%D0%B5%D0%B5/italc-%D1%83%D0%B4%D0%B0%D0%BB%D0%B5%D0%BD%D0%BD%D0%BE%D0%B5-%D1%83%D0%BF%D1%80%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5-%D0%BA%D0%BE%D0%BC%D0%BF%D1%8C%D1%8E%D1%82%D0%B5%D1%80%D0%BD%D1%8B%D0%BC-%D0%BA%D0%BB%D0%B0%D1%81%D1%81%D0%BE%D0%BC.html';
end;

procedure TfPodborZameni.bUtilityProchUltraVNCClick(Sender: TObject);
begin
    lProgramName.Caption:='UltraVNC';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D1%83%D1%82%D0%B8%D0%BB%D0%B8%D1%82%D1%8B/%D0%BF%D1%80%D0%BE%D1%87%D0%B5%D0%B5/ultravnc-%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D0%B0-%D0%B4%D0%BB%D1%8F-%D1%83%D0%B4%D0%B0%D0%BB%D0%B5%D0%BD%D0%BD%D0%BE%D0%B3%D0%BE-%D0%B0%D0%B4%D0%BC%D0%B8%D0%BD%D0%B8%D1%81%D1%82%D1%80%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8F.html';
end;

procedure TfPodborZameni.bUtilityProchVirtualBoxClick(Sender: TObject);
begin
    lProgramName.Caption:='VirtualBox';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D1%83%D1%82%D0%B8%D0%BB%D0%B8%D1%82%D1%8B/%D0%BF%D1%80%D0%BE%D1%87%D0%B5%D0%B5/virtualbox-%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D0%B0-%D0%B4%D0%BB%D1%8F-%D0%B2%D0%B8%D1%80%D1%82%D1%83%D0%B0%D0%BB%D0%B8%D0%B7%D0%B0%D1%86%D0%B8%D0%B8.html';
end;

procedure TfPodborZameni.bUtilityProchwxHexEditorClick(Sender: TObject);
begin
    lProgramName.Caption:='wxHexEditor';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D1%83%D1%82%D0%B8%D0%BB%D0%B8%D1%82%D1%8B/%D0%BF%D1%80%D0%BE%D1%87%D0%B5%D0%B5/wxhexeditor-hex-%D1%80%D0%B5%D0%B4%D0%B0%D0%BA%D1%82%D0%BE%D1%80.html';
end;

procedure TfPodborZameni.bUtilityRar7ZipClick(Sender: TObject);
begin
    lProgramName.Caption:='7-Zip';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D1%83%D1%82%D0%B8%D0%BB%D0%B8%D1%82%D1%8B/%D0%B0%D1%80%D1%85%D0%B8%D0%B2%D0%B0%D1%82%D0%BE%D1%80%D1%8B/7-zip-%D0%BB%D1%83%D1%87%D1%88%D0%B8%D0%B9-%D0%B1%D0%B5%D1%81%D0%BF%D0%BB%D0%B0%D1%82%D0%BD%D1%8B%D0%B9-%D0%B0%D1%80%D1%85%D0%B8%D0%B2%D0%B0%D1%82%D0%BE%D1%80-%D0%B4%D0%BB%D1%8F-windows.html';
end;

procedure TfPodborZameni.bUtilityRarClick(Sender: TObject);
begin
    bUtilityRarPeaZip.Visible:=true;
    bUtilityRarFreeArc.Visible:=true;
    bUtilityRar7Zip.Visible:=true;
    bUtilitySystemProcessHacker.Visible:=False;
    bUtilitySystemUltraDefrag.Visible:=False;
    bUtilitySystemBulkCrapUninstaller.Visible:=False;
    bUtilitySystemSmartSystemRepiar.Visible:=False;
    bUtilitySystemSysOptimizer.Visible:=False;
    bUtilitySystemPerformanceMaintainer.Visible:=False;
    bUtilitySystemAspia.Visible:=False;
    bUtilitySystemHDDGuardian.Visible:=False;
    bUtilitySystemDitto.Visible:=False;
    bUtilityFileFreeFileSync.Visible:=False;
    bUtilityFileWinMerge.Visible:=False;
    bUtilityFileKickassUndelete.Visible:=False;
    bUtilityFileDoubleCommander.Visible:=False;
    bUtilityFileFileOptimizer.Visible:=False;
    bUtilityFileDUFF.Visible:=False;
    bUtilityProchCloseTheDoor.Visible:=False;
    bUtilityProchAngryIPScanner.Visible:=False;
    bUtilityProchiTALC.Visible:=False;
    bUtilityProchUltraVNC.Visible:=False;
    bUtilityProchwxHexEditor.Visible:=False;
    bUtilityProchFontForge.Visible:=False;
    bUtilityProchVirtualBox.Visible:=False;
end;

procedure TfPodborZameni.bUtilityRarFreeArcClick(Sender: TObject);
begin
    lProgramName.Caption:='FreeArc';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D1%83%D1%82%D0%B8%D0%BB%D0%B8%D1%82%D1%8B/%D0%B0%D1%80%D1%85%D0%B8%D0%B2%D0%B0%D1%82%D0%BE%D1%80%D1%8B/freearc-%D0%B0%D1%80%D1%85%D0%B8%D0%B2%D0%B0%D1%82%D0%BE%D1%80.html';
end;

procedure TfPodborZameni.bUtilityRarPeaZipClick(Sender: TObject);
begin
    lProgramName.Caption:='PeaZip';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D1%83%D1%82%D0%B8%D0%BB%D0%B8%D1%82%D1%8B/%D0%B0%D1%80%D1%85%D0%B8%D0%B2%D0%B0%D1%82%D0%BE%D1%80%D1%8B/%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D0%B0-%D0%B4%D0%BB%D1%8F-%D0%BE%D1%82%D0%BA%D1%80%D1%8B%D1%82%D0%B8%D1%8F-rar.html';
end;

procedure TfPodborZameni.bUtilitySystemAspiaClick(Sender: TObject);
begin
    lProgramName.Caption:='Aspia';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D1%83%D1%82%D0%B8%D0%BB%D0%B8%D1%82%D1%8B/%D1%81%D0%B8%D1%81%D1%82%D0%B5%D0%BC%D0%B0/aspia-%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D0%B0-%D1%81%D0%B1%D0%BE%D1%80%D0%B0-%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D0%B8-%D0%BE-%D0%BA%D0%BE%D0%BC%D0%BF%D1%8C%D1%8E%D1%82%D0%B5%D1%80%D0%B5.html';
end;

procedure TfPodborZameni.bUtilitySystemBulkCrapUninstallerClick(Sender: TObject
  );
begin
    lProgramName.Caption:='Bulk Crap Uninstaller';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D1%83%D1%82%D0%B8%D0%BB%D0%B8%D1%82%D1%8B/%D1%81%D0%B8%D1%81%D1%82%D0%B5%D0%BC%D0%B0/bulk-crap-uninstaller-%D0%B4%D0%B5%D0%B8%D0%BD%D1%81%D1%82%D0%B0%D0%BB%D0%BB%D1%8F%D1%82%D0%BE%D1%80-%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC.html';
end;

procedure TfPodborZameni.bUtilitySystemClick(Sender: TObject);
begin
    bUtilitySystemProcessHacker.Visible:=true;
    bUtilitySystemUltraDefrag.Visible:=true;
    bUtilitySystemBulkCrapUninstaller.Visible:=true;
    bUtilitySystemSmartSystemRepiar.Visible:=true;
    bUtilitySystemSysOptimizer.Visible:=true;
    bUtilitySystemPerformanceMaintainer.Visible:=true;
    bUtilitySystemAspia.Visible:=true;
    bUtilitySystemHDDGuardian.Visible:=true;
    bUtilitySystemDitto.Visible:=true;
    bUtilityRarPeaZip.Visible:=False;
    bUtilityRarFreeArc.Visible:=False;
    bUtilityRar7Zip.Visible:=False;
    bUtilityFileFreeFileSync.Visible:=False;
    bUtilityFileWinMerge.Visible:=False;
    bUtilityFileKickassUndelete.Visible:=False;
    bUtilityFileDoubleCommander.Visible:=False;
    bUtilityFileFileOptimizer.Visible:=False;
    bUtilityFileDUFF.Visible:=False;
    bUtilityProchCloseTheDoor.Visible:=False;
    bUtilityProchAngryIPScanner.Visible:=False;
    bUtilityProchiTALC.Visible:=False;
    bUtilityProchUltraVNC.Visible:=False;
    bUtilityProchwxHexEditor.Visible:=False;
    bUtilityProchFontForge.Visible:=False;
    bUtilityProchVirtualBox.Visible:=False;
end;

procedure TfPodborZameni.bUtilitySystemDittoClick(Sender: TObject);
begin
    lProgramName.Caption:='Ditto';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D1%83%D1%82%D0%B8%D0%BB%D0%B8%D1%82%D1%8B/%D1%81%D0%B8%D1%81%D1%82%D0%B5%D0%BC%D0%B0/ditto-%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D0%B0-%D0%B1%D1%83%D1%84%D0%B5%D1%80-%D0%BE%D0%B1%D0%BC%D0%B5%D0%BD%D0%B0.html';
end;

procedure TfPodborZameni.bUtilitySystemHDDGuardianClick(Sender: TObject);
begin
    lProgramName.Caption:='HDD Guardian';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D1%83%D1%82%D0%B8%D0%BB%D0%B8%D1%82%D1%8B/%D1%81%D0%B8%D1%81%D1%82%D0%B5%D0%BC%D0%B0/hdd-guardian-%D0%BA%D0%BE%D0%BD%D1%82%D1%80%D0%BE%D0%BB%D1%8C-%D1%81%D0%BE%D1%81%D1%82%D0%BE%D1%8F%D0%BD%D0%B8%D1%8F-%D0%B7%D0%B4%D0%BE%D1%80%D0%BE%D0%B2%D1%8C%D1%8F-hdd.html';
end;

procedure TfPodborZameni.bUtilitySystemPerformanceMaintainerClick(
  Sender: TObject);
begin
    lProgramName.Caption:='Performance Maintainer';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D1%83%D1%82%D0%B8%D0%BB%D0%B8%D1%82%D1%8B/%D1%81%D0%B8%D1%81%D1%82%D0%B5%D0%BC%D0%B0/performance-maintainer-%D0%BE%D0%BF%D1%82%D0%B8%D0%BC%D0%B8%D0%B7%D0%B0%D1%82%D0%BE%D1%80-%D1%81%D0%B8%D1%81%D1%82%D0%B5%D0%BC%D1%8B.html';
end;

procedure TfPodborZameni.bUtilitySystemProcessHackerClick(Sender: TObject);
begin
    lProgramName.Caption:='Process Hacker';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D1%83%D1%82%D0%B8%D0%BB%D0%B8%D1%82%D1%8B/%D1%81%D0%B8%D1%81%D1%82%D0%B5%D0%BC%D0%B0/process-hacker-%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D0%B0-%D0%B4%D0%BB%D1%8F-%D0%B7%D0%B0%D0%B2%D0%B5%D1%80%D1%88%D0%B5%D0%BD%D0%B8%D1%8F-%D0%BD%D0%B5%D0%BD%D1%83%D0%B6%D0%BD%D1%8B%D1%85-%D0%BF%D1%80%D0%BE%D1%86%D0%B5%D1%81%D1%81%D0%BE%D0%B2.html';
end;

procedure TfPodborZameni.bUtilitySystemSmartSystemRepiarClick(Sender: TObject);
begin
    lProgramName.Caption:='SmartSystemRepiar';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D1%83%D1%82%D0%B8%D0%BB%D0%B8%D1%82%D1%8B/%D1%81%D0%B8%D1%81%D1%82%D0%B5%D0%BC%D0%B0/smartsystemrepiar-%D0%BE%D0%B1%D1%81%D0%BB%D1%83%D0%B6%D0%B8%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5-%D1%81%D0%B8%D1%81%D1%82%D0%B5%D0%BC%D1%8B.html';
end;

procedure TfPodborZameni.bUtilitySystemSysOptimizerClick(Sender: TObject);
begin
    lProgramName.Caption:='SysOptimizer';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D1%83%D1%82%D0%B8%D0%BB%D0%B8%D1%82%D1%8B/%D1%81%D0%B8%D1%81%D1%82%D0%B5%D0%BC%D0%B0/smartsystemrepiar-%D0%BE%D0%B1%D1%81%D0%BB%D1%83%D0%B6%D0%B8%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5-%D1%81%D0%B8%D1%81%D1%82%D0%B5%D0%BC%D1%8B.html';
end;

procedure TfPodborZameni.bUtilitySystemUltraDefragClick(Sender: TObject);
begin
    lProgramName.Caption:='UltraDefrag';
    UrlAdress := 'http://xn--90abhbolvbbfgb9aje4m.xn--p1ai/%D1%83%D1%82%D0%B8%D0%BB%D0%B8%D1%82%D1%8B/%D1%81%D0%B8%D1%81%D1%82%D0%B5%D0%BC%D0%B0/ultradefrag-%D0%B4%D0%B5%D1%84%D1%80%D0%B0%D0%B3%D0%BC%D0%B5%D0%BD%D1%82%D0%B0%D1%82%D0%BE%D1%80.html';
end;

procedure TfPodborZameni.FormCreate(Sender: TObject);
begin
    vCdZapis.Visible:=False;
    bCdProch.Visible:=False;
    bCdZapKomleks.Visible:=False;
    bCdProchIsoEm.Visible:=False;
    bCdProchDvdmenu.Visible:=False;
    bCdProchVossdan.Visible:=False;
    bBezAv.Visible:=False;
    bBezAvSprover.Visible:=False;
    bBezAvBezprover.Visible:=False;
    bBezRezKop.Visible:=False;
    bBezRezkopDomKomp.Visible:=False;
    bBezRezkopRabkomp.Visible:=False;
    bBezShifrFile.Visible:=False;
    bBezShifrHdd.Visible:=False;
    bBezShifr.Visible:=False;
    bBezParol.Visible:=False;
    bBezParolHranPar.Visible:=False;
    bBezParolSozdpar.Visible:=False;
    bBezProch.Visible:=False;
    bBezProchAnonbrow.Visible:=False;
    bBezProchFiltr.Visible:=False;
    bBezProchMonIzmFile.Visible:=False;
    bBezProchBezdel.Visible:=False;
    bGrafGrafedit.Visible:=False;
    bGrafGrafeditVector.Visible:=False;
    bGrafGrafeditRedfot.Visible:=False;
    bGrafGrafeditRedico.Visible:=False;
    bGrafGrafeditRedkart.Visible:=False;
    bGrafGrafeditIzdsys.Visible:=False;
    bGrafSapr.Visible:=False;
    bGrafSaprSolveSpace.Visible:=False;
    bGrafSaprFreeCAD.Visible:=False;
    bGrafSaprNaroCAD.Visible:=False;
    bGrafSaprBRLCAD.Visible:=False;
    bGrafSaprLibreCAD.Visible:=False;
    bGrafSaprKiCad.Visible:=False;
    bGrafSaprQucs.Visible:=False;
    bGraf2D.Visible:=False;
    bGraf2DPencil2d.Visible:=False;
    bGraf2DPencil.Visible:=False;
    bGraf2DTupi.Visible:=False;
    bGraf2DSynfigStudio.Visible:=False;
    bGraf3D.Visible:=False;
    bGraf3DMakeHuman.Visible:=False;
    bGraf3DSeamless3d.Visible:=False;
    bGraf3DOpenFX.Visible:=False;
    bGraf3DK3D.Visible:=False;
    bGraf3DArtofIllusion.Visible:=False;
    bGraf3DBlender.Visible:=False;
    bGraf3DSweetHome3D.Visible:=False;
    bGrafProsmotr.Visible:=False;
    bGrafProsmotrNomacs.Visible:=False;
    bGrafProsmotrAdvancedPhoto.Visible:=False;
    bGrafProsmotrJMG.Visible:=False;
    bGrafProsmotrImageGlass.Visible:=False;
    bGrafPreobr.Visible:=False;
    bGrafPreobrCaesium.Visible:=False;
    bGrafPreobrConverseen.Visible:=False;
    bGrafPreobrSIET.Visible:=False;
    bDrugieObrMnemosyne.Visible:=False;
    bDrugieObrMaxima.Visible:=False;
    bDrugieObriTest.Visible:=False;
    bDrugieObrScilab.Visible:=False;
    bDrugieObrOpenTeacher.Visible:=False;
    bDrugieObrDWSIM.Visible:=False;
    bDrugieObr.Visible:=False;
    bDrugieVirtpl.Visible:=False;
    bDrugieVirtplSkyChart.Visible:=False;
    bDrugieVirtplStellarium.Visible:=False;
    bDrugieVirtplCelestia.Visible:=False;
    bDrugieKat.Visible:=False;
    bDrugieKatStuffOrganizer.Visible:=False;
    bDrugieKatDataCrow.Visible:=False;
    bDrugieKatAntMovieCatalog.Visible:=False;
    bDrugieKatGCstar.Visible:=False;
    bDrugieZam.Visible:=False;
    bDrugieZamOutWiker.Visible:=False;
    bDrugieZamRedNotebook.Visible:=False;
    bDrugieZamPNotes.Visible:=False;
    bDrugieZamQQwnNotes.Visible:=False;
    bMultimVosp.Visible:=False;
    bMultimVospOnline.Visible:=False;
    bMultimVospVideo.Visible:=False;
    bMultimVospAudio.Visible:=False;
    bMultimVospMedCentr.Visible:=False;
    bMultimEdit.Visible:=False;
    bMultimEditVlmc.Visible:=False;
    bMultimEditAvidemux.Visible:=False;
    bMultimEditShotcut.Visible:=False;
    bMultimEditAudacity.Visible:=False;
    bMultimEditWaveShop.Visible:=False;
    bMultimKonvert.Visible:=False;
    bMultimKonvertHandBrake.Visible:=False;
    bMultimKonvertQWinFF.Visible:=False;
    bMultimKonvertTEncoder.Visible:=False;
    bMultimKonvertfreac.Visible:=False;
    bMultimKonvertTAudioConverter.Visible:=False;
    bMultimZahvat.Visible:=False;
    bMultimZahvatOBS.Visible:=False;
    bMultimZahvatFoxToolsShooter.Visible:=False;
    bMultimZahvatGreenshot.Visible:=False;
    bMultimZahvatShareX.Visible:=False;
    bOfficeFinance.Visible:=False;
    bOfficeFinanceAnanas.Visible:=False;
    bOfficeFinanceHomeBank.Visible:=False;
    bOfficeFinanceMoneyManagerEx.Visible:=False;
    bOfficeFinanceKMyMoney.Visible:=False;
    bOfficeFinanceRepairCenter.Visible:=False;
    bOfficeFinanceFramingWorkshop.Visible:=False;
    bOfficeFinanceSysUchZayv.Visible:=False;
    bOfficeFinanceMoiprodazhi.Visible:=False;
    bOfficeFinanceFakturama.Visible:=False;
    bOfficeAnalog.Visible:=False;
    bOfficeAnalogONLYOFFICEDesktopEditors.Visible:=False;
    bOfficeAnalogLibreOffice.Visible:=False;
    bOfficeAnalogApacheOpenOffice.Visible:=False;
    bOfficeAnalogCalligraGemini.Visible:=False;
    bOfficePdf.Visible:=False;
    bOfficePdfSumatraPDF.Visible:=False;
    bOfficePdfCalibre.Visible:=False;
    bOfficePdfTEBookConverter.Visible:=False;
    bOfficePdfRedaktorpdf.Visible:=False;
    bOfficePdfPDFsamBasic.Visible:=False;
    bOfficePdfFB2.Visible:=False;
    bOfficeScanNASP2.Visible:=False;
    bOfficeScan.Visible:=False;
    bOfficeScanVietOCR.Visible:=False;
    bOfficeScanCognitiveOpenOCR.Visible:=False;
    bOfficeScanPDFCreator.Visible:=False;
    bOfficePlan.Visible:=False;
    bOfficePlanGanttProject.Visible:=False;
    bOfficePlanProjectLibre.Visible:=False;
    bOfficePlanWindowsPlanner.Visible:=False;
    bOfficePlanTaskUnifier.Visible:=False;
    bOfficePlanTaskCoach.Visible:=False;
    bOfficePlanMozillaSunbird.Visible:=False;
    bOfficePlanTheTimelineProject.Visible:=False;
    bOfficePlaOnepointProjectBasicEdition.Visible:=False;
    bRazrabHtml.Visible:=False;
    bRazrabHtmlBrackets.Visible:=False;
    bRazrabHtmlBluefish.Visible:=False;
    bRazrabHtmlBlueGriffon.Visible:=False;
    bRazrabHtmlkodeWeave.Visible:=False;
    bRazrabHtmlNotepad.Visible:=False;
    bRazrabCpp.Visible:=False;
    bRazrabCppWxDev.Visible:=False;
    bRazrabCppCodeBlocks.Visible:=False;
    bRazrabCppXamarinStudio.Visible:=False;
    bRazrabCppBluefish.Visible:=False;
    bRazrabCppNetBeans.Visible:=False;
    bRazrabOp.Visible:=False;
    bRazrabOpLazarus.Visible:=False;
    bInternetBrow.Visible:=False;
    bInternetBrowMozillaFirefox.Visible:=False;
    bInternetBrowOtterBrowser.Visible:=False;
    bInternetBrowChromium.Visible:=False;
    bInternetTalk.Visible:=False;
    bInternetTalkKVIrc.Visible:=False;
    bInternetTalkTkabber.Visible:=False;
    bInternetTalkPidgin.Visible:=False;
    bInternetTalkMozillaThunderbird.Visible:=False;
    bInternetTalkMumble.Visible:=False;
    bInternetTalkBeeBEEP.Visible:=False;
    bInternetTalkLinphone.Visible:=False;
    bInternetDown.Visible:=False;
    bInternetDownClipGrab.Visible:=False;
    bInternetDownFileZilla.Visible:=False;
    bInternetDownJDownloader.Visible:=False;
    bInternetDownFdm.Visible:=False;
    bInternetDownqBittorrent.Visible:=False;
    bInternetSetut.Visible:=False;
    bInternetSetutWireshark.Visible:=False;
    bInternetSetutNmap.Visible:=False;
    bInternetSetutOpenVisualTraceroute.Visible:=False;
    bInternetSetutSecurepointSSLVPNClient.Visible:=False;
    bInternetSetutruWinMTR.Visible:=False;
    bInternetSetutLinkChecker.Visible:=False;
    bInternetSetuthttpres.Visible:=False;
    bInternetSetutSimpleSitemapCreator.Visible:=False;
    bInternetRssRSSBandit.Visible:=False;
    bInternetRss.Visible:=False;
    bInternetRssQuiteRSS.Visible:=False;
    bInternetRssMozillaThunderbird.Visible:=False;
    bUtilityRar.Visible:=False;
    bUtilityRarPeaZip.Visible:=False;
    bUtilityRarFreeArc.Visible:=False;
    bUtilityRar7Zip.Visible:=False;
    bUtilitySystem.Visible:=False;
    bUtilitySystemProcessHacker.Visible:=False;
    bUtilitySystemUltraDefrag.Visible:=False;
    bUtilitySystemBulkCrapUninstaller.Visible:=False;
    bUtilitySystemSmartSystemRepiar.Visible:=False;
    bUtilitySystemSysOptimizer.Visible:=False;
    bUtilitySystemPerformanceMaintainer.Visible:=False;
    bUtilitySystemAspia.Visible:=False;
    bUtilitySystemHDDGuardian.Visible:=False;
    bUtilitySystemDitto.Visible:=False;
    bUtilityFile.Visible:=False;
    bUtilityFileFreeFileSync.Visible:=False;
    bUtilityFileWinMerge.Visible:=False;
    bUtilityFileKickassUndelete.Visible:=False;
    bUtilityFileDoubleCommander.Visible:=False;
    bUtilityFileFileOptimizer.Visible:=False;
    bUtilityFileDUFF.Visible:=False;
    bUtilityProch.Visible:=False;
    bUtilityProchCloseTheDoor.Visible:=False;
    bUtilityProchAngryIPScanner.Visible:=False;
    bUtilityProchiTALC.Visible:=False;
    bUtilityProchUltraVNC.Visible:=False;
    bUtilityProchwxHexEditor.Visible:=False;
    bUtilityProchFontForge.Visible:=False;
    bUtilityProchVirtualBox.Visible:=False;
end;

procedure TfPodborZameni.vCdZapisClick(Sender: TObject);
begin
    bCdZapKomleks.Visible:=true;
    bCdProchIsoEm.Visible:=False;
    bCdProchDvdmenu.Visible:=False;
    bCdProchVossdan.Visible:=False;
end;

end.

