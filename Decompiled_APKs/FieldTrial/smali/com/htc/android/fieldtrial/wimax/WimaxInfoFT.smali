.class public Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;
.super Ljava/lang/Object;
.source "WimaxInfoFT.java"


# static fields
.field public static CLI_CONTROLLER:Ljava/lang/String;

.field public static CLI_SHOW_MACFRAME:Ljava/lang/String;

.field public static CLI_SHOW_RFTX:Ljava/lang/String;

.field public static CLI_SHOW_SS:Ljava/lang/String;

.field public static CLI_SHOW_SSPHY_STATSDL:Ljava/lang/String;

.field public static CLI_SHOW_VERSION:Ljava/lang/String;

.field private static DBG:Z

.field public static DL_SYNCHRO:I

.field private static LOG_TAG:Ljava/lang/String;

.field public static OPERATIONAL:I

.field private static bsInfo:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;

.field private static info:Lcom/htc/net/FourG/FourGInfo;

.field private static mHTCWimaxConnectionStatistics:Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;

.field private static mHtcWimax4GManager:Lcom/htc/net/wimax/HTCWimax4GManager;

.field public static mStateStr:[Ljava/lang/String;

.field private static msBSID:Ljava/lang/String;

.field private static msBWidth:Ljava/lang/String;

.field private static msCinr:Ljava/lang/String;

.field private static msFirmware:Ljava/lang/String;

.field private static msIPAddress:Ljava/lang/String;

.field private static msRssi:Ljava/lang/String;

.field private static msSWareVersion:Ljava/lang/String;

.field private static msTxPwr:Ljava/lang/String;

.field private static msWimaxInfoFT:Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;

.field private static wimaxInfo:Lcom/htc/net/wimax/HTCWimax4GInfo;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0xc

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 117
    sput-object v3, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->msWimaxInfoFT:Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;

    .line 133
    sput v4, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->DL_SYNCHRO:I

    .line 134
    sput v5, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->OPERATIONAL:I

    .line 135
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "INIT"

    aput-object v2, v0, v1

    const-string v1, "DL SYNCHRO"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "HANDOVER SYNCHRO"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "UL ACQUISITION"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "RANGING"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "HANDOVER RANGING"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "CAPABILITIES NEGOCIATION"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "AUTHORIZATION"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "REGISTRATION"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "DHCP"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "TOD"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "TFTP"

    aput-object v2, v0, v1

    const-string v1, "OPERATIONAL"

    aput-object v1, v0, v5

    const/16 v1, 0xd

    const-string v2, "SLEEP"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "IDLE"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "ABORTED"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->mStateStr:[Ljava/lang/String;

    .line 143
    const-string v0, "WimaxInfo"

    sput-object v0, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->LOG_TAG:Ljava/lang/String;

    .line 144
    sget-boolean v0, Lcom/htc/android/fieldtrial/FieldTrial;->DBG:Z

    sput-boolean v0, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->DBG:Z

    .line 154
    const-string v0, "showrftx"

    sput-object v0, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->CLI_SHOW_RFTX:Ljava/lang/String;

    .line 155
    const-string v0, "showss"

    sput-object v0, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->CLI_SHOW_SS:Ljava/lang/String;

    .line 156
    const-string v0, "showmacframe"

    sput-object v0, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->CLI_SHOW_MACFRAME:Ljava/lang/String;

    .line 157
    const-string v0, "showVersion"

    sput-object v0, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->CLI_SHOW_VERSION:Ljava/lang/String;

    .line 158
    const-string v0, "showssphystatsdl"

    sput-object v0, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->CLI_SHOW_SSPHY_STATSDL:Ljava/lang/String;

    .line 159
    const-string v0, "upcs:controller"

    sput-object v0, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->CLI_CONTROLLER:Ljava/lang/String;

    .line 654
    sput-object v3, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->msBWidth:Ljava/lang/String;

    .line 707
    sput-object v3, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->msSWareVersion:Ljava/lang/String;

    .line 708
    sput-object v3, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->msFirmware:Ljava/lang/String;

    .line 854
    sput-object v3, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->msBSID:Ljava/lang/String;

    .line 855
    sput-object v3, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->msIPAddress:Ljava/lang/String;

    .line 920
    sput-object v3, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->msTxPwr:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iget-object v0, p0, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->mContext:Landroid/content/Context;

    if-eq v0, p1, :cond_0

    .line 164
    iput-object p1, p0, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->mContext:Landroid/content/Context;

    .line 166
    :cond_0
    return-void
.end method

.method private bEnableWiMax()Z
    .locals 5

    .prologue
    .line 224
    const/4 v0, 0x1

    .line 225
    .local v0, bResult:Z
    const-string v2, "wimax.sequansd.pid"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, nPID:Ljava/lang/String;
    sget-boolean v2, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->DBG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nPID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_0
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 228
    const/4 v0, 0x0

    .line 230
    :cond_1
    return v0
.end method

.method private static bGetController(Ljava/lang/String;)Z
    .locals 6
    .parameter "iResult"

    .prologue
    const/16 v5, 0x3a

    .line 923
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "\n"

    invoke-direct {v1, p0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    .local v1, st:Ljava/util/StringTokenizer;
    const/4 v0, 0x0

    .line 925
    .local v0, sTmp:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 926
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 928
    const-string v2, "Current TX power (dBm)"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 929
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_1

    .line 930
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->msTxPwr:Ljava/lang/String;

    goto :goto_0

    .line 932
    :cond_1
    sget-object v2, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GuiWiMaxUIAppend: bGetController error, str=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 935
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method public static bGetSSPhyStatSDL(Ljava/lang/String;)Z
    .locals 6
    .parameter "iResult"

    .prologue
    const/16 v5, 0x3a

    .line 759
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "\n"

    invoke-direct {v1, p0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    .local v1, st:Ljava/util/StringTokenizer;
    const/4 v0, 0x0

    .line 763
    .local v0, sTmp:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 764
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 765
    sget-boolean v2, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->DBG:Z

    if-eqz v2, :cond_1

    .line 766
    sget-object v2, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bGetSSPhyStatSDL:str=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    :cond_1
    const-string v2, "CinrStd  reuse 1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_3

    .line 770
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_2

    .line 771
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->msCinr:Ljava/lang/String;

    goto :goto_0

    .line 773
    :cond_2
    sget-object v2, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bGetSSPhyStatSDL: msCinr error, str=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 776
    :cond_3
    const-string v2, "Rssi "

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 778
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_4

    .line 779
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->msRssi:Ljava/lang/String;

    goto :goto_0

    .line 781
    :cond_4
    sget-object v2, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bGetSSPhyStatSDL: msRssi error, str=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 787
    :cond_5
    const/4 v2, 0x1

    return v2
.end method

.method private static bGetShowVersion(Ljava/lang/String;)Z
    .locals 6
    .parameter "iResult"

    .prologue
    const/16 v5, 0x3a

    .line 711
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "\n"

    invoke-direct {v1, p0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    .local v1, st:Ljava/util/StringTokenizer;
    const/4 v0, 0x0

    .line 714
    .local v0, sTmp:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 715
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 716
    sget-boolean v2, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->DBG:Z

    if-eqz v2, :cond_1

    .line 717
    sget-object v2, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bGetShowVersion:str=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    :cond_1
    const-string v2, "BSP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_3

    .line 721
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_2

    .line 722
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->msSWareVersion:Ljava/lang/String;

    goto :goto_0

    .line 724
    :cond_2
    sget-object v2, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bGetShowVersion: run(), bandwidth error, str=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 727
    :cond_3
    const-string v2, "Software"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 729
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_4

    .line 730
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->msFirmware:Ljava/lang/String;

    .line 731
    sget-object v2, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->msFirmware:Ljava/lang/String;

    sput-object v2, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->msSWareVersion:Ljava/lang/String;

    goto/16 :goto_0

    .line 733
    :cond_4
    sget-object v2, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bGetShowVersion: run(), bandwidth error, str=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 739
    :cond_5
    const/4 v2, 0x1

    return v2
.end method

.method private static bGetShowmacframe(Ljava/lang/String;)Z
    .locals 8
    .parameter "iResult"

    .prologue
    const/4 v3, 0x1

    const/16 v7, 0x3a

    .line 657
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v4, "\n"

    invoke-direct {v2, p0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    .local v2, st:Ljava/util/StringTokenizer;
    const/4 v1, 0x0

    .line 660
    .local v1, sTmp:Ljava/lang/String;
    const/4 v0, 0x0

    .line 662
    .local v0, sStart:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 663
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 664
    sget-boolean v4, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->DBG:Z

    if-eqz v4, :cond_1

    .line 665
    sget-object v4, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bGetShowmacframe:str=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :cond_1
    const-string v4, "bandwidth"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_3

    .line 669
    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-lez v4, :cond_2

    .line 670
    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->msBWidth:Ljava/lang/String;

    goto :goto_0

    .line 672
    :cond_2
    sget-object v4, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bGetShowmacframe: run(), bandwidth error, str=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 675
    :cond_3
    const-string v4, "started"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_0

    .line 677
    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-lez v4, :cond_5

    .line 678
    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 679
    const-string v4, "False"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v3, :cond_0

    .line 680
    sget-object v3, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->LOG_TAG:Ljava/lang/String;

    const-string v4, "bGetShowmacframe.start equal False"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    const/4 v3, 0x0

    .line 689
    :cond_4
    return v3

    .line 684
    :cond_5
    sget-object v4, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bGetShowmacframe: run(), started error, str=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private static bGetShowrss(Ljava/lang/String;)Z
    .locals 6
    .parameter "iResult"

    .prologue
    const/16 v5, 0x3a

    .line 858
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "\n"

    invoke-direct {v1, p0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    .local v1, st:Ljava/util/StringTokenizer;
    const/4 v0, 0x0

    .line 861
    .local v0, sTmp:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 862
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 864
    const-string v2, "BS ID"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    .line 866
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_1

    .line 867
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->msBSID:Ljava/lang/String;

    goto :goto_0

    .line 869
    :cond_1
    sget-object v2, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bGetShowrss: run(), BS MAC data error, str=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 871
    :cond_2
    const-string v2, "address"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 873
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_3

    .line 874
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->msIPAddress:Ljava/lang/String;

    goto :goto_0

    .line 876
    :cond_3
    sget-object v2, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bGetShowrss: run(), address error, str=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 880
    :cond_4
    const/4 v2, 0x1

    return v2
.end method

.method private static bParseResult(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "iCmdType"
    .parameter "iResult"

    .prologue
    const/4 v2, 0x1

    .line 610
    const/4 v0, 0x0

    .line 611
    .local v0, bResult:Z
    sget-object v1, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->CLI_SHOW_RFTX:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_0

    .line 638
    :goto_0
    return v0

    .line 615
    :cond_0
    sget-object v1, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->CLI_SHOW_SS:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 617
    invoke-static {p1}, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->bGetShowrss(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 619
    :cond_1
    sget-object v1, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->CLI_SHOW_MACFRAME:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_2

    .line 621
    invoke-static {p1}, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->bGetShowmacframe(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 623
    :cond_2
    sget-object v1, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->CLI_SHOW_VERSION:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_3

    .line 625
    invoke-static {p1}, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->bGetShowVersion(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 627
    :cond_3
    sget-object v1, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->CLI_SHOW_SSPHY_STATSDL:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_4

    .line 629
    invoke-static {p1}, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->bGetSSPhyStatSDL(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 631
    :cond_4
    sget-object v1, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->CLI_CONTROLLER:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_5

    .line 633
    invoke-static {p1}, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->bGetController(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 636
    :cond_5
    sget-object v1, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is no this command type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static cli(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "command"
    .parameter "result"
    .parameter "status"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 519
    sget-boolean v4, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->DBG:Z

    if-eqz v4, :cond_0

    .line 520
    sget-object v4, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->LOG_TAG:Ljava/lang/String;

    const-string v5, "<CM> cli()+"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_0
    if-nez p0, :cond_2

    .line 527
    sget-boolean v2, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->DBG:Z

    if-eqz v2, :cond_1

    .line 528
    sget-object v2, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->LOG_TAG:Ljava/lang/String;

    const-string v4, "<CM> cli(), command == null, return!!!"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :cond_1
    :goto_0
    return v3

    .line 532
    :cond_2
    if-nez p1, :cond_4

    .line 535
    sget-boolean v4, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->DBG:Z

    if-eqz v4, :cond_3

    .line 536
    sget-object v4, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->LOG_TAG:Ljava/lang/String;

    const-string v5, "<CM> cli(), result == null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :cond_3
    new-instance p1, Ljava/lang/String;

    .end local p1
    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    .line 579
    .restart local p1
    :cond_4
    const/4 v1, 0x0

    .line 581
    .local v1, strStatus:Ljava/lang/String;
    :try_start_0
    sget-object v4, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->mHtcWimax4GManager:Lcom/htc/net/wimax/HTCWimax4GManager;

    invoke-virtual {v4, p0}, Lcom/htc/net/wimax/HTCWimax4GManager;->cli(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 588
    :goto_1
    if-nez v1, :cond_5

    .line 590
    sget-boolean v2, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->DBG:Z

    if-eqz v2, :cond_1

    .line 592
    sget-object v2, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->LOG_TAG:Ljava/lang/String;

    const-string v4, "<CM> cli(), apiStatus != Status.STATUS_OK, return!!!"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 582
    :catch_0
    move-exception v0

    .line 584
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 600
    .end local v0           #e:Ljava/lang/Exception;
    :cond_5
    sget-boolean v4, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->DBG:Z

    if-eqz v4, :cond_6

    .line 602
    sget-object v4, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<CM> cli(),Command:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cli result"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :cond_6
    invoke-static {p0, v1}, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->bParseResult(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v2, :cond_7

    :goto_2
    move v3, v2

    goto :goto_0

    :cond_7
    move v2, v3

    goto :goto_2
.end method

.method public static getSingleton()Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->msWimaxInfoFT:Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;

    return-object v0
.end method

.method public static getSingleton(Landroid/content/Context;)Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;
    .locals 1
    .parameter "context"

    .prologue
    .line 121
    sget-object v0, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->msWimaxInfoFT:Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;

    invoke-direct {v0, p0}, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->msWimaxInfoFT:Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;

    .line 123
    :cond_0
    sget-object v0, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->msWimaxInfoFT:Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;

    return-object v0
.end method


# virtual methods
.method public GetBSID()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 380
    const/4 v0, 0x0

    .line 381
    .local v0, nResult:Ljava/lang/String;
    sget-object v1, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->msBSID:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 382
    sget-object v0, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->msBSID:Ljava/lang/String;

    .line 383
    sput-object v2, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->msBSID:Ljava/lang/String;

    .line 397
    :cond_0
    :goto_0
    return-object v0

    .line 386
    :cond_1
    sget-object v1, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->CLI_SHOW_SS:Ljava/lang/String;

    invoke-static {v1, v2, v2}, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->cli(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 387
    sget-object v1, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->LOG_TAG:Ljava/lang/String;

    const-string v2, "GetBSID.CLI_SHOW_SS fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 389
    :cond_2
    sget-object v0, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->msBSID:Ljava/lang/String;

    .line 390
    sput-object v2, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->msBSID:Ljava/lang/String;

    .line 391
    sget-boolean v1, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->DBG:Z

    if-eqz v1, :cond_0

    .line 392
    sget-object v1, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->LOG_TAG:Ljava/lang/String;

    const-string v2, "GetBSID.CLI_SHOW_SS successful"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public GetBandwidth()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 429
    const/4 v0, 0x0

    .line 430
    .local v0, nResult:Ljava/lang/String;
    sget-object v1, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->msBWidth:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 431
    sget-object v0, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->msBWidth:Ljava/lang/String;

    .line 432
    sput-object v2, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->msBWidth:Ljava/lang/String;

    .line 447
    :cond_0
    :goto_0
    return-object v0

    .line 435
    :cond_1
    sget-object v1, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->CLI_SHOW_MACFRAME:Ljava/lang/String;

    invoke-static {v1, v2, v2}, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->cli(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 436
    sget-object v1, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->LOG_TAG:Ljava/lang/String;

    const-string v2, "GetBandwidth.CLI_SHOW_MACFRAME fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 439
    :cond_2
    sget-object v0, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->msBWidth:Ljava/lang/String;

    .line 440
    sput-object v2, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->msBWidth:Ljava/lang/String;

    .line 441
    sget-boolean v1, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->DBG:Z

    if-eqz v1, :cond_0

    .line 442
    sget-object v1, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->LOG_TAG:Ljava/lang/String;

    const-string v2, "GetBandwidth.CLI_SHOW_MACFRAME successful"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public GetCFrequency()Ljava/lang/String;
    .locals 3

    .prologue
    .line 369
    const/4 v0, 0x0

    .line 370
    .local v0, nResult:Ljava/lang/String;
    sget-object v1, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->bsInfo:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;

    if-eqz v1, :cond_0

    .line 371
    sget-object v1, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->bsInfo:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;

    invoke-virtual {v1}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->getFrequencyDownlink()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 372
    :cond_0
    return-object v0
.end method

.method public GetFirmware()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 476
    const/4 v0, 0x0

    .line 477
    .local v0, nResult:Ljava/lang/String;
    sget-object v1, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->msFirmware:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 478
    sget-object v0, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->msFirmware:Ljava/lang/String;

    .line 479
    sput-object v2, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->msFirmware:Ljava/lang/String;

    .line 492
    :cond_0
    :goto_0
    return-object v0

    .line 481
    :cond_1
    sget-object v1, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->CLI_SHOW_VERSION:Ljava/lang/String;

    invoke-static {v1, v2, v2}, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->cli(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 482
    sget-object v1, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->LOG_TAG:Ljava/lang/String;

    const-string v2, "GetSWareVersion.CLI_SHOW_VERSION fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 485
    :cond_2
    sget-object v0, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->msFirmware:Ljava/lang/String;

    .line 486
    sput-object v2, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->msFirmware:Ljava/lang/String;

    .line 487
    sget-boolean v1, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->DBG:Z

    if-eqz v1, :cond_0

    .line 488
    sget-object v1, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->LOG_TAG:Ljava/lang/String;

    const-string v2, "GetSWareVersion.CLI_SHOW_VERSION successful"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public GetIPAddress()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 406
    const/4 v0, 0x0

    .line 407
    .local v0, nResult:Ljava/lang/String;
    sget-object v1, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->msIPAddress:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 408
    sget-object v0, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->msIPAddress:Ljava/lang/String;

    .line 409
    sput-object v2, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->msIPAddress:Ljava/lang/String;

    .line 423
    :cond_0
    :goto_0
    return-object v0

    .line 412
    :cond_1
    sget-object v1, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->CLI_SHOW_SS:Ljava/lang/String;

    invoke-static {v1, v2, v2}, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->cli(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 413
    sget-object v1, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->LOG_TAG:Ljava/lang/String;

    const-string v2, "GetBSID.CLI_SHOW_SS fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 415
    :cond_2
    sget-object v0, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->msIPAddress:Ljava/lang/String;

    .line 416
    sput-object v2, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->msIPAddress:Ljava/lang/String;

    .line 417
    sget-boolean v1, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->DBG:Z

    if-eqz v1, :cond_0

    .line 418
    sget-object v1, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->LOG_TAG:Ljava/lang/String;

    const-string v2, "GetBSID.CLI_SHOW_SS successful"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public GetRxFER()Ljava/lang/String;
    .locals 2

    .prologue
    .line 296
    const/4 v0, 0x0

    .line 297
    .local v0, nResult:Ljava/lang/String;
    const/4 v1, 0x0

    .line 301
    .local v1, testIntent:Landroid/app/PendingIntent;
    return-object v0
.end method

.method public GetRxNoiseRatio()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 333
    const/4 v0, 0x0

    .line 334
    .local v0, nResult:Ljava/lang/String;
    sget-object v1, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->msCinr:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 335
    sget-object v0, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->msCinr:Ljava/lang/String;

    .line 336
    sput-object v2, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->msCinr:Ljava/lang/String;

    .line 349
    :cond_0
    :goto_0
    return-object v0

    .line 338
    :cond_1
    sget-object v1, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->CLI_SHOW_SSPHY_STATSDL:Ljava/lang/String;

    invoke-static {v1, v2, v2}, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->cli(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 339
    sget-object v1, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->LOG_TAG:Ljava/lang/String;

    const-string v2, "GetSWareVersion.CLI_SHOW_SSPHY_STATSDL fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 342
    :cond_2
    sget-object v0, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->msCinr:Ljava/lang/String;

    .line 343
    sput-object v2, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->msCinr:Ljava/lang/String;

    .line 344
    sget-boolean v1, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->DBG:Z

    if-eqz v1, :cond_0

    .line 345
    sget-object v1, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->LOG_TAG:Ljava/lang/String;

    const-string v2, "GetSWareVersion.CLI_SHOW_SSPHY_STATSDL successful"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public GetRxPwr()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 308
    const/4 v0, 0x0

    .line 309
    .local v0, nResult:Ljava/lang/String;
    sget-object v1, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->msRssi:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 310
    sget-object v0, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->msRssi:Ljava/lang/String;

    .line 311
    sput-object v2, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->msRssi:Ljava/lang/String;

    .line 324
    :cond_0
    :goto_0
    return-object v0

    .line 313
    :cond_1
    sget-object v1, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->CLI_SHOW_SSPHY_STATSDL:Ljava/lang/String;

    invoke-static {v1, v2, v2}, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->cli(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 314
    sget-object v1, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->LOG_TAG:Ljava/lang/String;

    const-string v2, "GetRxPwr.CLI_SHOW_SSPHY_STATSDL fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 317
    :cond_2
    sget-object v0, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->msRssi:Ljava/lang/String;

    .line 318
    sput-object v2, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->msRssi:Ljava/lang/String;

    .line 319
    sget-boolean v1, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->DBG:Z

    if-eqz v1, :cond_0

    .line 320
    sget-object v1, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->LOG_TAG:Ljava/lang/String;

    const-string v2, "GetRxPwr.CLI_SHOW_SSPHY_STATSDL successful"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public GetSWareVersion()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 452
    const/4 v0, 0x0

    .line 453
    .local v0, nResult:Ljava/lang/String;
    sget-object v1, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->msSWareVersion:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 454
    sget-object v0, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->msSWareVersion:Ljava/lang/String;

    .line 455
    sput-object v2, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->msSWareVersion:Ljava/lang/String;

    .line 471
    :cond_0
    :goto_0
    return-object v0

    .line 458
    :cond_1
    sget-object v1, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->CLI_SHOW_VERSION:Ljava/lang/String;

    invoke-static {v1, v2, v2}, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->cli(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 459
    sget-object v1, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->LOG_TAG:Ljava/lang/String;

    const-string v2, "GetSWareVersion.CLI_SHOW_VERSION fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 462
    :cond_2
    sget-object v0, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->msSWareVersion:Ljava/lang/String;

    .line 463
    sput-object v2, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->msSWareVersion:Ljava/lang/String;

    .line 464
    sget-boolean v1, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->DBG:Z

    if-eqz v1, :cond_0

    .line 465
    sget-object v1, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->LOG_TAG:Ljava/lang/String;

    const-string v2, "GetSWareVersion.CLI_SHOW_VERSION successful"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public GetState()I
    .locals 1

    .prologue
    .line 273
    sget-object v0, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->mHtcWimax4GManager:Lcom/htc/net/wimax/HTCWimax4GManager;

    if-eqz v0, :cond_0

    .line 274
    sget-object v0, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->mHtcWimax4GManager:Lcom/htc/net/wimax/HTCWimax4GManager;

    invoke-virtual {v0}, Lcom/htc/net/wimax/HTCWimax4GManager;->get4GState()I

    move-result v0

    .line 277
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public GetTxPwr()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 497
    const/4 v0, 0x0

    .line 498
    .local v0, nResult:Ljava/lang/String;
    sget-object v1, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->msTxPwr:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 499
    sget-object v0, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->msTxPwr:Ljava/lang/String;

    .line 500
    sput-object v2, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->msTxPwr:Ljava/lang/String;

    .line 513
    :cond_0
    :goto_0
    return-object v0

    .line 502
    :cond_1
    sget-object v1, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->CLI_CONTROLLER:Ljava/lang/String;

    invoke-static {v1, v2, v2}, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->cli(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 503
    sget-object v1, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->LOG_TAG:Ljava/lang/String;

    const-string v2, "GetTxPwr.CLI_CONTROLLER fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 506
    :cond_2
    sget-object v0, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->msTxPwr:Ljava/lang/String;

    .line 507
    sput-object v2, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->msTxPwr:Ljava/lang/String;

    .line 508
    sget-boolean v1, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->DBG:Z

    if-eqz v1, :cond_0

    .line 509
    sget-object v1, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->LOG_TAG:Ljava/lang/String;

    const-string v2, "GetTxPwr.CLI_CONTROLLER successful"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public GetWimaxMacAddress()Ljava/lang/String;
    .locals 4

    .prologue
    .line 237
    const/4 v1, 0x0

    .line 245
    .local v1, nResult:Ljava/lang/String;
    sget-object v2, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->info:Lcom/htc/net/FourG/FourGInfo;

    invoke-virtual {v2}, Lcom/htc/net/FourG/FourGInfo;->getBSID()Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, BSID:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 249
    const-string v2, "BSID"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 250
    const-string v2, ":"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 252
    sget-object v2, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->info:Lcom/htc/net/FourG/FourGInfo;

    invoke-virtual {v2}, Lcom/htc/net/FourG/FourGInfo;->getBSID()Ljava/lang/String;

    move-result-object v1

    .line 254
    :cond_0
    return-object v1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->bEnableWiMax()Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    sget-object v0, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bEnableWiMax():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->bEnableWiMax()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_0
    return-void
.end method

.method public startDc()V
    .locals 3

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->bEnableWiMax()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    sget-object v0, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bEnableWiMax():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->bEnableWiMax()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :goto_0
    return-void

    .line 174
    :cond_0
    sget-object v0, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->LOG_TAG:Ljava/lang/String;

    const-string v1, "<CM> startDc"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->mContext:Landroid/content/Context;

    const-string v1, "fourG_wimax"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/net/FourG/FourGManager;

    check-cast v0, Lcom/htc/net/wimax/HTCWimax4GManager;

    sput-object v0, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->mHtcWimax4GManager:Lcom/htc/net/wimax/HTCWimax4GManager;

    .line 182
    :cond_1
    sget-object v0, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->mHtcWimax4GManager:Lcom/htc/net/wimax/HTCWimax4GManager;

    if-eqz v0, :cond_2

    .line 183
    sget-object v0, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->mHtcWimax4GManager:Lcom/htc/net/wimax/HTCWimax4GManager;

    invoke-virtual {v0}, Lcom/htc/net/wimax/HTCWimax4GManager;->getConnectionInfo()Lcom/htc/net/FourG/FourGInfo;

    move-result-object v0

    sput-object v0, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->info:Lcom/htc/net/FourG/FourGInfo;

    .line 184
    sget-object v0, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->info:Lcom/htc/net/FourG/FourGInfo;

    check-cast v0, Lcom/htc/net/wimax/HTCWimax4GInfo;

    sput-object v0, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->wimaxInfo:Lcom/htc/net/wimax/HTCWimax4GInfo;

    .line 185
    sget-object v0, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->wimaxInfo:Lcom/htc/net/wimax/HTCWimax4GInfo;

    invoke-virtual {v0}, Lcom/htc/net/wimax/HTCWimax4GInfo;->get4GBaseStationInfoServing()Lcom/htc/net/FourG/FourGBaseStationInfo;

    move-result-object v0

    check-cast v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;

    sput-object v0, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->bsInfo:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;

    .line 187
    :cond_2
    sget-object v0, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->mHtcWimax4GManager:Lcom/htc/net/wimax/HTCWimax4GManager;

    invoke-virtual {v0}, Lcom/htc/net/wimax/HTCWimax4GManager;->createConnectionStatistics()Lcom/htc/net/FourG/FourGManager$ConnectionStatistics;

    move-result-object v0

    check-cast v0, Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;

    sput-object v0, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->mHTCWimaxConnectionStatistics:Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;

    goto :goto_0
.end method
