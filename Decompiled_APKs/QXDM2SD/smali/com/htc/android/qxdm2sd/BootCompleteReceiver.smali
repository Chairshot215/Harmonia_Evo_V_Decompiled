.class public Lcom/htc/android/qxdm2sd/BootCompleteReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootCompleteReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;
    }
.end annotation


# static fields
.field private static final DISABLE_CDLOG:Ljava/lang/String; = "AT@FlushCDLogToAppsAck=0"

.field private static final DISABLE_TRACE_PORT:Ljava/lang/String; = "AT%TRACE=0"

.field private static final ENABLE_CDLOG:Ljava/lang/String; = "AT@FlushCDLogToAppsAck=1"

.field private static final ENABLE_TRACE_PORT:Ljava/lang/String; = "AT%TRACE=1"

.field private static final MSG_AIRPLANE_MODE_OFF:I = 0xb

.field private static final MSG_AIRPLANE_MODE_ON:I = 0xa

.field private static final MSG_AUTO_RUN:I = 0x2

.field private static final MSG_DONE_OFFSET:I = 0x3e8

.field private static final MSG_INIT_BEGIN:I = 0x1

.field private static final MSG_MEDIA_EJECT:I = 0xc

.field private static final MSG_SEND_UNIAT_COMMAND:I = 0x5

.field private static final MSG_START_LOGGER:I = 0x6

.field private static final MSG_START_LOGGER_DONE:I = 0x3ee

.field private static final MSG_STOP_LOGGER:I = 0x7

.field private static final MSG_STOP_LOGGER_DONE:I = 0x3ef

.field private static final MSG_UNIAT_COMMAND:I = 0x3

.field private static final REASON_AIRPLANE_OFF:I = 0x7d3

.field private static final REASON_AIRPLANE_ON:I = 0x7d2

.field private static final REASON_AUTOSTART:I = 0x7d1

.field private static final REASON_BASE:I = 0x7d0

.field private static final REASON_MEDIA_UNMOUNT:I = 0x7d4

.field private static final TAG:Ljava/lang/String; = "QXDM2SD:BootCompleteReceiver"

.field private static mAtCmdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mAutoRun:Z

.field private static mContext:Landroid/content/Context;

.field private static mDiagMask:Ljava/lang/String;

.field private static mDiagextMask:Ljava/lang/String;

.field private static mDiagmdmMask:Ljava/lang/String;

.field private static mDiagmuxMask:Ljava/lang/String;

.field private static mHandler:Landroid/os/Handler;

.field private static mInBootCompleteReceiver:Z

.field private static mStoragePath:Ljava/lang/String;

.field private static mWorkerHandler:Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;

.field private static mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 44
    sput-boolean v1, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->mInBootCompleteReceiver:Z

    .line 45
    sput-boolean v1, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->mAutoRun:Z

    .line 46
    sput-object v0, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->mStoragePath:Ljava/lang/String;

    .line 47
    sput-object v0, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->mDiagMask:Ljava/lang/String;

    .line 48
    sput-object v0, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->mDiagmdmMask:Ljava/lang/String;

    .line 49
    sput-object v0, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->mDiagextMask:Ljava/lang/String;

    .line 50
    sput-object v0, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->mDiagmuxMask:Ljava/lang/String;

    .line 51
    sput-object v0, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->mAtCmdList:Ljava/util/List;

    .line 198
    new-instance v0, Lcom/htc/android/qxdm2sd/BootCompleteReceiver$1;

    invoke-direct {v0}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver$1;-><init>()V

    sput-object v0, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 267
    return-void
.end method

