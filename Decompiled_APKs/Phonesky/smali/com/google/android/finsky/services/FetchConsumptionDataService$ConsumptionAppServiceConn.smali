.class Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn;
.super Ljava/lang/Object;
.source "FetchConsumptionDataService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/services/FetchConsumptionDataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConsumptionAppServiceConn"
.end annotation


# instance fields
.field private final mBackendId:I

.field private final mLock:Ljava/util/concurrent/Semaphore;

.field private mService:Lcom/google/android/play/IUserContentService;

.field final synthetic this$0:Lcom/google/android/finsky/services/FetchConsumptionDataService;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/services/FetchConsumptionDataService;ILjava/util/concurrent/Semaphore;)V
    .locals 0
    .parameter
    .parameter "backendId"
    .parameter "lock"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn;->this$0:Lcom/google/android/finsky/services/FetchConsumptionDataService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput p2, p0, Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn;->mBackendId:I

    .line 101
    iput-object p3, p0, Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn;->mLock:Ljava/util/concurrent/Semaphore;

    .line 102
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn;Lcom/google/android/play/IUserContentService;)Lcom/google/android/play/IUserContentService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn;->mService:Lcom/google/android/play/IUserContentService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn;->getDataFromService()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn;->mLock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method private getDataFromService()V
    .locals 10

    .prologue
    .line 125
    :try_start_0
    iget-object v6, p0, Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn;->mService:Lcom/google/android/play/IUserContentService;

    const/4 v7, 0x0

    const/16 v8, 0x14

    invoke-interface {v6, v7, v8}, Lcom/google/android/play/IUserContentService;->getDocuments(II)Ljava/util/List;

    move-result-object v5

    .line 127
    .local v5, whatsNext:Ljava/util/List;,"Ljava/util/List<Landroid/os/Bundle;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ltz v6, :cond_0

    .line 128
    const-string v6, "retrieved %d documents from [%d]"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget v9, p0, Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn;->mBackendId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    invoke-static {}, Lcom/google/android/finsky/services/ConsumptionAppDataCache;->get()Lcom/google/android/finsky/services/ConsumptionAppDataCache;

    move-result-object v2

    .line 131
    .local v2, dataCache:Lcom/google/android/finsky/services/ConsumptionAppDataCache;
    iget-object v1, p0, Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn;->this$0:Lcom/google/android/finsky/services/FetchConsumptionDataService;

    .line 132
    .local v1, context:Landroid/content/Context;
    iget v6, p0, Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn;->mBackendId:I

    invoke-virtual {v2, v1, v6, v5}, Lcom/google/android/finsky/services/ConsumptionAppDataCache;->setConsumptionAppData(Landroid/content/Context;ILjava/util/List;)V

    .line 134
    iget v6, p0, Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn;->mBackendId:I

    invoke-static {v6, v5}, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;->createFromBundles(ILjava/util/List;)Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;

    move-result-object v3

    .line 137
    .local v3, docList:Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;
    invoke-virtual {v3}, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;->getBackend()I

    move-result v6

    invoke-static {v1, v6}, Lcom/google/android/finsky/services/ConsumptionAppDataCache;->getCacheFile(Landroid/content/Context;I)Ljava/io/File;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 140
    .local v0, cacheFile:Ljava/io/File;
    :try_start_1
    invoke-static {v0, v3}, Lcom/google/android/finsky/utils/ParcelUtils;->writeToDisk(Ljava/io/File;Landroid/os/Parcelable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 150
    .end local v0           #cacheFile:Ljava/io/File;
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #dataCache:Lcom/google/android/finsky/services/ConsumptionAppDataCache;
    .end local v3           #docList:Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;
    .end local v5           #whatsNext:Ljava/util/List;,"Ljava/util/List<Landroid/os/Bundle;>;"
    :goto_0
    return-void

    .line 141
    .restart local v0       #cacheFile:Ljava/io/File;
    .restart local v1       #context:Landroid/content/Context;
    .restart local v2       #dataCache:Lcom/google/android/finsky/services/ConsumptionAppDataCache;
    .restart local v3       #docList:Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;
    .restart local v5       #whatsNext:Ljava/util/List;,"Ljava/util/List<Landroid/os/Bundle;>;"
    :catch_0
    move-exception v4

    .line 142
    .local v4, e:Ljava/io/IOException;
    :try_start_2
    const-string v6, "Failed to cache %s: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, p0, Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn;->mBackendId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 147
    .end local v0           #cacheFile:Ljava/io/File;
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #dataCache:Lcom/google/android/finsky/services/ConsumptionAppDataCache;
    .end local v3           #docList:Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;
    .end local v4           #e:Ljava/io/IOException;
    .end local v5           #whatsNext:Ljava/util/List;,"Ljava/util/List<Landroid/os/Bundle;>;"
    :catch_1
    move-exception v4

    .line 148
    .local v4, e:Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 145
    .end local v4           #e:Landroid/os/RemoteException;
    .restart local v5       #whatsNext:Ljava/util/List;,"Ljava/util/List<Landroid/os/Bundle;>;"
    :cond_0
    :try_start_3
    const-string v6, "Error fetching data from service for backend=[%s]"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, p0, Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn;->mBackendId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 107
    invoke-static {}, Lcom/google/android/finsky/services/FetchConsumptionDataService;->access$300()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn$1;

    invoke-direct {v1, p0, p2}, Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn$1;-><init>(Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn;Landroid/os/IBinder;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 115
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn;->mService:Lcom/google/android/play/IUserContentService;

    .line 120
    iget-object v0, p0, Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn;->mLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 121
    return-void
.end method
