.class public Lcom/htc/android/epst/EntryEPSTInfo;
.super Landroid/app/Activity;
.source "EntryEPSTInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/epst/EntryEPSTInfo$AgentHandler;
    }
.end annotation


# static fields
.field private static AT_DMAgent:Lcom/htc/android/epst/dmagent/DMAgentConnector; = null

.field private static AT_PREFIX:Ljava/lang/String; = null

.field private static BOOLEAN_AT_DMAGENT_CONNECT_SUCCESS:Z = false

.field private static BOOLEAN_DM_DMAGENT_CONNECT_SUCCESS:Z = false

.field private static BOOLEAN_SUPPORT_DMAGENT:Z = false

.field private static CUSTOM_TRIGGER:Ljava/lang/String; = null

.field public static DBG:Z = false

.field private static DM_DMAgent:Lcom/htc/android/epst/dmagent/DMAgentConnector; = null

.field private static DM_PREFIX:Ljava/lang/String; = null

.field private static EPST_OPERATION_ID:I = 0x0

.field public static final EPST_OP_ALL:I = 0x7

.field public static final EPST_OP_GENERIC:I = 0x1

.field public static final EPST_OP_NONSPRINT:I = 0x5

.field public static final EPST_OP_SPRINT:I = 0x2

.field public static final EPST_OP_SUBSPRINT:I = 0x3

.field public static final EPST_OP_VZW:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "EntryEPSTInfo"

.field private static final MSG_CLEAR_TIRGGER_EVENT:I = 0x0

.field private static final MSG_CLEAR_TIRGGER_TIMEOUT:I = 0x2710

.field private static TRIGGER_EVENT:Ljava/lang/String;

.field private static UNLOCK_RETRY:I

.field public static final WORLD_PHONE:Z

.field static count:I

.field private static final mBuildType:Ljava/lang/String;

.field private static mDATAGroupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/epst/SettingGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static mGenericGroupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/epst/SettingGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static mPROGroupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/epst/SettingGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static mPSTGroupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/epst/SettingGroup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private HOST_TYPE:Ljava/lang/String;

.field private final MSG_AT_INITIATE_COMPLETE:I

.field private final MSG_DM_INITIATE_COMPLETE:I

.field private final MSG_ENTER_DIRECTLY:I

.field private final MSG_INITIATE_PROGRESS:I

.field private final MSG_REMOVE_PROGRESS:I

.field private MSLCODE:Ljava/lang/String;

.field private final NVOPERATORID:Ljava/lang/String;

.field private OTKSLCODE:Ljava/lang/String;

.field private final PROGRESS_DIALOG:I

.field private PROGRESS_TIMER:I

.field private final UNLOCKSPC:Ljava/lang/String;

.field mAgentHandler:Lcom/htc/android/epst/EntryEPSTInfo$AgentHandler;

.field private mProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field private volatile mServiceLooper:Landroid/os/Looper;

.field mThread:Landroid/os/HandlerThread;

.field msg:Landroid/os/Message;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v5, -0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 45
    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/android/epst/EntryEPSTInfo;->mBuildType:Ljava/lang/String;

    .line 46
    sget-object v0, Lcom/htc/android/epst/EntryEPSTInfo;->mBuildType:Ljava/lang/String;

    const-string v3, "user"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/htc/android/epst/EntryEPSTInfo;->DBG:Z

    .line 48
    sput-boolean v2, Lcom/htc/android/epst/EntryEPSTInfo;->BOOLEAN_SUPPORT_DMAGENT:Z

    .line 49
    sput-boolean v1, Lcom/htc/android/epst/EntryEPSTInfo;->BOOLEAN_DM_DMAGENT_CONNECT_SUCCESS:Z

    .line 50
    sput-boolean v1, Lcom/htc/android/epst/EntryEPSTInfo;->BOOLEAN_AT_DMAGENT_CONNECT_SUCCESS:Z

    .line 64
    sput-object v4, Lcom/htc/android/epst/EntryEPSTInfo;->DM_DMAgent:Lcom/htc/android/epst/dmagent/DMAgentConnector;

    .line 65
    sput-object v4, Lcom/htc/android/epst/EntryEPSTInfo;->AT_DMAgent:Lcom/htc/android/epst/dmagent/DMAgentConnector;

    .line 67
    const-string v0, "DM"

    sput-object v0, Lcom/htc/android/epst/EntryEPSTInfo;->DM_PREFIX:Ljava/lang/String;

    .line 68
    const-string v0, "AT"

    sput-object v0, Lcom/htc/android/epst/EntryEPSTInfo;->AT_PREFIX:Ljava/lang/String;

    .line 78
    sget-boolean v0, Lcom/htc/android/epst/HtcFeatureList;->IS_WORLD_PHONE:Z

    sput-boolean v0, Lcom/htc/android/epst/EntryEPSTInfo;->WORLD_PHONE:Z

    .line 87
    sput v5, Lcom/htc/android/epst/EntryEPSTInfo;->EPST_OPERATION_ID:I

    .line 89
    sput v5, Lcom/htc/android/epst/EntryEPSTInfo;->UNLOCK_RETRY:I

    .line 91
    const-string v0, ""

    sput-object v0, Lcom/htc/android/epst/EntryEPSTInfo;->TRIGGER_EVENT:Ljava/lang/String;

    .line 92
    const-string v0, ""

    sput-object v0, Lcom/htc/android/epst/EntryEPSTInfo;->CUSTOM_TRIGGER:Ljava/lang/String;

    .line 460
    sput v1, Lcom/htc/android/epst/EntryEPSTInfo;->count:I

    .line 716
    sput-object v4, Lcom/htc/android/epst/EntryEPSTInfo;->mPSTGroupList:Ljava/util/List;

    .line 718
    sput-object v4, Lcom/htc/android/epst/EntryEPSTInfo;->mPROGroupList:Ljava/util/List;

    .line 720
    sput-object v4, Lcom/htc/android/epst/EntryEPSTInfo;->mDATAGroupList:Ljava/util/List;

    .line 722
    sput-object v4, Lcom/htc/android/epst/EntryEPSTInfo;->mGenericGroupList:Ljava/util/List;

    return-void

    :cond_0
    move v0, v2

    .line 46
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/epst/EntryEPSTInfo;->PROGRESS_DIALOG:I

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/android/epst/EntryEPSTInfo;->MSG_DM_INITIATE_COMPLETE:I

    .line 57
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/android/epst/EntryEPSTInfo;->MSG_AT_INITIATE_COMPLETE:I

    .line 58
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/android/epst/EntryEPSTInfo;->MSG_INITIATE_PROGRESS:I

    .line 59
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/android/epst/EntryEPSTInfo;->MSG_REMOVE_PROGRESS:I

    .line 60
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/android/epst/EntryEPSTInfo;->MSG_ENTER_DIRECTLY:I

    .line 62
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/htc/android/epst/EntryEPSTInfo;->PROGRESS_TIMER:I

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/epst/EntryEPSTInfo;->MSLCODE:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/epst/EntryEPSTInfo;->OTKSLCODE:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/epst/EntryEPSTInfo;->HOST_TYPE:Ljava/lang/String;

    .line 75
    const-string v0, "C8F8000000"

    iput-object v0, p0, Lcom/htc/android/epst/EntryEPSTInfo;->NVOPERATORID:Ljava/lang/String;

    .line 77
    const-string v0, "C841746477616F70"

    iput-object v0, p0, Lcom/htc/android/epst/EntryEPSTInfo;->UNLOCKSPC:Ljava/lang/String;

    .line 96
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "EntryEPSTInfo"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/android/epst/EntryEPSTInfo;->mThread:Landroid/os/HandlerThread;

    .line 42
    return-void
.end method

