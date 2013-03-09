.class public Lcom/sprint/dsa/DsaSystem;
.super Ljava/lang/Object;
.source "DsaSystem.java"


# static fields
.field public static final ESN:I = 0x3

.field public static final MDN:I = 0x1

.field public static final MEID:I = 0x1e

.field public static final MSID:I = 0x23

.field public static final NAI:I = 0x2

.field public static final RESELLER:I = 0x1a4

.field public static final SMS_DELIVERED:Ljava/lang/String; = "SMS_DELIVERED"

.field public static final SMS_SENT:Ljava/lang/String; = "SMS_SENT"

.field public static final TAG:Ljava/lang/String; = "DSS"

.field public static final XWAP:I = 0xe

.field static connectionManager:Lcom/sprint/internal/ConnectionManager;

.field static esn:Ljava/lang/String;

.field static mdn:Ljava/lang/String;

.field static meid:Ljava/lang/String;

.field static msid:Ljava/lang/String;

.field static nai:Ljava/lang/String;

.field static reseller:Ljava/lang/String;

.field static systemProperties:Lcom/sprint/internal/SystemProperties;

.field static url:Ljava/lang/String;

.field static x_wap_p:Ljava/lang/String;


# instance fields
.field private dsaClient:Lcom/sprint/dsa/DsaClient;

.field factoryDefault:Z

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mSMSReceiver:Landroid/content/BroadcastReceiver;

.field mapPayload:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public network:I

.field private writeErrMsg:Ljava/lang/String;

.field private writeResult:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    sput-object v1, Lcom/sprint/dsa/DsaSystem;->nai:Ljava/lang/String;

    .line 41
    sput-object v1, Lcom/sprint/dsa/DsaSystem;->mdn:Ljava/lang/String;

    .line 42
    sput-object v1, Lcom/sprint/dsa/DsaSystem;->esn:Ljava/lang/String;

    .line 43
    sput-object v1, Lcom/sprint/dsa/DsaSystem;->msid:Ljava/lang/String;

    .line 44
    sput-object v1, Lcom/sprint/dsa/DsaSystem;->meid:Ljava/lang/String;

    .line 45
    sput-object v1, Lcom/sprint/dsa/DsaSystem;->url:Ljava/lang/String;

    .line 46
    const-string v0, " "

    sput-object v0, Lcom/sprint/dsa/DsaSystem;->x_wap_p:Ljava/lang/String;

    .line 48
    sput-object v1, Lcom/sprint/dsa/DsaSystem;->reseller:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "cx"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, "prov_success"

    iput-object v0, p0, Lcom/sprint/dsa/DsaSystem;->writeResult:Ljava/lang/String;

    .line 53
    const-string v0, "prov_error"

    iput-object v0, p0, Lcom/sprint/dsa/DsaSystem;->writeErrMsg:Ljava/lang/String;

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/sprint/dsa/DsaSystem;->network:I

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprint/dsa/DsaSystem;->mHandler:Landroid/os/Handler;

    .line 701
    new-instance v0, Lcom/sprint/dsa/DsaSystem$1;

    invoke-direct {v0, p0}, Lcom/sprint/dsa/DsaSystem$1;-><init>(Lcom/sprint/dsa/DsaSystem;)V

    iput-object v0, p0, Lcom/sprint/dsa/DsaSystem;->mSMSReceiver:Landroid/content/BroadcastReceiver;

    .line 63
    iput-object p1, p0, Lcom/sprint/dsa/DsaSystem;->mContext:Landroid/content/Context;

    .line 64
    new-instance v0, Lcom/sprint/internal/ConnectionManager;

    iget-object v1, p0, Lcom/sprint/dsa/DsaSystem;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sprint/internal/ConnectionManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sprint/dsa/DsaSystem;->connectionManager:Lcom/sprint/internal/ConnectionManager;

    .line 65
    check-cast p1, Lcom/sprint/dsa/DsaClient;

    .end local p1
    iput-object p1, p0, Lcom/sprint/dsa/DsaSystem;->dsaClient:Lcom/sprint/dsa/DsaClient;

    .line 66
    new-instance v0, Lcom/sprint/dsa/DsaSystem$2;

    invoke-direct {v0, p0}, Lcom/sprint/dsa/DsaSystem$2;-><init>(Lcom/sprint/dsa/DsaSystem;)V

    iput-object v0, p0, Lcom/sprint/dsa/DsaSystem;->mHandler:Landroid/os/Handler;

    .line 118
    return-void
.end method

.method private _doInBackgroundPost()V
    .locals 2

    .prologue
    .line 144
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "background task - start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/sprint/dsa/DsaSystem;->dsaClient:Lcom/sprint/dsa/DsaClient;

    invoke-virtual {p0}, Lcom/sprint/dsa/DsaSystem;->warmInit()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sprint/dsa/DsaClient;->nextURL:Ljava/lang/String;

    .line 146
    return-void
.end method

.method private _doInUI()V
    .locals 2

    .prologue
    .line 151
    sget-object v0, Lcom/sprint/dsa/DsaClient;->dsaStateManager:Lcom/sprint/dsa/StateManager;

    invoke-virtual {v0}, Lcom/sprint/dsa/StateManager;->getBGState()Lcom/sprint/dsa/StateManager$dsaBackgroundState;

    move-result-object v0

    sget-object v1, Lcom/sprint/dsa/StateManager$dsaBackgroundState;->DSA_NETWORK_NOT_AVAILABLE:Lcom/sprint/dsa/StateManager$dsaBackgroundState;

    if-eq v0, v1, :cond_0

    .line 153
    sget-object v0, Lcom/sprint/dsa/DsaClient;->dsaStateManager:Lcom/sprint/dsa/StateManager;

    sget-object v1, Lcom/sprint/dsa/StateManager$dsaBackgroundState;->DSA_IDEAL:Lcom/sprint/dsa/StateManager$dsaBackgroundState;

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/StateManager;->setBGState(Lcom/sprint/dsa/StateManager$dsaBackgroundState;)V

    .line 155
    sget-object v0, Lcom/sprint/dsa/DsaClient;->dsaWebViewClient:Lcom/sprint/dsa/DsaWebViewClient;

    invoke-virtual {v0}, Lcom/sprint/dsa/DsaWebViewClient;->getFirstPage()V

    .line 159
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/sprint/dsa/DsaSystem;)Lcom/sprint/dsa/DsaClient;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sprint/dsa/DsaSystem;->dsaClient:Lcom/sprint/dsa/DsaClient;

    return-object v0
