.class public Lcom/htc/omadm/libdo/system/SysLib;
.super Ljava/lang/Object;
.source "SysLib.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/omadm/libdo/system/SysLib$SocketThread;,
        Lcom/htc/omadm/libdo/system/SysLib$WriteDMHandler;,
        Lcom/htc/omadm/libdo/system/SysLib$ReloadHandler;,
        Lcom/htc/omadm/libdo/system/SysLib$ConnHandler;
    }
.end annotation


# static fields
.field protected static final CLOSE_DM_CONNECTOR:I = 0x2

.field public static final CMD_DIGITAL_OFFLINE_MODE:Ljava/lang/String; = "C8290100"

.field public static final CMD_READ_ACTIVATION_DATE:Ljava/lang/String; = "C826451F"

.field public static final CMD_READ_ACTIVATION_DATE_F8:Ljava/lang/String; = "C826451F"

.field public static final CMD_READ_CHANNEL:Ljava/lang/String; = "C8260A00"

.field public static final CMD_REFURBISH_MODE:Ljava/lang/String; = "C8C901"

.field public static final CMD_RESET_MODE:Ljava/lang/String; = "C8290200"

.field public static final CMD_WRITE_ACTIVATION_DATE:Ljava/lang/String; = "C827451F"

.field public static final CMD_WRITE_ACTIVATION_DATE_F9:Ljava/lang/String; = "C827451F"

.field public static final DBG:Z = false

.field protected static final OPEN_DM_CONNECTOR:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SysLib"

.field private static bIsForeground:Z

.field private static mInstance:Lcom/htc/omadm/libdo/system/SysLib;


# instance fields
.field private bResult:Z

.field private hasAcquire:Z

.field private iResult:I

.field protected key:Ljava/lang/Integer;

.field private mContext:Landroid/content/Context;

.field private mDmConnector:Lcom/htc/omadm/util/DMAgentConnector;

.field mHandler:Lcom/htc/omadm/libdo/system/SysLib$ConnHandler;

.field mReloadHFAProp:Lcom/htc/omadm/libdo/system/SysLib$ReloadHandler;

.field private mStateTracker:Lcom/htc/omadm/libdo/status/StateTracker;

.field private mSuspendLock:Ljava/lang/Object;

.field mThread:Landroid/os/HandlerThread;

.field mWriteDMConf:Lcom/htc/omadm/libdo/system/SysLib$WriteDMHandler;

.field private sResult:Ljava/lang/String;

