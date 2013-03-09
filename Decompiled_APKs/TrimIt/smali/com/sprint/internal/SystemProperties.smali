.class public Lcom/sprint/internal/SystemProperties;
.super Ljava/lang/Object;
.source "SystemProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/internal/SystemProperties$Prop;
    }
.end annotation


# static fields
.field private static final A_Key:I = 0x190

.field private static final BROWSER_FORCECHANGE_CUSTOMIZE_URI:Ljava/lang/String; = "content://customization_settings/SettingTable/force_change_Browser"

.field public static final DBG:Z = true

.field private static final DSA_Operation_Mode:I = 0x1a2

.field private static final DSA_SERVER_URL:I = 0x192

.field private static final MDN:I = 0x1

.field private static final MEID:I = 0x1e

.field private static final MSID:I = 0x23

.field private static final Primary_RTSP_Proxy_IP:I = 0x69

.field private static final Pseudo_ESN:I = 0x3

.field private static final SIWA_Key:I = 0x10000001

.field static final SUPPORTED_PROPS:[Lcom/sprint/internal/SystemProperties$Prop; = null

.field private static final Slot_1_AAA_Auth_Algo:I = 0x5d

.field private static final Slot_1_AAA_SPI:I = 0x5e

.field private static final Slot_1_HA_Auth_Algo:I = 0x5a

.field private static final Slot_1_HA_Password:I = 0x5c

.field private static final Slot_1_HA_SPI:I = 0x5b

.field private static final Slot_1_Mobile_IP_Address:I = 0x57

.field private static final Slot_1_NAI:I = 0x2

.field private static final Slot_1_NAI_Password:I = 0x2b

.field private static final Slot_1_Primary_HA:I = 0x32

.field private static final Slot_1_Reverse_Tunnel:I = 0x56

.field private static final Slot_1_Secondary_HA:I = 0x33

.field private static TAG:Ljava/lang/String; = null

.field private static final UAProf:I = 0xe

.field public static flagLoad:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field message:Ljava/lang/String;

.field private signaturePass:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v6, 0x3

    const/4 v7, 0x2

    const/16 v9, 0xab

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 32
    const-string v0, "HTC-DSA-SystemProperties"

    sput-object v0, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    .line 36
    sput-boolean v2, Lcom/sprint/internal/SystemProperties;->flagLoad:Z

    .line 338
    const/16 v0, 0x1a

    new-array v4, v0, [Lcom/sprint/internal/SystemProperties$Prop;

    new-instance v0, Lcom/sprint/internal/SystemProperties$Prop;

    const-string v3, "MDN"

    invoke-direct {v0, v1, v3, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v0, v4, v2

    new-instance v0, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v3, 0x23

    const-string v5, "MSID"

    invoke-direct {v0, v3, v5, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v0, v4, v1

    new-instance v0, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v3, 0x1e

    const-string v5, "MEID"

    invoke-direct {v0, v3, v5, v1, v2}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v0, v4, v7

    new-instance v0, Lcom/sprint/internal/SystemProperties$Prop;

    const-string v3, "Pseudo ESN"

    invoke-direct {v0, v6, v3, v1, v2}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v0, v4, v6

    const/4 v0, 0x4

    new-instance v3, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x190

    const-string v6, "A-Key"

    invoke-direct {v3, v5, v6, v2, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v3, v4, v0

    const/4 v0, 0x5

    new-instance v3, Lcom/sprint/internal/SystemProperties$Prop;

    const-string v5, "Slot1 NAI"

    invoke-direct {v3, v7, v5, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v3, v4, v0

    const/4 v0, 0x6

    new-instance v3, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x2b

    const-string v6, "Slot1 NAI Password"

    invoke-direct {v3, v5, v6, v2, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v3, v4, v0

    const/4 v0, 0x7

    new-instance v3, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x32

    const-string v6, "Slot1 Primary HA"

    invoke-direct {v3, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v3, v4, v0

    const/16 v0, 0x8

    new-instance v3, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x33

    const-string v6, "Slot1 Secondary HA"

    invoke-direct {v3, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v3, v4, v0

    const/16 v0, 0x9

    new-instance v3, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x5a

    const-string v6, "Slot1 HA Auth Algorithm"

    invoke-direct {v3, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v3, v4, v0

    const/16 v0, 0xa

    new-instance v3, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x5b

    const-string v6, "Slot1 HA SPI"

    invoke-direct {v3, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v3, v4, v0

    const/16 v0, 0xb

    new-instance v3, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x5c

    const-string v6, "Slot1 HA Password"

    invoke-direct {v3, v5, v6, v2, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v3, v4, v0

    const/16 v0, 0xc

    new-instance v3, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x5d

    const-string v6, "Slot1 AAA Auth Algorithm"

    invoke-direct {v3, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v3, v4, v0

    const/16 v0, 0xd

    new-instance v3, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x5e

    const-string v6, "Slot1 AAA SPI"

    invoke-direct {v3, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v3, v4, v0

    const/16 v0, 0xe

    new-instance v3, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x56

    const-string v6, "Slot1 Reverse Tunneling"

    invoke-direct {v3, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v3, v4, v0

    const/16 v0, 0xf

    new-instance v3, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x57

    const-string v6, "Slot1 Mobile IP"

    invoke-direct {v3, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v3, v4, v0

    const/16 v0, 0x10

    new-instance v3, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0xe

    const-string v6, "UAProf"

    invoke-direct {v3, v5, v6, v1, v2}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v3, v4, v0

    const/16 v0, 0x11

    new-instance v3, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x12c

    const-string v6, "MobileSync Enabled"

    invoke-direct {v3, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v3, v4, v0

    const/16 v0, 0x12

    new-instance v3, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x192

    const-string v6, "DSA Server URL"

    invoke-direct {v3, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v3, v4, v0

    const/16 v0, 0x13

    new-instance v3, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0xa1

    const-string v6, "PDE Primary IP"

    invoke-direct {v3, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v3, v4, v0

    const/16 v0, 0x14

    new-instance v3, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0xa3

    const-string v6, "PDE Primary Port"

    invoke-direct {v3, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v3, v4, v0

    const/16 v0, 0x15

    new-instance v3, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x195

    const-string v6, "DSA Server IP"

    invoke-direct {v3, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v3, v4, v0

    const/16 v0, 0x16

    new-instance v3, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x196

    const-string v6, "DSA Server Port"

    invoke-direct {v3, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v3, v4, v0

    const/16 v0, 0x17

    new-instance v3, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x197

    const-string v6, "MS-Assisted Timout"

    invoke-direct {v3, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v3, v4, v0

    const/16 v5, 0x18

    new-instance v6, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v7, 0x1a2

    const-string v8, "DSA Operation Mode"

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v9, :cond_0

    move v0, v1

    :goto_0
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v3, v9, :cond_1

    move v3, v1

    :goto_1
    invoke-direct {v6, v7, v8, v0, v3}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v6, v4, v5

    const/16 v0, 0x19

    new-instance v3, Lcom/sprint/internal/SystemProperties$Prop;

    const v5, 0x10000001

    const-string v6, "SIWA Key"

    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v7, v9, :cond_2

    :goto_2
    invoke-direct {v3, v5, v6, v1, v2}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v3, v4, v0

    sput-object v4, Lcom/sprint/internal/SystemProperties;->SUPPORTED_PROPS:[Lcom/sprint/internal/SystemProperties$Prop;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "ctxt"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprint/internal/SystemProperties;->signaturePass:Z

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/internal/SystemProperties;->message:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    .line 47
    sget-object v0, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SystemProperties - Caller: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-static {p1}, Lcom/sprint/internal/ConnectionManager;->checkCallerSignature(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sprint/internal/SystemProperties;->signaturePass:Z

    .line 51
    iget-boolean v0, p0, Lcom/sprint/internal/SystemProperties;->signaturePass:Z

    if-nez v0, :cond_0

    .line 52
    sget-object v0, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Verify "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " signature fail."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_0
    return-void
.end method

.method private byteArray2Bundle([B)Landroid/os/Bundle;
    .locals 4
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 512
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 513
    .local v1, parcel:Landroid/os/Parcel;
    array-length v2, p1

    invoke-virtual {v1, p1, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 514
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 516
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 517
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 518
    const/4 v0, 0x0

    .line 522
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-object v0

    .line 521
    .restart local v0       #bundle:Landroid/os/Bundle;
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_0
.end method

.method private getDSA(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 2
    .parameter "contentResolver"

    .prologue
    .line 464
    const-string v1, "dsa_server_url"

    invoke-static {p1, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 465
    .local v0, strDSAURL:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 466
    const-string v0, ""

    .line 468
    :cond_0
    return-object v0
.end method

.method private getOP_Mode(Lcom/sprint/internal/dm/DMAgentConnector;)Ljava/lang/String;
    .locals 12
    .parameter "dmAgent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sprint/internal/SystemPropertiesException;
        }
    .end annotation

    .prologue
    .line 574
    const/4 v3, 0x0

    .line 575
    .local v3, isException:Z
    const-string v4, "2"

    .line 576
    .local v4, result:Ljava/lang/String;
    sget-object v9, Lcom/sprint/internal/dm/DMAgentConnector;->cmdTY1:Ljava/lang/String;

    invoke-virtual {p1, v9}, Lcom/sprint/internal/dm/DMAgentConnector;->changeTTY(Ljava/lang/String;)V

    .line 577
    const-string v9, "AT+HTC_READ_PREFMODE=?"

    invoke-virtual {p1, v9}, Lcom/sprint/internal/dm/DMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 580
    .local v7, s_Key:Ljava/lang/String;
    sget-object v9, Lcom/sprint/internal/dm/DMAgentConnector;->cmdTY3:Ljava/lang/String;

    invoke-virtual {p1, v9}, Lcom/sprint/internal/dm/DMAgentConnector;->changeTTY(Ljava/lang/String;)V

    .line 581
    if-nez v7, :cond_1

    .line 582
    sget-object v9, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v10, "s_Key is null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    const/4 v3, 0x1

    .line 629
    :cond_0
    :goto_0
    if-eqz v3, :cond_7

    .line 630
    new-instance v9, Lcom/sprint/internal/SystemPropertiesException;

    const-string v10, "SystemProperty readable exception: not allow to read"

    invoke-direct {v9, v10}, Lcom/sprint/internal/SystemPropertiesException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 587
    :cond_1
    :try_start_0
    const-string v9, ":"

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 589
    .local v6, sKey:[Ljava/lang/String;
    array-length v9, v6

    const/4 v10, 0x2

    if-ge v9, v10, :cond_2

    .line 590
    sget-object v9, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "s_Key="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    const/4 v3, 0x1

    goto :goto_0

    .line 594
    :cond_2
    sget-object v9, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mode:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v11, v6, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const/4 v9, 0x1

    aget-object v9, v6, v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, "9"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 598
    new-instance v5, Ljava/lang/String;

    const-string v9, "1"

    invoke-direct {v5, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 600
    .end local v4           #result:Ljava/lang/String;
    .local v5, result:Ljava/lang/String;
    :try_start_1
    iget-object v9, p0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    const-string v10, "connectivity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 602
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_5

    .line 603
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 604
    .local v2, info:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_4

    .line 605
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v9

    const/4 v10, 0x7

    if-eq v9, v10, :cond_3

    .line 606
    sget-object v9, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "get_info: isConnected="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " subtype="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2           #info:Landroid/net/NetworkInfo;
    :cond_3
    :goto_1
    move-object v4, v5

    .line 616
    .end local v5           #result:Ljava/lang/String;
    .restart local v4       #result:Ljava/lang/String;
    goto/16 :goto_0

    .line 611
    .end local v4           #result:Ljava/lang/String;
    .restart local v2       #info:Landroid/net/NetworkInfo;
    .restart local v5       #result:Ljava/lang/String;
    :cond_4
    sget-object v9, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v10, "info=null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 620
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v2           #info:Landroid/net/NetworkInfo;
    :catch_0
    move-exception v8

    move-object v4, v5

    .line 621
    .end local v5           #result:Ljava/lang/String;
    .end local v6           #sKey:[Ljava/lang/String;
    .restart local v4       #result:Ljava/lang/String;
    .local v8, se:Ljava/lang/SecurityException;
    :goto_2
    sget-object v9, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v10, "no ACCESS NETWORK STATE Permission"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 614
    .end local v4           #result:Ljava/lang/String;
    .end local v8           #se:Ljava/lang/SecurityException;
    .restart local v0       #cm:Landroid/net/ConnectivityManager;
    .restart local v5       #result:Ljava/lang/String;
    .restart local v6       #sKey:[Ljava/lang/String;
    :cond_5
    :try_start_2
    sget-object v9, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v10, "cm=null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 622
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    :catch_1
    move-exception v1

    move-object v4, v5

    .line 623
    .end local v5           #result:Ljava/lang/String;
    .end local v6           #sKey:[Ljava/lang/String;
    .local v1, e:Ljava/lang/Exception;
    .restart local v4       #result:Ljava/lang/String;
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 624
    sget-object v9, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v10, "getOP_Mode fail"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 616
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v6       #sKey:[Ljava/lang/String;
    :cond_6
    const/4 v9, 0x1

    :try_start_3
    aget-object v9, v6, v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, "4"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 617
    new-instance v5, Ljava/lang/String;

    const-string v9, "2"

    invoke-direct {v5, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .end local v4           #result:Ljava/lang/String;
    .restart local v5       #result:Ljava/lang/String;
    move-object v4, v5

    .end local v5           #result:Ljava/lang/String;
    .restart local v4       #result:Ljava/lang/String;
    goto/16 :goto_0

    .line 632
    .end local v6           #sKey:[Ljava/lang/String;
    :cond_7
    return-object v4

    .line 622
    :catch_2
    move-exception v1

    goto :goto_3

    .line 620
    :catch_3
    move-exception v8

    goto :goto_2
.end method

.method private getSIWA_Key(Lcom/sprint/internal/dm/DMAgentConnector;)Ljava/lang/String;
    .locals 8
    .parameter "dmAgent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sprint/internal/SystemPropertiesException;
        }
    .end annotation

    .prologue
    .line 538
    const/4 v1, 0x0

    .line 539
    .local v1, isException:Z
    const-string v2, ""

    .line 541
    .local v2, result:Ljava/lang/String;
    sget-object v5, Lcom/sprint/internal/dm/DMAgentConnector;->cmdTY1:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/sprint/internal/dm/DMAgentConnector;->changeTTY(Ljava/lang/String;)V

    .line 542
    const-string v5, "AT+HTC_SIWA_KEY=?"

    invoke-virtual {p1, v5}, Lcom/sprint/internal/dm/DMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 543
    .local v4, s_Key:Ljava/lang/String;
    sget-object v5, Lcom/sprint/internal/dm/DMAgentConnector;->cmdTY3:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/sprint/internal/dm/DMAgentConnector;->changeTTY(Ljava/lang/String;)V

    .line 545
    if-nez v4, :cond_0

    .line 546
    sget-object v5, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v6, "s_Key is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    const/4 v1, 0x1

    .line 566
    :goto_0
    if-eqz v1, :cond_2

    .line 567
    new-instance v5, Lcom/sprint/internal/SystemPropertiesException;

    const-string v6, "SystemProperty readable exception: not allow to read"

    invoke-direct {v5, v6}, Lcom/sprint/internal/SystemPropertiesException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 551
    :cond_0
    :try_start_0
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 553
    .local v3, sKey:[Ljava/lang/String;
    array-length v5, v3

    const/4 v6, 0x2

    if-ge v5, v6, :cond_1

    .line 554
    sget-object v5, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSIWA_Key result="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const/4 v1, 0x1

    .line 559
    :cond_1
    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 560
    .end local v3           #sKey:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 561
    .local v0, e:Ljava/lang/Exception;
    sget-object v5, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v6, "s_Key[1].toString().trim() ERROR !!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    const/4 v1, 0x1

    goto :goto_0

    .line 570
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    return-object v2
.end method

.method private loadCustomizationData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 12
    .parameter "context"
    .parameter "customizeURI"
    .parameter "selection"

    .prologue
    const/4 v11, 0x0

    .line 473
    const/4 v7, 0x0

    .line 474
    .local v7, c:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 477
    .local v6, bundle:Landroid/os/Bundle;
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 478
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 479
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 481
    if-nez v7, :cond_1

    .line 482
    sget-object v2, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Quering browser customization database failed, abort performing customization, Customization URI = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    if-eqz v7, :cond_0

    .line 502
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 503
    const/4 v7, 0x0

    :cond_0
    move-object v2, v11

    .line 507
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    :goto_0
    return-object v2

    .line 486
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v1       #uri:Landroid/net/Uri;
    :cond_1
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_3

    .line 487
    sget-object v2, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Quering browser customization database failed, abort performing customization, Customization URI = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 489
    const/4 v7, 0x0

    .line 501
    if-eqz v7, :cond_2

    .line 502
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 503
    const/4 v7, 0x0

    :cond_2
    move-object v2, v11

    goto :goto_0

    .line 493
    :cond_3
    :try_start_2
    const-string v2, "value"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 495
    .local v10, idValue:I
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 496
    .local v8, data:[B
    invoke-direct {p0, v8}, Lcom/sprint/internal/SystemProperties;->byteArray2Bundle([B)Landroid/os/Bundle;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v6

    .line 501
    if-eqz v7, :cond_4

    .line 502
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 503
    const/4 v7, 0x0

    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v8           #data:[B
    .end local v10           #idValue:I
    :cond_4
    :goto_1
    move-object v2, v6

    .line 507
    goto :goto_0

    .line 497
    :catch_0
    move-exception v9

    .line 498
    .local v9, ex:Ljava/lang/Exception;
    :try_start_3
    sget-object v2, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v3, "Quering browser customization database failed with exception, abort performing customization"

    invoke-static {v2, v3, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 499
    const/4 v6, 0x0

    .line 501
    if-eqz v7, :cond_4

    .line 502
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 503
    const/4 v7, 0x0

    goto :goto_1

    .line 501
    .end local v9           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v7, :cond_5

    .line 502
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 503
    const/4 v7, 0x0

    :cond_5
    throw v2
.end method

.method public static mappingItem(I)Ljava/lang/String;
    .locals 1
    .parameter "id"

    .prologue
    .line 400
    sparse-switch p0, :sswitch_data_0

    .line 434
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 402
    :sswitch_0
    const-string v0, "C001"

    goto :goto_0

    .line 406
    :sswitch_1
    const-string v0, "C004"

    goto :goto_0

    .line 408
    :sswitch_2
    const-string v0, "C003"

    goto :goto_0

    .line 410
    :sswitch_3
    const-string v0, "C005"

    goto :goto_0

    .line 412
    :sswitch_4
    const-string v0, "C006"

    goto :goto_0

    .line 414
    :sswitch_5
    const-string v0, "C007"

    goto :goto_0

    .line 416
    :sswitch_6
    const-string v0, "C008"

    goto :goto_0

    .line 418
    :sswitch_7
    const-string v0, "C009"

    goto :goto_0

    .line 420
    :sswitch_8
    const-string v0, "C010"

    goto :goto_0

    .line 422
    :sswitch_9
    const-string v0, "C011"

    goto :goto_0

    .line 424
    :sswitch_a
    const-string v0, "C012"

    goto :goto_0

    .line 426
    :sswitch_b
    const-string v0, "C013"

    goto :goto_0

    .line 428
    :sswitch_c
    const-string v0, "C014"

    goto :goto_0

    .line 430
    :sswitch_d
    const-string v0, "C015"

    goto :goto_0

    .line 432
    :sswitch_e
    const-string v0, "C016"

    goto :goto_0

    .line 400
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_4
        0x3 -> :sswitch_2
        0x1e -> :sswitch_1
        0x2b -> :sswitch_5
        0x32 -> :sswitch_6
        0x33 -> :sswitch_7
        0x56 -> :sswitch_d
        0x57 -> :sswitch_e
        0x5a -> :sswitch_8
        0x5b -> :sswitch_9
        0x5c -> :sswitch_a
        0x5d -> :sswitch_b
        0x5e -> :sswitch_c
        0x190 -> :sswitch_3
    .end sparse-switch
.end method

.method private refreshUI()V
    .locals 3

    .prologue
    .line 301
    iget-object v0, p0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "APP_REQUEST_REFRESH_PHONE_INFO"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 302
    return-void
.end method

.method private setOP_Mode(Lcom/sprint/internal/dm/DMAgentConnector;Ljava/lang/String;)V
    .locals 12
    .parameter "dmAgent"
    .parameter "strMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sprint/internal/SystemPropertiesException;
        }
    .end annotation

    .prologue
    .line 636
    sget-object v9, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "set DSA_Operation_Mode"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const/4 v3, 0x0

    .line 638
    .local v3, isException:Z
    const-string v8, ""

    .line 641
    .local v8, strCmd:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 643
    const-string v9, "1"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 645
    const-string v8, "AT+HTC_TMP_PREFMODE=9"

    .line 654
    :goto_0
    sget-object v9, Lcom/sprint/internal/dm/DMAgentConnector;->cmdTY1:Ljava/lang/String;

    invoke-virtual {p1, v9}, Lcom/sprint/internal/dm/DMAgentConnector;->changeTTY(Ljava/lang/String;)V

    .line 655
    invoke-virtual {p1, v8}, Lcom/sprint/internal/dm/DMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 656
    .local v6, s_Key:Ljava/lang/String;
    sget-object v9, Lcom/sprint/internal/dm/DMAgentConnector;->cmdTY3:Ljava/lang/String;

    invoke-virtual {p1, v9}, Lcom/sprint/internal/dm/DMAgentConnector;->changeTTY(Ljava/lang/String;)V

    .line 659
    if-nez v6, :cond_3

    .line 660
    sget-object v9, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v10, "s_Key is null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    const/4 v3, 0x1

    .line 711
    .end local v6           #s_Key:Ljava/lang/String;
    :cond_0
    :goto_1
    if-eqz v3, :cond_9

    .line 712
    new-instance v9, Lcom/sprint/internal/SystemPropertiesException;

    const-string v10, "SystemProperty writable exception: not allow to write"

    invoke-direct {v9, v10}, Lcom/sprint/internal/SystemPropertiesException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 646
    :cond_1
    const-string v9, "2"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 647
    const-string v8, "AT+HTC_TMP_PREFMODE=4"

    goto :goto_0

    .line 649
    :cond_2
    sget-object v9, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid mode: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const/4 v3, 0x1

    .line 651
    goto :goto_1

    .line 666
    .restart local v6       #s_Key:Ljava/lang/String;
    :cond_3
    :try_start_0
    const-string v9, ":"

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 667
    .local v5, sKey:[Ljava/lang/String;
    array-length v9, v5

    const/4 v10, 0x2

    if-lt v9, v10, :cond_4

    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, "0"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 668
    :cond_4
    sget-object v9, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "invalid result="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    const/4 v3, 0x1

    goto :goto_1

    .line 674
    :cond_5
    const/16 v4, 0xa

    .line 677
    .local v4, retry:I
    iget-object v9, p0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    const-string v10, "connectivity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 678
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_8

    .line 679
    sget-object v9, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v10, "cm=null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 701
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v4           #retry:I
    .end local v5           #sKey:[Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 702
    .local v7, se:Ljava/lang/SecurityException;
    sget-object v9, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v10, "no ACCESS NETWORK STATE Permission"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 696
    .end local v7           #se:Ljava/lang/SecurityException;
    .restart local v0       #cm:Landroid/net/ConnectivityManager;
    .local v2, info:Landroid/net/NetworkInfo;
    .restart local v4       #retry:I
    .restart local v5       #sKey:[Ljava/lang/String;
    :cond_6
    :try_start_1
    sget-object v9, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v10, "null NetworkInfo..."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    :cond_7
    add-int/lit8 v4, v4, -0x1

    .line 699
    const-wide/16 v9, 0x3e8

    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    .line 684
    .end local v2           #info:Landroid/net/NetworkInfo;
    :cond_8
    if-lez v4, :cond_0

    .line 685
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 686
    .restart local v2       #info:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_6

    .line 687
    sget-object v9, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "set DSA_Op_Mode("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "): isConnected="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " subtype="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_7

    const-string v9, "1"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v9

    const/4 v10, 0x7

    if-ne v9, v10, :cond_7

    goto/16 :goto_1

    .line 704
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v2           #info:Landroid/net/NetworkInfo;
    .end local v4           #retry:I
    .end local v5           #sKey:[Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 705
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 706
    const/4 v3, 0x1

    .line 708
    goto/16 :goto_1

    .line 714
    .end local v1           #e:Ljava/lang/Exception;
    .end local v6           #s_Key:Ljava/lang/String;
    :cond_9
    return-void
.end method


# virtual methods
.method public getString(I)Ljava/lang/String;
    .locals 23
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sprint/internal/SystemPropertiesException;
        }
    .end annotation

    .prologue
    .line 62
    sget-object v18, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getString("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ")"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sprint/internal/SystemProperties;->signaturePass:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    .line 64
    new-instance v18, Lcom/sprint/internal/SystemPropertiesException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Verify "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " signature fail."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lcom/sprint/internal/SystemPropertiesException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 66
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/sprint/internal/SystemProperties$Prop;->getReadable(I)Z

    move-result v18

    if-nez v18, :cond_1

    .line 67
    sget-object v18, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "id:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " is not allowed to read"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v18, Lcom/sprint/internal/SystemPropertiesException;

    const-string v19, "SystemProperty readable exception: not allow to read"

    invoke-direct/range {v18 .. v19}, Lcom/sprint/internal/SystemPropertiesException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 72
    :cond_1
    const-string v18, "com.sprint.internal.permission.SYSTEMPROPERTIES"

    invoke-static/range {v18 .. v18}, Lcom/sprint/internal/SecurityManager;->checkPermission(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 85
    const v18, 0x10000001

    move/from16 v0, v18

    move/from16 v1, p1

    if-eq v0, v1, :cond_2

    const/16 v18, 0x1a2

    move/from16 v0, v18

    move/from16 v1, p1

    if-ne v0, v1, :cond_5

    .line 87
    :cond_2
    new-instance v6, Lcom/sprint/internal/dm/DMAgentConnector;

    const-string v18, ":IDOMADM"

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Lcom/sprint/internal/dm/DMAgentConnector;-><init>(Ljava/lang/String;)V

    .line 92
    .local v6, dmAgent:Lcom/sprint/internal/dm/DMAgentConnector;
    :goto_0
    invoke-virtual {v6}, Lcom/sprint/internal/dm/DMAgentConnector;->openConnection()Z

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 97
    .local v5, cr:Landroid/content/ContentResolver;
    const-string v13, ""

    .line 98
    .local v13, result:Ljava/lang/String;
    const/4 v15, 0x1

    .line 99
    .local v15, tag:Z
    if-eqz v15, :cond_12

    .line 100
    const/16 v18, 0x23

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 102
    const-string v18, "C018"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/sprint/internal/dm/DMAgentConnector;->sendReadCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 103
    .local v11, min1:Ljava/lang/String;
    invoke-static {v11}, Lcom/sprint/internal/dm/DMAgentConnector;->reverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x10

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 104
    .local v7, dwMin1:Ljava/lang/Long;
    invoke-static {v7}, Lcom/sprint/internal/dm/DMAgentConnector;->decodeBCDMin1(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v11

    .line 107
    const-string v18, "C019"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/sprint/internal/dm/DMAgentConnector;->sendReadCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 108
    .local v12, min2:Ljava/lang/String;
    invoke-static {v12}, Lcom/sprint/internal/dm/DMAgentConnector;->reverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x10

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 110
    .local v8, dwMin2:Ljava/lang/Long;
    const-string v18, "%03d"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-wide/16 v21, 0x3

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v8, v0}, Lcom/sprint/internal/dm/DMAgentConnector;->decodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 111
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 182
    .end local v7           #dwMin1:Ljava/lang/Long;
    .end local v8           #dwMin2:Ljava/lang/Long;
    .end local v11           #min1:Ljava/lang/String;
    .end local v12           #min2:Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-virtual {v6}, Lcom/sprint/internal/dm/DMAgentConnector;->closeConnection()Z

    .line 185
    .end local v5           #cr:Landroid/content/ContentResolver;
    .end local v6           #dmAgent:Lcom/sprint/internal/dm/DMAgentConnector;
    .end local v13           #result:Ljava/lang/String;
    .end local v15           #tag:Z
    :goto_2
    return-object v13

    .line 75
    :cond_4
    sget-object v18, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v19, "****** require SYSTEMPROPERTIES permission-getString!!****** "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/4 v13, 0x0

    goto :goto_2

    .line 90
    :cond_5
    new-instance v6, Lcom/sprint/internal/dm/DMAgentConnector;

    const-string v18, ":XCMD"

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Lcom/sprint/internal/dm/DMAgentConnector;-><init>(Ljava/lang/String;)V

    .restart local v6       #dmAgent:Lcom/sprint/internal/dm/DMAgentConnector;
    goto/16 :goto_0

    .line 113
    .restart local v5       #cr:Landroid/content/ContentResolver;
    .restart local v13       #result:Ljava/lang/String;
    .restart local v15       #tag:Z
    :cond_6
    const/16 v18, 0x5a

    move/from16 v0, p1

    move/from16 v1, v18

    if-eq v0, v1, :cond_7

    const/16 v18, 0x5d

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 114
    :cond_7
    const-string v13, "MD5"

    goto :goto_2

    .line 116
    :cond_8
    const/16 v18, 0x192

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sprint/internal/SystemProperties;->getDSA(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    .line 120
    :cond_9
    const/16 v18, 0xe

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 121
    const-string v13, ""

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "content://customization_settings/SettingTable/force_change_Browser"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/sprint/internal/SystemProperties;->loadCustomizationData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 125
    .local v4, bundle:Landroid/os/Bundle;
    const-string v10, "ua_profile"

    .line 126
    .local v10, key:Ljava/lang/String;
    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v16

    .line 127
    .local v16, ua_profileBundle:Landroid/os/Bundle;
    if-nez v16, :cond_a

    .line 128
    sget-object v18, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v19, "No UA profile customization data found, abort customizing browser UA profile"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_a
    const-string v10, "value"

    .line 134
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 137
    .local v17, value:Ljava/lang/String;
    sget-object v18, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "uaProfile:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    if-eqz v17, :cond_3

    .line 139
    move-object/from16 v13, v17

    goto/16 :goto_1

    .line 142
    .end local v4           #bundle:Landroid/os/Bundle;
    .end local v10           #key:Ljava/lang/String;
    .end local v16           #ua_profileBundle:Landroid/os/Bundle;
    .end local v17           #value:Ljava/lang/String;
    :cond_b
    const v18, 0x10000001

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 144
    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/sprint/internal/SystemProperties;->getSIWA_Key(Lcom/sprint/internal/dm/DMAgentConnector;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/sprint/internal/SystemPropertiesException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    goto/16 :goto_1

    .line 145
    :catch_0
    move-exception v9

    .line 146
    .local v9, e:Lcom/sprint/internal/SystemPropertiesException;
    invoke-virtual {v6}, Lcom/sprint/internal/dm/DMAgentConnector;->closeConnection()Z

    .line 147
    throw v9

    .line 151
    .end local v9           #e:Lcom/sprint/internal/SystemPropertiesException;
    :cond_c
    const/16 v18, 0x1a2

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 153
    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/sprint/internal/SystemProperties;->getOP_Mode(Lcom/sprint/internal/dm/DMAgentConnector;)Ljava/lang/String;
    :try_end_1
    .catch Lcom/sprint/internal/SystemPropertiesException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v13

    goto/16 :goto_1

    .line 154
    :catch_1
    move-exception v9

    .line 155
    .restart local v9       #e:Lcom/sprint/internal/SystemPropertiesException;
    invoke-virtual {v6}, Lcom/sprint/internal/dm/DMAgentConnector;->closeConnection()Z

    .line 156
    throw v9

    .line 161
    .end local v9           #e:Lcom/sprint/internal/SystemPropertiesException;
    :cond_d
    invoke-static/range {p1 .. p1}, Lcom/sprint/internal/SystemProperties;->mappingItem(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/sprint/internal/dm/DMAgentConnector;->sendReadCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 167
    invoke-virtual/range {p0 .. p1}, Lcom/sprint/internal/SystemProperties;->isTransIPid(I)Z

    move-result v18

    if-eqz v18, :cond_f

    if-eqz v13, :cond_f

    .line 168
    invoke-static {v13}, Lcom/sprint/internal/dm/DMAgentConnector;->transHexStringtoIP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 177
    :cond_e
    :goto_3
    if-nez v13, :cond_3

    .line 178
    const-string v13, ""

    goto/16 :goto_1

    .line 170
    :cond_f
    invoke-virtual/range {p0 .. p1}, Lcom/sprint/internal/SystemProperties;->isTransHexid(I)Z

    move-result v18

    if-eqz v18, :cond_10

    if-eqz v13, :cond_10

    .line 171
    new-instance v14, Ljava/lang/String;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v13, v0}, Lcom/sprint/internal/dm/DMAgentConnector;->hexStringToByte(Ljava/lang/String;Z)[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Ljava/lang/String;-><init>([B)V

    .end local v13           #result:Ljava/lang/String;
    .local v14, result:Ljava/lang/String;
    move-object v13, v14

    .end local v14           #result:Ljava/lang/String;
    .restart local v13       #result:Ljava/lang/String;
    goto :goto_3

    .line 173
    :cond_10
    invoke-virtual/range {p0 .. p1}, Lcom/sprint/internal/SystemProperties;->isRevert(I)Z

    move-result v18

    if-eqz v18, :cond_11

    if-eqz v13, :cond_11

    .line 174
    invoke-static {v13}, Lcom/sprint/internal/dm/DMAgentConnector;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_3

    .line 175
    :cond_11
    const/16 v18, 0x56

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    .line 176
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_3

    .line 185
    :cond_12
    const/4 v13, 0x0

    goto/16 :goto_2
.end method

.method public isRevert(I)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 457
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x5e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x5b

    if-ne p1, v0, :cond_1

    .line 458
    :cond_0
    const/4 v0, 0x1

    .line 459
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTransHexid(I)Z
    .locals 2
    .parameter "id"

    .prologue
    const/4 v0, 0x1

    .line 450
    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/16 v1, 0x2b

    if-eq p1, v1, :cond_0

    const/16 v1, 0x5c

    if-ne p1, v1, :cond_1

    .line 454
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTransIPid(I)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 440
    const/16 v0, 0x32

    if-eq p1, v0, :cond_0

    const/16 v0, 0x33

    if-eq p1, v0, :cond_0

    const/16 v0, 0x57

    if-ne p1, v0, :cond_1

    .line 445
    :cond_0
    const/4 v0, 0x1

    .line 446
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDSA(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 3
    .parameter "contentResolver"
    .parameter "value"

    .prologue
    .line 527
    const/4 v0, 0x0

    .line 529
    .local v0, blStore:Z
    :try_start_0
    const-string v2, "dsa_server_url"

    invoke-static {p1, v2, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 533
    :goto_0
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 530
    :catch_0
    move-exception v1

    .line 531
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 533
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_0
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public setString(ILjava/lang/String;)V
    .locals 22
    .parameter "id"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sprint/internal/SystemPropertiesException;
        }
    .end annotation

    .prologue
    .line 190
    sget-object v19, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "setString("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sprint/internal/SystemProperties;->signaturePass:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    .line 192
    new-instance v19, Lcom/sprint/internal/SystemPropertiesException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Verify "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " signature fail."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lcom/sprint/internal/SystemPropertiesException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 194
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/sprint/internal/SystemProperties$Prop;->getWritable(I)Z

    move-result v19

    if-nez v19, :cond_1

    .line 195
    sget-object v19, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "id:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " is not allowed to write"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    new-instance v19, Lcom/sprint/internal/SystemPropertiesException;

    const-string v20, "SystemProperty writable exception: not allow to write"

    invoke-direct/range {v19 .. v20}, Lcom/sprint/internal/SystemPropertiesException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 200
    :cond_1
    const-string v19, "com.sprint.internal.permission.SYSTEMPROPERTIES_WRITE"

    invoke-static/range {v19 .. v19}, Lcom/sprint/internal/SecurityManager;->checkPermission(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 213
    const v19, 0x10000001

    move/from16 v0, v19

    move/from16 v1, p1

    if-eq v0, v1, :cond_2

    const/16 v19, 0x1a2

    move/from16 v0, v19

    move/from16 v1, p1

    if-ne v0, v1, :cond_6

    .line 215
    :cond_2
    new-instance v5, Lcom/sprint/internal/dm/DMAgentConnector;

    const-string v19, ":IDOMADM"

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Lcom/sprint/internal/dm/DMAgentConnector;-><init>(Ljava/lang/String;)V

    .line 222
    .local v5, dmAgent:Lcom/sprint/internal/dm/DMAgentConnector;
    :goto_0
    invoke-virtual {v5}, Lcom/sprint/internal/dm/DMAgentConnector;->openConnection()Z

    .line 223
    const/16 v19, 0x192

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/sprint/internal/SystemProperties;->setDSA(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 283
    :cond_3
    :goto_1
    invoke-static/range {p1 .. p1}, Lcom/sprint/internal/SystemProperties;->mappingItem(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v5, v0, v1}, Lcom/sprint/internal/dm/DMAgentConnector;->sendWriteCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    .line 284
    .local v14, result:Z
    sget-object v19, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "setString("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "):"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const/16 v19, 0x1

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 288
    invoke-direct/range {p0 .. p0}, Lcom/sprint/internal/SystemProperties;->refreshUI()V

    .line 291
    :cond_4
    const/16 v17, 0x1

    .line 292
    .local v17, tag:Z
    if-eqz v17, :cond_f

    .line 293
    invoke-virtual {v5}, Lcom/sprint/internal/dm/DMAgentConnector;->closeConnection()Z

    .line 298
    .end local v5           #dmAgent:Lcom/sprint/internal/dm/DMAgentConnector;
    .end local v14           #result:Z
    .end local v17           #tag:Z
    :goto_2
    return-void

    .line 203
    :cond_5
    sget-object v19, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v20, "****** require SYSTEMPROPERTIES_WRITE permission-setString!!****** "

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 218
    :cond_6
    new-instance v5, Lcom/sprint/internal/dm/DMAgentConnector;

    const-string v19, ":XCMD"

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Lcom/sprint/internal/dm/DMAgentConnector;-><init>(Ljava/lang/String;)V

    .restart local v5       #dmAgent:Lcom/sprint/internal/dm/DMAgentConnector;
    goto :goto_0

    .line 225
    :cond_7
    const/16 v19, 0x23

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 226
    const/16 v19, 0x3

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 228
    .local v12, min1:Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->toCharArray()[C

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/sprint/internal/dm/DMAgentConnector;->EncodeBCD_Min1([C)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 229
    .local v6, dwCdmaMin1:J
    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v15

    .line 230
    .local v15, strHexCdmaMin1:Ljava/lang/String;
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-static {v15, v0}, Lcom/sprint/internal/dm/DMAgentConnector;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    .line 231
    invoke-static {v15}, Lcom/sprint/internal/dm/DMAgentConnector;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 232
    .local v3, cdmaMin1:Ljava/lang/String;
    const-string v19, "C018"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v3}, Lcom/sprint/internal/dm/DMAgentConnector;->sendWriteCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 234
    const/16 v19, 0x0

    const/16 v20, 0x3

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 236
    .local v13, min2:Ljava/lang/String;
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 237
    .local v8, dwCdmaMin2:J
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const-wide/16 v20, 0x3

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/sprint/internal/dm/DMAgentConnector;->EncodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 238
    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v16

    .line 239
    .local v16, strHexCdmaMin2:Ljava/lang/String;
    const/16 v19, 0x4

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/sprint/internal/dm/DMAgentConnector;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    .line 240
    invoke-static/range {v16 .. v16}, Lcom/sprint/internal/dm/DMAgentConnector;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 242
    .local v4, cdmaMin2:Ljava/lang/String;
    const-string v19, "C019"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v4}, Lcom/sprint/internal/dm/DMAgentConnector;->sendWriteCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 243
    invoke-virtual {v5}, Lcom/sprint/internal/dm/DMAgentConnector;->closeConnection()Z

    goto/16 :goto_2

    .line 246
    .end local v3           #cdmaMin1:Ljava/lang/String;
    .end local v4           #cdmaMin2:Ljava/lang/String;
    .end local v6           #dwCdmaMin1:J
    .end local v8           #dwCdmaMin2:J
    .end local v12           #min1:Ljava/lang/String;
    .end local v13           #min2:Ljava/lang/String;
    .end local v15           #strHexCdmaMin1:Ljava/lang/String;
    .end local v16           #strHexCdmaMin2:Ljava/lang/String;
    :cond_8
    const/16 v19, 0x2b

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 247
    invoke-static/range {p2 .. p2}, Lcom/sprint/internal/dm/DMAgentConnector;->ASCIIToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 248
    .local v11, haString:Ljava/lang/String;
    const-string v19, "C007"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v11}, Lcom/sprint/internal/dm/DMAgentConnector;->sendWriteCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 249
    invoke-virtual {v5}, Lcom/sprint/internal/dm/DMAgentConnector;->closeConnection()Z

    goto/16 :goto_2

    .line 253
    .end local v11           #haString:Ljava/lang/String;
    :cond_9
    invoke-virtual/range {p0 .. p1}, Lcom/sprint/internal/SystemProperties;->isTransIPid(I)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 255
    invoke-static/range {p2 .. p2}, Lcom/sprint/internal/dm/DMAgentConnector;->transIPtoHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1

    .line 258
    :cond_a
    invoke-virtual/range {p0 .. p1}, Lcom/sprint/internal/SystemProperties;->isTransHexid(I)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 260
    move-object/from16 v18, p2

    .line 261
    .local v18, tmp:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/sprint/internal/dm/DMAgentConnector;->doASCIIToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 262
    goto/16 :goto_1

    .line 264
    .end local v18           #tmp:Ljava/lang/String;
    :cond_b
    invoke-virtual/range {p0 .. p1}, Lcom/sprint/internal/SystemProperties;->isRevert(I)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 265
    const/16 v19, 0x5b

    move/from16 v0, p1

    move/from16 v1, v19

    if-eq v0, v1, :cond_c

    const/16 v19, 0x5e

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    .line 266
    :cond_c
    const/16 v19, 0x8

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/sprint/internal/dm/DMAgentConnector;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 268
    :cond_d
    invoke-static/range {p2 .. p2}, Lcom/sprint/internal/dm/DMAgentConnector;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1

    .line 269
    :cond_e
    const/16 v19, 0x1a2

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 271
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v5, v1}, Lcom/sprint/internal/SystemProperties;->setOP_Mode(Lcom/sprint/internal/dm/DMAgentConnector;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/sprint/internal/SystemPropertiesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    invoke-virtual {v5}, Lcom/sprint/internal/dm/DMAgentConnector;->closeConnection()Z

    goto/16 :goto_2

    .line 272
    :catch_0
    move-exception v10

    .line 274
    .local v10, e:Lcom/sprint/internal/SystemPropertiesException;
    :try_start_1
    throw v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    .end local v10           #e:Lcom/sprint/internal/SystemPropertiesException;
    :catchall_0
    move-exception v19

    invoke-virtual {v5}, Lcom/sprint/internal/dm/DMAgentConnector;->closeConnection()Z

    throw v19

    .line 296
    .restart local v14       #result:Z
    .restart local v17       #tag:Z
    :cond_f
    sget-object v19, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "setString("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method
