.class public Lcom/htc/omadm/test/TestAPIActivity;
.super Landroid/app/ListActivity;
.source "TestAPIActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;,
        Lcom/htc/omadm/test/TestAPIActivity$ConnVerifyHandler;
    }
.end annotation


# static fields
.field public static final INIT_SYSLIB:I = 0x64

.field public static final VERIFY_ADD_DMACTION:I = 0x26

.field public static final VERIFY_BASEBAND_REBOOT:I = 0x24

.field public static final VERIFY_BUILD_FLAG:I = 0x28

.field public static final VERIFY_CIDC:I = 0x1a

.field public static final VERIFY_CIPRL:I = 0x1b

.field public static final VERIFY_CI_CONNECTION:I = 0x1

.field public static final VERIFY_CLEAR_USERDATA:I = 0xd

.field public static final VERIFY_DISABLE_FORCE_LTE:I = 0x17

.field public static final VERIFY_DSA_CONFIG:I = 0x12

.field public static final VERIFY_EHRPD_STATUS:I = 0x1d

.field public static final VERIFY_ENABLE_FORCE_LTE:I = 0x16

.field public static final VERIFY_FACTORY_RESET:I = 0x13

.field public static final VERIFY_FUMO:I = 0x1c

.field public static final VERIFY_FUMO_INSTALL:I = 0x25

.field public static final VERIFY_GET_1X:I = 0x22

.field public static final VERIFY_GET_APN:I = 0x15

.field public static final VERIFY_GET_BC:I = 0x1e

.field public static final VERIFY_GET_DMACTION:I = 0x27

.field public static final VERIFY_GET_FORCE_LTE:I = 0x18

.field public static final VERIFY_GET_SO:I = 0x20

.field public static final VERIFY_HFA:I = 0x19

.field public static final VERIFY_JNI_ADD_WIMAX_VALUE:I = 0x9

.field public static final VERIFY_JNI_DEL_WIMAX_VALUE:I = 0xa

.field public static final VERIFY_JNI_GET_MIP1_VALUE:I = 0x3

.field public static final VERIFY_JNI_GET_WIMAX_VALUE:I = 0x7

.field public static final VERIFY_JNI_SET_MIP1_VALUE:I = 0x4

.field public static final VERIFY_JNI_SET_PRL_1_VALUE:I = 0x5

.field public static final VERIFY_JNI_SET_PRL_2_VALUE:I = 0x6

.field public static final VERIFY_JNI_SET_WIMAX_VALUE:I = 0x8

.field public static final VERIFY_LAWMO_LOCK:I = 0xf

.field public static final VERIFY_MEDIA_STREAM:I = 0x2a

.field public static final VERIFY_NIA_PARSSING:I = 0x11

.field public static final VERIFY_NI_CONNECTION:I = 0x2

.field public static final VERIFY_REBOOT:I = 0x10

.field public static final VERIFY_REFURIBISH:I = 0xc

.field public static final VERIFY_RTN:I = 0xe

.field public static final VERIFY_SET_1X_ENABLE:I = 0x23

.field public static final VERIFY_SET_APN:I = 0x14

.field public static final VERIFY_SET_BC_ENABLE:I = 0x1f

.field public static final VERIFY_SET_SO_ENABLE:I = 0x21

.field public static final VERIFY_SPA:I = 0x29

.field public static final VERIFY_SYSTEM_API:I = 0x0

.field public static final VERIFY_WAP_PUSH:I = 0xb


# instance fields
.field private final DBG:Z

.field private LOG_TAG:Ljava/lang/String;

.field mConfigHandler:Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;

.field public mContext:Landroid/content/Context;

.field mH:Lcom/htc/omadm/test/TestAPIActivity$ConnVerifyHandler;

.field private volatile mMOLooper:Landroid/os/Looper;

.field mThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 52
    const-string v0, "TestMainActivity"

    iput-object v0, p0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/omadm/test/TestAPIActivity;->DBG:Z

    .line 56
    new-instance v0, Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/omadm/test/TestAPIActivity;->mThread:Landroid/os/HandlerThread;

    .line 671
    return-void
.end method

