.class Lcom/htc/sync/provider/weather/SyncService$Sync;
.super Ljava/lang/Thread;
.source "SyncService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sync/provider/weather/SyncService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Sync"
.end annotation


# static fields
.field private static final THREAD_PREFIX:Ljava/lang/String; = "[SyncService] (Sync) "

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "com.htc.sync.provider.weather.POWER_LOCK"


# instance fields
.field private powerLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/htc/sync/provider/weather/SyncService;


# direct methods
.method private constructor <init>(Lcom/htc/sync/provider/weather/SyncService;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/htc/sync/provider/weather/SyncService$Sync;->this$0:Lcom/htc/sync/provider/weather/SyncService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/sync/provider/weather/SyncService;Lcom/htc/sync/provider/weather/SyncService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/htc/sync/provider/weather/SyncService$Sync;-><init>(Lcom/htc/sync/provider/weather/SyncService;)V

    return-void
.end method

.method private _run(Lcom/htc/sync/provider/weather/SyncService$QueueItem;)V
    .locals 16
    .parameter "queueItem"

    .prologue
    .line 269
    const/4 v13, 0x0

    .line 271
    .local v13, totalSuccessResults:I
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/htc/sync/provider/weather/SyncService$QueueItem;->requests:[Landroid/os/Parcelable;

    .line 272
    .local v12, syncItems:[Landroid/os/Parcelable;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sync/provider/weather/SyncService$Sync;->this$0:Lcom/htc/sync/provider/weather/SyncService;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/htc/sync/provider/weather/SyncService$Sync;->allowBackgroundData(Landroid/content/Context;)Z

    move-result v1

    .line 275
    .local v1, allowBackgroundData:Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sync/provider/weather/SyncService$Sync;->this$0:Lcom/htc/sync/provider/weather/SyncService;

    invoke-static {v14}, Lcom/htc/sync/provider/weather/ServiceURLHelper;->loadWCRDATA(Landroid/content/Context;)V

    .line 278
    new-instance v9, Lcom/htc/sync/provider/weather/RequestDataHelper;

    invoke-direct {v9}, Lcom/htc/sync/provider/weather/RequestDataHelper;-><init>()V

    .line 279
    .local v9, rData:Lcom/htc/sync/provider/weather/RequestDataHelper;
    move-object v2, v12

    .local v2, arr$:[Landroid/os/Parcelable;
    array-length v8, v2

    .local v8, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v8, :cond_1

    aget-object v4, v2, v5

    .local v4, i:Landroid/os/Parcelable;
    move-object v7, v4

    .line 280
    check-cast v7, Lcom/htc/util/weather/WSPRequest;

    .line 282
    .local v7, item:Lcom/htc/util/weather/WSPRequest;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sync/provider/weather/SyncService$Sync;->this$0:Lcom/htc/sync/provider/weather/SyncService;

    move-object/from16 v0, p1

    iget v15, v0, Lcom/htc/sync/provider/weather/SyncService$QueueItem;->source:I

    invoke-virtual {v9, v14, v7, v15, v1}, Lcom/htc/sync/provider/weather/RequestDataHelper;->requestData(Landroid/content/Context;Lcom/htc/util/weather/WSPRequest;IZ)I

    move-result v10

    .line 283
    .local v10, result:I
    const/4 v14, 0x1

    if-ne v10, v14, :cond_0

    add-int/lit8 v13, v13, 0x1

    .line 279
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 287
    .end local v4           #i:Landroid/os/Parcelable;
    .end local v7           #item:Lcom/htc/util/weather/WSPRequest;
    .end local v10           #result:I
    :cond_1
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/htc/sync/provider/weather/SyncService$QueueItem;->categoryName:Ljava/lang/String;

    if-eqz v14, :cond_2

    .line 288
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/htc/sync/provider/weather/SyncService$QueueItem;->categoryName:Ljava/lang/String;

    .line 289
    .local v3, categoryName:Ljava/lang/String;
    array-length v14, v12

    if-ne v14, v13, :cond_3

    const/4 v11, 0x1

    .line 291
    .local v11, status:Z
    :goto_1
    new-instance v6, Landroid/content/Intent;

    const-string v14, "com.htc.sync.provider.weather.result"

    invoke-direct {v6, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 292
    .local v6, intent:Landroid/content/Intent;
    invoke-virtual {v6, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    const-string v14, "status"

    invoke-virtual {v6, v14, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 294
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sync/provider/weather/SyncService$Sync;->this$0:Lcom/htc/sync/provider/weather/SyncService;

    invoke-virtual {v14, v6}, Lcom/htc/sync/provider/weather/SyncService;->sendBroadcast(Landroid/content/Intent;)V

    .line 297
    .end local v3           #categoryName:Ljava/lang/String;
    .end local v6           #intent:Landroid/content/Intent;
    .end local v11           #status:Z
    :cond_2
    return-void

    .line 289
    .restart local v3       #categoryName:Ljava/lang/String;
    :cond_3
    const/4 v11, 0x0

    goto :goto_1
.end method

.method private allowBackgroundData(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 260
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 261
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v1

    .line 265
    :goto_0
    return v1

    .line 264
    :cond_0
    const-string v1, "WSP"

    const-string v2, "[SyncService] (Sync) can\'t get Connectivity Manager"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private releasePowerLock()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 218
    :try_start_0
    iget-object v4, p0, Lcom/htc/sync/provider/weather/SyncService$Sync;->powerLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v4, :cond_2

    const/4 v2, 0x1

    .line 219
    .local v2, hasPowerLock:Z
    :goto_0
    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/htc/sync/provider/weather/SyncService$Sync;->powerLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    .line 220
    .local v3, isPowerLockHeld:Z
    :cond_0
    const/4 v0, 0x0

    .line 222
    .local v0, callRelease:Z
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 223
    iget-object v4, p0, Lcom/htc/sync/provider/weather/SyncService$Sync;->powerLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 224
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/sync/provider/weather/SyncService$Sync;->powerLock:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    .end local v0           #callRelease:Z
    .end local v2           #hasPowerLock:Z
    .end local v3           #isPowerLockHeld:Z
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v2, v3

    .line 218
    goto :goto_0

    .line 229
    :catch_0
    move-exception v1

    .line 230
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "WSP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SyncService] (Sync) release power lock failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setPowerLock()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 201
    :try_start_0
    iget-object v4, p0, Lcom/htc/sync/provider/weather/SyncService$Sync;->powerLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v4, :cond_2

    const/4 v2, 0x1

    .line 202
    .local v2, hasPowerLock:Z
    :goto_0
    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/htc/sync/provider/weather/SyncService$Sync;->powerLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    .line 203
    .local v3, isPowerLockHeld:Z
    :cond_0
    const/4 v1, 0x0

    .line 205
    .local v1, hasAcquired:Z
    if-eqz v2, :cond_1

    if-nez v3, :cond_1

    .line 206
    iget-object v4, p0, Lcom/htc/sync/provider/weather/SyncService$Sync;->powerLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    .end local v1           #hasAcquired:Z
    .end local v2           #hasPowerLock:Z
    .end local v3           #isPowerLockHeld:Z
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v2, v3

    .line 201
    goto :goto_0

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "WSP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SyncService] (Sync) set power lock failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public newPowerLock()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 183
    :try_start_0
    iget-object v5, p0, Lcom/htc/sync/provider/weather/SyncService$Sync;->powerLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v5, :cond_1

    .line 184
    .local v2, hasPowerLock:Z
    :goto_0
    const/4 v1, 0x0

    .line 186
    .local v1, hasNewOne:Z
    if-nez v2, :cond_0

    .line 187
    iget-object v4, p0, Lcom/htc/sync/provider/weather/SyncService$Sync;->this$0:Lcom/htc/sync/provider/weather/SyncService;

    const-string v5, "power"

    invoke-virtual {v4, v5}, Lcom/htc/sync/provider/weather/SyncService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 188
    .local v3, powerManager:Landroid/os/PowerManager;
    const/4 v4, 0x1

    const-string v5, "com.htc.sync.provider.weather.POWER_LOCK"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/sync/provider/weather/SyncService$Sync;->powerLock:Landroid/os/PowerManager$WakeLock;

    .line 189
    iget-object v4, p0, Lcom/htc/sync/provider/weather/SyncService$Sync;->powerLock:Landroid/os/PowerManager$WakeLock;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    .end local v1           #hasNewOne:Z
    .end local v2           #hasPowerLock:Z
    .end local v3           #powerManager:Landroid/os/PowerManager;
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v4

    .line 183
    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "WSP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SyncService] (Sync) new power lock failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public run()V
    .locals 6

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/htc/sync/provider/weather/SyncService$Sync;->newPowerLock()V

    .line 239
    invoke-direct {p0}, Lcom/htc/sync/provider/weather/SyncService$Sync;->setPowerLock()V

    .line 242
    :goto_0
    const/4 v1, 0x0

    .line 244
    .local v1, queueItem:Lcom/htc/sync/provider/weather/SyncService$QueueItem;
    :try_start_0
    iget-object v2, p0, Lcom/htc/sync/provider/weather/SyncService$Sync;->this$0:Lcom/htc/sync/provider/weather/SyncService;

    #getter for: Lcom/htc/sync/provider/weather/SyncService;->queue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v2}, Lcom/htc/sync/provider/weather/SyncService;->access$200(Lcom/htc/sync/provider/weather/SyncService;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    const-wide/16 v3, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/htc/sync/provider/weather/SyncService$QueueItem;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_1
    if-nez v1, :cond_0

    .line 255
    iget-object v2, p0, Lcom/htc/sync/provider/weather/SyncService$Sync;->this$0:Lcom/htc/sync/provider/weather/SyncService;

    invoke-virtual {v2}, Lcom/htc/sync/provider/weather/SyncService;->stopSelf()V

    .line 256
    invoke-direct {p0}, Lcom/htc/sync/provider/weather/SyncService$Sync;->releasePowerLock()V

    .line 257
    return-void

    .line 251
    :cond_0
    invoke-direct {p0, v1}, Lcom/htc/sync/provider/weather/SyncService$Sync;->_run(Lcom/htc/sync/provider/weather/SyncService$QueueItem;)V

    goto :goto_0

    .line 245
    :catch_0
    move-exception v2

    goto :goto_1
.end method
