.class public Lcom/htc/android/epst/wimax/WiMaxInfoEPST;
.super Ljava/lang/Object;
.source "WiMaxInfoEPST.java"


# static fields
.field public static CLI_CHANGE_ID_DELAY:I

.field public static CLI_COMMAND:[Ljava/lang/String;

.field public static CLI_CONTROLLER:I

.field public static CLI_COUNT:I

.field public static CLI_HELP_SETHANDOVER:I

.field public static CLI_SETHANDOVER:I

.field public static CLI_SHOW_CONFIG:I

.field public static CLI_SHOW_HANDOVER:I

.field public static CLI_SHOW_MACFRAME:I

.field public static CLI_SHOW_RFTX:I

.field public static CLI_SHOW_SS:I

.field public static CLI_SHOW_SSPHY_STATSDL:I

.field public static CLI_SHOW_VERSION:I

.field private static DBG:Z

.field public static DL_SYNCHRO:I

.field public static GENERIC_CHIP_VERSION:I

.field public static GENERIC_COMMAND:I

.field public static IDLE_AUTO_SWITCH_PERIOD:I

.field private static LOG_TAG:Ljava/lang/String;

.field public static NONE:I

.field public static OPERATIONAL:I

.field public static SHOWHANDOVER_HANDOVER_HYSTERESIS:I

.field public static SHOWHANDOVER_HANDOVER_THRESHOLD:I

.field public static SHOWHANDOVER_SCANNING_THRESHOLD:I

.field private static bsInfo:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;

.field private static info:Lcom/htc/net/FourG/FourGInfo;

.field private static mFourGManager:Lcom/htc/net/FourG/FourGManager;

.field private static mHTCWimax4GManager:Lcom/htc/net/wimax/HTCWimax4GManager;

.field private static msBSID:Ljava/lang/String;

.field private static msBWidth:Ljava/lang/String;

.field private static msCinr:Ljava/lang/String;

.field private static msFirmware:Ljava/lang/String;

.field private static msHOThreshold:Ljava/lang/String;

.field private static msIPAddress:Ljava/lang/String;

.field private static msIdlePeriod:Ljava/lang/String;

.field private static msRssi:Ljava/lang/String;

.field private static msSWareVersion:Ljava/lang/String;

.field private static msTxPwr:Ljava/lang/String;

.field private static msWiMaxInfoEPST:Lcom/htc/android/epst/wimax/WiMaxInfoEPST;

.field private static wimaxInfo:Lcom/htc/net/wimax/HTCWimax4GInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0xc

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 107
    sput-object v3, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msWiMaxInfoEPST:Lcom/htc/android/epst/wimax/WiMaxInfoEPST;

    .line 108
    sput-object v3, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->mFourGManager:Lcom/htc/net/FourG/FourGManager;

    .line 109
    sput-object v3, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->mHTCWimax4GManager:Lcom/htc/net/wimax/HTCWimax4GManager;

    .line 110
    sput-object v3, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->info:Lcom/htc/net/FourG/FourGInfo;

    .line 111
    sput-object v3, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->wimaxInfo:Lcom/htc/net/wimax/HTCWimax4GInfo;

    .line 112
    sput-object v3, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->bsInfo:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;

    .line 121
    sput v5, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->DL_SYNCHRO:I

    .line 122
    sput v7, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->OPERATIONAL:I

    .line 124
    const-string v0, "WiMaxInfoEPST"

    sput-object v0, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->LOG_TAG:Ljava/lang/String;

    .line 125
    sget-boolean v0, Lcom/htc/android/epst/EntryEPSTInfo;->DBG:Z

    sput-boolean v0, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->DBG:Z

    .line 128
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "showrftx"

    aput-object v1, v0, v4

    const-string v1, "showss"

    aput-object v1, v0, v5

    const-string v1, "showmacframe"

    aput-object v1, v0, v6

    const/4 v1, 0x3

    const-string v2, "showVersion"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "showssphystatsdl"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "upcs:controller"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "help setHandover"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "setHandover handover-threshold="

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "showHandover"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "psms:changeidleautodelay "

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "psms::showConfig"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "generic_command"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_COMMAND:[Ljava/lang/String;

    .line 154
    sput v4, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_SHOW_RFTX:I

    .line 155
    sput v5, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_SHOW_SS:I

    .line 156
    sput v6, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_SHOW_MACFRAME:I

    .line 157
    const/4 v0, 0x3

    sput v0, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_SHOW_VERSION:I

    .line 158
    const/4 v0, 0x4

    sput v0, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_SHOW_SSPHY_STATSDL:I

    .line 159
    const/4 v0, 0x5

    sput v0, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_CONTROLLER:I

    .line 161
    const/4 v0, 0x6

    sput v0, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_HELP_SETHANDOVER:I

    .line 162
    const/4 v0, 0x7

    sput v0, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_SETHANDOVER:I

    .line 163
    const/16 v0, 0x8

    sput v0, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_SHOW_HANDOVER:I

    .line 165
    const/16 v0, 0x9

    sput v0, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_CHANGE_ID_DELAY:I

    .line 166
    const/16 v0, 0xa

    sput v0, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_SHOW_CONFIG:I

    .line 168
    const/16 v0, 0xb

    sput v0, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->GENERIC_COMMAND:I

    .line 169
    sput v7, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_COUNT:I

    .line 171
    sput v4, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->GENERIC_CHIP_VERSION:I

    .line 185
    const/4 v0, -0x1

    sput v0, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->NONE:I

    .line 186
    sput v4, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->SHOWHANDOVER_SCANNING_THRESHOLD:I

    .line 187
    sput v5, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->SHOWHANDOVER_HANDOVER_THRESHOLD:I

    .line 188
    sput v6, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->SHOWHANDOVER_HANDOVER_HYSTERESIS:I

    .line 204
    sput v4, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->IDLE_AUTO_SWITCH_PERIOD:I

    .line 705
    sput-object v3, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msHOThreshold:Ljava/lang/String;

    .line 730
    sput-object v3, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msIdlePeriod:Ljava/lang/String;

    .line 767
    sput-object v3, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msBWidth:Ljava/lang/String;

    .line 820
    sput-object v3, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msSWareVersion:Ljava/lang/String;

    .line 821
    sput-object v3, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msFirmware:Ljava/lang/String;

    .line 966
    sput-object v3, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msBSID:Ljava/lang/String;

    .line 967
    sput-object v3, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msIPAddress:Ljava/lang/String;

    .line 1032
    sput-object v3, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msTxPwr:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    sget-object v2, Lcom/htc/android/epst/EPST;->mContext:Landroid/content/Context;

    const-string v3, "fourG_wimax"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/net/FourG/FourGManager;

    .line 223
    .local v1, mFourGManager:Lcom/htc/net/FourG/FourGManager;
    check-cast v1, Lcom/htc/net/wimax/HTCWimax4GManager;

    .end local v1           #mFourGManager:Lcom/htc/net/FourG/FourGManager;
    sput-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->mHTCWimax4GManager:Lcom/htc/net/wimax/HTCWimax4GManager;

    .line 224
    sget-object v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->mHTCWimax4GManager:Lcom/htc/net/wimax/HTCWimax4GManager;

    invoke-virtual {v2}, Lcom/htc/net/wimax/HTCWimax4GManager;->getConnectionInfo()Lcom/htc/net/FourG/FourGInfo;

    move-result-object v2

    sput-object v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->info:Lcom/htc/net/FourG/FourGInfo;

    .line 225
    sget-object v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->info:Lcom/htc/net/FourG/FourGInfo;

    check-cast v2, Lcom/htc/net/wimax/HTCWimax4GInfo;

    sput-object v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->wimaxInfo:Lcom/htc/net/wimax/HTCWimax4GInfo;

    .line 226
    sget-boolean v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->DBG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->LOG_TAG:Ljava/lang/String;

    const-string v3, "initialize WiMaxInfoEPST"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_0
    sget-object v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->wimaxInfo:Lcom/htc/net/wimax/HTCWimax4GInfo;

    invoke-virtual {v2}, Lcom/htc/net/wimax/HTCWimax4GInfo;->get4GBaseStationInfoServing()Lcom/htc/net/FourG/FourGBaseStationInfo;

    move-result-object v0

    check-cast v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;

    .line 232
    .local v0, bsInfo:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;
    return-void
.end method

.method private static bGetController(Ljava/lang/String;)Z
    .locals 6
    .parameter "iResult"

    .prologue
    const/16 v5, 0x3a

    .line 1035
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "\n"

    invoke-direct {v1, p0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    .local v1, st:Ljava/util/StringTokenizer;
    const/4 v0, 0x0

    .line 1037
    .local v0, sTmp:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1038
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 1040
    const-string v2, "Current TX power (dBm)"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 1041
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_1

    .line 1042
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msTxPwr:Ljava/lang/String;

    goto :goto_0

    .line 1044
    :cond_1
    sget-object v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->LOG_TAG:Ljava/lang/String;

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

    .line 1047
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method private static bGetHandover(Ljava/lang/String;)Z
    .locals 7
    .parameter "iResult"

    .prologue
    const/16 v6, 0x3a

    .line 707
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "\n"

    invoke-direct {v2, p0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    .local v2, st:Ljava/util/StringTokenizer;
    const/4 v1, 0x0

    .line 710
    .local v1, sTmp:Ljava/lang/String;
    const/4 v0, 0x0

    .line 712
    .local v0, sStart:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 713
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 714
    sget-boolean v3, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->DBG:Z

    if-eqz v3, :cond_1

    .line 715
    sget-object v3, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bGetHandover:str=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    :cond_1
    const-string v3, "Handover CINR threshold"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    .line 719
    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_2

    .line 720
    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msHOThreshold:Ljava/lang/String;

    goto :goto_0

    .line 722
    :cond_2
    sget-object v3, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bGetShowmacframe: run(), bandwidth error, str=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 727
    :cond_3
    const/4 v3, 0x1

    return v3
.end method

.method private static bGetIdleConfig(Ljava/lang/String;)Z
    .locals 7
    .parameter "iResult"

    .prologue
    const/16 v6, 0x3a

    .line 732
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "\n"

    invoke-direct {v2, p0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    .local v2, st:Ljava/util/StringTokenizer;
    const/4 v1, 0x0

    .line 735
    .local v1, sTmp:Ljava/lang/String;
    const/4 v0, 0x0

    .line 737
    .local v0, sStart:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 738
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 739
    sget-boolean v3, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->DBG:Z

    if-eqz v3, :cond_1

    .line 740
    sget-object v3, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bGetIdleConfig:str=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    :cond_1
    const-string v3, "Idle auto switch Period"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    .line 743
    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_2

    .line 744
    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msIdlePeriod:Ljava/lang/String;

    goto :goto_0

    .line 746
    :cond_2
    sget-object v3, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bGetIdleConfig: run(), idle period error, str=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 751
    :cond_3
    const/4 v3, 0x1

    return v3
.end method

.method public static bGetSSPhyStatSDL(Ljava/lang/String;)Z
    .locals 6
    .parameter "iResult"

    .prologue
    const/16 v5, 0x3a

    .line 871
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "\n"

    invoke-direct {v1, p0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    .local v1, st:Ljava/util/StringTokenizer;
    const/4 v0, 0x0

    .line 875
    .local v0, sTmp:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 876
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 877
    sget-boolean v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->DBG:Z

    if-eqz v2, :cond_1

    .line 878
    sget-object v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->LOG_TAG:Ljava/lang/String;

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

    .line 880
    :cond_1
    const-string v2, "CinrStd reuse 3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_3

    .line 882
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_2

    .line 883
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msCinr:Ljava/lang/String;

    goto :goto_0

    .line 885
    :cond_2
    sget-object v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->LOG_TAG:Ljava/lang/String;

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

    .line 888
    :cond_3
    const-string v2, "Rssi"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 890
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_4

    .line 891
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msRssi:Ljava/lang/String;

    goto :goto_0

    .line 893
    :cond_4
    sget-object v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->LOG_TAG:Ljava/lang/String;

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

    .line 899
    :cond_5
    const/4 v2, 0x1

    return v2
.end method

.method private static bGetShowVersion(Ljava/lang/String;)Z
    .locals 6
    .parameter "iResult"

    .prologue
    const/16 v5, 0x3a

    .line 824
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "\n"

    invoke-direct {v1, p0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    .local v1, st:Ljava/util/StringTokenizer;
    const/4 v0, 0x0

    .line 827
    .local v0, sTmp:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 828
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 829
    sget-boolean v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->DBG:Z

    if-eqz v2, :cond_1

    .line 830
    sget-object v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->LOG_TAG:Ljava/lang/String;

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

    .line 832
    :cond_1
    const-string v2, "BSP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_3

    .line 834
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_2

    .line 835
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msSWareVersion:Ljava/lang/String;

    goto :goto_0

    .line 837
    :cond_2
    sget-object v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->LOG_TAG:Ljava/lang/String;

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

    .line 840
    :cond_3
    const-string v2, "Software"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 842
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_4

    .line 843
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msFirmware:Ljava/lang/String;

    goto :goto_0

    .line 845
    :cond_4
    sget-object v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->LOG_TAG:Ljava/lang/String;

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

    .line 851
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

    .line 770
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v4, "\n"

    invoke-direct {v2, p0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    .local v2, st:Ljava/util/StringTokenizer;
    const/4 v1, 0x0

    .line 773
    .local v1, sTmp:Ljava/lang/String;
    const/4 v0, 0x0

    .line 775
    .local v0, sStart:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 776
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 777
    sget-boolean v4, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->DBG:Z

    if-eqz v4, :cond_1

    .line 778
    sget-object v4, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->LOG_TAG:Ljava/lang/String;

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

    .line 780
    :cond_1
    const-string v4, "bandwidth"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_3

    .line 782
    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-lez v4, :cond_2

    .line 783
    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msBWidth:Ljava/lang/String;

    goto :goto_0

    .line 785
    :cond_2
    sget-object v4, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->LOG_TAG:Ljava/lang/String;

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

    .line 788
    :cond_3
    const-string v4, "started"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_0

    .line 790
    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-lez v4, :cond_5

    .line 791
    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 792
    const-string v4, "False"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v3, :cond_0

    .line 793
    sget-object v3, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->LOG_TAG:Ljava/lang/String;

    const-string v4, "bGetShowmacframe.start equal False"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    const/4 v3, 0x0

    .line 802
    :cond_4
    return v3

    .line 797
    :cond_5
    sget-object v4, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->LOG_TAG:Ljava/lang/String;

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

    .line 970
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "\n"

    invoke-direct {v1, p0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    .local v1, st:Ljava/util/StringTokenizer;
    const/4 v0, 0x0

    .line 973
    .local v0, sTmp:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 974
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 976
    const-string v2, "BS ID"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    .line 978
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_1

    .line 979
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msBSID:Ljava/lang/String;

    goto :goto_0

    .line 981
    :cond_1
    sget-object v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->LOG_TAG:Ljava/lang/String;

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

    .line 983
    :cond_2
    const-string v2, "address"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 985
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_3

    .line 986
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msIPAddress:Ljava/lang/String;

    goto :goto_0

    .line 988
    :cond_3
    sget-object v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->LOG_TAG:Ljava/lang/String;

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

    .line 992
    :cond_4
    const/4 v2, 0x1

    return v2
.end method

.method private static bParseResult(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "iCmdType"
    .parameter "iResult"

    .prologue
    const/4 v3, 0x1

    .line 646
    const/4 v0, 0x0

    .line 647
    .local v0, bResult:Z
    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_COMMAND:[Ljava/lang/String;

    sget v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_SHOW_RFTX:I

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_0

    .line 691
    :goto_0
    return v0

    .line 651
    :cond_0
    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_COMMAND:[Ljava/lang/String;

    sget v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_SHOW_SS:I

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_1

    .line 653
    invoke-static {p1}, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->bGetShowrss(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 655
    :cond_1
    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_COMMAND:[Ljava/lang/String;

    sget v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_SHOW_MACFRAME:I

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_2

    .line 657
    invoke-static {p1}, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->bGetShowmacframe(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 659
    :cond_2
    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_COMMAND:[Ljava/lang/String;

    sget v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_SHOW_VERSION:I

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_3

    .line 661
    invoke-static {p1}, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->bGetShowVersion(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 663
    :cond_3
    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_COMMAND:[Ljava/lang/String;

    sget v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_SHOW_SSPHY_STATSDL:I

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_4

    .line 665
    invoke-static {p1}, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->bGetSSPhyStatSDL(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 667
    :cond_4
    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_COMMAND:[Ljava/lang/String;

    sget v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_CONTROLLER:I

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_5

    .line 669
    invoke-static {p1}, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->bGetController(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 671
    :cond_5
    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_COMMAND:[Ljava/lang/String;

    sget v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_SHOW_HANDOVER:I

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_6

    .line 673
    invoke-static {p1}, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->bGetHandover(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 675
    :cond_6
    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_COMMAND:[Ljava/lang/String;

    sget v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_SETHANDOVER:I

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_7

    .line 677
    const/4 v0, 0x1

    goto :goto_0

    .line 679
    :cond_7
    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_COMMAND:[Ljava/lang/String;

    sget v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_SHOW_CONFIG:I

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_8

    .line 681
    invoke-static {p1}, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->bGetIdleConfig(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    .line 683
    :cond_8
    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_COMMAND:[Ljava/lang/String;

    sget v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_CHANGE_ID_DELAY:I

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v3, :cond_9

    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_COMMAND:[Ljava/lang/String;

    sget v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_SETHANDOVER:I

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_a

    .line 686
    :cond_9
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 689
    :cond_a
    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->LOG_TAG:Ljava/lang/String;

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

    goto/16 :goto_0
.end method

.method public static cli(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Z
    .locals 6
    .parameter "command"
    .parameter "result"
    .parameter "status"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 567
    sget-boolean v3, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->DBG:Z

    if-eqz v3, :cond_0

    .line 568
    sget-object v3, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->LOG_TAG:Ljava/lang/String;

    const-string v4, "<CM> cli()+"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_0
    const/4 v0, 0x0

    .line 625
    .local v0, apiStatus:Ljava/lang/String;
    sget-object v3, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->mHTCWimax4GManager:Lcom/htc/net/wimax/HTCWimax4GManager;

    invoke-virtual {v3, p0}, Lcom/htc/net/wimax/HTCWimax4GManager;->cli(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 626
    if-nez v0, :cond_2

    .line 628
    sget-boolean v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->DBG:Z

    if-eqz v1, :cond_1

    .line 630
    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->LOG_TAG:Ljava/lang/String;

    const-string v3, "<CM> cli(), apiStatus != Status.STATUS_OK, return!!!"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :cond_1
    :goto_0
    return v2

    .line 637
    :cond_2
    sget-boolean v3, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->DBG:Z

    if-eqz v3, :cond_3

    .line 638
    sget-object v3, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<CM> cli(),Command:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cli result"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :cond_3
    invoke-static {p0, v0}, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->bParseResult(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v1, :cond_4

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method public static getSingleton()Lcom/htc/android/epst/wimax/WiMaxInfoEPST;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msWiMaxInfoEPST:Lcom/htc/android/epst/wimax/WiMaxInfoEPST;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;

    invoke-direct {v0}, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;-><init>()V

    sput-object v0, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msWiMaxInfoEPST:Lcom/htc/android/epst/wimax/WiMaxInfoEPST;

    .line 117
    :cond_0
    sget-object v0, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msWiMaxInfoEPST:Lcom/htc/android/epst/wimax/WiMaxInfoEPST;

    return-object v0
.end method

.method public static getWimaxProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "WiMaxID"

    .prologue
    .line 146
    sget-object v1, Lcom/htc/android/epst/EPST;->mContext:Landroid/content/Context;

    const-string v2, "fourG_wimax"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/net/FourG/FourGManager;

    .line 147
    .local v0, mFourGManager:Lcom/htc/net/FourG/FourGManager;
    check-cast v0, Lcom/htc/net/wimax/HTCWimax4GManager;

    .end local v0           #mFourGManager:Lcom/htc/net/FourG/FourGManager;
    sput-object v0, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->mHTCWimax4GManager:Lcom/htc/net/wimax/HTCWimax4GManager;

    .line 148
    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->mHTCWimax4GManager:Lcom/htc/net/wimax/HTCWimax4GManager;

    if-nez v1, :cond_0

    .line 149
    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHTCWimax4GManager:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->mHTCWimax4GManager:Lcom/htc/net/wimax/HTCWimax4GManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const-string v1, ""

    .line 152
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->mHTCWimax4GManager:Lcom/htc/net/wimax/HTCWimax4GManager;

    invoke-virtual {v1, p0}, Lcom/htc/net/wimax/HTCWimax4GManager;->getWimaxProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static setWimaxProp(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "WiMaxID"
    .parameter "value"

    .prologue
    .line 136
    sget-object v1, Lcom/htc/android/epst/EPST;->mContext:Landroid/content/Context;

    const-string v2, "fourG_wimax"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/net/FourG/FourGManager;

    .line 137
    .local v0, mFourGManager:Lcom/htc/net/FourG/FourGManager;
    check-cast v0, Lcom/htc/net/wimax/HTCWimax4GManager;

    .end local v0           #mFourGManager:Lcom/htc/net/FourG/FourGManager;
    sput-object v0, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->mHTCWimax4GManager:Lcom/htc/net/wimax/HTCWimax4GManager;

    .line 138
    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->mHTCWimax4GManager:Lcom/htc/net/wimax/HTCWimax4GManager;

    if-nez v1, :cond_0

    .line 139
    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHTCWimax4GManager:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->mHTCWimax4GManager:Lcom/htc/net/wimax/HTCWimax4GManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v1, 0x0

    .line 142
    :goto_0
    return v1

    :cond_0
    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->mHTCWimax4GManager:Lcom/htc/net/wimax/HTCWimax4GManager;

    invoke-virtual {v1, p0, p1}, Lcom/htc/net/wimax/HTCWimax4GManager;->setWimaxProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public GetBSID()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 428
    const/4 v0, 0x0

    .line 429
    .local v0, nResult:Ljava/lang/String;
    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msBSID:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 430
    sget-object v0, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msBSID:Ljava/lang/String;

    .line 431
    sput-object v3, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msBSID:Ljava/lang/String;

    .line 445
    :cond_0
    :goto_0
    return-object v0

    .line 434
    :cond_1
    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_COMMAND:[Ljava/lang/String;

    sget v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_SHOW_SS:I

    aget-object v1, v1, v2

    invoke-static {v1, v3, v3}, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->cli(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 435
    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->LOG_TAG:Ljava/lang/String;

    const-string v2, "GetBSID.CLI_SHOW_SS fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 437
    :cond_2
    sget-object v0, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msBSID:Ljava/lang/String;

    .line 438
    sput-object v3, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msBSID:Ljava/lang/String;

    .line 439
    sget-boolean v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->DBG:Z

    if-eqz v1, :cond_0

    .line 440
    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->LOG_TAG:Ljava/lang/String;

    const-string v2, "GetBSID.CLI_SHOW_SS successful"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public GetBandwidth()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 477
    const/4 v0, 0x0

    .line 478
    .local v0, nResult:Ljava/lang/String;
    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msBWidth:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 479
    sget-object v0, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msBWidth:Ljava/lang/String;

    .line 480
    sput-object v3, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msBWidth:Ljava/lang/String;

    .line 495
    :cond_0
    :goto_0
    return-object v0

    .line 483
    :cond_1
    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_COMMAND:[Ljava/lang/String;

    sget v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_SHOW_MACFRAME:I

    aget-object v1, v1, v2

    invoke-static {v1, v3, v3}, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->cli(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 484
    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->LOG_TAG:Ljava/lang/String;

    const-string v2, "GetBandwidth.CLI_SHOW_MACFRAME fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 487
    :cond_2
    sget-object v0, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msBWidth:Ljava/lang/String;

    .line 488
    sput-object v3, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msBWidth:Ljava/lang/String;

    .line 489
    sget-boolean v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->DBG:Z

    if-eqz v1, :cond_0

    .line 490
    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->LOG_TAG:Ljava/lang/String;

    const-string v2, "GetBandwidth.CLI_SHOW_MACFRAME successful"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public GetCFrequency()Ljava/lang/String;
    .locals 5

    .prologue
    .line 409
    const/4 v1, 0x0

    .line 412
    .local v1, nResult:Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->bsInfo:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;

    invoke-virtual {v2}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->getFrequencyDownlink()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 413
    sget-boolean v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->DBG:Z

    if-eqz v2, :cond_0

    .line 414
    sget-object v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WimaxInfo->GetCFrequency:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    :cond_0
    :goto_0
    return-object v1

    .line 416
    :catch_0
    move-exception v0

    .line 417
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dcd.get().frequency error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public GetFirmware()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 524
    const/4 v0, 0x0

    .line 525
    .local v0, nResult:Ljava/lang/String;
    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msFirmware:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 526
    sget-object v0, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msFirmware:Ljava/lang/String;

    .line 527
    sput-object v3, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msFirmware:Ljava/lang/String;

    .line 540
    :cond_0
    :goto_0
    return-object v0

    .line 529
    :cond_1
    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_COMMAND:[Ljava/lang/String;

    sget v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_SHOW_VERSION:I

    aget-object v1, v1, v2

    invoke-static {v1, v3, v3}, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->cli(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 530
    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->LOG_TAG:Ljava/lang/String;

    const-string v2, "GetSWareVersion.CLI_SHOW_VERSION fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 533
    :cond_2
    sget-object v0, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msFirmware:Ljava/lang/String;

    .line 534
    sput-object v3, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msFirmware:Ljava/lang/String;

    .line 535
    sget-boolean v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->DBG:Z

    if-eqz v1, :cond_0

    .line 536
    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->LOG_TAG:Ljava/lang/String;

    const-string v2, "GetSWareVersion.CLI_SHOW_VERSION successful"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public GetIPAddress()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 454
    const/4 v0, 0x0

    .line 455
    .local v0, nResult:Ljava/lang/String;
    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msIPAddress:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 456
    sget-object v0, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msIPAddress:Ljava/lang/String;

    .line 457
    sput-object v3, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msIPAddress:Ljava/lang/String;

    .line 471
    :cond_0
    :goto_0
    return-object v0

    .line 460
    :cond_1
    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_COMMAND:[Ljava/lang/String;

    sget v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_SHOW_SS:I

    aget-object v1, v1, v2

    invoke-static {v1, v3, v3}, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->cli(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 461
    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->LOG_TAG:Ljava/lang/String;

    const-string v2, "GetBSID.CLI_SHOW_SS fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 463
    :cond_2
    sget-object v0, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msIPAddress:Ljava/lang/String;

    .line 464
    sput-object v3, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msIPAddress:Ljava/lang/String;

    .line 465
    sget-boolean v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->DBG:Z

    if-eqz v1, :cond_0

    .line 466
    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->LOG_TAG:Ljava/lang/String;

    const-string v2, "GetBSID.CLI_SHOW_SS successful"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public GetRxNoiseRatio()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 386
    const/4 v0, 0x0

    .line 387
    .local v0, nResult:Ljava/lang/String;
    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msCinr:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 388
    sget-object v0, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msCinr:Ljava/lang/String;

    .line 389
    sput-object v3, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msCinr:Ljava/lang/String;

    .line 402
    :cond_0
    :goto_0
    return-object v0

    .line 391
    :cond_1
    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_COMMAND:[Ljava/lang/String;

    sget v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_SHOW_SSPHY_STATSDL:I

    aget-object v1, v1, v2

    invoke-static {v1, v3, v3}, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->cli(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 392
    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->LOG_TAG:Ljava/lang/String;

    const-string v2, "GetSWareVersion.CLI_SHOW_SSPHY_STATSDL fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 395
    :cond_2
    sget-object v0, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msCinr:Ljava/lang/String;

    .line 396
    sput-object v3, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msCinr:Ljava/lang/String;

    .line 397
    sget-boolean v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->DBG:Z

    if-eqz v1, :cond_0

    .line 398
    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->LOG_TAG:Ljava/lang/String;

    const-string v2, "GetSWareVersion.CLI_SHOW_SSPHY_STATSDL successful"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public GetRxPwr()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 361
    const/4 v0, 0x0

    .line 362
    .local v0, nResult:Ljava/lang/String;
    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msRssi:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 363
    sget-object v0, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msRssi:Ljava/lang/String;

    .line 364
    sput-object v3, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msRssi:Ljava/lang/String;

    .line 377
    :cond_0
    :goto_0
    return-object v0

    .line 366
    :cond_1
    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_COMMAND:[Ljava/lang/String;

    sget v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_SHOW_SSPHY_STATSDL:I

    aget-object v1, v1, v2

    invoke-static {v1, v3, v3}, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->cli(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 367
    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->LOG_TAG:Ljava/lang/String;

    const-string v2, "GetRxPwr.CLI_SHOW_SSPHY_STATSDL fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 370
    :cond_2
    sget-object v0, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msRssi:Ljava/lang/String;

    .line 371
    sput-object v3, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msRssi:Ljava/lang/String;

    .line 372
    sget-boolean v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->DBG:Z

    if-eqz v1, :cond_0

    .line 373
    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->LOG_TAG:Ljava/lang/String;

    const-string v2, "GetRxPwr.CLI_SHOW_SSPHY_STATSDL successful"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public GetSWareVersion()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 500
    const/4 v0, 0x0

    .line 501
    .local v0, nResult:Ljava/lang/String;
    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msSWareVersion:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 502
    sget-object v0, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msSWareVersion:Ljava/lang/String;

    .line 503
    sput-object v3, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msSWareVersion:Ljava/lang/String;

    .line 519
    :cond_0
    :goto_0
    return-object v0

    .line 506
    :cond_1
    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_COMMAND:[Ljava/lang/String;

    sget v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_SHOW_VERSION:I

    aget-object v1, v1, v2

    invoke-static {v1, v3, v3}, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->cli(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 507
    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->LOG_TAG:Ljava/lang/String;

    const-string v2, "GetSWareVersion.CLI_SHOW_VERSION fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 510
    :cond_2
    sget-object v0, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msSWareVersion:Ljava/lang/String;

    .line 511
    sput-object v3, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msSWareVersion:Ljava/lang/String;

    .line 512
    sget-boolean v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->DBG:Z

    if-eqz v1, :cond_0

    .line 513
    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->LOG_TAG:Ljava/lang/String;

    const-string v2, "GetSWareVersion.CLI_SHOW_VERSION successful"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public GetTxPwr()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 545
    const/4 v0, 0x0

    .line 546
    .local v0, nResult:Ljava/lang/String;
    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msTxPwr:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 547
    sget-object v0, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msTxPwr:Ljava/lang/String;

    .line 548
    sput-object v3, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msTxPwr:Ljava/lang/String;

    .line 561
    :cond_0
    :goto_0
    return-object v0

    .line 550
    :cond_1
    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_COMMAND:[Ljava/lang/String;

    sget v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_CONTROLLER:I

    aget-object v1, v1, v2

    invoke-static {v1, v3, v3}, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->cli(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 551
    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->LOG_TAG:Ljava/lang/String;

    const-string v2, "GetTxPwr.CLI_CONTROLLER fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 554
    :cond_2
    sget-object v0, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msTxPwr:Ljava/lang/String;

    .line 555
    sput-object v3, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msTxPwr:Ljava/lang/String;

    .line 556
    sget-boolean v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->DBG:Z

    if-eqz v1, :cond_0

    .line 557
    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->LOG_TAG:Ljava/lang/String;

    const-string v2, "GetTxPwr.CLI_CONTROLLER successful"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public GetWimaxChipVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 343
    const/4 v1, 0x0

    .line 344
    .local v1, nResult:Ljava/lang/String;
    sget-object v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->mHTCWimax4GManager:Lcom/htc/net/wimax/HTCWimax4GManager;

    invoke-virtual {v2}, Lcom/htc/net/wimax/HTCWimax4GManager;->getDeviceInformation()Lcom/htc/net/FourG/DeviceInfo;

    move-result-object v0

    .line 345
    .local v0, mDeviceInfo:Lcom/htc/net/FourG/DeviceInfo;
    invoke-virtual {v0}, Lcom/htc/net/FourG/DeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    .line 352
    return-object v1
.end method

.method public GetWimaxMacAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 330
    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->info:Lcom/htc/net/FourG/FourGInfo;

    invoke-virtual {v1}, Lcom/htc/net/FourG/FourGInfo;->getBSID()Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, bsinfo:Ljava/lang/String;
    return-object v0
.end method

.method public getHOThreshold()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 252
    const/4 v0, 0x0

    .line 253
    .local v0, nResult:Ljava/lang/String;
    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msHOThreshold:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 254
    sget-object v0, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msHOThreshold:Ljava/lang/String;

    .line 255
    sput-object v3, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msHOThreshold:Ljava/lang/String;

    .line 268
    :cond_0
    :goto_0
    return-object v0

    .line 257
    :cond_1
    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_COMMAND:[Ljava/lang/String;

    sget v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_SHOW_HANDOVER:I

    aget-object v1, v1, v2

    invoke-static {v1, v3, v3}, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->cli(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 258
    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->LOG_TAG:Ljava/lang/String;

    const-string v2, "getHOThreshold.showHandover fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 261
    :cond_2
    sget-object v0, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msHOThreshold:Ljava/lang/String;

    .line 262
    sput-object v3, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msHOThreshold:Ljava/lang/String;

    .line 263
    sget-boolean v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->DBG:Z

    if-eqz v1, :cond_0

    .line 264
    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->LOG_TAG:Ljava/lang/String;

    const-string v2, "getHOThreshold.showHandover successful"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getPSMSConfig()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 290
    const/4 v0, 0x0

    .line 291
    .local v0, nResult:Ljava/lang/String;
    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msIdlePeriod:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 292
    sget-object v0, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msIdlePeriod:Ljava/lang/String;

    .line 293
    sput-object v3, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msIdlePeriod:Ljava/lang/String;

    .line 306
    :cond_0
    :goto_0
    return-object v0

    .line 295
    :cond_1
    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_COMMAND:[Ljava/lang/String;

    sget v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_SHOW_CONFIG:I

    aget-object v1, v1, v2

    invoke-static {v1, v3, v3}, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->cli(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 296
    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->LOG_TAG:Ljava/lang/String;

    const-string v2, "getPSMSConfig.Idle auto switch Period (ms).fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 299
    :cond_2
    sget-object v0, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msIdlePeriod:Ljava/lang/String;

    .line 300
    sput-object v3, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->msIdlePeriod:Ljava/lang/String;

    .line 301
    sget-boolean v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->DBG:Z

    if-eqz v1, :cond_0

    .line 302
    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->LOG_TAG:Ljava/lang/String;

    const-string v2, "getPSMSConfig.Idle auto switch Period (ms).successful"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setHOThreshold(Ljava/lang/String;)Z
    .locals 5
    .parameter "iValue"

    .prologue
    const/4 v4, 0x0

    .line 273
    const/4 v0, 0x0

    .line 274
    .local v0, bResult:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_COMMAND:[Ljava/lang/String;

    sget v3, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_SETHANDOVER:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4, v4}, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->cli(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 275
    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHOThreshold.fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_COMMAND:[Ljava/lang/String;

    sget v4, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_SETHANDOVER:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :goto_0
    return v0

    .line 278
    :cond_0
    sget-boolean v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->DBG:Z

    if-eqz v1, :cond_1

    .line 279
    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHOThreshold.successful:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_COMMAND:[Ljava/lang/String;

    sget v4, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_SETHANDOVER:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setPSMSConfig(Ljava/lang/String;)Z
    .locals 5
    .parameter "iValue"

    .prologue
    const/4 v4, 0x0

    .line 311
    const/4 v0, 0x0

    .line 312
    .local v0, bResult:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_COMMAND:[Ljava/lang/String;

    sget v3, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_CHANGE_ID_DELAY:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4, v4}, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->cli(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 313
    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPSMSConfig.fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_COMMAND:[Ljava/lang/String;

    sget v4, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_CHANGE_ID_DELAY:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :goto_0
    return v0

    .line 316
    :cond_0
    sget-boolean v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->DBG:Z

    if-eqz v1, :cond_1

    .line 317
    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPSMSConfig.successful:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_COMMAND:[Ljava/lang/String;

    sget v4, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_CHANGE_ID_DELAY:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public showHelpSetHandover()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 239
    sget-object v0, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_COMMAND:[Ljava/lang/String;

    sget v1, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_HELP_SETHANDOVER:I

    aget-object v0, v0, v1

    invoke-static {v0, v2, v2}, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->cli(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 240
    sget-object v0, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->LOG_TAG:Ljava/lang/String;

    const-string v1, "showHelpSetHandover. fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_0
    :goto_0
    return-object v2

    .line 243
    :cond_1
    sget-boolean v0, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->DBG:Z

    if-eqz v0, :cond_0

    .line 244
    sget-object v0, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->LOG_TAG:Ljava/lang/String;

    const-string v1, "showHelpSetHandover. successful"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
