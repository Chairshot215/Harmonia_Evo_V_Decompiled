.class public Lcom/htc/omadm/tool/EntryOMADMToolInfo;
.super Landroid/app/Activity;
.source "EntryOMADMToolInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/omadm/tool/EntryOMADMToolInfo$SocketThread;
    }
.end annotation


# static fields
.field private static AT_DMAgent:Lcom/htc/omadm/util/DMAgentConnector; = null

.field private static AT_PREFIX:Ljava/lang/String; = null

.field private static BOOLEAN_AT_DMAGENT_CONNECT_SUCCESS:Z = false

.field private static BOOLEAN_DM_DMAGENT_CONNECT_SUCCESS:Z = false

.field private static BOOLEAN_SUPPORT_DMAGENT:Z = false

.field public static DBG:Z = false

.field private static DM_DMAgent:Lcom/htc/omadm/util/DMAgentConnector; = null

.field private static DM_PREFIX:Ljava/lang/String; = null

.field private static final LOG_TAG:Ljava/lang/String; = "EntryOMADMToolInfo"

.field public static final OMADMTool_OP_ALL:I = 0x7

.field public static final OMADMTool_OP_GENERIC:I = 0x1

.field public static final OMADMTool_OP_NONSPRINT:I = 0x5

.field public static final OMADMTool_OP_SPRINT:I = 0x2

.field public static final OMADMTool_OP_SUBSPRINT:I = 0x3

.field public static final OMADMTool_OP_VZW:I = 0x4

.field private static UNLOCK_RETRY:I = 0x0

.field public static final WORLD_PHONE:Z = true

.field static count:I

.field private static final mBuildType:Ljava/lang/String;

.field private static mDMSend:Lcom/htc/omadm/tool/EntryOMADMToolInfo$SocketThread;

.field private static mSuspendLock:Ljava/lang/Object;

.field private static mcloseDMAgent:Lcom/htc/omadm/tool/EntryOMADMToolInfo$SocketThread;

.field private static sResult:Ljava/lang/String;


# instance fields
.field private HOST_TYPE:Ljava/lang/String;

.field private final MSG_AT_INITIATE_COMPLETE:I

.field private final MSG_DM_INITIATE_COMPLETE:I

.field private final MSG_INITIATE_PROGRESS:I

.field private final MSG_REMOVE_PROGRESS:I

.field private final PROGRESS_DIALOG:I

.field private PROGRESS_TIMER:I

.field private mHandler:Landroid/os/Handler;

.field private mProgressDialog:Lcom/htc/app/HtcProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 42
    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->mBuildType:Ljava/lang/String;

    .line 43
    sget-object v0, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->mBuildType:Ljava/lang/String;

    const-string v3, "user"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->DBG:Z

    .line 45
    sput-boolean v2, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->BOOLEAN_SUPPORT_DMAGENT:Z

    .line 46
    sput-boolean v1, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->BOOLEAN_DM_DMAGENT_CONNECT_SUCCESS:Z

    .line 47
    sput-boolean v1, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->BOOLEAN_AT_DMAGENT_CONNECT_SUCCESS:Z

    .line 60
    sput-object v4, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->DM_DMAgent:Lcom/htc/omadm/util/DMAgentConnector;

    .line 61
    sput-object v4, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->AT_DMAgent:Lcom/htc/omadm/util/DMAgentConnector;

    .line 63
    const-string v0, "DM"

    sput-object v0, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->DM_PREFIX:Ljava/lang/String;

    .line 64
    const-string v0, "AT"

    sput-object v0, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->AT_PREFIX:Ljava/lang/String;

    .line 78
    const/4 v0, -0x1

    sput v0, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->UNLOCK_RETRY:I

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->mSuspendLock:Ljava/lang/Object;

    .line 86
    const-string v0, ""

    sput-object v0, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->sResult:Ljava/lang/String;

    .line 290
    sput v1, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->count:I

    return-void

    :cond_0
    move v0, v2

    .line 43
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->PROGRESS_DIALOG:I

    .line 53
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->MSG_DM_INITIATE_COMPLETE:I

    .line 54
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->MSG_AT_INITIATE_COMPLETE:I

    .line 55
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->MSG_INITIATE_PROGRESS:I

    .line 56
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->MSG_REMOVE_PROGRESS:I

    .line 58
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->PROGRESS_TIMER:I

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->HOST_TYPE:Ljava/lang/String;

    .line 90
    new-instance v0, Lcom/htc/omadm/tool/EntryOMADMToolInfo$1;

    invoke-direct {v0, p0}, Lcom/htc/omadm/tool/EntryOMADMToolInfo$1;-><init>(Lcom/htc/omadm/tool/EntryOMADMToolInfo;)V

    iput-object v0, p0, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->mHandler:Landroid/os/Handler;

    .line 39
    return-void