.method static synthetic access$000(Lcom/htc/omadm/test/TestAPIActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private verifyAddConValueWiMAX()V
    .locals 2

    .prologue
    .line 577
    iget-object v0, p0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "verifyAddConValueWiMAX()"

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    sget-boolean v0, Lcom/htc/omadm/prop/PropertyFeature;->ENABLE_WimaxDynamic:Z

    if-eqz v0, :cond_0

    .line 579
    invoke-static {}, Lcom/htc/omadm/test/WiMAXTester;->verifyWiMAXAdd()V

    .line 580
    :cond_0
    return-void
.end method

.method private verifyCIConnAPI()V
    .locals 2

    .prologue
    .line 466
    iget-object v0, p0, Lcom/htc/omadm/test/TestAPIActivity;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/omadm/test/TestAPIActivity;->mMOLooper:Landroid/os/Looper;

    .line 468
    iget-object v0, p0, Lcom/htc/omadm/test/TestAPIActivity;->mH:Lcom/htc/omadm/test/TestAPIActivity$ConnVerifyHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/omadm/test/TestAPIActivity$ConnVerifyHandler;->sendEmptyMessage(I)Z

    .line 469
    return-void
.end method

.method private verifyDelConValueWiMAX()V
    .locals 2

    .prologue
    .line 583
    iget-object v0, p0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "verifyDelConValueWiMAX()"

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    sget-boolean v0, Lcom/htc/omadm/prop/PropertyFeature;->ENABLE_WimaxDynamic:Z

    if-eqz v0, :cond_0

    .line 585
    invoke-static {}, Lcom/htc/omadm/test/WiMAXTester;->verifyWiMAXDel()V

    .line 586
    :cond_0
    return-void
.end method

.method private verifyGetConValueWiMAX()V
    .locals 3

    .prologue
    .line 558
    iget-object v1, p0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    const-string v2, "verifyGetConValueWiMAX()"

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    invoke-static {}, Lcom/htc/omadm/libdo/config/ConfigManager;->getSingleton()Lcom/htc/omadm/libdo/config/ConfigManager;

    move-result-object v0

    .line 560
    .local v0, mCM:Lcom/htc/omadm/libdo/config/ConfigManager;
    sget-boolean v1, Lcom/htc/omadm/prop/PropertyFeature;->ENABLE_WimaxDynamic:Z

    if-eqz v1, :cond_0

    .line 561
    invoke-static {}, Lcom/htc/omadm/test/WiMAXTester;->verifyWiMAXGet()V

    .line 564
    :goto_0
    return-void

    .line 563
    :cond_0
    invoke-static {v0}, Lcom/htc/omadm/test/WiMAXTester;->verifyJNIWiMAXGet(Lcom/htc/omadm/libdo/config/ConfigManager;)V

    goto :goto_0
.end method

.method private verifyNIConnAPI()V
    .locals 0

    .prologue
    .line 473
    return-void
.end method

.method private verifySetConValueWiMAX()V
    .locals 3

    .prologue
    .line 567
    iget-object v1, p0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    const-string v2, "verifySetConValueWiMAX()"

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    invoke-static {}, Lcom/htc/omadm/libdo/config/ConfigManager;->getSingleton()Lcom/htc/omadm/libdo/config/ConfigManager;

    move-result-object v0

    .line 569
    .local v0, mCM:Lcom/htc/omadm/libdo/config/ConfigManager;
    sget-boolean v1, Lcom/htc/omadm/prop/PropertyFeature;->ENABLE_WimaxDynamic:Z

    if-eqz v1, :cond_0

    .line 570
    invoke-static {}, Lcom/htc/omadm/test/WiMAXTester;->verifyWiMAXSet()V

    .line 574
    :goto_0
    return-void

    .line 572
    :cond_0
    invoke-static {v0}, Lcom/htc/omadm/test/WiMAXTester;->verifyJNIWiMAXSet(Lcom/htc/omadm/libdo/config/ConfigManager;)V

    goto :goto_0
.end method

.method private verifyWAPParsing(Ljava/lang/String;)V
    .locals 14
    .parameter "hexString"

    .prologue
    .line 591
    const/16 v4, 0xc

    .line 592
    .local v4, WSP_HEADER_HEX_NUM:I
    const/16 v0, 0x20

    .line 593
    .local v0, WAP_DIGEST_HEX_NUM:I
    const/16 v1, 0xa

    .line 594
    .local v1, WAP_INFO_HEX_NUM:I
    const/4 v2, 0x4

    .line 595
    .local v2, WAP_SESSION_ID_HEX_NUM:I
    const/16 v3, 0x48

    .line 597
    .local v3, WSP_FULLY_SIZE:I
    invoke-static {p1, v3}, Lcom/htc/omadm/util/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 598
    .local v10, uiModeHexStr:Ljava/lang/String;
    iget-object v11, p0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "uiModeHexStr:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    const/16 v11, 0x2e

    const/16 v12, 0x30

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 603
    iget-object v11, p0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "uiModeHexStr:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x10

    invoke-static {v11, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    .line 607
    .local v6, dig:I
    iget-object v11, p0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "dig:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    invoke-static {v6}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x4

    invoke-static {v11, v12}, Lcom/htc/omadm/util/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 610
    .local v7, pendZero:Ljava/lang/String;
    iget-object v11, p0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "pendZero:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    const/4 v11, 0x2

    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 614
    .local v5, binaryUiMode:Ljava/lang/String;
    iget-object v11, p0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ui mode:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    const/16 v11, 0x36

    const/16 v12, 0x3a

    invoke-virtual {p1, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 621
    .local v9, sidHexStr:Ljava/lang/String;
    const/16 v11, 0x10

    invoke-static {v9, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    .line 622
    .local v8, sid:I
    iget-object v11, p0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "session id:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 107
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    iget-object v1, p0, Lcom/htc/omadm/test/TestAPIActivity;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 109
    iput-object p0, p0, Lcom/htc/omadm/test/TestAPIActivity;->mContext:Landroid/content/Context;

    .line 110
    iget-object v1, p0, Lcom/htc/omadm/test/TestAPIActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/omadm/rule/Factory;->SetContext(Landroid/content/Context;)V

    .line 111
    const-string v1, "OMADM Test client"

    invoke-virtual {p0, v1}, Lcom/htc/omadm/test/TestAPIActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 112
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090003

    const/16 v2, 0x2b

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "System API"

    aput-object v4, v2, v3

    const-string v3, "CI Connection senario"

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v4, "NI Connection senario"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "JNI Get MIP1 ConValue"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "JNI Set MIP1 ConValue"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "JNI Set ConValue PRL60613"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "JNI Set ConValue PRL60660"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "JNI Get ConValue(WiMax)"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "JNI Set ConValue(WiMax)"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "JNI Add ConValue(WiMax)"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "JNI Del ConValue(WiMax)"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "WAP Push Test"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "Exec Refurbish(ARM9)"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "factory reset(ARM11)"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "RTN(AMR9+ARM11)"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "Lawmo lock 1234"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "Reboot"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "NIA session"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "DSA URL Proxy config"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "Factory reset(No Function)"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "Set apn(No Function)"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "Get apn(No Function)"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "Enable LTE Force(No Function)"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "Disable LTE Force(No Function)"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "Get LTE Force(No Function)"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "HFA"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "CIDC"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "CIPRL"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "CIFUMO"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "EHRPD status(No Function)"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "GET BC(No Function)"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "SET BC ENABLE(No Function)"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "GET SO(No Function)"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "SET SO ENABLE(No Function)"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "GET 1XA(No Function)"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "SET 1XA ENABLE(No Function)"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "Baseband reboot(No Function)"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "Fumo install"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "Add dmaction(No Function)"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "Query dmaction(No Function)"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "Build flag"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "SPA"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "MediaStream"

    aput-object v4, v2, v3

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 148
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {p0, v0}, Lcom/htc/omadm/test/TestAPIActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 152
    new-instance v1, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;

    invoke-direct {v1, p0}, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;-><init>(Lcom/htc/omadm/test/TestAPIActivity;)V

    iput-object v1, p0, Lcom/htc/omadm/test/TestAPIActivity;->mConfigHandler:Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;

    .line 153
    iget-object v1, p0, Lcom/htc/omadm/test/TestAPIActivity;->mConfigHandler:Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;->sendEmptyMessage(I)Z

    .line 156
    iget-object v1, p0, Lcom/htc/omadm/test/TestAPIActivity;->mContext:Landroid/content/Context;

    const-string v2, "prepare connection ...."

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 158
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 47
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 161
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 166
    packed-switch p3, :pswitch_data_0

    .line 460
    :goto_0
    :pswitch_0
    return-void

    .line 168
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/omadm/test/TestAPIActivity;->mConfigHandler:Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    invoke-virtual/range {v44 .. v45}, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 171
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/htc/omadm/test/TestAPIActivity;->verifyCIConnAPI()V

    goto :goto_0

    .line 174
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/htc/omadm/test/TestAPIActivity;->verifyNIConnAPI()V

    goto :goto_0

    .line 177
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/htc/omadm/test/TestAPIActivity;->verifyJNIGetConValue()V

    goto :goto_0

    .line 180
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/omadm/test/TestAPIActivity;->mConfigHandler:Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;

    move-object/from16 v44, v0

    const/16 v45, 0x4

    invoke-virtual/range {v44 .. v45}, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 183
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/omadm/test/TestAPIActivity;->mConfigHandler:Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;

    move-object/from16 v44, v0

    const/16 v45, 0x5

    invoke-virtual/range {v44 .. v45}, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 186
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/omadm/test/TestAPIActivity;->mConfigHandler:Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;

    move-object/from16 v44, v0

    const/16 v45, 0x6

    invoke-virtual/range {v44 .. v45}, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 189
    :pswitch_8
    invoke-direct/range {p0 .. p0}, Lcom/htc/omadm/test/TestAPIActivity;->verifyGetConValueWiMAX()V

    goto :goto_0

    .line 192
    :pswitch_9
    invoke-direct/range {p0 .. p0}, Lcom/htc/omadm/test/TestAPIActivity;->verifySetConValueWiMAX()V

    goto :goto_0

    .line 195
    :pswitch_a
    invoke-direct/range {p0 .. p0}, Lcom/htc/omadm/test/TestAPIActivity;->verifyAddConValueWiMAX()V

    goto :goto_0

    .line 198
    :pswitch_b
    invoke-direct/range {p0 .. p0}, Lcom/htc/omadm/test/TestAPIActivity;->verifyDelConValueWiMAX()V

    goto :goto_0

    .line 202
    :pswitch_c
    const-string v26, "010603c4af87109e2e4d1ee2b383a6e183ba4be2ca1402e800000066e906737072696e74"

    .line 203
    .local v26, NIDC_hexString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "NIDC_hexString:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/htc/omadm/test/TestAPIActivity;->verifyWAPParsing(Ljava/lang/String;)V

    .line 206
    const-string v29, "010603c4af8786d18635514c99b6fa30ee99b206ff2402d800000066e806737072696e74"

    .line 207
    .local v29, NIPRL_hexString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "NIPRL_hexString:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/htc/omadm/test/TestAPIActivity;->verifyWAPParsing(Ljava/lang/String;)V

    .line 210
    const-string v27, "010603c4af87c15ad502e19b4be003e3d1bc557931c302f800000066ea06737072696e74"

    .line 211
    .local v27, NIFUMO_hexString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "NIFUMO_hexString:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/htc/omadm/test/TestAPIActivity;->verifyWAPParsing(Ljava/lang/String;)V

    .line 214
    const-string v28, "010603c4af875b65faa822fa34dfce83fdda049d7fc202e8000000a8c306737072696e74"

    .line 215
    .local v28, NIPRL_Suc:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "NIPRL_hexString:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/htc/omadm/test/TestAPIActivity;->verifyWAPParsing(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 219
    .end local v26           #NIDC_hexString:Ljava/lang/String;
    .end local v27           #NIFUMO_hexString:Ljava/lang/String;
    .end local v28           #NIPRL_Suc:Ljava/lang/String;
    .end local v29           #NIPRL_hexString:Ljava/lang/String;
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/omadm/test/TestAPIActivity;->mConfigHandler:Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;

    move-object/from16 v44, v0

    const/16 v45, 0xc

    invoke-virtual/range {v44 .. v45}, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 224
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/omadm/test/TestAPIActivity;->mConfigHandler:Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;

    move-object/from16 v44, v0

    const/16 v45, 0xe

    invoke-virtual/range {v44 .. v45}, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 227
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/omadm/test/TestAPIActivity;->mContext:Landroid/content/Context;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/htc/omadm/libdo/system/Lawmo;->getSingleton(Landroid/content/Context;)Lcom/htc/omadm/libdo/system/Lawmo;

    move-result-object v44

    const-string v45, "1234"

    invoke-virtual/range {v44 .. v45}, Lcom/htc/omadm/libdo/system/Lawmo;->PartialLock(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 230
    :pswitch_10
    invoke-static {}, Lcom/htc/omadm/libdo/system/SysLib;->getSingleton()Lcom/htc/omadm/libdo/system/SysLib;

    move-result-object v40

    .line 231
    .local v40, sys:Lcom/htc/omadm/libdo/system/SysLib;
    invoke-virtual/range {v40 .. v40}, Lcom/htc/omadm/libdo/system/SysLib;->Reboot()V

    goto/16 :goto_0

    .line 235
    .end local v40           #sys:Lcom/htc/omadm/libdo/system/SysLib;
    :pswitch_11
    const-string v28, "010603c4af875b65faa822fa34dfce83fdda049d7fc202e8000000a8c306737072696e74"

    .line 236
    .restart local v28       #NIPRL_Suc:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "NIPRL_hexString:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/16 v44, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v44

    invoke-static {v0, v1}, Lcom/htc/omadm/util/Utility;->hexStringToByte(Ljava/lang/String;Z)[B

    move-result-object v33

    .line 238
    .local v33, fakeWap:[B
    invoke-static/range {v28 .. v28}, Lcom/htc/omadm/core/NetworkNotifyReceiver;->parsingWAP(Ljava/lang/String;)[I

    move-result-object v39

    .line 239
    .local v39, result:[I
    new-instance v34, Landroid/content/Intent;

    const-string v44, "com.htc.omadm.core.start"

    move-object/from16 v0, v34

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 240
    .local v34, iWap:Landroid/content/Intent;
    const-string v44, "SESSION_TYPE"

    const/16 v45, 0x0

    aget v45, v39, v45

    move-object/from16 v0, v34

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 241
    const-string v44, "SESSION_ID"

    const/16 v45, 0x1

    aget v45, v39, v45

    move-object/from16 v0, v34

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 242
    const-string v44, "SESSION_WAP_DATA"

    move-object/from16 v0, v34

    move-object/from16 v1, v44

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 243
    const-string v44, "com.redbend.vdmc"

    const-string v45, "com.htc.omadm.core.DMService"

    move-object/from16 v0, v34

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/omadm/test/TestAPIActivity;->mContext:Landroid/content/Context;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 249
    .end local v28           #NIPRL_Suc:Ljava/lang/String;
    .end local v33           #fakeWap:[B
    .end local v34           #iWap:Landroid/content/Intent;
    .end local v39           #result:[I
    :pswitch_12
    invoke-static {}, Lcom/htc/omadm/libdo/config/ConfigManager;->getSingleton()Lcom/htc/omadm/libdo/config/ConfigManager;

    move-result-object v36

    .line 250
    .local v36, mCM:Lcom/htc/omadm/libdo/config/ConfigManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "Get_DSAProxyHost:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v36 .. v36}, Lcom/htc/omadm/libdo/config/ConfigManager;->Get_DSAProxyHost()Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "Get_DSAProxyPort:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v36 .. v36}, Lcom/htc/omadm/libdo/config/ConfigManager;->Get_DSAProxyPort()Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v44, v0

    const-string v45, "Set_DSAProxyHost:10.10.10.10:123"

    invoke-static/range {v44 .. v45}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const-string v44, "10.10.10.10"

    move-object/from16 v0, v36

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/htc/omadm/libdo/config/ConfigManager;->Set_DSAProxyHost(Ljava/lang/String;)V

    .line 254
    const-string v44, "123"

    move-object/from16 v0, v36

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/htc/omadm/libdo/config/ConfigManager;->Set_DSAProxyPort(Ljava/lang/String;)V

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "Get_DSAProxyHost:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v36 .. v36}, Lcom/htc/omadm/libdo/config/ConfigManager;->Get_DSAProxyHost()Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "Get_DSAProxyPort:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v36 .. v36}, Lcom/htc/omadm/libdo/config/ConfigManager;->Get_DSAProxyPort()Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/omadm/test/TestAPIActivity;->mContext:Landroid/content/Context;

    move-object/from16 v44, v0

    const-string v45, "DSA API completed"

    const/16 v46, 0x1

    invoke-static/range {v44 .. v46}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 279
    .end local v36           #mCM:Lcom/htc/omadm/libdo/config/ConfigManager;
    :pswitch_13
    new-instance v42, Landroid/content/Intent;

    const-string v44, "android.intent.action.HFA_VERIFY_INTENT"

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 280
    .local v42, throwIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/omadm/test/TestAPIActivity;->mContext:Landroid/content/Context;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v44, v0

    const-string v45, "-onPreferenceClick"

    invoke-static/range {v44 .. v45}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 285
    .end local v42           #throwIntent:Landroid/content/Intent;
    :pswitch_14
    new-instance v42, Landroid/content/Intent;

    const-string v44, "com.htc.omadm.trigger"

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 286
    .restart local v42       #throwIntent:Landroid/content/Intent;
    const-string v44, "SESSION_TYPE"

    const/16 v45, 0x7

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/omadm/test/TestAPIActivity;->mContext:Landroid/content/Context;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v44, v0

    const-string v45, "-onPreferenceClick"

    invoke-static/range {v44 .. v45}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 292
    .end local v42           #throwIntent:Landroid/content/Intent;
    :pswitch_15
    new-instance v42, Landroid/content/Intent;

    const-string v44, "com.htc.omadm.trigger"

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 293
    .restart local v42       #throwIntent:Landroid/content/Intent;
    const-string v44, "SESSION_TYPE"

    const/16 v45, 0x9

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/omadm/test/TestAPIActivity;->mContext:Landroid/content/Context;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v44, v0

    const-string v45, "-onPreferenceClick"

    invoke-static/range {v44 .. v45}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 299
    .end local v42           #throwIntent:Landroid/content/Intent;
    :pswitch_16
    new-instance v42, Landroid/content/Intent;

    const-string v44, "com.htc.omadm.trigger"

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 300
    .restart local v42       #throwIntent:Landroid/content/Intent;
    const-string v44, "SESSION_TYPE"

    const/16 v45, 0xb

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/omadm/test/TestAPIActivity;->mContext:Landroid/content/Context;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v44, v0

    const-string v45, "-onPreferenceClick"

    invoke-static/range {v44 .. v45}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 331
    .end local v42           #throwIntent:Landroid/content/Intent;
    :pswitch_17
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "update firmware:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    sget-object v46, Lcom/htc/omadm/prop/PropertyFumo;->FUMO_PACKAGE_FILE_PATH:Ljava/lang/String;

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    new-instance v44, Ljava/io/File;

    sget-object v45, Lcom/htc/omadm/prop/PropertyFumo;->FUMO_PACKAGE_FILE_PATH:Ljava/lang/String;

    invoke-direct/range {v44 .. v45}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v44 .. v44}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v43

    .line 333
    .local v43, uri:Landroid/net/Uri;
    new-instance v35, Landroid/content/Intent;

    sget-object v44, Lcom/htc/omadm/prop/PropertyFumo;->ACTION_FOTA_INSTALL:Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v44

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 334
    .local v35, install:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/omadm/test/TestAPIActivity;->mContext:Landroid/content/Context;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    const/16 v46, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v45

    move-object/from16 v2, v35

    move/from16 v3, v46

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v38

    .line 335
    .local v38, mInstallIntent:Landroid/app/PendingIntent;
    invoke-virtual/range {v38 .. v38}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 336
    .end local v35           #install:Landroid/content/Intent;
    .end local v38           #mInstallIntent:Landroid/app/PendingIntent;
    .end local v43           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v32

    .line 337
    .local v32, e:Ljava/lang/Exception;
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 348
    .end local v32           #e:Ljava/lang/Exception;
    :pswitch_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "HtcBuildFlag.Htc_DEVICE_flag: "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    sget-short v46, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v44, v0

    const-string v45, "HtcBuildFlag.DEVICE_J0002_flag: 73"

    invoke-static/range {v44 .. v45}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 352
    :pswitch_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v44, v0

    const-string v45, "Verify SPA"

    invoke-static/range {v44 .. v45}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const-string v4, "./SPA/BarDomVoiceRoaming/Enabled"

    .line 354
    .local v4, BarDomVoiceRoamingEnabled:Ljava/lang/String;
    const-string v5, "./SPA/BarDomVoiceRoaming/Forced"

    .line 355
    .local v5, BarDomVoiceRoamingForced:Ljava/lang/String;
    const-string v16, "./SPA/IntlDataGuard/Enabled"

    .line 356
    .local v16, IntlDataGuardEnabled:Ljava/lang/String;
    const-string v17, "./SPA/IntlDataGuard/Forced"

    .line 357
    .local v17, IntlDataGuardForced:Ljava/lang/String;
    const-string v18, "./SPA/IntlDataRoaming/Enabled"

    .line 358
    .local v18, IntlDataRoamingEnabled:Ljava/lang/String;
    const-string v19, "./SPA/IntlDataRoaming/Forced"

    .line 359
    .local v19, IntlDataRoamingForced:Ljava/lang/String;
    const-string v20, "./SPA/IntlDialing/Enabled"

    .line 360
    .local v20, IntlDialingEnabled:Ljava/lang/String;
    const-string v21, "./SPA/IntlDialing/Forced"

    .line 361
    .local v21, IntlDialingForced:Ljava/lang/String;
    const-string v22, "./SPA/IntlVoiceGuard/Enabled"

    .line 362
    .local v22, IntlVoiceGuardEnabled:Ljava/lang/String;
    const-string v23, "./SPA/IntlVoiceGuard/Forced"

    .line 363
    .local v23, IntlVoiceGuardForced:Ljava/lang/String;
    const-string v24, "./SPA/IntlVoiceRoaming/Enabled"

    .line 364
    .local v24, IntlVoiceRoamingEnabled:Ljava/lang/String;
    const-string v25, "./SPA/IntlVoiceRoaming/Forced"

    .line 365
    .local v25, IntlVoiceRoamingForced:Ljava/lang/String;
    const-string v6, "./SPA/DomDataGuard/Enabled"

    .line 366
    .local v6, DomDataGuardEnabled:Ljava/lang/String;
    const-string v7, "./SPA/DomDataGuard/Forced"

    .line 367
    .local v7, DomDataGuardForced:Ljava/lang/String;
    const-string v8, "./SPA/DomDataRoaming/Enabled"

    .line 368
    .local v8, DomDataRoamingEnabled:Ljava/lang/String;
    const-string v9, "./SPA/DomDataRoaming/Forced"

    .line 369
    .local v9, DomDataRoamingForced:Ljava/lang/String;
    const-string v10, "./SPA/DomVoiceGuard/Enabled"

    .line 370
    .local v10, DomVoiceGuardEnabled:Ljava/lang/String;
    const-string v11, "./SPA/DomVoiceGuard/Forced"

    .line 371
    .local v11, DomVoiceGuardForced:Ljava/lang/String;
    const-string v12, "./SPA/DomVoiceRoaming/Enabled"

    .line 372
    .local v12, DomVoiceRoamingEnabled:Ljava/lang/String;
    const-string v13, "./SPA/DomVoiceRoaming/Forced"

    .line 374
    .local v13, DomVoiceRoamingForced:Ljava/lang/String;
    invoke-static {}, Lcom/htc/ipl/common;->getInstance()Lcom/htc/ipl/common;

    move-result-object v37

    .line 376
    .local v37, mCommonIPL:Lcom/htc/ipl/common;
    const/16 v44, 0x0

    const/16 v45, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/htc/ipl/common;->BarDomVoiceRoamingEnabled(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 377
    .local v41, szData:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "node:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " szData:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const/16 v44, 0x0

    const/16 v45, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/htc/ipl/common;->BarDomVoiceRoamingForced(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "node:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " szData:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/16 v44, 0x0

    const/16 v45, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/htc/ipl/common;->IntlDataGuardEnabled(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "node:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " szData:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const/16 v44, 0x0

    const/16 v45, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/htc/ipl/common;->IntlDataGuardForced(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "node:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " szData:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const/16 v44, 0x0

    const/16 v45, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/htc/ipl/common;->IntlDataRoamingEnabled(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "node:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " szData:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/16 v44, 0x0

    const/16 v45, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/htc/ipl/common;->IntlDataRoamingForced(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "node:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " szData:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const/16 v44, 0x0

    const/16 v45, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/htc/ipl/common;->IntlDialingEnabled(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "node:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " szData:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const/16 v44, 0x0

    const/16 v45, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/htc/ipl/common;->IntlDialingForced(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "node:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " szData:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const/16 v44, 0x0

    const/16 v45, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/htc/ipl/common;->IntlVoiceGuardEnabled(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "node:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " szData:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const/16 v44, 0x0

    const/16 v45, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/htc/ipl/common;->IntlVoiceGuardForced(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "node:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " szData:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const/16 v44, 0x0

    const/16 v45, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/htc/ipl/common;->IntlVoiceRoamingEnabled(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "node:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " szData:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const/16 v44, 0x0

    const/16 v45, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/htc/ipl/common;->IntlVoiceRoamingForced(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "node:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " szData:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const/16 v44, 0x0

    const/16 v45, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/htc/ipl/common;->DomDataGuardEnabled(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "node:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " szData:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const/16 v44, 0x0

    const/16 v45, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/htc/ipl/common;->DomDataGuardForced(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "node:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " szData:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const/16 v44, 0x0

    const/16 v45, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/htc/ipl/common;->DomDataRoamingEnabled(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "node:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " szData:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    const/16 v44, 0x0

    const/16 v45, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/htc/ipl/common;->DomDataRoamingForced(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "node:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " szData:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const/16 v44, 0x0

    const/16 v45, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/htc/ipl/common;->DomVoiceGuardEnabled(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "node:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " szData:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    const/16 v44, 0x0

    const/16 v45, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/htc/ipl/common;->DomVoiceGuardForced(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "node:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " szData:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const/16 v44, 0x0

    const/16 v45, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/htc/ipl/common;->DomVoiceRoamingEnabled(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "node:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " szData:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const/16 v44, 0x0

    const/16 v45, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/htc/ipl/common;->DomVoiceRoamingForced(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "node:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " szData:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 439
    .end local v4           #BarDomVoiceRoamingEnabled:Ljava/lang/String;
    .end local v5           #BarDomVoiceRoamingForced:Ljava/lang/String;
    .end local v6           #DomDataGuardEnabled:Ljava/lang/String;
    .end local v7           #DomDataGuardForced:Ljava/lang/String;
    .end local v8           #DomDataRoamingEnabled:Ljava/lang/String;
    .end local v9           #DomDataRoamingForced:Ljava/lang/String;
    .end local v10           #DomVoiceGuardEnabled:Ljava/lang/String;
    .end local v11           #DomVoiceGuardForced:Ljava/lang/String;
    .end local v12           #DomVoiceRoamingEnabled:Ljava/lang/String;
    .end local v13           #DomVoiceRoamingForced:Ljava/lang/String;
    .end local v16           #IntlDataGuardEnabled:Ljava/lang/String;
    .end local v17           #IntlDataGuardForced:Ljava/lang/String;
    .end local v18           #IntlDataRoamingEnabled:Ljava/lang/String;
    .end local v19           #IntlDataRoamingForced:Ljava/lang/String;
    .end local v20           #IntlDialingEnabled:Ljava/lang/String;
    .end local v21           #IntlDialingForced:Ljava/lang/String;
    .end local v22           #IntlVoiceGuardEnabled:Ljava/lang/String;
    .end local v23           #IntlVoiceGuardForced:Ljava/lang/String;
    .end local v24           #IntlVoiceRoamingEnabled:Ljava/lang/String;
    .end local v25           #IntlVoiceRoamingForced:Ljava/lang/String;
    .end local v37           #mCommonIPL:Lcom/htc/ipl/common;
    .end local v41           #szData:Ljava/lang/String;
    :pswitch_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v44, v0

    const-string v45, "Verify Media Stream"

    invoke-static/range {v44 .. v45}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const-string v30, "./Con/MediaStream/RTSPProxyAddress"

    .line 441
    .local v30, RTSPProxyAddress:Ljava/lang/String;
    const-string v31, "./Con/MediaStream/RTSPProxyPort"

    .line 442
    .local v31, RTSPProxyPort:Ljava/lang/String;
    const-string v14, "./Con/MediaStream/HTTPPDProxyAddress"

    .line 443
    .local v14, HTTPPDProxyAddress:Ljava/lang/String;
    const-string v15, "./Con/MediaStream/HTTPPDProxyPort"

    .line 444
    .local v15, HTTPPDProxyPort:Ljava/lang/String;
    invoke-static {}, Lcom/htc/ipl/common;->getInstance()Lcom/htc/ipl/common;

    move-result-object v37

    .line 446
    .restart local v37       #mCommonIPL:Lcom/htc/ipl/common;
    move-object/from16 v0, v37

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/htc/ipl/common;->GetMediaStreamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 447
    .restart local v41       #szData:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "node:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " szData:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    move-object/from16 v0, v37

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/htc/ipl/common;->GetMediaStreamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "node:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " szData:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    move-object/from16 v0, v37

    invoke-virtual {v0, v14}, Lcom/htc/ipl/common;->GetMediaStreamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "node:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " szData:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    move-object/from16 v0, v37

    invoke-virtual {v0, v15}, Lcom/htc/ipl/common;->GetMediaStreamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "node:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " szData:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_17
        :pswitch_0
        :pswitch_0
        :pswitch_18
        :pswitch_19
        :pswitch_1a
    .end packed-switch
.end method

.method protected verifyJNIGetConValue()V
    .locals 6

    .prologue
    .line 476
    iget-object v3, p0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    const-string v4, "verifyJNIGetConValue()"

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-static {}, Lcom/htc/omadm/libdo/config/ConfigManager;->getSingleton()Lcom/htc/omadm/libdo/config/ConfigManager;

    move-result-object v2

    .line 480
    .local v2, mCM:Lcom/htc/omadm/libdo/config/ConfigManager;
    iget-object v3, p0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get_DevInfo:./DevInfo/DevID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "./DevInfo/DevID"

    invoke-virtual {v2, v5}, Lcom/htc/omadm/libdo/config/ConfigManager;->Get_ConValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object v3, p0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get_DevInfo:./DevInfo/Lang:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "./DevInfo/Lang"

    invoke-virtual {v2, v5}, Lcom/htc/omadm/libdo/config/ConfigManager;->Get_ConValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v3, p0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get_DevInfo:./DevDetail/HwV:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "./DevDetail/HwV"

    invoke-virtual {v2, v5}, Lcom/htc/omadm/libdo/config/ConfigManager;->Get_ConValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-object v3, p0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get_DevInfo:./DevDetail/SwV:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "./DevDetail/SwV"

    invoke-virtual {v2, v5}, Lcom/htc/omadm/libdo/config/ConfigManager;->Get_ConValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-object v3, p0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get_DevInfo:./DevDetail/FwV:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "./DevDetail/FwV"

    invoke-virtual {v2, v5}, Lcom/htc/omadm/libdo/config/ConfigManager;->Get_ConValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v3, p0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get_DevInfo:./DevInfo/Man:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "./DevInfo/Man"

    invoke-virtual {v2, v5}, Lcom/htc/omadm/libdo/config/ConfigManager;->Get_ConValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v3, p0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get_DevInfo:./DevInfo/Mod:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "./DevInfo/Mod"

    invoke-virtual {v2, v5}, Lcom/htc/omadm/libdo/config/ConfigManager;->Get_ConValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-object v3, p0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get_DevInfo:./DevDetail/OEM:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "./DevDetail/OEM"

    invoke-virtual {v2, v5}, Lcom/htc/omadm/libdo/config/ConfigManager;->Get_ConValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v3, p0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get_DevInfo:./DevDetail/DevTyp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "./DevDetail/DevTyp"

    invoke-virtual {v2, v5}, Lcom/htc/omadm/libdo/config/ConfigManager;->Get_ConValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const/16 v3, 0xd

    new-array v0, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "./CDMA/3GPD/Profile1/AuthAlgoAAA"

    aput-object v4, v0, v3

    const/4 v3, 0x1

    const-string v4, "./CDMA/3GPD/Profile1/AuthAlgoHA"

    aput-object v4, v0, v3

    const/4 v3, 0x2

    const-string v4, "./CDMA/3GPD/Profile1/MobileIpAddress"

    aput-object v4, v0, v3

    const/4 v3, 0x3

    const-string v4, "./CDMA/3GPD/Profile1/NAI"

    aput-object v4, v0, v3

    const/4 v3, 0x4

    const-string v4, "./CDMA/3GPD/Profile1/PasswordAAA"

    aput-object v4, v0, v3

    const/4 v3, 0x5

    const-string v4, "./CDMA/3GPD/Profile1/PasswordHA"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "./CDMA/3GPD/Profile1/PriHAIp"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "./CDMA/3GPD/Profile1/ReverseTunneling"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string v4, "./CDMA/3GPD/Profile1/SecHAIp"

    aput-object v4, v0, v3

    const/16 v3, 0x9

    const-string v4, "./CDMA/3GPD/Profile1/SpiAAA"

    aput-object v4, v0, v3

    const/16 v3, 0xa

    const-string v4, "./CDMA/3GPD/Profile1/SpiHA"

    aput-object v4, v0, v3

    const/16 v3, 0xb

    const-string v4, "./CDMA/NAM/CdmaNam"

    aput-object v4, v0, v3

    const/16 v3, 0xc

    const-string v4, "./CDMA/NAM/MobDirNum"

    aput-object v4, v0, v3

    .line 522
    .local v0, g_conValue:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 523
    iget-object v3, p0, Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get_ConValue:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v1

    invoke-virtual {v2, v5}, Lcom/htc/omadm/libdo/config/ConfigManager;->Get_ConValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 529
    :cond_0
    return-void
.end method
