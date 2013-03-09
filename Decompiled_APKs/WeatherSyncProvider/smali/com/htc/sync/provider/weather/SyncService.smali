.class public Lcom/htc/sync/provider/weather/SyncService;
.super Landroid/app/Service;
.source "SyncService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sync/provider/weather/SyncService$1;,
        Lcom/htc/sync/provider/weather/SyncService$Sync;,
        Lcom/htc/sync/provider/weather/SyncService$Process;,
        Lcom/htc/sync/provider/weather/SyncService$QueueItem;
    }
.end annotation


# static fields
.field private static final LOG_FLAG:Z = false

.field private static final LOG_PREFIX:Ljava/lang/String; = "[SyncService] "

.field private static final LOG_TAG:Ljava/lang/String; = "WSP"


# instance fields
.field private final queue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/htc/sync/provider/weather/SyncService$QueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private sync:Lcom/htc/sync/provider/weather/SyncService$Sync;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sync/provider/weather/SyncService;->sync:Lcom/htc/sync/provider/weather/SyncService$Sync;

    .line 26
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/sync/provider/weather/SyncService;->queue:Ljava/util/concurrent/BlockingQueue;

    .line 175
    return-void
.end method

.method static synthetic access$200(Lcom/htc/sync/provider/weather/SyncService;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/sync/provider/weather/SyncService;->queue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v4, 0x2

    .line 62
    invoke-static {p0}, Lcom/htc/util/weather/WSPPUtility;->getWeatherSyncAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    if-nez v1, :cond_0

    .line 63
    const-string v1, "WSP"

    const-string v2, "[SyncService] no weather account, add a new one"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-static {p0}, Lcom/htc/sync/provider/weather/Helper;->addWeatherAccount(Landroid/content/Context;)V

    .line 68
    :cond_0
    const-string v1, "categoryName"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, category:Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string v1, "cancel_all_request"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 70
    iget-object v1, p0, Lcom/htc/sync/provider/weather/SyncService;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 71
    const-string v1, "WSP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SyncService] CANCEL_ALL_REQUEST - removing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/sync/provider/weather/SyncService;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " queue items"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v1, p0, Lcom/htc/sync/provider/weather/SyncService;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 90
    :cond_1
    :goto_0
    return v4

    .line 74
    :cond_2
    const-string v1, "WSP"

    const-string v2, "[SyncService] CANCEL_ALL_REQUEST - queue is empty"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 80
    :cond_3
    new-instance v1, Lcom/htc/sync/provider/weather/SyncService$Process;

    invoke-direct {v1, p0, p1}, Lcom/htc/sync/provider/weather/SyncService$Process;-><init>(Lcom/htc/sync/provider/weather/SyncService;Landroid/content/Intent;)V

    invoke-virtual {v1}, Lcom/htc/sync/provider/weather/SyncService$Process;->start()V

    .line 82
    iget-object v1, p0, Lcom/htc/sync/provider/weather/SyncService;->sync:Lcom/htc/sync/provider/weather/SyncService$Sync;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/sync/provider/weather/SyncService;->sync:Lcom/htc/sync/provider/weather/SyncService$Sync;

    invoke-virtual {v1}, Lcom/htc/sync/provider/weather/SyncService$Sync;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 84
    :cond_4
    new-instance v1, Lcom/htc/sync/provider/weather/SyncService$Sync;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/sync/provider/weather/SyncService$Sync;-><init>(Lcom/htc/sync/provider/weather/SyncService;Lcom/htc/sync/provider/weather/SyncService$1;)V

    iput-object v1, p0, Lcom/htc/sync/provider/weather/SyncService;->sync:Lcom/htc/sync/provider/weather/SyncService$Sync;

    .line 85
    iget-object v1, p0, Lcom/htc/sync/provider/weather/SyncService;->sync:Lcom/htc/sync/provider/weather/SyncService$Sync;

    invoke-virtual {v1}, Lcom/htc/sync/provider/weather/SyncService$Sync;->start()V

    goto :goto_0
.end method