.method public static ATSend(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "iCmd"

    .prologue
    const/4 v0, 0x0

    .line 667
    sget-object v1, Lcom/htc/android/epst/EntryEPSTInfo;->AT_DMAgent:Lcom/htc/android/epst/dmagent/DMAgentConnector;

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/htc/android/epst/EntryEPSTInfo;->BOOLEAN_AT_DMAGENT_CONNECT_SUCCESS:Z

    if-nez v1, :cond_2

    .line 668
    :cond_0
    const-string v1, "EntryEPSTInfo"

    const-string v2, "AT_DMAgent==null or BOOLEAN_AT_DMAGENT_CONNECT_SUCCESS=false"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :cond_1
    :goto_0
    return-object v0

    .line 671
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 672
    const-string v1, "EntryEPSTInfo"

    const-string v2, "iCmd.length==0"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 676
    :cond_3
    sget-boolean v1, Lcom/htc/android/epst/EntryEPSTInfo;->DBG:Z

    if-eqz v1, :cond_4

    const-string v1, "EntryEPSTInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "input command:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :cond_4
    sget-object v1, Lcom/htc/android/epst/EntryEPSTInfo;->AT_DMAgent:Lcom/htc/android/epst/dmagent/DMAgentConnector;

    invoke-virtual {v1, p0}, Lcom/htc/android/epst/dmagent/DMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 678
    .local v0, nResult:Ljava/lang/String;
    sget-boolean v1, Lcom/htc/android/epst/EntryEPSTInfo;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "EntryEPSTInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static DMSend(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "iCmd"

    .prologue
    const/4 v0, 0x0

    .line 646
    sget-object v1, Lcom/htc/android/epst/EntryEPSTInfo;->DM_DMAgent:Lcom/htc/android/epst/dmagent/DMAgentConnector;

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/htc/android/epst/EntryEPSTInfo;->BOOLEAN_DM_DMAGENT_CONNECT_SUCCESS:Z

    if-nez v1, :cond_2

    .line 647
    :cond_0
    const-string v1, "EntryEPSTInfo"

    const-string v2, "DM_DMAgent==null or BOOLEAN_DM_DMAGENT_CONNECT_SUCCESS=false"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :cond_1
    :goto_0
    return-object v0

    .line 650
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 651
    const-string v1, "EntryEPSTInfo"

    const-string v2, "iCmd.length==0"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 655
    :cond_3
    sget-boolean v1, Lcom/htc/android/epst/EntryEPSTInfo;->DBG:Z

    if-eqz v1, :cond_4

    const-string v1, "EntryEPSTInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "input command:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :cond_4
    sget-object v1, Lcom/htc/android/epst/EntryEPSTInfo;->DM_DMAgent:Lcom/htc/android/epst/dmagent/DMAgentConnector;

    invoke-virtual {v1, p0}, Lcom/htc/android/epst/dmagent/DMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 657
    .local v0, nResult:Ljava/lang/String;
    sget-boolean v1, Lcom/htc/android/epst/EntryEPSTInfo;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "EntryEPSTInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000()Lcom/htc/android/epst/dmagent/DMAgentConnector;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/htc/android/epst/EntryEPSTInfo;->DM_DMAgent:Lcom/htc/android/epst/dmagent/DMAgentConnector;

    return-object v0
.end method

.method static synthetic access$002(Lcom/htc/android/epst/dmagent/DMAgentConnector;)Lcom/htc/android/epst/dmagent/DMAgentConnector;
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    sput-object p0, Lcom/htc/android/epst/EntryEPSTInfo;->DM_DMAgent:Lcom/htc/android/epst/dmagent/DMAgentConnector;

    return-object p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/htc/android/epst/EntryEPSTInfo;->BOOLEAN_DM_DMAGENT_CONNECT_SUCCESS:Z

    return v0
.end method

.method static synthetic access$1000(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/android/epst/dmagent/DMAgentConnector;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-static {p0, p1}, Lcom/htc/android/epst/EntryEPSTInfo;->createDMagent(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/android/epst/dmagent/DMAgentConnector;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/htc/android/epst/EntryEPSTInfo;->DM_PREFIX:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/android/epst/EntryEPSTInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/htc/android/epst/EntryEPSTInfo;->getPassword()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/android/epst/EntryEPSTInfo;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/htc/android/epst/EntryEPSTInfo;->getOperatorID(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/android/epst/EntryEPSTInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/htc/android/epst/EntryEPSTInfo;->startSecrectMenu()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/android/epst/EntryEPSTInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/htc/android/epst/EntryEPSTInfo;->finishActivity()V

    return-void
.end method

.method static synthetic access$600()Lcom/htc/android/epst/dmagent/DMAgentConnector;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/htc/android/epst/EntryEPSTInfo;->AT_DMAgent:Lcom/htc/android/epst/dmagent/DMAgentConnector;

    return-object v0
.end method

.method static synthetic access$602(Lcom/htc/android/epst/dmagent/DMAgentConnector;)Lcom/htc/android/epst/dmagent/DMAgentConnector;
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    sput-object p0, Lcom/htc/android/epst/EntryEPSTInfo;->AT_DMAgent:Lcom/htc/android/epst/dmagent/DMAgentConnector;

    return-object p0
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/htc/android/epst/EntryEPSTInfo;->BOOLEAN_AT_DMAGENT_CONNECT_SUCCESS:Z

    return v0
.end method

.method static synthetic access$802(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    sput-object p0, Lcom/htc/android/epst/EntryEPSTInfo;->CUSTOM_TRIGGER:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/htc/android/epst/EntryEPSTInfo;->AT_PREFIX:Ljava/lang/String;

    return-object v0
.end method

.method public static closeDMAgent()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 627
    sget-object v0, Lcom/htc/android/epst/EntryEPSTInfo;->DM_DMAgent:Lcom/htc/android/epst/dmagent/DMAgentConnector;

    if-eqz v0, :cond_0

    .line 628
    sget-object v0, Lcom/htc/android/epst/EntryEPSTInfo;->DM_DMAgent:Lcom/htc/android/epst/dmagent/DMAgentConnector;

    invoke-virtual {v0}, Lcom/htc/android/epst/dmagent/DMAgentConnector;->closeConnection()Z

    .line 629
    sput-object v3, Lcom/htc/android/epst/EntryEPSTInfo;->DM_DMAgent:Lcom/htc/android/epst/dmagent/DMAgentConnector;

    .line 630
    sput-boolean v2, Lcom/htc/android/epst/EntryEPSTInfo;->BOOLEAN_DM_DMAGENT_CONNECT_SUCCESS:Z

    .line 631
    const-string v0, "EntryEPSTInfo"

    const-string v1, "Close DM Agent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :cond_0
    sget-object v0, Lcom/htc/android/epst/EntryEPSTInfo;->AT_DMAgent:Lcom/htc/android/epst/dmagent/DMAgentConnector;

    if-eqz v0, :cond_1

    .line 635
    sget-object v0, Lcom/htc/android/epst/EntryEPSTInfo;->AT_DMAgent:Lcom/htc/android/epst/dmagent/DMAgentConnector;

    invoke-virtual {v0}, Lcom/htc/android/epst/dmagent/DMAgentConnector;->closeConnection()Z

    .line 636
    sput-object v3, Lcom/htc/android/epst/EntryEPSTInfo;->AT_DMAgent:Lcom/htc/android/epst/dmagent/DMAgentConnector;

    .line 637
    sput-boolean v2, Lcom/htc/android/epst/EntryEPSTInfo;->BOOLEAN_AT_DMAGENT_CONNECT_SUCCESS:Z

    .line 638
    const-string v0, "EntryEPSTInfo"

    const-string v1, "Close AT Agent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :cond_1
    return-void
.end method

.method private static createDMagent(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/android/epst/dmagent/DMAgentConnector;
    .locals 9
    .parameter "iDMType"
    .parameter "iConnectType"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 315
    const/4 v1, 0x0

    .line 316
    .local v1, dmagent:Lcom/htc/android/epst/dmagent/DMAgentConnector;
    sget-boolean v4, Lcom/htc/android/epst/EntryEPSTInfo;->BOOLEAN_SUPPORT_DMAGENT:Z

    if-ne v4, v7, :cond_9

    .line 318
    sget-boolean v4, Lcom/htc/android/epst/EntryEPSTInfo;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "EntryEPSTInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createDMagent,type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_0
    new-instance v1, Lcom/htc/android/epst/dmagent/DMAgentConnector;

    .end local v1           #dmagent:Lcom/htc/android/epst/dmagent/DMAgentConnector;
    invoke-direct {v1}, Lcom/htc/android/epst/dmagent/DMAgentConnector;-><init>()V

    .line 320
    .restart local v1       #dmagent:Lcom/htc/android/epst/dmagent/DMAgentConnector;
    const/4 v3, 0x0

    .line 321
    .local v3, nCount:I
    const/4 v0, 0x0

    .line 322
    .local v0, bResult:Z
    :goto_0
    invoke-virtual {v1, p1}, Lcom/htc/android/epst/dmagent/DMAgentConnector;->openConnection(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 323
    sget-boolean v4, Lcom/htc/android/epst/EntryEPSTInfo;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "EntryEPSTInfo"

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

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_1
    const/16 v4, 0xa

    if-lt v3, v4, :cond_5

    .line 326
    if-eqz v1, :cond_2

    .line 327
    invoke-virtual {v1}, Lcom/htc/android/epst/dmagent/DMAgentConnector;->closeConnection()Z

    .line 328
    const-string v4, "EntryEPSTInfo"

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

    .line 331
    :cond_2
    sget-object v4, Lcom/htc/android/epst/EntryEPSTInfo;->DM_PREFIX:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 332
    sput-boolean v8, Lcom/htc/android/epst/EntryEPSTInfo;->BOOLEAN_DM_DMAGENT_CONNECT_SUCCESS:Z

    .line 338
    :goto_1
    const/4 v4, 0x0

    .line 361
    .end local v0           #bResult:Z
    .end local v3           #nCount:I
    :goto_2
    return-object v4

    .line 333
    .restart local v0       #bResult:Z
    .restart local v3       #nCount:I
    :cond_3
    sget-object v4, Lcom/htc/android/epst/EntryEPSTInfo;->AT_PREFIX:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 334
    sput-boolean v8, Lcom/htc/android/epst/EntryEPSTInfo;->BOOLEAN_AT_DMAGENT_CONNECT_SUCCESS:Z

    goto :goto_1

    .line 336
    :cond_4
    const-string v4, "EntryEPSTInfo"

    const-string v5, "No this dmagent type.Please check!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 341
    :cond_5
    const-wide/16 v4, 0x1f4

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 342
    :catch_0
    move-exception v2

    .line 343
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "EntryEPSTInfo"

    const-string v5, "Thread.sleep(500).ERROR"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 348
    .end local v2           #e:Ljava/lang/Exception;
    :cond_6
    sget-object v4, Lcom/htc/android/epst/EntryEPSTInfo;->DM_PREFIX:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 349
    sput-boolean v7, Lcom/htc/android/epst/EntryEPSTInfo;->BOOLEAN_DM_DMAGENT_CONNECT_SUCCESS:Z

    .line 350
    const/4 v0, 0x1

    .line 357
    :goto_4
    const-string v4, "EntryEPSTInfo"

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

    sget-boolean v6, Lcom/htc/android/epst/EntryEPSTInfo;->BOOLEAN_DM_DMAGENT_CONNECT_SUCCESS:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " BOOLEAN_AT_DMAGENT_CONNECT_SUCCESS:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/htc/android/epst/EntryEPSTInfo;->BOOLEAN_AT_DMAGENT_CONNECT_SUCCESS:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #bResult:Z
    .end local v3           #nCount:I
    :goto_5
    move-object v4, v1

    .line 361
    goto :goto_2

    .line 351
    .restart local v0       #bResult:Z
    .restart local v3       #nCount:I
    :cond_7
    sget-object v4, Lcom/htc/android/epst/EntryEPSTInfo;->AT_PREFIX:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 352
    sput-boolean v7, Lcom/htc/android/epst/EntryEPSTInfo;->BOOLEAN_AT_DMAGENT_CONNECT_SUCCESS:Z

    .line 353
    const/4 v0, 0x1

    goto :goto_4

    .line 355
    :cond_8
    const-string v4, "EntryEPSTInfo"

    const-string v5, "No this dmagent type.Please check!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 359
    .end local v0           #bResult:Z
    .end local v3           #nCount:I
    :cond_9
    const-string v4, "EntryEPSTInfo"

    const-string v5, "OoO.createDMagent.fail"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method private findString(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "iSID"

    .prologue
    const/4 v7, 0x0

    .line 858
    const-class v6, Lcom/htc/android/epst/R$string;

    .line 859
    .local v6, stringClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v6}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 860
    .local v1, fIDs:[Ljava/lang/reflect/Field;
    const-string v5, ""

    .line 861
    .local v5, nName:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v8, v1

    if-ge v3, v8, :cond_2

    .line 862
    aget-object v2, v1, v3

    .line 863
    .local v2, fld:Ljava/lang/reflect/Field;
    const/4 v4, -0x1

    .line 865
    .local v4, nID:I
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v2, v8}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 871
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 872
    sget-boolean v7, Lcom/htc/android/epst/EntryEPSTInfo;->DBG:Z

    if-eqz v7, :cond_0

    const-string v7, "EntryEPSTInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    :cond_0
    invoke-virtual {p0, v4}, Lcom/htc/android/epst/EntryEPSTInfo;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v7, v5

    .line 879
    .end local v2           #fld:Ljava/lang/reflect/Field;
    .end local v4           #nID:I
    :goto_1
    return-object v7

    .line 866
    .restart local v2       #fld:Ljava/lang/reflect/Field;
    .restart local v4       #nID:I
    :catch_0
    move-exception v0

    .line 867
    .local v0, e:Ljava/lang/Exception;
    const-string v8, "EntryEPSTInfo"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 878
    .end local v2           #fld:Ljava/lang/reflect/Field;
    .end local v4           #nID:I
    :cond_2
    const-string v8, "EntryEPSTInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can\'t find the ID from resource:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private finishActivity()V
    .locals 0

    .prologue
    .line 617
    if-eqz p0, :cond_0

    .line 618
    invoke-virtual {p0}, Lcom/htc/android/epst/EntryEPSTInfo;->finish()V

    .line 620
    :cond_0
    return-void
.end method

.method public static freezeNum()I
    .locals 1

    .prologue
    .line 695
    sget v0, Lcom/htc/android/epst/EntryEPSTInfo;->UNLOCK_RETRY:I

    return v0
.end method

.method public static getDATAGroupList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/epst/SettingGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 891
    sget-object v0, Lcom/htc/android/epst/EntryEPSTInfo;->mDATAGroupList:Ljava/util/List;

    return-object v0
.end method

.method private getGroupInfo(Landroid/content/res/XmlResourceParser;)V
    .locals 12
    .parameter "parser"

    .prologue
    .line 796
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 798
    .local v2, attributes:Landroid/util/AttributeSet;
    :try_start_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v4

    .line 799
    .local v4, eventType:I
    :goto_0
    const/4 v10, 0x1

    if-eq v4, v10, :cond_6

    .line 800
    const/4 v10, 0x2

    if-ne v4, v10, :cond_5

    .line 801
    invoke-interface {v2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v9

    .line 802
    .local v9, size:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v9, :cond_5

    .line 803
    invoke-interface {v2, v5}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 804
    .local v0, attrName:Ljava/lang/String;
    invoke-interface {v2, v5}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 805
    .local v1, attrValue:Ljava/lang/String;
    const-string v10, "name"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 806
    invoke-direct {p0, v1}, Lcom/htc/android/epst/EntryEPSTInfo;->findString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 807
    .local v8, nName:Ljava/lang/String;
    sget-object v10, Lcom/htc/android/epst/EntryEPSTInfo;->mGenericGroupList:Ljava/util/List;

    new-instance v11, Lcom/htc/android/epst/SettingGroup;

    invoke-direct {v11, v8}, Lcom/htc/android/epst/SettingGroup;-><init>(Ljava/lang/String;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 802
    .end local v8           #nName:Ljava/lang/String;
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 809
    :cond_1
    const-string v10, "mode"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 811
    invoke-direct {p0}, Lcom/htc/android/epst/EntryEPSTInfo;->getLastGroupItem()Lcom/htc/android/epst/SettingGroup;

    move-result-object v7

    .line 812
    .local v7, lastItem:Lcom/htc/android/epst/SettingGroup;
    if-eqz v7, :cond_0

    .line 813
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 814
    .local v6, index:I
    invoke-virtual {v7, v6}, Lcom/htc/android/epst/SettingGroup;->setMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 842
    .end local v0           #attrName:Ljava/lang/String;
    .end local v1           #attrValue:Ljava/lang/String;
    .end local v4           #eventType:I
    .end local v5           #i:I
    .end local v6           #index:I
    .end local v7           #lastItem:Lcom/htc/android/epst/SettingGroup;
    .end local v9           #size:I
    :catch_0
    move-exception v3

    .line 843
    .local v3, e:Ljava/lang/Exception;
    const-string v10, "EntryEPSTInfo"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    .end local v3           #e:Ljava/lang/Exception;
    :goto_3
    return-void

    .line 817
    .restart local v0       #attrName:Ljava/lang/String;
    .restart local v1       #attrValue:Ljava/lang/String;
    .restart local v4       #eventType:I
    .restart local v5       #i:I
    .restart local v9       #size:I
    :cond_2
    :try_start_1
    const-string v10, "operator"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 818
    invoke-direct {p0}, Lcom/htc/android/epst/EntryEPSTInfo;->getLastGroupItem()Lcom/htc/android/epst/SettingGroup;

    move-result-object v7

    .line 819
    .restart local v7       #lastItem:Lcom/htc/android/epst/SettingGroup;
    if-eqz v7, :cond_0

    .line 820
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 821
    .restart local v6       #index:I
    invoke-virtual {v7, v6}, Lcom/htc/android/epst/SettingGroup;->setOperatorID(I)V

    goto :goto_2

    .line 824
    .end local v6           #index:I
    .end local v7           #lastItem:Lcom/htc/android/epst/SettingGroup;
    :cond_3
    const-string v10, "itemxml"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 825
    invoke-direct {p0}, Lcom/htc/android/epst/EntryEPSTInfo;->getLastGroupItem()Lcom/htc/android/epst/SettingGroup;

    move-result-object v7

    .line 826
    .restart local v7       #lastItem:Lcom/htc/android/epst/SettingGroup;
    if-eqz v7, :cond_0

    .line 827
    invoke-virtual {v7, v1}, Lcom/htc/android/epst/SettingGroup;->setItemXML(Ljava/lang/String;)V

    goto :goto_2

    .line 830
    .end local v7           #lastItem:Lcom/htc/android/epst/SettingGroup;
    :cond_4
    const-string v10, "preferenceid"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 831
    invoke-direct {p0}, Lcom/htc/android/epst/EntryEPSTInfo;->getLastGroupItem()Lcom/htc/android/epst/SettingGroup;

    move-result-object v7

    .line 832
    .restart local v7       #lastItem:Lcom/htc/android/epst/SettingGroup;
    if-eqz v7, :cond_0

    .line 833
    invoke-virtual {v7, v1}, Lcom/htc/android/epst/SettingGroup;->setPreferenceID(Ljava/lang/String;)V

    goto :goto_2

    .line 839
    .end local v0           #attrName:Ljava/lang/String;
    .end local v1           #attrValue:Ljava/lang/String;
    .end local v5           #i:I
    .end local v7           #lastItem:Lcom/htc/android/epst/SettingGroup;
    .end local v9           #size:I
    :cond_5
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    goto/16 :goto_0

    .line 841
    :cond_6
    const-string v10, "EntryEPSTInfo"

    const-string v11, "getGroupInfo succeed"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method private getLastGroupItem()Lcom/htc/android/epst/SettingGroup;
    .locals 2

    .prologue
    .line 849
    sget-object v1, Lcom/htc/android/epst/EntryEPSTInfo;->mGenericGroupList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 850
    .local v0, lastIndex:I
    if-ltz v0, :cond_0

    .line 851
    sget-object v1, Lcom/htc/android/epst/EntryEPSTInfo;->mGenericGroupList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/epst/SettingGroup;

    .line 854
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getOperatorID(Ljava/lang/String;)V
    .locals 3
    .parameter "iCmd"

    .prologue
    .line 452
    invoke-static {p1}, Lcom/htc/android/epst/EntryEPSTInfo;->DMSend(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 453
    .local v0, iCmdResponse:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x9

    if-gt v1, v2, :cond_0

    .line 454
    const-string v0, ""

    .line 456
    :cond_0
    invoke-static {v0}, Lcom/htc/android/epst/EntryEPSTInfo;->getOperatorType(Ljava/lang/String;)V

    .line 459
    return-void
.end method

.method private static getOperatorType(Ljava/lang/String;)V
    .locals 7
    .parameter "iCommand"

    .prologue
    const/4 v6, 0x1

    .line 466
    const/4 v2, 0x0

    const/4 v3, 0x7

    :try_start_0
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, "C8F8000000"

    const/4 v4, 0x0

    const/4 v5, 0x7

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v6, :cond_1

    .line 467
    const/16 v2, 0x8

    const/16 v3, 0xa

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 468
    .local v1, nOperator:Ljava/lang/String;
    sget-boolean v2, Lcom/htc/android/epst/EntryEPSTInfo;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "EntryEPSTInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OoO operator type. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_0
    const-string v2, "03"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v6, :cond_2

    .line 470
    const/4 v2, 0x2

    sput v2, Lcom/htc/android/epst/EntryEPSTInfo;->EPST_OPERATION_ID:I

    .line 480
    sget v2, Lcom/htc/android/epst/EntryEPSTInfo;->count:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/htc/android/epst/EntryEPSTInfo;->count:I

    .line 481
    const/4 v2, -0x1

    sput v2, Lcom/htc/android/epst/EntryEPSTInfo;->UNLOCK_RETRY:I

    .line 482
    const/4 v2, 0x0

    sput-boolean v2, Lcom/htc/android/epst/HtcFeatureList;->FEATURE_SUPPORT_ESN:Z

    .line 514
    .end local v1           #nOperator:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 483
    .restart local v1       #nOperator:Ljava/lang/String;
    :cond_2
    const-string v2, "02"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v6, :cond_3

    .line 484
    const/4 v2, 0x4

    sput v2, Lcom/htc/android/epst/EntryEPSTInfo;->EPST_OPERATION_ID:I

    .line 485
    const/16 v2, 0xf

    sput v2, Lcom/htc/android/epst/EntryEPSTInfo;->UNLOCK_RETRY:I
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 509
    .end local v1           #nOperator:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 510
    .local v0, e:Ljava/lang/StringIndexOutOfBoundsException;
    sput v6, Lcom/htc/android/epst/EntryEPSTInfo;->EPST_OPERATION_ID:I

    .line 511
    const-string v2, "EntryEPSTInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OoO StringIndexOutOfBoundsException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const-string v2, "EntryEPSTInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OoO Debuging. incoming iCommand("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 486
    .end local v0           #e:Ljava/lang/StringIndexOutOfBoundsException;
    .restart local v1       #nOperator:Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v2, "00"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v6, :cond_4

    .line 487
    const/4 v2, 0x1

    sput v2, Lcom/htc/android/epst/EntryEPSTInfo;->EPST_OPERATION_ID:I

    .line 488
    const/4 v2, -0x1

    sput v2, Lcom/htc/android/epst/EntryEPSTInfo;->UNLOCK_RETRY:I

    goto :goto_0

    .line 490
    :cond_4
    const-string v2, "8F"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v6, :cond_6

    .line 491
    sget-boolean v2, Lcom/htc/android/epst/EntryEPSTInfo;->DBG:Z

    if-eqz v2, :cond_5

    const-string v2, "EntryEPSTInfo"

    const-string v3, "set MeteroPCSFlag=ture"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_5
    const/4 v2, 0x1

    sput-boolean v2, Lcom/htc/android/epst/HtcFeatureList;->FEATURE_METEROPCS_ONLY:Z

    .line 494
    :cond_6
    const/4 v2, 0x1

    sput v2, Lcom/htc/android/epst/EntryEPSTInfo;->EPST_OPERATION_ID:I

    .line 495
    const/4 v2, -0x1

    sput v2, Lcom/htc/android/epst/EntryEPSTInfo;->UNLOCK_RETRY:I

    .line 496
    const-string v2, "90"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v6, :cond_8

    .line 497
    sget-boolean v2, Lcom/htc/android/epst/EntryEPSTInfo;->DBG:Z

    if-eqz v2, :cond_7

    const-string v2, "EntryEPSTInfo"

    const-string v3, "set SPRINT_PCSFlag=ture"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_7
    const/4 v2, 0x1

    sput-boolean v2, Lcom/htc/android/epst/HtcFeatureList;->FEATURE_SPRINT_PCS:Z

    .line 499
    const/4 v2, 0x0

    sput-boolean v2, Lcom/htc/android/epst/HtcFeatureList;->FEATURE_SUPPORT_ESN:Z

    .line 500
    const/4 v2, 0x2

    sput v2, Lcom/htc/android/epst/EntryEPSTInfo;->UNLOCK_RETRY:I

    .line 504
    :cond_8
    const-string v2, "96"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v6, :cond_1

    .line 505
    const/4 v2, 0x2

    sput v2, Lcom/htc/android/epst/EntryEPSTInfo;->UNLOCK_RETRY:I
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static getPROGroupList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/epst/SettingGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 887
    sget-object v0, Lcom/htc/android/epst/EntryEPSTInfo;->mPROGroupList:Ljava/util/List;

    return-object v0
.end method

.method public static getPSTGroupList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/epst/SettingGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 883
    sget-object v0, Lcom/htc/android/epst/EntryEPSTInfo;->mPSTGroupList:Ljava/util/List;

    return-object v0
.end method

.method private getPassword()V
    .locals 2

    .prologue
    .line 374
    invoke-direct {p0}, Lcom/htc/android/epst/EntryEPSTInfo;->unlockMSL()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 376
    const-string v0, "C8265500"

    invoke-direct {p0, v0}, Lcom/htc/android/epst/EntryEPSTInfo;->parsecommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/EntryEPSTInfo;->MSLCODE:Ljava/lang/String;

    .line 377
    const-string v0, "C826DB00"

    invoke-direct {p0, v0}, Lcom/htc/android/epst/EntryEPSTInfo;->parsecommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/EntryEPSTInfo;->OTKSLCODE:Ljava/lang/String;

    .line 415
    :cond_0
    return-void
.end method

.method public static initDMAgent(Z)V
    .locals 2
    .parameter "ibBootComplete"

    .prologue
    const/4 v1, 0x0

    .line 279
    sget-object v0, Lcom/htc/android/epst/EntryEPSTInfo;->AT_DMAgent:Lcom/htc/android/epst/dmagent/DMAgentConnector;

    if-nez v0, :cond_0

    .line 280
    sput-boolean v1, Lcom/htc/android/epst/EntryEPSTInfo;->BOOLEAN_AT_DMAGENT_CONNECT_SUCCESS:Z

    .line 282
    new-instance v0, Lcom/htc/android/epst/EntryEPSTInfo$3;

    invoke-direct {v0}, Lcom/htc/android/epst/EntryEPSTInfo$3;-><init>()V

    invoke-virtual {v0}, Lcom/htc/android/epst/EntryEPSTInfo$3;->start()V

    .line 291
    :cond_0
    sget-object v0, Lcom/htc/android/epst/EntryEPSTInfo;->DM_DMAgent:Lcom/htc/android/epst/dmagent/DMAgentConnector;

    if-nez v0, :cond_1

    .line 292
    sput-boolean v1, Lcom/htc/android/epst/EntryEPSTInfo;->BOOLEAN_DM_DMAGENT_CONNECT_SUCCESS:Z

    .line 294
    new-instance v0, Lcom/htc/android/epst/EntryEPSTInfo$4;

    invoke-direct {v0}, Lcom/htc/android/epst/EntryEPSTInfo$4;-><init>()V

    invoke-virtual {v0}, Lcom/htc/android/epst/EntryEPSTInfo$4;->start()V

    .line 303
    :cond_1
    return-void
.end method

.method private initGroup()V
    .locals 11

    .prologue
    .line 746
    invoke-direct {p0}, Lcom/htc/android/epst/EntryEPSTInfo;->initGroupList()V

    .line 748
    :try_start_0
    const-class v4, Lcom/htc/android/epst/R$xml;

    .line 749
    .local v4, groupItemClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 750
    .local v2, fIDs:[Ljava/lang/reflect/Field;
    const/4 v6, 0x0

    .line 751
    .local v6, nGroupCount:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    array-length v9, v2

    if-ge v5, v9, :cond_1

    .line 752
    aget-object v3, v2, v5

    .line 753
    .local v3, fld:Ljava/lang/reflect/Field;
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v7

    .line 756
    .local v7, nID:I
    const/4 v0, 0x0

    .line 757
    .local v0, bParser:Z
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "a_group_pst"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 758
    sget-object v9, Lcom/htc/android/epst/EntryEPSTInfo;->mPSTGroupList:Ljava/util/List;

    sput-object v9, Lcom/htc/android/epst/EntryEPSTInfo;->mGenericGroupList:Ljava/util/List;

    .line 759
    const/4 v0, 0x1

    .line 768
    :cond_0
    :goto_1
    if-eqz v0, :cond_4

    .line 770
    invoke-virtual {p0}, Lcom/htc/android/epst/EntryEPSTInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v8

    .line 771
    .local v8, parser:Landroid/content/res/XmlResourceParser;
    invoke-direct {p0, v8}, Lcom/htc/android/epst/EntryEPSTInfo;->getGroupInfo(Landroid/content/res/XmlResourceParser;)V

    .line 772
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    .line 773
    const/4 v0, 0x0

    .line 774
    add-int/lit8 v6, v6, 0x1

    .line 775
    const/4 v9, 0x3

    if-ne v6, v9, :cond_4

    .line 779
    .end local v0           #bParser:Z
    .end local v3           #fld:Ljava/lang/reflect/Field;
    .end local v7           #nID:I
    .end local v8           #parser:Landroid/content/res/XmlResourceParser;
    :cond_1
    const-string v9, "EntryEPSTInfo"

    const-string v10, "initGroup.get xml successfully"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    .end local v2           #fIDs:[Ljava/lang/reflect/Field;
    .end local v4           #groupItemClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v5           #i:I
    .end local v6           #nGroupCount:I
    :goto_2
    return-void

    .line 760
    .restart local v0       #bParser:Z
    .restart local v2       #fIDs:[Ljava/lang/reflect/Field;
    .restart local v3       #fld:Ljava/lang/reflect/Field;
    .restart local v4       #groupItemClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v5       #i:I
    .restart local v6       #nGroupCount:I
    .restart local v7       #nID:I
    :cond_2
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "a_group_program"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 761
    sget-object v9, Lcom/htc/android/epst/EntryEPSTInfo;->mPROGroupList:Ljava/util/List;

    sput-object v9, Lcom/htc/android/epst/EntryEPSTInfo;->mGenericGroupList:Ljava/util/List;

    .line 762
    const/4 v0, 0x1

    goto :goto_1

    .line 763
    :cond_3
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "a_group_data"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 764
    sget-object v9, Lcom/htc/android/epst/EntryEPSTInfo;->mDATAGroupList:Ljava/util/List;

    sput-object v9, Lcom/htc/android/epst/EntryEPSTInfo;->mGenericGroupList:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    const/4 v0, 0x1

    goto :goto_1

    .line 751
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 780
    .end local v0           #bParser:Z
    .end local v2           #fIDs:[Ljava/lang/reflect/Field;
    .end local v3           #fld:Ljava/lang/reflect/Field;
    .end local v4           #groupItemClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v5           #i:I
    .end local v6           #nGroupCount:I
    .end local v7           #nID:I
    :catch_0
    move-exception v1

    .line 781
    .local v1, e:Ljava/lang/Exception;
    const-string v9, "EntryEPSTInfo"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private initGroupList()V
    .locals 1

    .prologue
    .line 726
    sget-object v0, Lcom/htc/android/epst/EntryEPSTInfo;->mPSTGroupList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 727
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/android/epst/EntryEPSTInfo;->mPSTGroupList:Ljava/util/List;

    .line 732
    :goto_0
    sget-object v0, Lcom/htc/android/epst/EntryEPSTInfo;->mPROGroupList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 733
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/android/epst/EntryEPSTInfo;->mPROGroupList:Ljava/util/List;

    .line 738
    :goto_1
    sget-object v0, Lcom/htc/android/epst/EntryEPSTInfo;->mDATAGroupList:Ljava/util/List;

    if-nez v0, :cond_2

    .line 739
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/android/epst/EntryEPSTInfo;->mDATAGroupList:Ljava/util/List;

    .line 743
    :goto_2
    return-void

    .line 729
    :cond_0
    sget-object v0, Lcom/htc/android/epst/EntryEPSTInfo;->mPSTGroupList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 735
    :cond_1
    sget-object v0, Lcom/htc/android/epst/EntryEPSTInfo;->mPROGroupList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 741
    :cond_2
    sget-object v0, Lcom/htc/android/epst/EntryEPSTInfo;->mDATAGroupList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_2
.end method

.method public static isATConnectSuccess()Z
    .locals 3

    .prologue
    .line 690
    sget-boolean v0, Lcom/htc/android/epst/EntryEPSTInfo;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "EntryEPSTInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isATConnectSuccess.BOOLEAN_AT_DMAGENT_CONNECT_SUCCESS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/htc/android/epst/EntryEPSTInfo;->BOOLEAN_AT_DMAGENT_CONNECT_SUCCESS:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :cond_0
    sget-boolean v0, Lcom/htc/android/epst/EntryEPSTInfo;->BOOLEAN_AT_DMAGENT_CONNECT_SUCCESS:Z

    return v0
.end method

.method public static isDMConnectSuccess()Z
    .locals 3

    .prologue
    .line 685
    sget-boolean v0, Lcom/htc/android/epst/EntryEPSTInfo;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "EntryEPSTInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDMConnectSuccess.BOOLEAN_DM_DMAGENT_CONNECT_SUCCESS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/htc/android/epst/EntryEPSTInfo;->BOOLEAN_DM_DMAGENT_CONNECT_SUCCESS:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :cond_0
    sget-boolean v0, Lcom/htc/android/epst/EntryEPSTInfo;->BOOLEAN_DM_DMAGENT_CONNECT_SUCCESS:Z

    return v0
.end method

.method public static isSupportDMAgent()Z
    .locals 1

    .prologue
    .line 366
    sget-boolean v0, Lcom/htc/android/epst/EntryEPSTInfo;->BOOLEAN_SUPPORT_DMAGENT:Z

    return v0
.end method

.method public static operatorID()I
    .locals 1

    .prologue
    .line 699
    sget v0, Lcom/htc/android/epst/EntryEPSTInfo;->EPST_OPERATION_ID:I

    return v0
.end method

.method private parsecommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "Scommand"

    .prologue
    .line 431
    invoke-static {p1}, Lcom/htc/android/epst/EntryEPSTInfo;->DMSend(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 432
    .local v1, mCmdResponse:Ljava/lang/String;
    const-string v2, ""

    .line 433
    .local v2, result:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 434
    const-string v3, "EntryEPSTInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "respose command "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "fail!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const-string v3, "error response"

    .line 444
    :goto_0
    return-object v3

    .line 438
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xc

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/htc/android/epst/Utility;->StringToASCII(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v3, v2

    .line 439
    goto :goto_0

    .line 440
    :catch_0
    move-exception v0

    .line 441
    .local v0, ex:Ljava/lang/StringIndexOutOfBoundsException;
    const-string v3, "EntryEPSTInfo"

    invoke-virtual {v0}, Ljava/lang/StringIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    const-string v3, "error response"

    goto :goto_0
.end method

.method private setTriggerEvent()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 704
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 705
    .local v0, cal:Ljava/util/Calendar;
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v4, v5, 0x1

    .line 706
    .local v4, month:I
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 707
    .local v1, day:I
    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 708
    .local v2, hour:I
    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 710
    .local v3, min:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%02d"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%02d"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%02d"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%02d"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/htc/android/epst/EntryEPSTInfo;->TRIGGER_EVENT:Ljava/lang/String;

    .line 711
    sget-boolean v5, Lcom/htc/android/epst/EntryEPSTInfo;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "EntryEPSTInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "trigger code:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/htc/android/epst/EntryEPSTInfo;->TRIGGER_EVENT:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :cond_0
    return-void
.end method

.method private startSecrectMenu()V
    .locals 13

    .prologue
    const/high16 v12, 0x1000

    const/16 v11, 0x8

    const/4 v10, 0x7

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 519
    const-string v4, "EntryEPSTInfo"

    const-string v5, "startSecrectMenu in"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    sget-boolean v4, Lcom/htc/android/epst/EntryEPSTInfo;->BOOLEAN_AT_DMAGENT_CONNECT_SUCCESS:Z

    if-eqz v4, :cond_0

    sget-boolean v4, Lcom/htc/android/epst/EntryEPSTInfo;->BOOLEAN_DM_DMAGENT_CONNECT_SUCCESS:Z

    if-eqz v4, :cond_0

    sget v4, Lcom/htc/android/epst/EntryEPSTInfo;->EPST_OPERATION_ID:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 614
    :cond_0
    :goto_0
    return-void

    .line 525
    :cond_1
    sget-boolean v4, Lcom/htc/android/epst/EntryEPSTInfo;->DBG:Z

    if-eqz v4, :cond_2

    const-string v4, "EntryEPSTInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "host ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/epst/EntryEPSTInfo;->HOST_TYPE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_2
    iget-object v4, p0, Lcom/htc/android/epst/EntryEPSTInfo;->HOST_TYPE:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/android/epst/EntryEPSTInfo;->MSLCODE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v8, :cond_d

    .line 528
    iget-object v4, p0, Lcom/htc/android/epst/EntryEPSTInfo;->HOST_TYPE:Ljava/lang/String;

    invoke-static {v4}, Lcom/htc/android/epst/GroupTable;->setPassword(Ljava/lang/String;)V

    .line 529
    invoke-static {v10}, Lcom/htc/android/epst/GroupTable;->getCode(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/epst/EntryEPSTInfo;->HOST_TYPE:Ljava/lang/String;

    .line 530
    sget-boolean v4, Lcom/htc/android/epst/EntryEPSTInfo;->DBG:Z

    if-eqz v4, :cond_3

    const-string v4, "EntryEPSTInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSL Code,host ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/epst/EntryEPSTInfo;->HOST_TYPE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/htc/android/epst/EntryEPSTInfo;->HOST_TYPE:Ljava/lang/String;

    sget-object v5, Lcom/htc/android/epst/EntryEPSTInfo;->TRIGGER_EVENT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v8, :cond_4

    .line 538
    sget-object v4, Lcom/htc/android/epst/EntryEPSTInfo;->TRIGGER_EVENT:Ljava/lang/String;

    sput-object v4, Lcom/htc/android/epst/EntryEPSTInfo;->CUSTOM_TRIGGER:Ljava/lang/String;

    .line 540
    iget-object v4, p0, Lcom/htc/android/epst/EntryEPSTInfo;->mAgentHandler:Lcom/htc/android/epst/EntryEPSTInfo$AgentHandler;

    const/4 v5, 0x0

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v5, v6, v7}, Lcom/htc/android/epst/EntryEPSTInfo$AgentHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 541
    sget-boolean v4, Lcom/htc/android/epst/EntryEPSTInfo;->DBG:Z

    if-eqz v4, :cond_4

    const-string v4, "EntryEPSTInfo"

    const-string v5, "sendEmptyMessageDelayed"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_4
    const/4 v0, 0x1

    .line 545
    .local v0, bResult:Z
    iget-object v4, p0, Lcom/htc/android/epst/EntryEPSTInfo;->HOST_TYPE:Ljava/lang/String;

    invoke-static {v4}, Lcom/htc/android/epst/GroupTable;->getCodeIndex(Ljava/lang/String;)I

    move-result v2

    .line 546
    .local v2, index:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_f

    .line 547
    invoke-static {v2}, Lcom/htc/android/epst/GroupTable;->getOperator(I)I

    move-result v3

    .line 548
    .local v3, operatorid:I
    sget v4, Lcom/htc/android/epst/EntryEPSTInfo;->EPST_OPERATION_ID:I

    and-int/2addr v4, v3

    sget v5, Lcom/htc/android/epst/EntryEPSTInfo;->EPST_OPERATION_ID:I

    if-eq v4, v5, :cond_e

    .line 549
    const/4 v0, 0x0

    .line 563
    .end local v3           #operatorid:I
    :cond_5
    :goto_2
    sget-boolean v4, Lcom/htc/android/epst/HtcFeatureList;->FEATURE_SPRINT_PCS:Z

    if-eqz v4, :cond_10

    const/4 v4, 0x4

    if-eq v2, v4, :cond_6

    if-eq v2, v11, :cond_6

    if-eq v2, v9, :cond_6

    const/16 v4, 0xa

    if-eq v2, v4, :cond_6

    const/16 v4, 0x9

    if-eq v2, v4, :cond_6

    const/4 v4, 0x6

    if-eq v2, v4, :cond_6

    const/16 v4, 0x11

    if-eq v2, v4, :cond_6

    const/4 v4, 0x3

    if-eq v2, v4, :cond_6

    if-nez v2, :cond_10

    sget-object v4, Lcom/htc/android/epst/EntryEPSTInfo;->mBuildType:Ljava/lang/String;

    const-string v5, "user"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 570
    :cond_6
    sget-boolean v4, Lcom/htc/android/epst/EntryEPSTInfo;->DBG:Z

    if-eqz v4, :cond_7

    const-string v4, "EntryEPSTInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "index="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " index=0(release),2,4,8,9,10 not support for SPRINT_PCS.except:MEID-index:17"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_7
    const/4 v0, 0x0

    .line 573
    const/16 v4, 0x11

    if-ne v2, v4, :cond_9

    .line 574
    sget-boolean v4, Lcom/htc/android/epst/EntryEPSTInfo;->DBG:Z

    if-eqz v4, :cond_8

    const-string v4, "EntryEPSTInfo"

    const-string v5, "call MEID dialog activity!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    :cond_8
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/htc/android/epst/EntryEPSTInfo;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/htc/android/epst/MeidDialog;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 576
    .local v1, i:Landroid/content/Intent;
    invoke-virtual {v1, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 577
    invoke-virtual {p0}, Lcom/htc/android/epst/EntryEPSTInfo;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 599
    .end local v1           #i:Landroid/content/Intent;
    :cond_9
    :goto_3
    sget-boolean v4, Lcom/htc/android/epst/HtcFeatureList;->FEATURE_VMUS_ONLY:Z

    if-eqz v4, :cond_b

    const/16 v4, 0xa

    if-ne v2, v4, :cond_b

    .line 600
    sget-boolean v4, Lcom/htc/android/epst/EntryEPSTInfo;->DBG:Z

    if-eqz v4, :cond_a

    const-string v4, "EntryEPSTInfo"

    const-string v5, "enable SCRTN !!! for VMUS on Shooter"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :cond_a
    const/4 v0, 0x1

    .line 604
    :cond_b
    if-eqz v0, :cond_c

    .line 606
    invoke-static {v2}, Lcom/htc/android/epst/GroupTable;->setCurrentIndex(I)V

    .line 607
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 608
    .restart local v1       #i:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/htc/android/epst/EntryEPSTInfo;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/htc/android/epst/EPST;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 609
    invoke-virtual {v1, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 610
    invoke-virtual {p0}, Lcom/htc/android/epst/EntryEPSTInfo;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 613
    .end local v1           #i:Landroid/content/Intent;
    :cond_c
    invoke-virtual {p0}, Lcom/htc/android/epst/EntryEPSTInfo;->finish()V

    goto/16 :goto_0

    .line 531
    .end local v0           #bResult:Z
    .end local v2           #index:I
    :cond_d
    iget-object v4, p0, Lcom/htc/android/epst/EntryEPSTInfo;->HOST_TYPE:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/android/epst/EntryEPSTInfo;->OTKSLCODE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v8, :cond_3

    .line 532
    iget-object v4, p0, Lcom/htc/android/epst/EntryEPSTInfo;->HOST_TYPE:Ljava/lang/String;

    invoke-static {v4}, Lcom/htc/android/epst/GroupTable;->setPassword(Ljava/lang/String;)V

    .line 533
    invoke-static {v11}, Lcom/htc/android/epst/GroupTable;->getCode(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/epst/EntryEPSTInfo;->HOST_TYPE:Ljava/lang/String;

    .line 534
    sget-boolean v4, Lcom/htc/android/epst/EntryEPSTInfo;->DBG:Z

    if-eqz v4, :cond_3

    const-string v4, "EntryEPSTInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OTKSL Code,host ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/epst/EntryEPSTInfo;->HOST_TYPE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 550
    .restart local v0       #bResult:Z
    .restart local v2       #index:I
    .restart local v3       #operatorid:I
    :cond_e
    sget v4, Lcom/htc/android/epst/EntryEPSTInfo;->EPST_OPERATION_ID:I

    if-ne v4, v9, :cond_5

    if-nez v2, :cond_5

    sget-object v4, Lcom/htc/android/epst/EntryEPSTInfo;->mBuildType:Ljava/lang/String;

    const-string v5, "user"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 553
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 556
    .end local v3           #operatorid:I
    :cond_f
    const/4 v0, 0x0

    .line 557
    sget v4, Lcom/htc/android/epst/EntryEPSTInfo;->EPST_OPERATION_ID:I

    if-ne v4, v9, :cond_5

    iget-object v4, p0, Lcom/htc/android/epst/EntryEPSTInfo;->HOST_TYPE:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/htc/android/epst/EntryEPSTInfo;->TRIGGER_EVENT:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Lcom/htc/android/epst/GroupTable;->getCode(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lcom/htc/android/epst/EntryEPSTInfo;->mBuildType:Ljava/lang/String;

    const-string v5, "user"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 560
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 580
    :cond_10
    sget-boolean v4, Lcom/htc/android/epst/HtcFeatureList;->FEATURE_SPRINT_PCS:Z

    if-nez v4, :cond_11

    sget-boolean v4, Lcom/htc/android/epst/HtcFeatureList;->FEATURE_MODSUPPORT_BOOST:Z

    if-eqz v4, :cond_12

    :cond_11
    const/16 v4, 0xf

    if-ne v2, v4, :cond_12

    .line 581
    const/4 v0, 0x1

    goto/16 :goto_3

    .line 582
    :cond_12
    sget-boolean v4, Lcom/htc/android/epst/HtcFeatureList;->FEATURE_METEROPCS_ONLY:Z

    if-ne v4, v8, :cond_14

    iget-object v4, p0, Lcom/htc/android/epst/EntryEPSTInfo;->HOST_TYPE:Ljava/lang/String;

    const-string v5, "626"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 583
    sget-boolean v4, Lcom/htc/android/epst/EntryEPSTInfo;->DBG:Z

    if-eqz v4, :cond_13

    const-string v4, "EntryEPSTInfo"

    const-string v5, "call HtcNAM Activity!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :cond_13
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/htc/android/epst/EntryEPSTInfo;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/htc/android/epst/HtcNAM;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 585
    .restart local v1       #i:Landroid/content/Intent;
    invoke-virtual {v1, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 586
    invoke-virtual {p0}, Lcom/htc/android/epst/EntryEPSTInfo;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 588
    .end local v1           #i:Landroid/content/Intent;
    :cond_14
    sget-boolean v4, Lcom/htc/android/epst/HtcFeatureList;->FEATURE_METEROPCS_ONLY:Z

    if-eqz v4, :cond_17

    if-eqz v2, :cond_15

    if-eq v2, v10, :cond_15

    if-ne v2, v11, :cond_17

    .line 590
    :cond_15
    sget-boolean v4, Lcom/htc/android/epst/EntryEPSTInfo;->DBG:Z

    if-eqz v4, :cond_16

    const-string v4, "EntryEPSTInfo"

    const-string v5, "don\'t support PST & MSL & OTKSL for METEROPCS"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_16
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 592
    :cond_17
    sget-boolean v4, Lcom/htc/android/epst/HtcFeatureList;->FEATURE_NONSUPPORT_MSL:Z

    if-eqz v4, :cond_19

    if-ne v2, v10, :cond_19

    .line 593
    sget-boolean v4, Lcom/htc/android/epst/EntryEPSTInfo;->DBG:Z

    if-eqz v4, :cond_18

    const-string v4, "EntryEPSTInfo"

    const-string v5, "don\'t support MSL !!! for VMUS on Shooter"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :cond_18
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 595
    :cond_19
    sget-boolean v4, Lcom/htc/android/epst/HtcFeatureList;->FEATURE_BOOST_ONLY:Z

    if-eqz v4, :cond_9

    const/4 v4, 0x3

    if-ne v2, v4, :cond_9

    .line 596
    sget-boolean v4, Lcom/htc/android/epst/EntryEPSTInfo;->DBG:Z

    if-eqz v4, :cond_1a

    const-string v4, "EntryEPSTInfo"

    const-string v5, "don\'t support AKEY !!! for Boost "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :cond_1a
    const/4 v0, 0x0

    goto/16 :goto_3
.end method

.method private unlockMSL()Z
    .locals 4

    .prologue
    .line 419
    const-string v1, "C841746477616F70"

    invoke-static {v1}, Lcom/htc/android/epst/EntryEPSTInfo;->DMSend(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, iCmdResponse:Ljava/lang/String;
    sget-boolean v1, Lcom/htc/android/epst/EntryEPSTInfo;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "EntryEPSTInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unlockMSL response:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_1

    .line 422
    const-string v1, "C84101"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 423
    const/4 v1, 0x1

    .line 427
    :goto_0
    return v1

    .line 426
    :cond_1
    const-string v1, "EntryEPSTInfo"

    const-string v2, "unlockMSL failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    .line 182
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 183
    sget-boolean v1, Lcom/htc/android/epst/EntryEPSTInfo;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "EntryEPSTInfo"

    const-string v2, "onCreate in"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_0
    iget-object v1, p0, Lcom/htc/android/epst/EntryEPSTInfo;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 186
    iget-object v1, p0, Lcom/htc/android/epst/EntryEPSTInfo;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/epst/EntryEPSTInfo;->mServiceLooper:Landroid/os/Looper;

    .line 187
    new-instance v1, Lcom/htc/android/epst/EntryEPSTInfo$AgentHandler;

    iget-object v2, p0, Lcom/htc/android/epst/EntryEPSTInfo;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/htc/android/epst/EntryEPSTInfo$AgentHandler;-><init>(Lcom/htc/android/epst/EntryEPSTInfo;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/htc/android/epst/EntryEPSTInfo;->mAgentHandler:Lcom/htc/android/epst/EntryEPSTInfo$AgentHandler;

    .line 190
    iget-object v1, p0, Lcom/htc/android/epst/EntryEPSTInfo;->mAgentHandler:Lcom/htc/android/epst/EntryEPSTInfo$AgentHandler;

    const/4 v2, 0x3

    iget v3, p0, Lcom/htc/android/epst/EntryEPSTInfo;->PROGRESS_TIMER:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/android/epst/EntryEPSTInfo$AgentHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 193
    invoke-virtual {p0}, Lcom/htc/android/epst/EntryEPSTInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 194
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/epst/EntryEPSTInfo;->HOST_TYPE:Ljava/lang/String;

    .line 195
    sget-boolean v1, Lcom/htc/android/epst/EntryEPSTInfo;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "EntryEPSTInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get host:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/epst/EntryEPSTInfo;->HOST_TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_1
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/android/epst/EntryEPSTInfo;->MSLCODE:Ljava/lang/String;

    .line 198
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/android/epst/EntryEPSTInfo;->OTKSLCODE:Ljava/lang/String;

    .line 199
    const/4 v1, -0x1

    sput v1, Lcom/htc/android/epst/EntryEPSTInfo;->EPST_OPERATION_ID:I

    .line 200
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "id"

    .prologue
    .line 204
    packed-switch p1, :pswitch_data_0

    .line 218
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 206
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/epst/EntryEPSTInfo;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/htc/android/epst/EntryEPSTInfo;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 209
    :cond_0
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/android/epst/EntryEPSTInfo;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 210
    iget-object v0, p0, Lcom/htc/android/epst/EntryEPSTInfo;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const v1, 0x7f040050

    invoke-virtual {p0, v1}, Lcom/htc/android/epst/EntryEPSTInfo;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v0, p0, Lcom/htc/android/epst/EntryEPSTInfo;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 212
    iget-object v0, p0, Lcom/htc/android/epst/EntryEPSTInfo;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 213
    iget-object v0, p0, Lcom/htc/android/epst/EntryEPSTInfo;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    goto :goto_0

    .line 204
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 223
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 224
    sget-boolean v0, Lcom/htc/android/epst/EntryEPSTInfo;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "EntryEPSTInfo"

    const-string v1, "onResume in"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_0
    sget-object v0, Lcom/htc/android/epst/EntryEPSTInfo;->AT_DMAgent:Lcom/htc/android/epst/dmagent/DMAgentConnector;

    if-nez v0, :cond_1

    .line 230
    sput-boolean v2, Lcom/htc/android/epst/EntryEPSTInfo;->BOOLEAN_AT_DMAGENT_CONNECT_SUCCESS:Z

    .line 232
    new-instance v0, Lcom/htc/android/epst/EntryEPSTInfo$1;

    invoke-direct {v0, p0}, Lcom/htc/android/epst/EntryEPSTInfo$1;-><init>(Lcom/htc/android/epst/EntryEPSTInfo;)V

    invoke-virtual {v0}, Lcom/htc/android/epst/EntryEPSTInfo$1;->start()V

    .line 243
    :cond_1
    sget-object v0, Lcom/htc/android/epst/EntryEPSTInfo;->DM_DMAgent:Lcom/htc/android/epst/dmagent/DMAgentConnector;

    if-nez v0, :cond_2

    .line 244
    sput-boolean v2, Lcom/htc/android/epst/EntryEPSTInfo;->BOOLEAN_DM_DMAGENT_CONNECT_SUCCESS:Z

    .line 246
    new-instance v0, Lcom/htc/android/epst/EntryEPSTInfo$2;

    invoke-direct {v0, p0}, Lcom/htc/android/epst/EntryEPSTInfo$2;-><init>(Lcom/htc/android/epst/EntryEPSTInfo;)V

    invoke-virtual {v0}, Lcom/htc/android/epst/EntryEPSTInfo$2;->start()V

    .line 257
    :cond_2
    sget-boolean v0, Lcom/htc/android/epst/EntryEPSTInfo;->BOOLEAN_AT_DMAGENT_CONNECT_SUCCESS:Z

    if-ne v0, v3, :cond_3

    sget-boolean v0, Lcom/htc/android/epst/EntryEPSTInfo;->BOOLEAN_DM_DMAGENT_CONNECT_SUCCESS:Z

    if-ne v0, v3, :cond_3

    .line 259
    iget-object v0, p0, Lcom/htc/android/epst/EntryEPSTInfo;->mAgentHandler:Lcom/htc/android/epst/EntryEPSTInfo$AgentHandler;

    const/4 v1, 0x5

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/epst/EntryEPSTInfo$AgentHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 262
    :cond_3
    invoke-direct {p0}, Lcom/htc/android/epst/EntryEPSTInfo;->setTriggerEvent()V

    .line 264
    invoke-direct {p0}, Lcom/htc/android/epst/EntryEPSTInfo;->initGroup()V

    .line 267
    invoke-static {p0}, Lcom/htc/android/epst/Utility;->initialize(Landroid/app/Activity;)V

    .line 269
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/epst/Port;->resetAllRecordState()V

    .line 271
    invoke-static {}, Lcom/htc/android/epst/internal/DataObject;->getSingleton()Lcom/htc/android/epst/internal/DataObject;

    .line 272
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 307
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 308
    sget-boolean v0, Lcom/htc/android/epst/EntryEPSTInfo;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "EntryEPSTInfo"

    const-string v1, "EntryEPSTInfo finish itself"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/epst/EntryEPSTInfo;->finish()V

    .line 310
    return-void
.end method