.method static synthetic access$000()Ljava/util/List;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->mAtCmdList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->mDiagextMask:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->mDiagmuxMask:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->mWorkerHandler:Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-static {p0}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->loadConfig(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->mAutoRun:Z

    return v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->mStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()Landroid/content/Context;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$702(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    sput-boolean p0, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->mInBootCompleteReceiver:Z

    return p0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->mDiagMask:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->mDiagmdmMask:Ljava/lang/String;

    return-object v0
.end method

.method public static getDaemonPID()I
    .locals 1

    .prologue
    .line 147
    invoke-static {}, Lcom/htc/android/qxdm2sd/QXDM2SD;->getDaemonPID()I

    move-result v0

    return v0
.end method

.method public static isInBootCompleteReceiver()Z
    .locals 1

    .prologue
    .line 58
    sget-boolean v0, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->mInBootCompleteReceiver:Z

    return v0
.end method

.method private static loadConfig(Ljava/lang/String;)Z
    .locals 5
    .parameter "configPath"

    .prologue
    const/4 v2, 0x0

    .line 152
    invoke-static {p0}, Lcom/htc/android/qxdm2sd/HtcNative;->confLoad(Ljava/lang/String;)J

    move-result-wide v0

    .line 154
    .local v0, conf:J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-eqz v3, :cond_0

    .line 156
    const-string v3, "AutoStart"

    invoke-static {v0, v1, v3, v2}, Lcom/htc/android/qxdm2sd/HtcNative;->confGet(JLjava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->mAutoRun:Z

    .line 157
    const-string v2, "StoragePath"

    const-string v3, "EXTERNAL_STORAGE"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/qxdm2sd/HtcNative;->confGet(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->mStoragePath:Ljava/lang/String;

    .line 158
    const-string v2, "qxdm7k:Mask"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/qxdm2sd/HtcNative;->confGet(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->mDiagMask:Ljava/lang/String;

    .line 159
    const-string v2, "qxdm9k:Mask"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/qxdm2sd/HtcNative;->confGet(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->mDiagmdmMask:Ljava/lang/String;

    .line 160
    const-string v2, "qxdmExt:Mask"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/qxdm2sd/HtcNative;->confGet(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->mDiagextMask:Ljava/lang/String;

    .line 161
    const-string v2, "tiTrace:Mask"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/qxdm2sd/HtcNative;->confGet(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->mDiagmuxMask:Ljava/lang/String;

    .line 163
    invoke-static {v0, v1}, Lcom/htc/android/qxdm2sd/HtcNative;->confClose(J)V

    .line 164
    const/4 v2, 0x1

    .line 168
    :cond_0
    return v2
.end method

.method public static startDaemon()I
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->startDaemon(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static startDaemon(Ljava/lang/String;)I
    .locals 4
    .parameter "reason"

    .prologue
    .line 125
    const-string v1, "QXDM2SD:BootCompleteReceiver"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start the daemon ... "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/android/qxdm2sd/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/htc/android/qxdm2sd/QXDM2SD;->runDaemon(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 125
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static stopAutoRun()V
    .locals 2

    .prologue
    .line 63
    sget-object v0, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->mWorkerHandler:Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;->removeMessages(I)V

    .line 64
    return-void
.end method

.method public static stopDaemon()I
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->stopDaemon(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static stopDaemon(Ljava/lang/String;)I
    .locals 4
    .parameter "reason"

    .prologue
    .line 136
    const-string v1, "QXDM2SD:BootCompleteReceiver"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop the daemon ... "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/android/qxdm2sd/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v0, "-q"

    invoke-static {v0}, Lcom/htc/android/qxdm2sd/QXDM2SD;->runDaemon(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 136
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 69
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, action:Ljava/lang/String;
    sput-object p1, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->mContext:Landroid/content/Context;

    .line 73
    sget-object v2, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->mWorkerHandler:Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;

    if-nez v2, :cond_0

    .line 75
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "mWorkerThread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->mWorkerThread:Landroid/os/HandlerThread;

    .line 77
    sget-object v2, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 79
    new-instance v2, Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;

    sget-object v3, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;-><init>(Lcom/htc/android/qxdm2sd/BootCompleteReceiver;Landroid/os/Looper;)V

    sput-object v2, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->mWorkerHandler:Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;

    .line 82
    :cond_0
    sget-object v2, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->mAtCmdList:Ljava/util/List;

    if-nez v2, :cond_1

    .line 84
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->mAtCmdList:Ljava/util/List;

    .line 87
    :cond_1
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 89
    sput-boolean v5, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->mInBootCompleteReceiver:Z

    .line 91
    const-string v2, "QXDM2SD:BootCompleteReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive(): boot complete!! tool version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f040001

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/qxdm2sd/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    sget-object v2, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->mWorkerHandler:Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;

    sget-object v3, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->mWorkerHandler:Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;

    invoke-virtual {v3, v5}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 121
    :cond_2
    :goto_0
    return-void

    .line 98
    :cond_3
    const-string v2, "com.htc.android.qxdm2sd.QXDM2SD.DAEMON.STOP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 100
    sget-object v2, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->mWorkerHandler:Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;

    sget-object v3, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->mWorkerHandler:Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;

    const/4 v4, 0x7

    const/16 v5, 0x3ef

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "ERRNO"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 102
    :cond_4
    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 104
    sget-object v2, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->mWorkerHandler:Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;

    sget-object v3, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->mWorkerHandler:Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 106
    :cond_5
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 108
    const-string v2, "state"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 110
    .local v1, airplaneMode:Z
    const-string v2, "QXDM2SD:BootCompleteReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "airplane mode = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/qxdm2sd/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    if-ne v1, v5, :cond_6

    .line 114
    sget-object v2, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->mWorkerHandler:Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;

    sget-object v3, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->mWorkerHandler:Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 118
    :cond_6
    sget-object v2, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->mWorkerHandler:Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;

    sget-object v3, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->mWorkerHandler:Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
