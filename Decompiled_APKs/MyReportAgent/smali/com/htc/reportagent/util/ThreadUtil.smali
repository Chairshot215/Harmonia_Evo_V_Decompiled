.class public Lcom/htc/reportagent/util/ThreadUtil;
.super Ljava/lang/Object;
.source "ThreadUtil.java"


# static fields
.field private static sThreadHandler:Lcom/htc/reportagent/util/ThreadUtil;


# instance fields
.field private mHThread:Landroid/os/HandlerThread;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iget-object v0, p0, Lcom/htc/reportagent/util/ThreadUtil;->mHThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 10
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ReportAgentThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/reportagent/util/ThreadUtil;->mHThread:Landroid/os/HandlerThread;

    .line 11
    iget-object v0, p0, Lcom/htc/reportagent/util/ThreadUtil;->mHThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/htc/reportagent/util/ThreadUtil;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 14
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/reportagent/util/ThreadUtil;->mHThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/reportagent/util/ThreadUtil;->mHandler:Landroid/os/Handler;

    .line 15
    :cond_1
    return-void
.end method

.method public static getInstance()Lcom/htc/reportagent/util/ThreadUtil;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/htc/reportagent/util/ThreadUtil;->sThreadHandler:Lcom/htc/reportagent/util/ThreadUtil;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/htc/reportagent/util/ThreadUtil;

    invoke-direct {v0}, Lcom/htc/reportagent/util/ThreadUtil;-><init>()V

    sput-object v0, Lcom/htc/reportagent/util/ThreadUtil;->sThreadHandler:Lcom/htc/reportagent/util/ThreadUtil;

    .line 20
    :cond_0
    sget-object v0, Lcom/htc/reportagent/util/ThreadUtil;->sThreadHandler:Lcom/htc/reportagent/util/ThreadUtil;

    return-object v0
.end method


# virtual methods
.method public post(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/htc/reportagent/util/ThreadUtil;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    return-void
.end method