.field private wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/omadm/libdo/system/SysLib;->mInstance:Lcom/htc/omadm/libdo/system/SysLib;

    .line 68
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/omadm/libdo/system/SysLib;->bIsForeground:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/htc/omadm/libdo/system/SysLib;->key:Ljava/lang/Integer;

    .line 58
    iput-boolean v2, p0, Lcom/htc/omadm/libdo/system/SysLib;->hasAcquire:Z

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/omadm/libdo/system/SysLib;->mStateTracker:Lcom/htc/omadm/libdo/status/StateTracker;

    .line 60
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SysLib"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/omadm/libdo/system/SysLib;->mThread:Landroid/os/HandlerThread;

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/omadm/libdo/system/SysLib;->mSuspendLock:Ljava/lang/Object;

    .line 64
    iput-boolean v2, p0, Lcom/htc/omadm/libdo/system/SysLib;->bResult:Z

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/omadm/libdo/system/SysLib;->iResult:I

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/omadm/libdo/system/SysLib;->sResult:Ljava/lang/String;

    .line 71
    invoke-static {}, Lcom/htc/omadm/util/DMAgentConnector;->getSingleton()Lcom/htc/omadm/util/DMAgentConnector;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/omadm/libdo/system/SysLib;->mDmConnector:Lcom/htc/omadm/util/DMAgentConnector;

    .line 72
    iput-object p1, p0, Lcom/htc/omadm/libdo/system/SysLib;->mContext:Landroid/content/Context;

    .line 73
    invoke-static {}, Lcom/htc/omadm/libdo/status/StateTracker;->getSingleton()Lcom/htc/omadm/libdo/status/StateTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/omadm/libdo/system/SysLib;->mStateTracker:Lcom/htc/omadm/libdo/status/StateTracker;

    .line 74
    iget-object v0, p0, Lcom/htc/omadm/libdo/system/SysLib;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 75
    new-instance v0, Lcom/htc/omadm/libdo/system/SysLib$ConnHandler;

    iget-object v1, p0, Lcom/htc/omadm/libdo/system/SysLib;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/omadm/libdo/system/SysLib$ConnHandler;-><init>(Lcom/htc/omadm/libdo/system/SysLib;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/omadm/libdo/system/SysLib;->mHandler:Lcom/htc/omadm/libdo/system/SysLib$ConnHandler;

    .line 76
    new-instance v0, Lcom/htc/omadm/libdo/system/SysLib$ReloadHandler;

    iget-object v1, p0, Lcom/htc/omadm/libdo/system/SysLib;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/omadm/libdo/system/SysLib$ReloadHandler;-><init>(Lcom/htc/omadm/libdo/system/SysLib;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/omadm/libdo/system/SysLib;->mReloadHFAProp:Lcom/htc/omadm/libdo/system/SysLib$ReloadHandler;

    .line 77
    new-instance v0, Lcom/htc/omadm/libdo/system/SysLib$WriteDMHandler;

    iget-object v1, p0, Lcom/htc/omadm/libdo/system/SysLib;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/omadm/libdo/system/SysLib$WriteDMHandler;-><init>(Lcom/htc/omadm/libdo/system/SysLib;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/omadm/libdo/system/SysLib;->mWriteDMConf:Lcom/htc/omadm/libdo/system/SysLib$WriteDMHandler;

    .line 78
    return-void
.end method

.method public static Init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 81
    new-instance v0, Lcom/htc/omadm/libdo/system/SysLib;

    invoke-direct {v0, p0}, Lcom/htc/omadm/libdo/system/SysLib;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/omadm/libdo/system/SysLib;->mInstance:Lcom/htc/omadm/libdo/system/SysLib;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/htc/omadm/libdo/system/SysLib;)Lcom/htc/omadm/util/DMAgentConnector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/omadm/libdo/system/SysLib;->mDmConnector:Lcom/htc/omadm/util/DMAgentConnector;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/omadm/libdo/system/SysLib;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/htc/omadm/libdo/system/SysLib;->bResult:Z

    return v0
.end method

.method static synthetic access$102(Lcom/htc/omadm/libdo/system/SysLib;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/htc/omadm/libdo/system/SysLib;->bResult:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/omadm/libdo/system/SysLib;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/omadm/libdo/system/SysLib;->mSuspendLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/omadm/libdo/system/SysLib;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/htc/omadm/libdo/system/SysLib;->iResult:I

    return v0
.end method

.method static synthetic access$302(Lcom/htc/omadm/libdo/system/SysLib;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/htc/omadm/libdo/system/SysLib;->iResult:I

    return p1
.end method

.method static synthetic access$400(Lcom/htc/omadm/libdo/system/SysLib;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/htc/omadm/libdo/system/SysLib;->setActivationDate()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/htc/omadm/libdo/system/SysLib;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/omadm/libdo/system/SysLib;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/omadm/libdo/system/SysLib;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/htc/omadm/libdo/system/SysLib;->getPassword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPassword()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 924
    iget-object v3, p0, Lcom/htc/omadm/libdo/system/SysLib;->mDmConnector:Lcom/htc/omadm/util/DMAgentConnector;

    sget-object v4, Lcom/htc/omadm/util/DMAgentConnector;->cmdTY1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/omadm/util/DMAgentConnector;->changeTTY(Ljava/lang/String;)V

    .line 925
    iget-object v3, p0, Lcom/htc/omadm/libdo/system/SysLib;->mDmConnector:Lcom/htc/omadm/util/DMAgentConnector;

    const-string v4, "AT+HTC_RMSL=0"

    invoke-virtual {v3, v4}, Lcom/htc/omadm/util/DMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 926
    .local v2, nPW_1:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/omadm/libdo/system/SysLib;->mDmConnector:Lcom/htc/omadm/util/DMAgentConnector;

    sget-object v4, Lcom/htc/omadm/util/DMAgentConnector;->cmdTY3:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/omadm/util/DMAgentConnector;->changeTTY(Ljava/lang/String;)V

    .line 928
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 929
    .local v1, nPW1:[Ljava/lang/String;
    const-string v3, "SysLib"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSLCODE 1:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    const/4 v3, 0x1

    :try_start_0
    aget-object v3, v1, v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 934
    :goto_0
    return-object v3

    .line 932
    :catch_0
    move-exception v0

    .line 933
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "SysLib"

    const-string v4, "nPW1[1].toString().trim() ERROE !!!"

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getSingleton()Lcom/htc/omadm/libdo/system/SysLib;
    .locals 2

    .prologue
    .line 85
    sget-object v0, Lcom/htc/omadm/libdo/system/SysLib;->mInstance:Lcom/htc/omadm/libdo/system/SysLib;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/htc/omadm/libdo/system/SysLib;

    invoke-static {}, Lcom/htc/omadm/rule/Factory;->GetContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/omadm/libdo/system/SysLib;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/omadm/libdo/system/SysLib;->mInstance:Lcom/htc/omadm/libdo/system/SysLib;

    .line 88
    :cond_0
    sget-object v0, Lcom/htc/omadm/libdo/system/SysLib;->mInstance:Lcom/htc/omadm/libdo/system/SysLib;

    return-object v0
.end method

.method private setActivationDate()Z
    .locals 15

    .prologue
    .line 574
    iget-object v12, p0, Lcom/htc/omadm/libdo/system/SysLib;->mDmConnector:Lcom/htc/omadm/util/DMAgentConnector;

    const-string v13, "C8290100"

    invoke-virtual {v12, v13}, Lcom/htc/omadm/util/DMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 576
    const-string v1, "00"

    .line 577
    .local v1, MONTH:Ljava/lang/String;
    const-string v0, "00"

    .line 578
    .local v0, DAY:Ljava/lang/String;
    const-string v2, "0000"

    .line 584
    .local v2, YEAR:Ljava/lang/String;
    const-string v10, ""

    .line 586
    .local v10, response:Ljava/lang/String;
    iget-object v12, p0, Lcom/htc/omadm/libdo/system/SysLib;->mDmConnector:Lcom/htc/omadm/util/DMAgentConnector;

    const-string v13, "C826451F"

    invoke-virtual {v12, v13}, Lcom/htc/omadm/util/DMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 587
    const-string v12, "SysLib"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "read <"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    if-eqz v10, :cond_0

    const-string v12, ""

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 590
    :cond_0
    const-string v12, "SysLib"

    const-string v13, "response error/null"

    invoke-static {v12, v13}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    const/4 v12, 0x0

    .line 639
    :goto_0
    return v12

    .line 594
    :cond_1
    const-string v12, "C826451F"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x0

    const-string v13, "C826451F"

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, 0x2

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 596
    const-string v12, "C826451F"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x2

    const-string v13, "C826451F"

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, 0x4

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 598
    const-string v12, "C826451F"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x4

    const-string v13, "C826451F"

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, 0x8

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 601
    const/16 v12, 0x10

    invoke-static {v1, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    .line 602
    .local v7, month:I
    const/16 v12, 0x10

    invoke-static {v0, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 604
    .local v4, day:I
    if-lez v7, :cond_2

    const/16 v12, 0xc

    if-gt v7, v12, :cond_2

    if-lez v4, :cond_2

    const/16 v12, 0x1f

    if-le v4, v12, :cond_6

    .line 605
    :cond_2
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 607
    .local v3, date:Ljava/util/Date;
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v12, "MM-dd-yyyy"

    invoke-direct {v5, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 608
    .local v5, formatPattern:Ljava/text/SimpleDateFormat;
    invoke-virtual {v5, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 609
    .local v8, nowFormatted:Ljava/lang/String;
    const-string v12, "-"

    invoke-virtual {v8, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 611
    .local v9, nowFormatteds:[Ljava/lang/String;
    const/4 v12, 0x0

    aget-object v12, v9, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 612
    const/4 v12, 0x1

    aget-object v12, v9, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 613
    const/4 v12, 0x2

    aget-object v12, v9, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 614
    .local v11, year:I
    const-string v12, "SysLib"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 617
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x2

    if-ge v12, v13, :cond_3

    .line 618
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "0"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 620
    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 621
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x2

    if-ge v12, v13, :cond_4

    .line 622
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "0"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 624
    :cond_4
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 625
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    .local v6, i:I
    :goto_1
    const/4 v12, 0x4

    if-ge v6, v12, :cond_5

    .line 626
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "0"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 625
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 630
    :cond_5
    const-string v12, "SysLib"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ">C827451F"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v2}, Lcom/htc/omadm/util/Utility;->reverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    iget-object v12, p0, Lcom/htc/omadm/libdo/system/SysLib;->mDmConnector:Lcom/htc/omadm/util/DMAgentConnector;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "C827451F"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v2}, Lcom/htc/omadm/util/Utility;->reverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/htc/omadm/util/DMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 634
    const-string v12, "SysLib"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "<"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 638
    .end local v3           #date:Ljava/util/Date;
    .end local v5           #formatPattern:Ljava/text/SimpleDateFormat;
    .end local v6           #i:I
    .end local v8           #nowFormatted:Ljava/lang/String;
    .end local v9           #nowFormatteds:[Ljava/lang/String;
    .end local v11           #year:I
    :cond_6
    const-string v12, "SysLib"

    const-string v13, "Doesn\'t need to write activation date"

    invoke-static {v12, v13}, Lcom/htc/omadm/util/DMLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    const/4 v12, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public Destroy()V
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/htc/omadm/libdo/system/SysLib;->mDmConnector:Lcom/htc/omadm/util/DMAgentConnector;

    invoke-virtual {v0}, Lcom/htc/omadm/util/DMAgentConnector;->getConnectStatus()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/htc/omadm/libdo/system/SysLib;->mDmConnector:Lcom/htc/omadm/util/DMAgentConnector;

    invoke-virtual {v0}, Lcom/htc/omadm/util/DMAgentConnector;->closeConnection()Z

    .line 96
    :cond_0
    const-string v0, "SysLib"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-Destroy():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/omadm/libdo/system/SysLib;->mDmConnector:Lcom/htc/omadm/util/DMAgentConnector;

    invoke-virtual {v2}, Lcom/htc/omadm/util/DMAgentConnector;->getConnectStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/htc/omadm/libdo/system/SysLib;->mThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/htc/omadm/libdo/system/SysLib;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 100
    :cond_1
    return-void
.end method

.method public ExecFactoryReset()V
    .locals 3

    .prologue
    .line 911
    invoke-virtual {p0}, Lcom/htc/omadm/libdo/system/SysLib;->enableDmConnector()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 913
    iget-object v0, p0, Lcom/htc/omadm/libdo/system/SysLib;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 915
    const-string v0, "SysLib"

    const-string v1, "sendBroadcast.master_clear intent"

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    :cond_0
    return-void
.end method

.method public ExecRefurbish()V
    .locals 6

    .prologue
    .line 861
    new-instance v0, Lcom/htc/omadm/libdo/system/SysLib$8;

    invoke-direct {v0, p0}, Lcom/htc/omadm/libdo/system/SysLib$8;-><init>(Lcom/htc/omadm/libdo/system/SysLib;)V

    .line 882
    .local v0, ExecRefurbish:Lcom/htc/omadm/libdo/system/SysLib$SocketThread;
    invoke-virtual {p0}, Lcom/htc/omadm/libdo/system/SysLib;->enableDmConnector()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 883
    invoke-virtual {v0}, Lcom/htc/omadm/libdo/system/SysLib$SocketThread;->start()V

    .line 885
    :cond_0
    iget-object v3, p0, Lcom/htc/omadm/libdo/system/SysLib;->mSuspendLock:Ljava/lang/Object;

    monitor-enter v3

    .line 887
    :try_start_0
    const-string v2, "SysLib"

    const-string v4, "Get response from dmagent.8"

    invoke-static {v2, v4}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    iget-object v2, p0, Lcom/htc/omadm/libdo/system/SysLib;->mSuspendLock:Ljava/lang/Object;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 892
    :goto_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 893
    const-string v2, "SysLib"

    const-string v3, "ExecRefurbish finish"

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    return-void

    .line 889
    :catch_0
    move-exception v1

    .line 890
    .local v1, ie:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 892
    .end local v1           #ie:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public Reboot()V
    .locals 3

    .prologue
    .line 856
    iget-object v1, p0, Lcom/htc/omadm/libdo/system/SysLib;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 857
    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "HtcOMADM"

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 858
    return-void
.end method

.method public _getDDTM()I
    .locals 4

    .prologue
    .line 283
    const/4 v1, 0x0

    .line 285
    .local v1, result:Z
    invoke-virtual {p0}, Lcom/htc/omadm/libdo/system/SysLib;->enableDmConnector()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 286
    iget-object v2, p0, Lcom/htc/omadm/libdo/system/SysLib;->mDmConnector:Lcom/htc/omadm/util/DMAgentConnector;

    sget-object v3, Lcom/htc/omadm/util/DMAgentConnector;->cmdTY1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/omadm/util/DMAgentConnector;->changeTTY(Ljava/lang/String;)V

    .line 287
    iget-object v2, p0, Lcom/htc/omadm/libdo/system/SysLib;->mDmConnector:Lcom/htc/omadm/util/DMAgentConnector;

    const-string v3, "AT+HTC_DDTM?"

    invoke-virtual {v2, v3}, Lcom/htc/omadm/util/DMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, response:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/omadm/libdo/system/SysLib;->mDmConnector:Lcom/htc/omadm/util/DMAgentConnector;

    sget-object v3, Lcom/htc/omadm/util/DMAgentConnector;->cmdTY3:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/omadm/util/DMAgentConnector;->changeTTY(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 293
    .end local v0           #response:Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public _getDMChannelInRadio()Z
    .locals 4

    .prologue
    .line 706
    invoke-virtual {p0}, Lcom/htc/omadm/libdo/system/SysLib;->enableDmConnector()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 707
    const-string v0, ""

    .line 708
    .local v0, response:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/omadm/libdo/system/SysLib;->mDmConnector:Lcom/htc/omadm/util/DMAgentConnector;

    const-string v2, "C8260A00"

    invoke-virtual {v1, v2}, Lcom/htc/omadm/util/DMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 709
    const-string v1, "SysLib"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "read <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    const/4 v1, 0x1

    .line 712
    .end local v0           #response:Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public diableDmConnector()Z
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/htc/omadm/libdo/system/SysLib;->mDmConnector:Lcom/htc/omadm/util/DMAgentConnector;

    invoke-virtual {v0}, Lcom/htc/omadm/util/DMAgentConnector;->closeConnection()Z

    move-result v0

    return v0
.end method

.method public digitalOffline()Z
    .locals 6

    .prologue
    .line 343
    const-string v2, "SysLib"

    const-string v3, "digitalOffline()"

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/omadm/libdo/system/SysLib;->bResult:Z

    .line 347
    new-instance v1, Lcom/htc/omadm/libdo/system/SysLib$4;

    invoke-direct {v1, p0}, Lcom/htc/omadm/libdo/system/SysLib$4;-><init>(Lcom/htc/omadm/libdo/system/SysLib;)V

    .line 366
    .local v1, mdigitalOffline:Lcom/htc/omadm/libdo/system/SysLib$SocketThread;
    invoke-virtual {p0}, Lcom/htc/omadm/libdo/system/SysLib;->enableDmConnector()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 367
    invoke-virtual {v1}, Lcom/htc/omadm/libdo/system/SysLib$SocketThread;->start()V

    .line 370
    :cond_0
    iget-object v3, p0, Lcom/htc/omadm/libdo/system/SysLib;->mSuspendLock:Ljava/lang/Object;

    monitor-enter v3

    .line 372
    :try_start_0
    const-string v2, "SysLib"

    const-string v4, "Get response from dmagent.4"

    invoke-static {v2, v4}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v2, p0, Lcom/htc/omadm/libdo/system/SysLib;->mSuspendLock:Ljava/lang/Object;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 379
    iget-boolean v2, p0, Lcom/htc/omadm/libdo/system/SysLib;->bResult:Z

    :goto_0
    return v2

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, ie:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 376
    iget-boolean v2, p0, Lcom/htc/omadm/libdo/system/SysLib;->bResult:Z

    monitor-exit v3

    goto :goto_0

    .line 378
    .end local v0           #ie:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public enable3GIND(Z)V
    .locals 6
    .parameter "enable"

    .prologue
    .line 298
    new-instance v1, Lcom/htc/omadm/libdo/system/SysLib$3;

    invoke-direct {v1, p0}, Lcom/htc/omadm/libdo/system/SysLib$3;-><init>(Lcom/htc/omadm/libdo/system/SysLib;)V

    .line 314
    .local v1, menable3GIND:Lcom/htc/omadm/libdo/system/SysLib$SocketThread;
    invoke-virtual {p0}, Lcom/htc/omadm/libdo/system/SysLib;->enableDmConnector()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 315
    invoke-virtual {v1, p1}, Lcom/htc/omadm/libdo/system/SysLib$SocketThread;->SetCommand(Z)V

    .line 316
    invoke-virtual {v1}, Lcom/htc/omadm/libdo/system/SysLib$SocketThread;->start()V

    .line 318
    :cond_0
    iget-object v3, p0, Lcom/htc/omadm/libdo/system/SysLib;->mSuspendLock:Ljava/lang/Object;

    monitor-enter v3

    .line 320
    :try_start_0
    const-string v2, "SysLib"

    const-string v4, "Get response from dmagent.3"

    invoke-static {v2, v4}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v2, p0, Lcom/htc/omadm/libdo/system/SysLib;->mSuspendLock:Ljava/lang/Object;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :goto_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 326
    const-string v2, "SysLib"

    const-string v3, "Finish enable3GIND."

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    return-void

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, ie:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 325
    .end local v0           #ie:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public enableDmConnector()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 103
    iget-object v3, p0, Lcom/htc/omadm/libdo/system/SysLib;->key:Ljava/lang/Integer;

    monitor-enter v3

    .line 104
    :try_start_0
    const-string v4, "SysLib"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enableDmConnector():mConnectoStatus:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/omadm/libdo/system/SysLib;->mDmConnector:Lcom/htc/omadm/util/DMAgentConnector;

    invoke-virtual {v6}, Lcom/htc/omadm/util/DMAgentConnector;->getConnectStatus()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v4, p0, Lcom/htc/omadm/libdo/system/SysLib;->mDmConnector:Lcom/htc/omadm/util/DMAgentConnector;

    invoke-virtual {v4}, Lcom/htc/omadm/util/DMAgentConnector;->getConnectStatus()I

    move-result v4

    const/4 v5, 0x7

    if-lt v4, v5, :cond_2

    .line 107
    iget-object v4, p0, Lcom/htc/omadm/libdo/system/SysLib;->mHandler:Lcom/htc/omadm/libdo/system/SysLib$ConnHandler;

    if-eqz v4, :cond_0

    .line 108
    iget-object v4, p0, Lcom/htc/omadm/libdo/system/SysLib;->mHandler:Lcom/htc/omadm/libdo/system/SysLib$ConnHandler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/omadm/libdo/system/SysLib$ConnHandler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/htc/omadm/libdo/system/SysLib;->key:Ljava/lang/Integer;

    const-wide/16 v5, 0x2af8

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 112
    iget-object v4, p0, Lcom/htc/omadm/libdo/system/SysLib;->key:Ljava/lang/Integer;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    .line 113
    :try_start_2
    monitor-exit v3

    .line 125
    :goto_0
    return v1

    .line 118
    :cond_1
    monitor-exit v3

    move v1, v2

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 122
    monitor-exit v3

    move v1, v2

    goto :goto_0

    .line 125
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    monitor-exit v3

    goto :goto_0

    .line 128
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getDDTM()I
    .locals 6

    .prologue
    .line 233
    const/4 v2, -0x1

    iput v2, p0, Lcom/htc/omadm/libdo/system/SysLib;->iResult:I

    .line 235
    new-instance v1, Lcom/htc/omadm/libdo/system/SysLib$2;

    invoke-direct {v1, p0}, Lcom/htc/omadm/libdo/system/SysLib$2;-><init>(Lcom/htc/omadm/libdo/system/SysLib;)V

    .line 253
    .local v1, mgetDDTM:Lcom/htc/omadm/libdo/system/SysLib$SocketThread;
    invoke-virtual {p0}, Lcom/htc/omadm/libdo/system/SysLib;->enableDmConnector()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 254
    invoke-virtual {v1}, Lcom/htc/omadm/libdo/system/SysLib$SocketThread;->start()V

    .line 256
    :cond_0
    iget-object v3, p0, Lcom/htc/omadm/libdo/system/SysLib;->mSuspendLock:Ljava/lang/Object;

    monitor-enter v3

    .line 258
    :try_start_0
    const-string v2, "SysLib"

    const-string v4, "Get response from dmagent.2"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v2, p0, Lcom/htc/omadm/libdo/system/SysLib;->mSuspendLock:Ljava/lang/Object;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    iget v2, p0, Lcom/htc/omadm/libdo/system/SysLib;->iResult:I

    :goto_0
    return v2

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, ie:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 262
    iget v2, p0, Lcom/htc/omadm/libdo/system/SysLib;->iResult:I

    monitor-exit v3

    goto :goto_0

    .line 264
    .end local v0           #ie:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public getDMChannelInRadio()Z
    .locals 6

    .prologue
    .line 716
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/omadm/libdo/system/SysLib;->bResult:Z

    .line 718
    new-instance v1, Lcom/htc/omadm/libdo/system/SysLib$6;

    invoke-direct {v1, p0}, Lcom/htc/omadm/libdo/system/SysLib$6;-><init>(Lcom/htc/omadm/libdo/system/SysLib;)V

    .line 732
    .local v1, mgetDMChannelInRadio:Lcom/htc/omadm/libdo/system/SysLib$SocketThread;
    invoke-virtual {p0}, Lcom/htc/omadm/libdo/system/SysLib;->enableDmConnector()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 733
    invoke-virtual {v1}, Lcom/htc/omadm/libdo/system/SysLib$SocketThread;->start()V

    .line 735
    :cond_0
    iget-object v3, p0, Lcom/htc/omadm/libdo/system/SysLib;->mSuspendLock:Ljava/lang/Object;

    monitor-enter v3

    .line 737
    :try_start_0
    const-string v2, "SysLib"

    const-string v4, "Get response from dmagent.6"

    invoke-static {v2, v4}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    iget-object v2, p0, Lcom/htc/omadm/libdo/system/SysLib;->mSuspendLock:Ljava/lang/Object;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 743
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 744
    const-string v2, "SysLib"

    const-string v3, "ExecRefurbish finish"

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    iget-boolean v2, p0, Lcom/htc/omadm/libdo/system/SysLib;->bResult:Z

    :goto_0
    return v2

    .line 739
    :catch_0
    move-exception v0

    .line 740
    .local v0, ie:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 741
    iget-boolean v2, p0, Lcom/htc/omadm/libdo/system/SysLib;->bResult:Z

    monitor-exit v3

    goto :goto_0

    .line 743
    .end local v0           #ie:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public radioReset(I)Z
    .locals 6
    .parameter "sessionType"

    .prologue
    .line 396
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/omadm/libdo/system/SysLib;->bResult:Z

    .line 398
    new-instance v1, Lcom/htc/omadm/libdo/system/SysLib$5;

    invoke-direct {v1, p0}, Lcom/htc/omadm/libdo/system/SysLib$5;-><init>(Lcom/htc/omadm/libdo/system/SysLib;)V

    .line 437
    .local v1, mradioReset:Lcom/htc/omadm/libdo/system/SysLib$SocketThread;
    invoke-virtual {p0}, Lcom/htc/omadm/libdo/system/SysLib;->enableDmConnector()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 438
    invoke-virtual {v1, p1}, Lcom/htc/omadm/libdo/system/SysLib$SocketThread;->SetCommand(I)V

    .line 439
    invoke-virtual {v1}, Lcom/htc/omadm/libdo/system/SysLib$SocketThread;->start()V

    .line 441
    :cond_0
    iget-object v3, p0, Lcom/htc/omadm/libdo/system/SysLib;->mSuspendLock:Ljava/lang/Object;

    monitor-enter v3

    .line 443
    :try_start_0
    const-string v2, "SysLib"

    const-string v4, "Get response from dmagent.5"

    invoke-static {v2, v4}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v2, p0, Lcom/htc/omadm/libdo/system/SysLib;->mSuspendLock:Ljava/lang/Object;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 450
    iget-boolean v2, p0, Lcom/htc/omadm/libdo/system/SysLib;->bResult:Z

    :goto_0
    return v2

    .line 445
    :catch_0
    move-exception v0

    .line 446
    .local v0, ie:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 447
    iget-boolean v2, p0, Lcom/htc/omadm/libdo/system/SysLib;->bResult:Z

    monitor-exit v3

    goto :goto_0

    .line 449
    .end local v0           #ie:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public setDDTM(Z)Z
    .locals 6
    .parameter "enable"

    .prologue
    .line 178
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/omadm/libdo/system/SysLib;->bResult:Z

    .line 180
    new-instance v1, Lcom/htc/omadm/libdo/system/SysLib$1;

    invoke-direct {v1, p0}, Lcom/htc/omadm/libdo/system/SysLib$1;-><init>(Lcom/htc/omadm/libdo/system/SysLib;)V

    .line 201
    .local v1, mSetDDTM:Lcom/htc/omadm/libdo/system/SysLib$SocketThread;
    invoke-virtual {p0}, Lcom/htc/omadm/libdo/system/SysLib;->enableDmConnector()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    invoke-virtual {v1, p1}, Lcom/htc/omadm/libdo/system/SysLib$SocketThread;->SetCommand(Z)V

    .line 203
    invoke-virtual {v1}, Lcom/htc/omadm/libdo/system/SysLib$SocketThread;->start()V

    .line 205
    :cond_0
    iget-object v3, p0, Lcom/htc/omadm/libdo/system/SysLib;->mSuspendLock:Ljava/lang/Object;

    monitor-enter v3

    .line 207
    :try_start_0
    const-string v2, "SysLib"

    const-string v4, "Get response from dmagent.1"

    invoke-static {v2, v4}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v2, p0, Lcom/htc/omadm/libdo/system/SysLib;->mSuspendLock:Ljava/lang/Object;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    iget-boolean v2, p0, Lcom/htc/omadm/libdo/system/SysLib;->bResult:Z

    :goto_0
    return v2

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, ie:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 211
    iget-boolean v2, p0, Lcom/htc/omadm/libdo/system/SysLib;->bResult:Z

    monitor-exit v3

    goto :goto_0

    .line 213
    .end local v0           #ie:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public setDMChannelInRadio(Ljava/lang/String;)Z
    .locals 6
    .parameter "cmd"

    .prologue
    .line 758
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/omadm/libdo/system/SysLib;->bResult:Z

    .line 760
    new-instance v1, Lcom/htc/omadm/libdo/system/SysLib$7;

    invoke-direct {v1, p0}, Lcom/htc/omadm/libdo/system/SysLib$7;-><init>(Lcom/htc/omadm/libdo/system/SysLib;)V

    .line 777
    .local v1, msetDMChannelInRadio:Lcom/htc/omadm/libdo/system/SysLib$SocketThread;
    invoke-virtual {p0}, Lcom/htc/omadm/libdo/system/SysLib;->getDMChannelInRadio()Z

    .line 778
    invoke-virtual {p0}, Lcom/htc/omadm/libdo/system/SysLib;->enableDmConnector()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 779
    invoke-virtual {v1, p1}, Lcom/htc/omadm/libdo/system/SysLib$SocketThread;->SetCommand(Ljava/lang/String;)V

    .line 780
    invoke-virtual {v1}, Lcom/htc/omadm/libdo/system/SysLib$SocketThread;->start()V

    .line 782
    :cond_0
    invoke-virtual {p0}, Lcom/htc/omadm/libdo/system/SysLib;->getDMChannelInRadio()Z

    .line 783
    iget-object v3, p0, Lcom/htc/omadm/libdo/system/SysLib;->mSuspendLock:Ljava/lang/Object;

    monitor-enter v3

    .line 785
    :try_start_0
    const-string v2, "SysLib"

    const-string v4, "Get response from dmagent.7"

    invoke-static {v2, v4}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    iget-object v2, p0, Lcom/htc/omadm/libdo/system/SysLib;->mSuspendLock:Ljava/lang/Object;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 791
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 792
    const-string v2, "SysLib"

    const-string v3, "ExecRefurbish finish"

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    iget-boolean v2, p0, Lcom/htc/omadm/libdo/system/SysLib;->bResult:Z

    :goto_0
    return v2

    .line 787
    :catch_0
    move-exception v0

    .line 788
    .local v0, ie:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 789
    iget-boolean v2, p0, Lcom/htc/omadm/libdo/system/SysLib;->bResult:Z

    monitor-exit v3

    goto :goto_0

    .line 791
    .end local v0           #ie:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public setForeground(Z)V
    .locals 5
    .parameter "on"

    .prologue
    const/4 v4, 0x1

    .line 960
    const-string v2, "SysLib"

    const-string v3, "setForeground"

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.omadm.core.setforeground"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 962
    .local v1, i:Landroid/content/Intent;
    if-ne p1, v4, :cond_2

    .line 964
    sget-boolean v2, Lcom/htc/omadm/libdo/system/SysLib;->bIsForeground:Z

    if-ne v2, v4, :cond_1

    .line 965
    const-string v2, "SysLib"

    const-string v3, "service already Foreground"

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    :cond_0
    :goto_0
    return-void

    .line 968
    :cond_1
    :try_start_0
    const-string v2, "EnableForeground"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 969
    iget-object v2, p0, Lcom/htc/omadm/libdo/system/SysLib;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 970
    const-string v2, "SysLib"

    const-string v3, "start service Foreground"

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    const/4 v2, 0x1

    sput-boolean v2, Lcom/htc/omadm/libdo/system/SysLib;->bIsForeground:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 972
    :catch_0
    move-exception v0

    .line 973
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 983
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    sget-boolean v2, Lcom/htc/omadm/libdo/system/SysLib;->bIsForeground:Z

    if-ne v2, v4, :cond_0

    .line 984
    const-string v2, "EnableForeground"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 985
    iget-object v2, p0, Lcom/htc/omadm/libdo/system/SysLib;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 986
    const-string v2, "SysLib"

    const-string v3, "stop service Foreground"

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    const/4 v2, 0x0

    sput-boolean v2, Lcom/htc/omadm/libdo/system/SysLib;->bIsForeground:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 989
    :catch_1
    move-exception v0

    .line 990
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setPowerAcquire(Z)V
    .locals 5
    .parameter "on"

    .prologue
    const/4 v4, 0x1

    .line 812
    if-eqz p1, :cond_3

    .line 816
    iget-object v2, p0, Lcom/htc/omadm/libdo/system/SysLib;->wl:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_0

    .line 817
    iget-object v2, p0, Lcom/htc/omadm/libdo/system/SysLib;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/omadm/libdo/system/SysLib;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 819
    .local v1, pm:Landroid/os/PowerManager;
    const-string v2, "SysLib"

    invoke-virtual {v1, v4, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/omadm/libdo/system/SysLib;->wl:Landroid/os/PowerManager$WakeLock;

    .line 821
    .end local v1           #pm:Landroid/os/PowerManager;
    :cond_0
    iget-boolean v2, p0, Lcom/htc/omadm/libdo/system/SysLib;->hasAcquire:Z

    if-eqz v2, :cond_2

    .line 823
    const-string v2, "SysLib"

    const-string v3, "has acquire()"

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    :cond_1
    :goto_0
    return-void

    .line 827
    :cond_2
    iget-object v2, p0, Lcom/htc/omadm/libdo/system/SysLib;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 828
    iput-boolean v4, p0, Lcom/htc/omadm/libdo/system/SysLib;->hasAcquire:Z

    .line 829
    const-string v2, "SysLib"

    const-string v3, "acquire()"

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 834
    :cond_3
    iget-boolean v2, p0, Lcom/htc/omadm/libdo/system/SysLib;->hasAcquire:Z

    if-eqz v2, :cond_1

    .line 835
    iget-object v2, p0, Lcom/htc/omadm/libdo/system/SysLib;->wl:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_4

    .line 836
    iget-object v2, p0, Lcom/htc/omadm/libdo/system/SysLib;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/omadm/libdo/system/SysLib;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 838
    .restart local v1       #pm:Landroid/os/PowerManager;
    const-string v2, "SysLib"

    invoke-virtual {v1, v4, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/omadm/libdo/system/SysLib;->wl:Landroid/os/PowerManager$WakeLock;

    .line 841
    .end local v1           #pm:Landroid/os/PowerManager;
    :cond_4
    :try_start_0
    iget-object v2, p0, Lcom/htc/omadm/libdo/system/SysLib;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 843
    iget-object v2, p0, Lcom/htc/omadm/libdo/system/SysLib;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 844
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/omadm/libdo/system/SysLib;->hasAcquire:Z

    .line 845
    const-string v2, "SysLib"

    const-string v3, "release()"

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 847
    :catch_0
    move-exception v0

    .line 848
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public writeDMConf()V
    .locals 2

    .prologue
    .line 700
    iget-object v0, p0, Lcom/htc/omadm/libdo/system/SysLib;->mWriteDMConf:Lcom/htc/omadm/libdo/system/SysLib$WriteDMHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/omadm/libdo/system/SysLib$WriteDMHandler;->sendEmptyMessage(I)Z

    .line 701
    return-void
.end method
