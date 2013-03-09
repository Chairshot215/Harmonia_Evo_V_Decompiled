.class public Lcom/google/android/finsky/services/FetchConsumptionDataService;
.super Landroid/app/IntentService;
.source "FetchConsumptionDataService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn;
    }
.end annotation


# static fields
.field private static final sFetchThread:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/services/FetchConsumptionDataService;->sFetchThread:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/google/android/finsky/services/FetchConsumptionDataService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method static synthetic access$300()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/google/android/finsky/services/FetchConsumptionDataService;->sFetchThread:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static fetch(Landroid/content/Context;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 77
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/finsky/services/FetchConsumptionDataService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    const-string v1, "backendId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/google/android/finsky/services/FetchConsumptionDataService;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 83
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 85
    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x1f4

    add-long/2addr v3, v5

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 86
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 12
    .parameter "intent"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 53
    const-string v8, "backendId"

    invoke-virtual {p1, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 54
    .local v0, backendId:I
    invoke-static {v0}, Lcom/google/android/finsky/utils/IntentUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, packageName:Ljava/lang/String;
    new-instance v2, Ljava/util/concurrent/Semaphore;

    invoke-direct {v2, v10}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 58
    .local v2, lock:Ljava/util/concurrent/Semaphore;
    const-string v8, "Starting ServiceConnection to consumption app: %s"

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v3, v9, v10

    invoke-static {v8, v9}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    new-instance v5, Landroid/content/Intent;

    const-string v8, "com.google.android.play.IUserContentService.BIND"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    .local v5, serviceIntent:Landroid/content/Intent;
    invoke-virtual {v5, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    new-instance v4, Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn;

    invoke-direct {v4, p0, v0, v2}, Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn;-><init>(Lcom/google/android/finsky/services/FetchConsumptionDataService;ILjava/util/concurrent/Semaphore;)V

    .line 62
    .local v4, serviceConn:Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn;
    invoke-virtual {p0, v5, v4, v11}, Lcom/google/android/finsky/services/FetchConsumptionDataService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 64
    sget-object v8, Lcom/google/android/finsky/config/G;->consumptionAppTimeoutMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v8}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 66
    .local v6, timeout:J
    :try_start_0
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v6, v7, v8}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 67
    const-string v8, "Service connection for %d timed out after %d"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_0
    invoke-virtual {p0, v4}, Lcom/google/android/finsky/services/FetchConsumptionDataService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 74
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v1

    .line 70
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_1
    const-string v8, "Interrupted while connecting to remote service"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    invoke-virtual {p0, v4}, Lcom/google/android/finsky/services/FetchConsumptionDataService;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0

    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v8

    invoke-virtual {p0, v4}, Lcom/google/android/finsky/services/FetchConsumptionDataService;->unbindService(Landroid/content/ServiceConnection;)V

    throw v8
.end method
