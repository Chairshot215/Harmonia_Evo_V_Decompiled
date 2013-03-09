.class public Lcom/htc/reportagent/ReportService;
.super Landroid/app/Service;
.source "ReportService.java"


# static fields
.field public static final ACTION_BOOT_COMPLETE:Ljava/lang/String; = "com.htc.reportagent.action.BOOT_COMPLETE"

.field public static final ACTION_BUDGET_ALARM:Ljava/lang/String; = "com.htc.reportagent.action.BUDGET_ALARM"

.field public static final ACTION_CONNECTION_CHANGE:Ljava/lang/String; = "com.htc.reportagent.action.CONNECTION_CHANGE"

.field public static final ACTION_POLICY_ALARM:Ljava/lang/String; = "com.htc.reportagent.action.POLICY_ALARM"

.field public static final ACTION_POLICY_SETTING_CHANGE:Ljava/lang/String; = "com.htc.reportagent.action.POLICY_SETTING_CHANGE"

.field public static final ACTION_SETUP_WIZARD_FINISHED:Ljava/lang/String; = "com.htc.reportagent.action.SETUP_WIZARD_FINISHED"

.field public static final ACTION_TIME_SET:Ljava/lang/String; = "com.htc.reportagent.action.TIME_SET"

.field public static final ACTION_ULOG_POLICY_CHANGED:Ljava/lang/String; = "com.htc.reportagent.action.ULOG_POLICY_CHANGED"

.field public static final ACTION_UPDTATE_ALARM:Ljava/lang/String; = "com.htc.reportagent.action.UPDATE_ALARM"

.field public static final ACTION_UPLOAD_ERROR_LOG:Ljava/lang/String; = "com.htc.intent.action.BUGREPORT"

.field public static final ACTION_UPLOAD_USER_PROFILING_LOG:Ljava/lang/String; = "com.htc.intent.action.USER_PROFILING"

.field private static final TAG:Ljava/lang/String;

.field private static final _DEBUG:Z


# instance fields
.field private volatile mHandler:Landroid/os/Handler;

.field private volatile mHandlerThread:Landroid/os/HandlerThread;

.field private volatile mLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/htc/reportagent/ReportService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/reportagent/ReportService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static perform(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "action"

    .prologue
    .line 80
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 81
    :cond_0
    const/4 v1, 0x0

    .line 86
    :goto_0
    return v1

    .line 83
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/htc/reportagent/ReportService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 85
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 86
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 48
    sget-object v0, Lcom/htc/reportagent/ReportService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[##] onCreate(), this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/reportagent/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 50
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ReportService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/reportagent/ReportService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 51
    iget-object v0, p0, Lcom/htc/reportagent/ReportService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 53
    iget-object v0, p0, Lcom/htc/reportagent/ReportService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/reportagent/ReportService;->mLooper:Landroid/os/Looper;

    .line 54
    new-instance v0, Lcom/htc/reportagent/ReportServiceHandler;

    iget-object v1, p0, Lcom/htc/reportagent/ReportService;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1, p0}, Lcom/htc/reportagent/ReportServiceHandler;-><init>(Landroid/os/Looper;Landroid/app/Service;)V

    iput-object v0, p0, Lcom/htc/reportagent/ReportService;->mHandler:Landroid/os/Handler;

    .line 55
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 69
    sget-object v0, Lcom/htc/reportagent/ReportService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[##] onDestroy(), this ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/reportagent/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lcom/htc/reportagent/ReportService;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 71
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 59
    sget-object v1, Lcom/htc/reportagent/ReportService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[##] onStartCommand(), flags = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", startId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", intent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", this = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/reportagent/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v1, p0, Lcom/htc/reportagent/ReportService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 61
    .local v0, msg:Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 62
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 63
    iget-object v1, p0, Lcom/htc/reportagent/ReportService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 64
    const/4 v1, 0x2

    return v1
.end method