.end method

.method public static ATSend(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "iCmd"

    .prologue
    const/4 v0, 0x0

    .line 431
    sget-object v1, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->AT_DMAgent:Lcom/htc/omadm/util/DMAgentConnector;

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->BOOLEAN_AT_DMAGENT_CONNECT_SUCCESS:Z

    if-nez v1, :cond_2

    .line 432
    :cond_0
    const-string v1, "EntryOMADMToolInfo"

    const-string v2, "AT_DMAgent==null or BOOLEAN_AT_DMAGENT_CONNECT_SUCCESS=false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_1
    :goto_0
    return-object v0

    .line 435
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 436
    const-string v1, "EntryOMADMToolInfo"

    const-string v2, "iCmd.length==0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 440
    :cond_3
    sget-boolean v1, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->DBG:Z

    if-eqz v1, :cond_4

    const-string v1, "EntryOMADMToolInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "input command:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_4
    sget-object v1, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->AT_DMAgent:Lcom/htc/omadm/util/DMAgentConnector;

    invoke-virtual {v1, p0}, Lcom/htc/omadm/util/DMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 442
    .local v0, nResult:Ljava/lang/String;
    sget-boolean v1, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "EntryOMADMToolInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static DMSend(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "iCmd"

    .prologue
    const/4 v1, 0x0

    .line 381
    sget-object v2, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->DM_DMAgent:Lcom/htc/omadm/util/DMAgentConnector;

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->BOOLEAN_DM_DMAGENT_CONNECT_SUCCESS:Z

    if-nez v2, :cond_1

    .line 382
    :cond_0
    const-string v2, "EntryOMADMToolInfo"

    const-string v3, "DM_DMAgent==null or BOOLEAN_DM_DMAGENT_CONNECT_SUCCESS=false"

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :goto_0
    return-object v1

    .line 385
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 386
    const-string v2, "EntryOMADMToolInfo"

    const-string v3, "iCmd.length==0"

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 391
    :cond_2
    new-instance v1, Lcom/htc/omadm/tool/EntryOMADMToolInfo$4;

    invoke-direct {v1}, Lcom/htc/omadm/tool/EntryOMADMToolInfo$4;-><init>()V

    sput-object v1, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->mDMSend:Lcom/htc/omadm/tool/EntryOMADMToolInfo$SocketThread;

    .line 404
    const-string v1, ""

    sput-object v1, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->sResult:Ljava/lang/String;

    .line 405
    sget-object v1, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->mDMSend:Lcom/htc/omadm/tool/EntryOMADMToolInfo$SocketThread;

    invoke-virtual {v1, p0}, Lcom/htc/omadm/tool/EntryOMADMToolInfo$SocketThread;->SetCommand(Ljava/lang/String;)V

    .line 406
    sget-object v1, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->mDMSend:Lcom/htc/omadm/tool/EntryOMADMToolInfo$SocketThread;

    invoke-virtual {v1}, Lcom/htc/omadm/tool/EntryOMADMToolInfo$SocketThread;->start()V

    .line 408
    sget-object v2, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->mSuspendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 410
    :try_start_0
    const-string v1, "EntryOMADMToolInfo"

    const-string v3, "Get response from dmagent."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    sget-object v1, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->mSuspendLock:Ljava/lang/Object;

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 423
    sget-boolean v1, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "EntryOMADMToolInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sResult:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->sResult:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_3
    sget-object v1, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->sResult:Ljava/lang/String;

    goto :goto_0

    .line 412
    :catch_0
    move-exception v0

    .line 413
    .local v0, ie:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 415
    .end local v0           #ie:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method static synthetic access$000(Lcom/htc/omadm/tool/EntryOMADMToolInfo;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/omadm/tool/EntryOMADMToolInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->startSecrectMenu()V

    return-void
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->sResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    sput-object p0, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->sResult:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200()Lcom/htc/omadm/util/DMAgentConnector;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->AT_DMAgent:Lcom/htc/omadm/util/DMAgentConnector;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/omadm/util/DMAgentConnector;)Lcom/htc/omadm/util/DMAgentConnector;
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    sput-object p0, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->AT_DMAgent:Lcom/htc/omadm/util/DMAgentConnector;

    return-object p0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->BOOLEAN_AT_DMAGENT_CONNECT_SUCCESS:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    sput-boolean p0, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->BOOLEAN_AT_DMAGENT_CONNECT_SUCCESS:Z

    return p0