.end method

.method static synthetic access$1(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 684
    invoke-static {p0}, Lcom/sprint/dsa/DsaSystem;->lookupHost(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/sprint/dsa/DsaSystem;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/sprint/dsa/DsaSystem;->_doInUI()V

    return-void
.end method

.method static synthetic access$3(Lcom/sprint/dsa/DsaSystem;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/sprint/dsa/DsaSystem;->_doInBackgroundPost()V

    return-void
.end method

.method static synthetic access$4(Lcom/sprint/dsa/DsaSystem;)V
    .locals 0
    .parameter

    .prologue
    .line 521
    invoke-direct {p0}, Lcom/sprint/dsa/DsaSystem;->writeInBackgroundPost()V

    return-void
.end method

.method static synthetic access$5(Lcom/sprint/dsa/DsaSystem;)V
    .locals 0
    .parameter

    .prologue
    .line 528
    invoke-direct {p0}, Lcom/sprint/dsa/DsaSystem;->writeDone()V

    return-void
.end method

.method private static lookupHost(Ljava/lang/String;)I
    .locals 6
    .parameter "hostname"

    .prologue
    .line 687
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 693
    .local v3, inetAddress:Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 694
    .local v1, addrBytes:[B
    const/4 v4, 0x3

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    .line 695
    const/4 v5, 0x2

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    .line 694
    or-int/2addr v4, v5

    .line 696
    const/4 v5, 0x1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    .line 694
    or-int/2addr v4, v5

    .line 697
    const/4 v5, 0x0

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    .line 694
    or-int v0, v4, v5

    .line 698
    .end local v1           #addrBytes:[B
    .end local v3           #inetAddress:Ljava/net/InetAddress;
    :goto_0
    return v0

    .line 688
    :catch_0
    move-exception v2

    .line 689
    .local v2, e:Ljava/lang/Exception;
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private writeDone()V
    .locals 5

    .prologue
    .line 531
    :try_start_0
    iget-object v1, p0, Lcom/sprint/dsa/DsaSystem;->writeResult:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 532
    iget-object v1, p0, Lcom/sprint/dsa/DsaSystem;->dsaClient:Lcom/sprint/dsa/DsaClient;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "option="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sprint/dsa/DsaSystem;->writeErrMsg:Ljava/lang/String;

    const-string v4, "UTF8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sprint/dsa/DsaClient;->option:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    :goto_0
    sget-object v1, Lcom/sprint/dsa/DsaClient;->dsaJavascript:Lcom/sprint/dsa/DsaJavaScriptInterface;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sprint/dsa/DsaJavaScriptInterface;->processFormData(Ljava/lang/String;)V

    .line 541
    return-void

    .line 534
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sprint/dsa/DsaSystem;->dsaClient:Lcom/sprint/dsa/DsaClient;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "option="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sprint/dsa/DsaSystem;->writeResult:Ljava/lang/String;

    const-string v4, "UTF8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sprint/dsa/DsaClient;->option:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 536
    :catch_0
    move-exception v0

    .line 537
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DSS"

    const-string v2, "URLEncoder Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private writeInBackgroundPost()V
    .locals 2

    .prologue
    .line 523
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "background task - start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    invoke-virtual {p0}, Lcom/sprint/dsa/DsaSystem;->writePayload()V

    .line 525
    return-void
.end method


# virtual methods
.method public done()V
    .locals 1

    .prologue
    .line 468
    new-instance v0, Lcom/sprint/dsa/DsaSystem$5;

    invoke-direct {v0, p0}, Lcom/sprint/dsa/DsaSystem$5;-><init>(Lcom/sprint/dsa/DsaSystem;)V

    .line 491
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 492
    return-void
.end method

.method public getURL()Ljava/lang/String;
    .locals 18

    .prologue
    .line 619
    const/4 v14, 0x0

    .line 620
    .local v14, urlStr:Ljava/lang/String;
    const/4 v9, 0x0

    .line 621
    .local v9, iccID:Ljava/lang/String;
    new-instance v15, Lcom/sprint/internal/SystemProperties;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/DsaSystem;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Lcom/sprint/internal/SystemProperties;-><init>(Landroid/content/Context;)V

    sput-object v15, Lcom/sprint/dsa/DsaSystem;->systemProperties:Lcom/sprint/internal/SystemProperties;

    .line 624
    :try_start_0
    sget-object v15, Lcom/sprint/dsa/DsaSystem;->systemProperties:Lcom/sprint/internal/SystemProperties;

    const/16 v16, 0x192

    invoke-virtual/range {v15 .. v16}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;

    move-result-object v15

    sput-object v15, Lcom/sprint/dsa/DsaSystem;->url:Ljava/lang/String;

    .line 625
    sget-object v15, Lcom/sprint/dsa/DsaSystem;->systemProperties:Lcom/sprint/internal/SystemProperties;

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;

    move-result-object v15

    sput-object v15, Lcom/sprint/dsa/DsaSystem;->nai:Ljava/lang/String;

    .line 626
    sget-object v15, Lcom/sprint/dsa/DsaSystem;->systemProperties:Lcom/sprint/internal/SystemProperties;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;

    move-result-object v15

    sput-object v15, Lcom/sprint/dsa/DsaSystem;->mdn:Ljava/lang/String;

    .line 627
    sget-object v15, Lcom/sprint/dsa/DsaSystem;->systemProperties:Lcom/sprint/internal/SystemProperties;

    const/16 v16, 0x23

    invoke-virtual/range {v15 .. v16}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;

    move-result-object v15

    sput-object v15, Lcom/sprint/dsa/DsaSystem;->msid:Ljava/lang/String;

    .line 628
    sget-object v15, Lcom/sprint/dsa/DsaSystem;->systemProperties:Lcom/sprint/internal/SystemProperties;

    const/16 v16, 0x1e

    invoke-virtual/range {v15 .. v16}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;

    move-result-object v15

    sput-object v15, Lcom/sprint/dsa/DsaSystem;->meid:Ljava/lang/String;

    .line 629
    sget-object v15, Lcom/sprint/dsa/DsaSystem;->systemProperties:Lcom/sprint/internal/SystemProperties;

    const/16 v16, 0x1a4

    invoke-virtual/range {v15 .. v16}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;

    move-result-object v15

    sput-object v15, Lcom/sprint/dsa/DsaSystem;->reseller:Ljava/lang/String;
    :try_end_0
    .catch Lcom/sprint/internal/SystemPropertiesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    :goto_0
    const-string v5, ""

    .line 634
    .local v5, encodedModel:Ljava/lang/String;
    const-string v4, ""

    .line 635
    .local v4, encodedMake:Ljava/lang/String;
    const-string v7, ""

    .line 636
    .local v7, encodedSWVer:Ljava/lang/String;
    const-string v6, ""

    .line 637
    .local v6, encodedReseller:Ljava/lang/String;
    const-string v8, ""

    .line 639
    .local v8, encodedXWapProfile:Ljava/lang/String;
    :try_start_1
    sget-object v15, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v16, "UTF8"

    invoke-static/range {v15 .. v16}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 640
    sget-object v15, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v16, "UTF8"

    invoke-static/range {v15 .. v16}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 641
    sget-object v15, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    const-string v16, "UTF8"

    invoke-static/range {v15 .. v16}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 642
    sget-object v15, Lcom/sprint/dsa/DsaSystem;->reseller:Ljava/lang/String;

    if-eqz v15, :cond_0

    .line 643
    sget-object v15, Lcom/sprint/dsa/DsaSystem;->reseller:Ljava/lang/String;

    const-string v16, "null"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    const-string v15, ""

    sput-object v15, Lcom/sprint/dsa/DsaSystem;->reseller:Ljava/lang/String;

    .line 648
    :cond_0
    :goto_1
    sget-object v15, Lcom/sprint/dsa/DsaSystem;->x_wap_p:Ljava/lang/String;

    if-eqz v15, :cond_1

    .line 649
    sget-object v15, Lcom/sprint/dsa/DsaSystem;->x_wap_p:Ljava/lang/String;

    const-string v16, "UTF8"

    invoke-static/range {v15 .. v16}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 653
    :cond_1
    :goto_2
    const/4 v12, 0x0

    .line 656
    .local v12, pi:Landroid/content/pm/PackageInfo;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sprint/dsa/DsaSystem;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/DsaSystem;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v12

    .line 660
    :goto_3
    const/4 v13, 0x0

    .line 661
    .local v13, tm:Landroid/telephony/TelephonyManager;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sprint/dsa/DsaSystem;->dsaClient:Lcom/sprint/dsa/DsaClient;

    const-string v16, "connectivity"

    invoke-virtual/range {v15 .. v16}, Lcom/sprint/dsa/DsaClient;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 662
    .local v2, connec:Landroid/net/ConnectivityManager;
    const/4 v15, 0x6

    invoke-virtual {v2, v15}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v10

    .line 663
    .local v10, info1:Landroid/net/NetworkInfo;
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v15

    if-eqz v15, :cond_2

    const/16 v15, 0x16

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sprint/dsa/DsaSystem;->network:I

    .line 664
    :cond_2
    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v11

    .line 665
    .local v11, info2:Landroid/net/NetworkInfo;
    if-eqz v11, :cond_3

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v15

    if-eqz v15, :cond_3

    const/16 v15, 0x11

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sprint/dsa/DsaSystem;->network:I

    .line 666
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sprint/dsa/DsaSystem;->dsaClient:Lcom/sprint/dsa/DsaClient;

    const-string v16, "phone"

    invoke-virtual/range {v15 .. v16}, Lcom/sprint/dsa/DsaClient;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #tm:Landroid/telephony/TelephonyManager;
    check-cast v13, Landroid/telephony/TelephonyManager;

    .line 667
    .restart local v13       #tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v9

    .line 669
    iget-object v1, v12, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 671
    .local v1, clientVersion:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "?"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "esn="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lcom/sprint/dsa/DsaSystem;->esn:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "&"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "meid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lcom/sprint/dsa/DsaSystem;->meid:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "&"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 672
    const-string v16, "nai="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lcom/sprint/dsa/DsaSystem;->nai:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "&"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "mdn="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lcom/sprint/dsa/DsaSystem;->mdn:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "&"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "msid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lcom/sprint/dsa/DsaSystem;->msid:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "&"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 673
    const-string v16, "lang="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "&"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "make="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "&"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "model="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "&"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 674
    const-string v16, "clientver="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "&"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "network="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sprint/dsa/DsaSystem;->network:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "&"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 675
    const-string v16, "resellername="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "&"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "swver="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "&"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 676
    const-string v16, "x_wap_p="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 671
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 677
    if-eqz v9, :cond_4

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "&iccid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 678
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sprint/dsa/DsaSystem;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iget-object v15, v15, Lcom/sprint/dsa/DsaClient;->query:Ljava/lang/String;

    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sprint/dsa/DsaSystem;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iget-object v15, v15, Lcom/sprint/dsa/DsaClient;->query:Ljava/lang/String;

    const-string v16, "null"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_5

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "&"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/DsaSystem;->dsaClient:Lcom/sprint/dsa/DsaClient;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sprint/dsa/DsaClient;->query:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 682
    :cond_5
    return-object v14

    .line 630
    .end local v1           #clientVersion:Ljava/lang/String;
    .end local v2           #connec:Landroid/net/ConnectivityManager;
    .end local v4           #encodedMake:Ljava/lang/String;
    .end local v5           #encodedModel:Ljava/lang/String;
    .end local v6           #encodedReseller:Ljava/lang/String;
    .end local v7           #encodedSWVer:Ljava/lang/String;
    .end local v8           #encodedXWapProfile:Ljava/lang/String;
    .end local v10           #info1:Landroid/net/NetworkInfo;
    .end local v11           #info2:Landroid/net/NetworkInfo;
    .end local v12           #pi:Landroid/content/pm/PackageInfo;
    .end local v13           #tm:Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v3

    .line 631
    .local v3, e:Lcom/sprint/internal/SystemPropertiesException;
    const-string v15, "DSS"

    const-string v16, "Sysprop Read Error"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 645
    .end local v3           #e:Lcom/sprint/internal/SystemPropertiesException;
    .restart local v4       #encodedMake:Ljava/lang/String;
    .restart local v5       #encodedModel:Ljava/lang/String;
    .restart local v6       #encodedReseller:Ljava/lang/String;
    .restart local v7       #encodedSWVer:Ljava/lang/String;
    .restart local v8       #encodedXWapProfile:Ljava/lang/String;
    :cond_6
    :try_start_3
    sget-object v15, Lcom/sprint/dsa/DsaSystem;->reseller:Ljava/lang/String;

    const-string v16, "UTF8"

    invoke-static/range {v15 .. v16}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v6

    goto/16 :goto_1

    .line 650
    :catch_1
    move-exception v3

    .line 651
    .local v3, e:Ljava/lang/Exception;
    const-string v15, "DSS"

    const-string v16, "URLEncoding Error"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 657
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v12       #pi:Landroid/content/pm/PackageInfo;
    :catch_2
    move-exception v3

    .line 658
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v15, "DSS"

    const-string v16, "DsaSystem.warmInit(): getPackageManager()"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3
.end method

.method public initSystem(Lcom/sprint/dsa/DsaClient;)V
    .locals 3
    .parameter "me"

    .prologue
    .line 123
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 127
    .local v1, uiThreadCallback:Landroid/os/Handler;
    new-instance v0, Lcom/sprint/dsa/DsaSystem$3;

    invoke-direct {v0, p0}, Lcom/sprint/dsa/DsaSystem$3;-><init>(Lcom/sprint/dsa/DsaSystem;)V

    .line 133
    .local v0, runInUIThread:Ljava/lang/Runnable;
    new-instance v2, Lcom/sprint/dsa/DsaSystem$4;

    invoke-direct {v2, p0, v1, v0}, Lcom/sprint/dsa/DsaSystem$4;-><init>(Lcom/sprint/dsa/DsaSystem;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 139
    invoke-virtual {v2}, Lcom/sprint/dsa/DsaSystem$4;->start()V

    .line 140
    return-void
.end method

.method public isNetworkAvailable()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 559
    const/16 v0, 0x3e8

    .line 560
    .local v0, NETWORK_CHECK_INTERVAL:I
    const/16 v1, 0x7530

    .line 563
    .local v1, NETWORK_MAX_WAIT:I
    const/16 v3, 0x7530

    .local v3, i:I
    :goto_0
    if-gtz v3, :cond_1

    .line 584
    :goto_1
    const/4 v4, 0x0

    :cond_0
    :goto_2
    return v4

    .line 568
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/sprint/dsa/DsaSystem;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iget-boolean v5, v5, Lcom/sprint/dsa/DsaClient;->SLOT0:Z

    if-eqz v5, :cond_3

    .line 569
    sget-object v5, Lcom/sprint/dsa/DsaClient;->IP_PROXY_SPCSDNS:Ljava/lang/String;

    const/16 v6, 0x50

    invoke-static {v5, v6}, Lcom/sprint/dsa/DsaDiag;->canConnectTo(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 577
    :cond_2
    const-wide/16 v5, 0x3e8

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 563
    add-int/lit16 v3, v3, -0x3e8

    goto :goto_0

    .line 573
    :cond_3
    invoke-static {}, Lcom/sprint/dsa/DsaDiag;->canConnectToDSA1()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    .line 579
    :catch_0
    move-exception v2

    .line 580
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "DSS"

    const-string v5, "DsaSystem.isNetworkAvailable(): error"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setPayload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "value"
    .parameter "code"

    .prologue
    const/16 v10, 0x5c

    const/16 v9, 0x2b

    const/4 v8, 0x1

    .line 425
    const/4 v4, 0x0

    .line 426
    .local v4, oldValue:Ljava/lang/String;
    const/4 v3, 0x0

    .line 427
    .local v3, newValue:Ljava/lang/String;
    const/4 v1, 0x0

    .line 428
    .local v1, err:Ljava/lang/String;
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 431
    .local v2, i:I
    :try_start_0
    iget-object v5, p0, Lcom/sprint/dsa/DsaSystem;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iget-boolean v5, v5, Lcom/sprint/dsa/DsaClient;->dsaDebug:Z

    if-eqz v5, :cond_0

    const-string v5, "DSS"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "set: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_0
    const-string v5, "000"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 462
    :cond_1
    :goto_0
    return-void

    .line 435
    :cond_2
    if-eq v9, v2, :cond_3

    if-eq v10, v2, :cond_3

    sget-object v5, Lcom/sprint/dsa/DsaSystem;->systemProperties:Lcom/sprint/internal/SystemProperties;

    invoke-virtual {v5, v2}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 436
    :cond_3
    iget-object v5, p0, Lcom/sprint/dsa/DsaSystem;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iget-boolean v5, v5, Lcom/sprint/dsa/DsaClient;->dsaDebug:Z

    if-eqz v5, :cond_4

    const-string v5, "DSS"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Value = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_4
    sget-object v5, Lcom/sprint/dsa/DsaSystem;->systemProperties:Lcom/sprint/internal/SystemProperties;

    invoke-virtual {v5, v2, p1}, Lcom/sprint/internal/SystemProperties;->setString(ILjava/lang/String;)V

    .line 438
    if-eq v9, v2, :cond_1

    if-eq v10, v2, :cond_1

    const/16 v5, 0x1cc

    if-eq v5, v2, :cond_1

    .line 439
    sget-object v5, Lcom/sprint/dsa/DsaSystem;->systemProperties:Lcom/sprint/internal/SystemProperties;

    invoke-virtual {v5, v2}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 440
    iget-object v5, p0, Lcom/sprint/dsa/DsaSystem;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iget-boolean v5, v5, Lcom/sprint/dsa/DsaClient;->dsaDebug:Z

    if-eqz v5, :cond_5

    .line 441
    const-string v5, "DSS"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "value:Old|Set|New = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 442
    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 441
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_5
    if-eq v8, v2, :cond_6

    const/16 v5, 0x23

    if-ne v5, v2, :cond_7

    .line 447
    :cond_6
    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 448
    iget-object v5, p0, Lcom/sprint/dsa/DsaSystem;->dsaClient:Lcom/sprint/dsa/DsaClient;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/sprint/dsa/DsaClient;->needsPowerRecycle:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    :cond_7
    :goto_1
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    if-nez v1, :cond_9

    .line 455
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "setValue("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") not set "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 458
    :cond_8
    :goto_2
    if-eqz v1, :cond_1

    .line 459
    iget-object v5, p0, Lcom/sprint/dsa/DsaSystem;->writeErrMsg:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ","

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sprint/dsa/DsaSystem;->writeErrMsg:Ljava/lang/String;

    .line 460
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sprint/dsa/DsaSystem;->writeResult:Ljava/lang/String;

    goto/16 :goto_0

    .line 451
    :catch_0
    move-exception v0

    .line 452
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "DSS"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "setPayload:i -"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 456
    .end local v0           #e:Ljava/lang/Exception;
    :cond_9
    iget-object v5, p0, Lcom/sprint/dsa/DsaSystem;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iget-boolean v5, v5, Lcom/sprint/dsa/DsaClient;->dsaDebug:Z

    if-eqz v5, :cond_8

    .line 457
    const-string v5, "DSS"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Write Succeeded:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public sysPropWrite(Lcom/sprint/dsa/DsaClient;)V
    .locals 2
    .parameter "dsaClient"

    .prologue
    .line 500
    const v1, 0x7f04000a

    invoke-virtual {p1, v1}, Lcom/sprint/dsa/DsaClient;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sprint/dsa/DsaClient;->setBusyText(Ljava/lang/String;)V

    .line 502
    new-instance v0, Lcom/sprint/dsa/DsaSystem$6;

    invoke-direct {v0, p0}, Lcom/sprint/dsa/DsaSystem$6;-><init>(Lcom/sprint/dsa/DsaSystem;)V

    .line 517
    .local v0, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 518
    return-void
.end method

.method public warmInit()Ljava/lang/String;
    .locals 25

    .prologue
    .line 206
    const/4 v11, 0x0

    .line 208
    .local v11, iccID:Ljava/lang/String;
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sprint/dsa/DsaSystem;->factoryDefault:Z

    .line 209
    const/4 v2, 0x0

    .line 211
    .local v2, canConnect:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/DsaSystem;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sprint/dsa/DsaDiag;->isFactoryDefault(Landroid/content/Context;)Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sprint/dsa/DsaSystem;->factoryDefault:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_0
    sget-boolean v21, Lcom/sprint/dsa/Util;->EMULATOR:Z

    if-eqz v21, :cond_0

    sget-object v21, Lcom/sprint/dsa/Util;->TEST_URL:Ljava/lang/String;

    .line 417
    :goto_1
    return-object v21

    .line 212
    :catch_0
    move-exception v5

    .line 213
    .local v5, e:Ljava/lang/Exception;
    const-string v21, "DSS"

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 219
    .end local v5           #e:Ljava/lang/Exception;
    :cond_0
    new-instance v21, Lcom/sprint/internal/SystemProperties;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/DsaSystem;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Lcom/sprint/internal/SystemProperties;-><init>(Landroid/content/Context;)V

    sput-object v21, Lcom/sprint/dsa/DsaSystem;->systemProperties:Lcom/sprint/internal/SystemProperties;

    .line 221
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sprint/dsa/DsaSystem;->mapPayload:Ljava/util/HashMap;

    .line 231
    :try_start_1
    sget-object v21, Lcom/sprint/dsa/DsaSystem;->systemProperties:Lcom/sprint/internal/SystemProperties;

    const/16 v22, 0x192

    invoke-virtual/range {v21 .. v22}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;

    move-result-object v21

    sput-object v21, Lcom/sprint/dsa/DsaSystem;->url:Ljava/lang/String;

    .line 232
    sget-object v21, Lcom/sprint/dsa/DsaSystem;->systemProperties:Lcom/sprint/internal/SystemProperties;

    const/16 v22, 0x2

    invoke-virtual/range {v21 .. v22}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;

    move-result-object v21

    sput-object v21, Lcom/sprint/dsa/DsaSystem;->nai:Ljava/lang/String;

    .line 233
    sget-object v21, Lcom/sprint/dsa/DsaSystem;->systemProperties:Lcom/sprint/internal/SystemProperties;

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;

    move-result-object v21

    sput-object v21, Lcom/sprint/dsa/DsaSystem;->mdn:Ljava/lang/String;

    .line 234
    sget-object v21, Lcom/sprint/dsa/DsaSystem;->systemProperties:Lcom/sprint/internal/SystemProperties;

    const/16 v22, 0x23

    invoke-virtual/range {v21 .. v22}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;

    move-result-object v21

    sput-object v21, Lcom/sprint/dsa/DsaSystem;->msid:Ljava/lang/String;

    .line 235
    sget-object v21, Lcom/sprint/dsa/DsaSystem;->systemProperties:Lcom/sprint/internal/SystemProperties;

    const/16 v22, 0x1e

    invoke-virtual/range {v21 .. v22}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;

    move-result-object v21

    sput-object v21, Lcom/sprint/dsa/DsaSystem;->meid:Ljava/lang/String;
    :try_end_1
    .catch Lcom/sprint/internal/SystemPropertiesException; {:try_start_1 .. :try_end_1} :catch_1

    .line 243
    :goto_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/DsaSystem;->dsaClient:Lcom/sprint/dsa/DsaClient;

    move-object/from16 v21, v0

    const-string v22, "connectivity"

    invoke-virtual/range {v21 .. v22}, Lcom/sprint/dsa/DsaClient;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 244
    .local v4, connec:Landroid/net/ConnectivityManager;
    const/16 v21, 0x6

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v12

    .line 245
    .local v12, info1:Landroid/net/NetworkInfo;
    if-eqz v12, :cond_1

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v21

    if-eqz v21, :cond_1

    const/16 v21, 0x16

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sprint/dsa/DsaSystem;->network:I

    .line 246
    :cond_1
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v13

    .line 247
    .local v13, info2:Landroid/net/NetworkInfo;
    if-eqz v13, :cond_2

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v21

    if-eqz v21, :cond_2

    const/16 v21, 0x11

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sprint/dsa/DsaSystem;->network:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 252
    .end local v4           #connec:Landroid/net/ConnectivityManager;
    .end local v12           #info1:Landroid/net/NetworkInfo;
    .end local v13           #info2:Landroid/net/NetworkInfo;
    :cond_2
    :goto_3
    const/16 v20, 0x0

    .line 253
    .local v20, tm:Landroid/telephony/TelephonyManager;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sprint/dsa/DsaSystem;->network:I

    move/from16 v21, v0

    const/16 v22, 0x11

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/DsaSystem;->dsaClient:Lcom/sprint/dsa/DsaClient;

    move-object/from16 v21, v0

    const-string v22, "phone"

    invoke-virtual/range {v21 .. v22}, Lcom/sprint/dsa/DsaClient;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    .end local v20           #tm:Landroid/telephony/TelephonyManager;
    check-cast v20, Landroid/telephony/TelephonyManager;

    .line 255
    .restart local v20       #tm:Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v20 .. v20}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sprint/dsa/DsaSystem;->network:I

    .line 263
    :cond_3
    const/16 v17, -0x1

    .line 265
    .local v17, methodParams:I
    const/16 v16, 0x0

    :try_start_3
    check-cast v16, [Ljava/lang/reflect/Method;

    .line 266
    .local v16, methodArray:[Ljava/lang/reflect/Method;
    const-class v21, Lcom/sprint/internal/ConnectionManager;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v16

    .line 267
    if-eqz v16, :cond_4

    .line 268
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v22, v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    const/16 v21, 0x0

    :goto_4
    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_c

    .line 277
    .end local v16           #methodArray:[Ljava/lang/reflect/Method;
    :cond_4
    :goto_5
    invoke-static {}, Lcom/sprint/dsa/DsaDiag;->canConnectToDSA1()Z

    move-result v21

    if-eqz v21, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sprint/dsa/DsaSystem;->network:I

    move/from16 v21, v0

    const/16 v22, 0x11

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_e

    .line 280
    const/4 v2, 0x1

    .line 281
    const-string v21, "https://deviceselfservice.sprint.com/dsa/"

    sput-object v21, Lcom/sprint/dsa/DsaSystem;->url:Ljava/lang/String;

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/DsaSystem;->dsaClient:Lcom/sprint/dsa/DsaClient;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/sprint/dsa/DsaClient;->SLOT0:Z

    .line 337
    :cond_5
    :goto_6
    const/16 v18, -0x5

    .line 345
    .local v18, networkType:I
    :try_start_4
    const-string v21, "null"

    sget-object v22, Lcom/sprint/dsa/DsaSystem;->nai:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    const-string v21, ""

    sput-object v21, Lcom/sprint/dsa/DsaSystem;->nai:Ljava/lang/String;

    .line 347
    :cond_6
    sget-object v21, Lcom/sprint/dsa/DsaSystem;->systemProperties:Lcom/sprint/internal/SystemProperties;

    const/16 v22, 0x3

    invoke-virtual/range {v21 .. v22}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;

    move-result-object v21

    sput-object v21, Lcom/sprint/dsa/DsaSystem;->esn:Ljava/lang/String;

    .line 348
    sget-object v21, Lcom/sprint/dsa/DsaSystem;->systemProperties:Lcom/sprint/internal/SystemProperties;

    const/16 v22, 0xe

    invoke-virtual/range {v21 .. v22}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;

    move-result-object v21

    sput-object v21, Lcom/sprint/dsa/DsaSystem;->x_wap_p:Ljava/lang/String;

    .line 350
    sget-object v21, Lcom/sprint/dsa/DsaSystem;->systemProperties:Lcom/sprint/internal/SystemProperties;

    const/16 v22, 0x1a4

    invoke-virtual/range {v21 .. v22}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;

    move-result-object v21

    sput-object v21, Lcom/sprint/dsa/DsaSystem;->reseller:Ljava/lang/String;

    .line 351
    const-string v21, "null"

    sget-object v22, Lcom/sprint/dsa/DsaSystem;->reseller:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    const-string v21, ""

    sput-object v21, Lcom/sprint/dsa/DsaSystem;->reseller:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    .line 356
    :cond_7
    :goto_7
    :try_start_5
    invoke-virtual/range {v20 .. v20}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v18

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/DsaSystem;->dsaClient:Lcom/sprint/dsa/DsaClient;

    move-object/from16 v21, v0

    const-string v22, "connectivity"

    invoke-virtual/range {v21 .. v22}, Lcom/sprint/dsa/DsaClient;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 358
    .restart local v4       #connec:Landroid/net/ConnectivityManager;
    const/16 v21, 0x6

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v12

    .line 359
    .restart local v12       #info1:Landroid/net/NetworkInfo;
    if-eqz v12, :cond_8

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v21

    if-eqz v21, :cond_8

    const/16 v18, 0x16

    .line 360
    :cond_8
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v13

    .line 361
    .restart local v13       #info2:Landroid/net/NetworkInfo;
    if-eqz v13, :cond_9

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    move-result v21

    if-eqz v21, :cond_9

    const/16 v18, 0x11

    .line 372
    .end local v4           #connec:Landroid/net/ConnectivityManager;
    .end local v12           #info1:Landroid/net/NetworkInfo;
    .end local v13           #info2:Landroid/net/NetworkInfo;
    :cond_9
    :goto_8
    const-string v7, ""

    .line 373
    .local v7, encodedModel:Ljava/lang/String;
    const-string v6, ""

    .line 374
    .local v6, encodedMake:Ljava/lang/String;
    const-string v9, ""

    .line 375
    .local v9, encodedSWVer:Ljava/lang/String;
    const-string v8, ""

    .line 376
    .local v8, encodedReseller:Ljava/lang/String;
    const-string v10, ""

    .line 378
    .local v10, encodedXWapProfile:Ljava/lang/String;
    :try_start_6
    sget-object v21, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v22, "UTF8"

    invoke-static/range {v21 .. v22}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 379
    sget-object v21, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v22, "UTF8"

    invoke-static/range {v21 .. v22}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 380
    sget-object v21, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    const-string v22, "UTF8"

    invoke-static/range {v21 .. v22}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 381
    sget-object v21, Lcom/sprint/dsa/DsaSystem;->reseller:Ljava/lang/String;

    if-eqz v21, :cond_a

    .line 382
    sget-object v21, Lcom/sprint/dsa/DsaSystem;->reseller:Ljava/lang/String;

    const-string v22, "null"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_15

    const-string v21, ""

    sput-object v21, Lcom/sprint/dsa/DsaSystem;->reseller:Ljava/lang/String;

    .line 387
    :cond_a
    :goto_9
    sget-object v21, Lcom/sprint/dsa/DsaSystem;->x_wap_p:Ljava/lang/String;

    if-eqz v21, :cond_b

    .line 388
    sget-object v21, Lcom/sprint/dsa/DsaSystem;->x_wap_p:Ljava/lang/String;

    const-string v22, "UTF8"

    invoke-static/range {v21 .. v22}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    move-result-object v10

    .line 392
    :cond_b
    :goto_a
    const/16 v19, 0x0

    .line 394
    .local v19, pi:Landroid/content/pm/PackageInfo;
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/DsaSystem;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/DsaSystem;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_a

    move-result-object v19

    .line 398
    :goto_b
    move-object/from16 v0, v19

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 400
    .local v3, clientVersion:Ljava/lang/String;
    if-nez v2, :cond_16

    .line 401
    invoke-virtual/range {p0 .. p0}, Lcom/sprint/dsa/DsaSystem;->isNetworkAvailable()Z

    move-result v21

    if-nez v21, :cond_16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sprint/dsa/DsaSystem;->factoryDefault:Z

    move/from16 v21, v0

    if-eqz v21, :cond_16

    .line 403
    sget-object v21, Lcom/sprint/dsa/DsaSystem;->connectionManager:Lcom/sprint/internal/ConnectionManager;

    invoke-virtual/range {v21 .. v21}, Lcom/sprint/internal/ConnectionManager;->release()V

    .line 405
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 236
    .end local v3           #clientVersion:Ljava/lang/String;
    .end local v6           #encodedMake:Ljava/lang/String;
    .end local v7           #encodedModel:Ljava/lang/String;
    .end local v8           #encodedReseller:Ljava/lang/String;
    .end local v9           #encodedSWVer:Ljava/lang/String;
    .end local v10           #encodedXWapProfile:Ljava/lang/String;
    .end local v17           #methodParams:I
    .end local v18           #networkType:I
    .end local v19           #pi:Landroid/content/pm/PackageInfo;
    .end local v20           #tm:Landroid/telephony/TelephonyManager;
    :catch_1
    move-exception v5

    .line 237
    .local v5, e:Lcom/sprint/internal/SystemPropertiesException;
    invoke-virtual {v5}, Lcom/sprint/internal/SystemPropertiesException;->printStackTrace()V

    goto/16 :goto_2

    .line 249
    .end local v5           #e:Lcom/sprint/internal/SystemPropertiesException;
    :catch_2
    move-exception v5

    .line 250
    .local v5, e:Ljava/lang/Exception;
    const-string v21, "DSS"

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 268
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v16       #methodArray:[Ljava/lang/reflect/Method;
    .restart local v17       #methodParams:I
    .restart local v20       #tm:Landroid/telephony/TelephonyManager;
    :cond_c
    :try_start_8
    aget-object v15, v16, v21

    .line 269
    .local v15, m:Ljava/lang/reflect/Method;
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v23

    const-string v24, "requestAdminConnection"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_d

    .line 270
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v23

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v17, v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 268
    :cond_d
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_4

    .line 273
    .end local v15           #m:Ljava/lang/reflect/Method;
    .end local v16           #methodArray:[Ljava/lang/reflect/Method;
    :catch_3
    move-exception v5

    .line 274
    .restart local v5       #e:Ljava/lang/Exception;
    const-string v21, "DSS"

    const-string v22, "Method not found requestAdminConnection(Handler, Integer"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 285
    .end local v5           #e:Ljava/lang/Exception;
    :cond_e
    if-lez v17, :cond_11

    .line 287
    :try_start_9
    invoke-virtual/range {v20 .. v20}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v11

    .line 289
    sget-object v21, Lcom/sprint/dsa/DsaSystem;->mdn:Ljava/lang/String;

    const-string v22, "000"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sprint/dsa/DsaSystem;->network:I

    move/from16 v21, v0

    const/16 v22, 0xd

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sprint/dsa/DsaSystem;->network:I

    move/from16 v21, v0

    const/16 v22, 0xe

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_f

    .line 291
    sget-object v21, Lcom/sprint/dsa/DsaClient;->IP_PROXY_SPCSDNS:Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v14

    .line 292
    .local v14, ip:Ljava/net/InetAddress;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/DsaSystem;->dsaClient:Lcom/sprint/dsa/DsaClient;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/sprint/dsa/DsaClient;->SLOT0:Z

    .line 299
    :goto_c
    const/16 v21, 0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_10

    .line 300
    sget-object v21, Lcom/sprint/dsa/DsaSystem;->connectionManager:Lcom/sprint/internal/ConnectionManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/DsaSystem;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/sprint/internal/ConnectionManager;->requestAdminConnection(Landroid/os/Handler;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_6

    .line 303
    .end local v14           #ip:Ljava/net/InetAddress;
    :catch_4
    move-exception v5

    .line 304
    .restart local v5       #e:Ljava/lang/Exception;
    const-string v21, "DSS"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "Failed requesting ADminConnection:"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 294
    .end local v5           #e:Ljava/lang/Exception;
    :cond_f
    :try_start_a
    const-string v21, "144.230.164.56"

    invoke-static/range {v21 .. v21}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v14

    .line 295
    .restart local v14       #ip:Ljava/net/InetAddress;
    const-string v21, "https://deviceselfservice.sprint.com/dsa/"

    sput-object v21, Lcom/sprint/dsa/DsaSystem;->url:Ljava/lang/String;

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/DsaSystem;->dsaClient:Lcom/sprint/dsa/DsaClient;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/sprint/dsa/DsaClient;->SLOT0:Z

    goto :goto_c

    .line 301
    :cond_10
    const/16 v21, 0x2

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 302
    sget-object v21, Lcom/sprint/dsa/DsaSystem;->connectionManager:Lcom/sprint/internal/ConnectionManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/DsaSystem;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v14}, Lcom/sprint/internal/ConnectionManager;->requestAdminConnection(Landroid/os/Handler;Ljava/net/InetAddress;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_6

    .line 308
    .end local v14           #ip:Ljava/net/InetAddress;
    :cond_11
    invoke-static {}, Lcom/sprint/dsa/DsaDiag;->canConnectToDSA1()Z

    move-result v21

    if-eqz v21, :cond_12

    .line 311
    const/4 v2, 0x1

    .line 312
    const-string v21, "https://deviceselfservice.sprint.com/dsa/"

    sput-object v21, Lcom/sprint/dsa/DsaSystem;->url:Ljava/lang/String;

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/DsaSystem;->dsaClient:Lcom/sprint/dsa/DsaClient;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/sprint/dsa/DsaClient;->SLOT0:Z

    goto/16 :goto_6

    .line 315
    :cond_12
    sget-object v21, Lcom/sprint/dsa/DsaSystem;->nai:Ljava/lang/String;

    if-eqz v21, :cond_13

    sget-object v21, Lcom/sprint/dsa/DsaSystem;->nai:Ljava/lang/String;

    const-string v22, ""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_14

    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sprint/dsa/DsaSystem;->factoryDefault:Z

    move/from16 v21, v0

    if-eqz v21, :cond_14

    if-nez v2, :cond_14

    .line 317
    :try_start_b
    const-string v21, "DSS"

    const-string v22, "DsaSystem.warmInit(): requestDataProfile(100)"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    sget-object v21, Lcom/sprint/dsa/DsaSystem;->connectionManager:Lcom/sprint/internal/ConnectionManager;

    const/16 v22, 0x64

    invoke-virtual/range {v21 .. v22}, Lcom/sprint/internal/ConnectionManager;->requestDataProfile(I)V

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/DsaSystem;->dsaClient:Lcom/sprint/dsa/DsaClient;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/sprint/dsa/DsaClient;->SLOT0:Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_6

    .line 320
    :catch_5
    move-exception v5

    .line 321
    .restart local v5       #e:Ljava/lang/Exception;
    const-string v21, "DSS"

    const-string v22, "warminit:requestDataProfile"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 322
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 324
    .end local v5           #e:Ljava/lang/Exception;
    :cond_14
    sget-object v21, Lcom/sprint/dsa/DsaSystem;->nai:Ljava/lang/String;

    sget-object v22, Lcom/sprint/dsa/DsaSystem;->meid:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sprint/dsa/DsaSystem;->factoryDefault:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    if-nez v2, :cond_5

    .line 326
    :try_start_c
    sget-object v21, Lcom/sprint/dsa/DsaSystem;->connectionManager:Lcom/sprint/internal/ConnectionManager;

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/sprint/internal/ConnectionManager;->requestDataProfile(I)V

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/DsaSystem;->dsaClient:Lcom/sprint/dsa/DsaClient;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/sprint/dsa/DsaClient;->SLOT0:Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    .line 333
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 328
    :catch_6
    move-exception v5

    .line 329
    .restart local v5       #e:Ljava/lang/Exception;
    const-string v21, "DSS"

    const-string v22, "warminit:requestDataProfile(1)"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 330
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 352
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v18       #networkType:I
    :catch_7
    move-exception v5

    .line 353
    .restart local v5       #e:Ljava/lang/Exception;
    const-string v21, "DSS"

    const-string v22, "DsaSystem.warmInit(): getString()"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 362
    .end local v5           #e:Ljava/lang/Exception;
    :catch_8
    move-exception v5

    .line 363
    .restart local v5       #e:Ljava/lang/Exception;
    const-string v21, "DSS"

    const-string v22, "Failed to get network type"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 384
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v6       #encodedMake:Ljava/lang/String;
    .restart local v7       #encodedModel:Ljava/lang/String;
    .restart local v8       #encodedReseller:Ljava/lang/String;
    .restart local v9       #encodedSWVer:Ljava/lang/String;
    .restart local v10       #encodedXWapProfile:Ljava/lang/String;
    :cond_15
    :try_start_d
    sget-object v21, Lcom/sprint/dsa/DsaSystem;->reseller:Ljava/lang/String;

    const-string v22, "UTF8"

    invoke-static/range {v21 .. v22}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    move-result-object v8

    goto/16 :goto_9

    .line 389
    :catch_9
    move-exception v5

    .line 390
    .restart local v5       #e:Ljava/lang/Exception;
    const-string v21, "DSS"

    const-string v22, "URLEncoding Error"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 395
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v19       #pi:Landroid/content/pm/PackageInfo;
    :catch_a
    move-exception v5

    .line 396
    .local v5, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v21, "DSS"

    const-string v22, "getpacage Error"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 407
    .end local v5           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3       #clientVersion:Ljava/lang/String;
    :cond_16
    new-instance v21, Ljava/lang/StringBuilder;

    sget-object v22, Lcom/sprint/dsa/DsaSystem;->url:Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "?"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "esn="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/sprint/dsa/DsaSystem;->esn:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "&"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "meid="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/sprint/dsa/DsaSystem;->meid:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "&"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 408
    const-string v22, "nai="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "&"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "mdn="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/sprint/dsa/DsaSystem;->mdn:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "&"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "msid="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/sprint/dsa/DsaSystem;->msid:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "&"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 409
    const-string v22, "lang="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "&"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "make="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "&"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "model="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "&"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 410
    const-string v22, "clientver="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "&"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "network="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "&"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 411
    const-string v22, "resellername="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "&"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "swver="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "&"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 412
    const-string v22, "x_wap_p="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 407
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    sput-object v21, Lcom/sprint/dsa/DsaSystem;->url:Ljava/lang/String;

    .line 413
    if-eqz v11, :cond_17

    new-instance v21, Ljava/lang/StringBuilder;

    sget-object v22, Lcom/sprint/dsa/DsaSystem;->url:Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "&iccid="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    sput-object v21, Lcom/sprint/dsa/DsaSystem;->url:Ljava/lang/String;

    .line 414
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/DsaSystem;->dsaClient:Lcom/sprint/dsa/DsaClient;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sprint/dsa/DsaClient;->query:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/DsaSystem;->dsaClient:Lcom/sprint/dsa/DsaClient;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sprint/dsa/DsaClient;->query:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "null"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_18

    new-instance v21, Ljava/lang/StringBuilder;

    sget-object v22, Lcom/sprint/dsa/DsaSystem;->url:Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "&"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/DsaSystem;->dsaClient:Lcom/sprint/dsa/DsaClient;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sprint/dsa/DsaClient;->query:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    sput-object v21, Lcom/sprint/dsa/DsaSystem;->url:Ljava/lang/String;

    .line 417
    :cond_18
    sget-object v21, Lcom/sprint/dsa/DsaSystem;->url:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public writePayload()V
    .locals 6

    .prologue
    .line 546
    iget-object v3, p0, Lcom/sprint/dsa/DsaSystem;->mapPayload:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 555
    return-void

    .line 546
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 547
    .local v1, key:Ljava/lang/String;
    iget-object v4, p0, Lcom/sprint/dsa/DsaSystem;->mapPayload:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 550
    .local v2, value:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v2, v1}, Lcom/sprint/dsa/DsaSystem;->setPayload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 551
    :catch_0
    move-exception v0

    .line 552
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "DSS"

    const-string v5, "writePayload"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
