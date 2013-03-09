.class public Lcom/htc/launcher/PendingUIUpdate;
.super Ljava/lang/Object;
.source "PendingUIUpdate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/launcher/PendingUIUpdate$PendingUIHandler;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PendingUIUpdate"

.field private static sDelayedUIUpdate:Lcom/htc/launcher/PendingUIUpdate;

.field private static sSyncObject:Ljava/lang/Object;


# instance fields
.field private mCount:I

.field private mDidScroll:Z

.field protected mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field protected mLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/launcher/PendingUIUpdate;->sSyncObject:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 70
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/launcher/PendingUIUpdate;->mDidScroll:Z

    .line 20
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/launcher/PendingUIUpdate;->mCount:I

    .line 71
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PendingUIUpdate"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/htc/launcher/PendingUIUpdate;->mHandlerThread:Landroid/os/HandlerThread;

    .line 72
    iget-object v0, p0, Lcom/htc/launcher/PendingUIUpdate;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 73
    iget-object v0, p0, Lcom/htc/launcher/PendingUIUpdate;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/launcher/PendingUIUpdate;->mLooper:Landroid/os/Looper;

    .line 74
    new-instance v0, Lcom/htc/launcher/PendingUIUpdate$PendingUIHandler;

    iget-object v1, p0, Lcom/htc/launcher/PendingUIUpdate;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/htc/launcher/PendingUIUpdate$PendingUIHandler;-><init>(Lcom/htc/launcher/PendingUIUpdate;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/launcher/PendingUIUpdate;->mHandler:Landroid/os/Handler;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/htc/launcher/PendingUIUpdate;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    iget v0, p0, Lcom/htc/launcher/PendingUIUpdate;->mCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/launcher/PendingUIUpdate;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    iget-boolean v0, p0, Lcom/htc/launcher/PendingUIUpdate;->mDidScroll:Z

    return v0
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/htc/launcher/PendingUIUpdate;->sSyncObject:Ljava/lang/Object;

    return-object v0
.end method

.method public static declared-synchronized instance()Lcom/htc/launcher/PendingUIUpdate;
    .locals 2

    .prologue
    .line 23
    const-class v1, Lcom/htc/launcher/PendingUIUpdate;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/launcher/PendingUIUpdate;->sDelayedUIUpdate:Lcom/htc/launcher/PendingUIUpdate;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/htc/launcher/PendingUIUpdate;

    invoke-direct {v0}, Lcom/htc/launcher/PendingUIUpdate;-><init>()V

    sput-object v0, Lcom/htc/launcher/PendingUIUpdate;->sDelayedUIUpdate:Lcom/htc/launcher/PendingUIUpdate;

    .line 26
    :cond_0
    sget-object v0, Lcom/htc/launcher/PendingUIUpdate;->sDelayedUIUpdate:Lcom/htc/launcher/PendingUIUpdate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static reset()V
    .locals 2

    .prologue
    .line 83
    sget-object v0, Lcom/htc/launcher/PendingUIUpdate;->sDelayedUIUpdate:Lcom/htc/launcher/PendingUIUpdate;

    if-nez v0, :cond_0

    .line 86
    :goto_0
    return-void

    .line 85
    :cond_0
    sget-object v0, Lcom/htc/launcher/PendingUIUpdate;->sDelayedUIUpdate:Lcom/htc/launcher/PendingUIUpdate;

    iget v1, v0, Lcom/htc/launcher/PendingUIUpdate;->mCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/htc/launcher/PendingUIUpdate;->mCount:I

    goto :goto_0
.end method


# virtual methods
.method public beginScroll()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/launcher/PendingUIUpdate;->mDidScroll:Z

    .line 90
    return-void
.end method

.method public endScroll()V
    .locals 2

    .prologue
    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/launcher/PendingUIUpdate;->mDidScroll:Z

    .line 94
    sget-object v1, Lcom/htc/launcher/PendingUIUpdate;->sSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 95
    :try_start_0
    sget-object v0, Lcom/htc/launcher/PendingUIUpdate;->sSyncObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 96
    monitor-exit v1

    .line 97
    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public postPending(ILjava/lang/Runnable;)V
    .locals 4
    .parameter "what"
    .parameter "runnable"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/launcher/PendingUIUpdate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 79
    iget-object v0, p0, Lcom/htc/launcher/PendingUIUpdate;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/launcher/PendingUIUpdate;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/htc/launcher/PendingUIUpdate;->mCount:I

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, v3, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 80
    return-void
.end method