.end method

.method static synthetic access$400(Lcom/htc/omadm/tool/EntryOMADMToolInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->finishActivity()V

    return-void
.end method

.method static synthetic access$500()Lcom/htc/omadm/util/DMAgentConnector;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->DM_DMAgent:Lcom/htc/omadm/util/DMAgentConnector;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/omadm/util/DMAgentConnector;)Lcom/htc/omadm/util/DMAgentConnector;
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    sput-object p0, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->DM_DMAgent:Lcom/htc/omadm/util/DMAgentConnector;

    return-object p0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->DM_PREFIX:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/omadm/util/DMAgentConnector;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-static {p0, p1}, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->createDMagent(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/omadm/util/DMAgentConnector;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$802(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    sput-boolean p0, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->BOOLEAN_DM_DMAGENT_CONNECT_SUCCESS:Z

    return p0
.end method

.method static synthetic access$900()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->mSuspendLock:Ljava/lang/Object;

    return-object v0
.end method

.method public static closeDMAgent()V
    .locals 5

    .prologue
    .line 328
    new-instance v1, Lcom/htc/omadm/tool/EntryOMADMToolInfo$3;

    invoke-direct {v1}, Lcom/htc/omadm/tool/EntryOMADMToolInfo$3;-><init>()V

    sput-object v1, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->mcloseDMAgent:Lcom/htc/omadm/tool/EntryOMADMToolInfo$SocketThread;

    .line 351
    sget-object v1, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->mcloseDMAgent:Lcom/htc/omadm/tool/EntryOMADMToolInfo$SocketThread;

    invoke-virtual {v1}, Lcom/htc/omadm/tool/EntryOMADMToolInfo$SocketThread;->start()V

    .line 353
    sget-object v2, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->mSuspendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 355
    :try_start_0
    sget-object v1, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->mSuspendLock:Ljava/lang/Object;

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    .local v0, ie:Ljava/lang/InterruptedException;
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 375
    return-void

    .line 356
    .end local v0           #ie:Ljava/lang/InterruptedException;
    :catch_0
    move-exception v0

    .line 357
    .restart local v0       #ie:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 359
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static createDMagent(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/omadm/util/DMAgentConnector;
    .locals 9
    .parameter "iDMType"
    .parameter "iConnectType"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 237
    const/4 v1, 0x0

    .line 238
    .local v1, dmagent:Lcom/htc/omadm/util/DMAgentConnector;
    sget-boolean v4, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->BOOLEAN_SUPPORT_DMAGENT:Z

    if-ne v4, v7, :cond_7

    .line 240
    const-string v4, "EntryOMADMToolInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createDMagent,type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    new-instance v1, Lcom/htc/omadm/util/DMAgentConnector;

    .end local v1           #dmagent:Lcom/htc/omadm/util/DMAgentConnector;
    invoke-direct {v1}, Lcom/htc/omadm/util/DMAgentConnector;-><init>()V

    .line 242
    .restart local v1       #dmagent:Lcom/htc/omadm/util/DMAgentConnector;
    const/4 v3, 0x0

    .line 243
    .local v3, nCount:I
    const/4 v0, 0x0

    .line 244
    .local v0, bResult:Z
    :goto_0
    invoke-virtual {v1}, Lcom/htc/omadm/util/DMAgentConnector;->openConnection()Z

    move-result v4

    if-nez v4, :cond_4

    .line 245
    const-string v4, "EntryOMADMToolInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OoO nCount:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const/16 v4, 0xa

    if-lt v3, v4, :cond_3

    .line 248
    if-eqz v1, :cond_0

    .line 249
    invoke-virtual {v1}, Lcom/htc/omadm/util/DMAgentConnector;->closeConnection()Z

    .line 250
    const-string v4, "EntryOMADMToolInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OoO dmagent.closeConnection().count:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_0
    sget-object v4, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->DM_PREFIX:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 254
    sput-boolean v8, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->BOOLEAN_DM_DMAGENT_CONNECT_SUCCESS:Z

    .line 260
    :goto_1
    const/4 v4, 0x0

    .line 283
    .end local v0           #bResult:Z
    .end local v3           #nCount:I
    :goto_2
    return-object v4

    .line 255
    .restart local v0       #bResult:Z
    .restart local v3       #nCount:I
    :cond_1
    sget-object v4, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->AT_PREFIX:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 256
    sput-boolean v8, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->BOOLEAN_AT_DMAGENT_CONNECT_SUCCESS:Z

    goto :goto_1

    .line 258
    :cond_2
    const-string v4, "EntryOMADMToolInfo"

    const-string v5, "No this dmagent type.Please check!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 263
    :cond_3
    const-wide/16 v4, 0x1f4

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 264
    :catch_0
    move-exception v2

    .line 265
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "EntryOMADMToolInfo"

    const-string v5, "Thread.sleep(500).ERROR"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 270
    .end local v2           #e:Ljava/lang/Exception;
    :cond_4
    sget-object v4, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->DM_PREFIX:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 271
    sput-boolean v7, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->BOOLEAN_DM_DMAGENT_CONNECT_SUCCESS:Z

    .line 272
    const/4 v0, 0x1

    .line 279
    :goto_4
    const-string v4, "EntryOMADMToolInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OoO openConnection.type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " success:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " BOOLEAN_DM_DMAGENT_CONNECT_SUCCESS:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->BOOLEAN_DM_DMAGENT_CONNECT_SUCCESS:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " BOOLEAN_AT_DMAGENT_CONNECT_SUCCESS:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->BOOLEAN_AT_DMAGENT_CONNECT_SUCCESS:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #bResult:Z
    .end local v3           #nCount:I
    :goto_5
    move-object v4, v1

    .line 283
    goto :goto_2

    .line 273
    .restart local v0       #bResult:Z
    .restart local v3       #nCount:I
    :cond_5
    sget-object v4, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->AT_PREFIX:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 274
    sput-boolean v7, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->BOOLEAN_AT_DMAGENT_CONNECT_SUCCESS:Z

    .line 275
    const/4 v0, 0x1

    goto :goto_4

    .line 277
    :cond_6
    const-string v4, "EntryOMADMToolInfo"

    const-string v5, "No this dmagent type.Please check!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 281
    .end local v0           #bResult:Z
    .end local v3           #nCount:I
    :cond_7
    const-string v4, "EntryOMADMToolInfo"

    const-string v5, "OoO.createDMagent.fail"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method private finishActivity()V
    .locals 0

    .prologue
    .line 318
    if-eqz p0, :cond_0

    .line 319
    invoke-virtual {p0}, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->finish()V

    .line 321
    :cond_0
    return-void
.end method

.method public static freezeNum()I
    .locals 1

    .prologue
    .line 459
    sget v0, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->UNLOCK_RETRY:I

    return v0
.end method

.method public static isATConnectSuccess()Z
    .locals 3

    .prologue
    .line 454
    sget-boolean v0, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "EntryOMADMToolInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isATConnectSuccess.BOOLEAN_AT_DMAGENT_CONNECT_SUCCESS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->BOOLEAN_AT_DMAGENT_CONNECT_SUCCESS:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_0
    sget-boolean v0, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->BOOLEAN_AT_DMAGENT_CONNECT_SUCCESS:Z

    return v0
.end method

.method public static isDMConnectSuccess()Z
    .locals 3

    .prologue
    .line 449
    sget-boolean v0, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "EntryOMADMToolInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDMConnectSuccess.BOOLEAN_DM_DMAGENT_CONNECT_SUCCESS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->BOOLEAN_DM_DMAGENT_CONNECT_SUCCESS:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_0
    sget-boolean v0, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->BOOLEAN_DM_DMAGENT_CONNECT_SUCCESS:Z

    return v0
.end method

.method public static isSupportDMAgent()Z
    .locals 1

    .prologue
    .line 287
    sget-boolean v0, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->BOOLEAN_SUPPORT_DMAGENT:Z

    return v0
.end method

.method private startSecrectMenu()V
    .locals 6

    .prologue
    .line 294
    const-string v3, "EntryOMADMToolInfo"

    const-string v4, "startSecrectMenu in"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    sget-boolean v3, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "EntryOMADMToolInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "host ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->HOST_TYPE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_0
    const/4 v0, 0x1

    .line 305
    .local v0, bResult:Z
    iget-object v3, p0, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->HOST_TYPE:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/omadm/tool/GroupTable;->getCodeIndex(Ljava/lang/String;)I

    move-result v2

    .line 307
    .local v2, index:I
    if-eqz v0, :cond_1

    .line 308
    invoke-static {v2}, Lcom/htc/omadm/tool/GroupTable;->setCurrentIndex(I)V

    .line 309
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 310
    .local v1, i:Landroid/content/Intent;
    sget-object v3, Lcom/htc/omadm/tool/OMADMTool;->mContext:Landroid/content/Context;

    const-class v4, Lcom/htc/omadm/tool/OMADMTool;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 311
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 312
    sget-object v3, Lcom/htc/omadm/tool/OMADMTool;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 314
    .end local v1           #i:Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->finish()V

    .line 315
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    .line 146
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 147
    sget-boolean v1, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "EntryOMADMToolInfo"

    const-string v2, "onCreate in"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    iget v3, p0, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->PROGRESS_TIMER:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 154
    invoke-virtual {p0}, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 155
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->HOST_TYPE:Ljava/lang/String;

    .line 157
    sget-boolean v1, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "EntryOMADMToolInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get host:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->HOST_TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_1
    sget-object v1, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->DM_DMAgent:Lcom/htc/omadm/util/DMAgentConnector;

    if-nez v1, :cond_2

    .line 161
    const/4 v1, 0x0

    sput-boolean v1, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->BOOLEAN_DM_DMAGENT_CONNECT_SUCCESS:Z

    .line 163
    new-instance v1, Lcom/htc/omadm/tool/EntryOMADMToolInfo$2;

    invoke-direct {v1, p0}, Lcom/htc/omadm/tool/EntryOMADMToolInfo$2;-><init>(Lcom/htc/omadm/tool/EntryOMADMToolInfo;)V

    invoke-virtual {v1}, Lcom/htc/omadm/tool/EntryOMADMToolInfo$2;->start()V

    .line 173
    :cond_2
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "id"

    .prologue
    .line 177
    packed-switch p1, :pswitch_data_0

    .line 191
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 179
    :pswitch_0
    iget-object v0, p0, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 182
    :cond_0
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 183
    iget-object v0, p0, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const v1, 0x7f030022

    invoke-virtual {p0, v1}, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v0, p0, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 185
    iget-object v0, p0, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 186
    iget-object v0, p0, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    goto :goto_0

    .line 177
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 196
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 197
    sget-boolean v0, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "EntryOMADMToolInfo"

    const-string v1, "onResume in"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 232
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 233
    const-string v0, "EntryOMADMToolInfo"

    const-string v1, "on Stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return-void
.end method
