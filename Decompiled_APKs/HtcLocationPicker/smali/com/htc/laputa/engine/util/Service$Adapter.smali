.class public Lcom/htc/laputa/engine/util/Service$Adapter;
.super Ljava/lang/Object;
.source "Service.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/laputa/engine/util/Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/laputa/engine/util/Service$Adapter$RetHandler;,
        Lcom/htc/laputa/engine/util/Service$Adapter$IDataCallbackImp;,
        Lcom/htc/laputa/engine/util/Service$Adapter$RetListener;
    }
.end annotation


# instance fields
.field private mCmdId:I

.field private mCmdType:I

.field private mDataCallback:Lcom/htc/laputa/engine/aidl/IDataCallback;

.field private mRetHandler:Lcom/htc/laputa/engine/util/Service$Adapter$RetHandler;

.field private mRetListener:Lcom/htc/laputa/engine/util/Service$Adapter$RetListener;

.field private mRunningTaskId:I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .parameter "cmdType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/laputa/engine/util/ServiceConnectionException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 321
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 293
    iput v1, p0, Lcom/htc/laputa/engine/util/Service$Adapter;->mCmdType:I

    .line 294
    iput v1, p0, Lcom/htc/laputa/engine/util/Service$Adapter;->mCmdId:I

    .line 295
    iput-object v2, p0, Lcom/htc/laputa/engine/util/Service$Adapter;->mRetHandler:Lcom/htc/laputa/engine/util/Service$Adapter$RetHandler;

    .line 296
    iput-object v2, p0, Lcom/htc/laputa/engine/util/Service$Adapter;->mRetListener:Lcom/htc/laputa/engine/util/Service$Adapter$RetListener;

    .line 297
    new-instance v0, Lcom/htc/laputa/engine/util/Service$Adapter$IDataCallbackImp;

    invoke-direct {v0, p0, v2}, Lcom/htc/laputa/engine/util/Service$Adapter$IDataCallbackImp;-><init>(Lcom/htc/laputa/engine/util/Service$Adapter;Lcom/htc/laputa/engine/util/Service$1;)V

    iput-object v0, p0, Lcom/htc/laputa/engine/util/Service$Adapter;->mDataCallback:Lcom/htc/laputa/engine/aidl/IDataCallback;

    .line 299
    iput v1, p0, Lcom/htc/laputa/engine/util/Service$Adapter;->mRunningTaskId:I

    .line 323
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 324
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v0

    throw v0

    .line 326
    :cond_0
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->access$600()Landroid/os/HandlerThread;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 327
    new-instance v0, Lcom/htc/laputa/engine/util/Service$Adapter$RetHandler;

    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->access$600()Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/laputa/engine/util/Service$Adapter$RetHandler;-><init>(Lcom/htc/laputa/engine/util/Service$Adapter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/laputa/engine/util/Service$Adapter;->mRetHandler:Lcom/htc/laputa/engine/util/Service$Adapter$RetHandler;

    .line 331
    :goto_0
    iput p1, p0, Lcom/htc/laputa/engine/util/Service$Adapter;->mCmdType:I

    .line 332
    invoke-direct {p0}, Lcom/htc/laputa/engine/util/Service$Adapter;->getCmdId()I

    move-result v0

    iput v0, p0, Lcom/htc/laputa/engine/util/Service$Adapter;->mCmdId:I

    .line 333
    return-void

    .line 329
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Service.mRetHandlerThread is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$500(Lcom/htc/laputa/engine/util/Service$Adapter;)Lcom/htc/laputa/engine/util/Service$Adapter$RetHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$Adapter;->mRetHandler:Lcom/htc/laputa/engine/util/Service$Adapter$RetHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/laputa/engine/util/Service$Adapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 281
    iget v0, p0, Lcom/htc/laputa/engine/util/Service$Adapter;->mCmdId:I

    return v0
.end method

.method static synthetic access$800(Lcom/htc/laputa/engine/util/Service$Adapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 281
    iget v0, p0, Lcom/htc/laputa/engine/util/Service$Adapter;->mCmdType:I

    return v0
.end method

.method static synthetic access$900(Lcom/htc/laputa/engine/util/Service$Adapter;)Lcom/htc/laputa/engine/util/Service$Adapter$RetListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$Adapter;->mRetListener:Lcom/htc/laputa/engine/util/Service$Adapter$RetListener;

    return-object v0
.end method

.method private getCmdId()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/laputa/engine/util/ServiceConnectionException;
        }
    .end annotation

    .prologue
    .line 447
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 448
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 450
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v2

    throw v2

    .line 454
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/htc/laputa/engine/aidl/IDataService;->createCmd()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 455
    :catch_0
    move-exception v1

    .line 456
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getCmdId() failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 457
    new-instance v2, Lcom/htc/laputa/engine/util/ServiceConnectionException;

    invoke-direct {v2, v1}, Lcom/htc/laputa/engine/util/ServiceConnectionException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method


# virtual methods
.method public cancel(I)V
    .locals 8
    .parameter "taskId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/laputa/engine/util/ServiceConnectionException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 420
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cancel(%1$d)"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 423
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 425
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v2

    throw v2

    .line 435
    :cond_0
    :try_start_0
    iget v2, p0, Lcom/htc/laputa/engine/util/Service$Adapter;->mCmdId:I

    invoke-interface {v0, v2, p1}, Lcom/htc/laputa/engine/aidl/IDataService;->cancelTask(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cancel(%1$d) end"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    return-void

    .line 436
    :catch_0
    move-exception v1

    .line 438
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cancel() failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 439
    new-instance v2, Lcom/htc/laputa/engine/util/ServiceConnectionException;

    invoke-direct {v2, v1}, Lcom/htc/laputa/engine/util/ServiceConnectionException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public releaseResource()V
    .locals 1

    .prologue
    .line 346
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/laputa/engine/util/Service$Adapter;->mRetListener:Lcom/htc/laputa/engine/util/Service$Adapter$RetListener;

    .line 347
    return-void
.end method

.method public runA(Landroid/os/Bundle;Lcom/htc/laputa/engine/util/Service$Adapter$RetListener;)I
    .locals 6
    .parameter "param"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/laputa/engine/util/ServiceConnectionException;
        }
    .end annotation

    .prologue
    .line 388
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Service.Adpater.runA"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 391
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 393
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v3

    throw v3

    .line 396
    :cond_0
    if-nez p2, :cond_1

    .line 398
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "run(), Invalid Arguments: listener is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const/4 v3, 0x0

    .line 415
    :goto_0
    return v3

    .line 402
    :cond_1
    iput-object p2, p0, Lcom/htc/laputa/engine/util/Service$Adapter;->mRetListener:Lcom/htc/laputa/engine/util/Service$Adapter$RetListener;

    .line 404
    const/4 v2, 0x0

    .line 407
    .local v2, errCode:I
    :try_start_0
    iget v3, p0, Lcom/htc/laputa/engine/util/Service$Adapter;->mCmdId:I

    iget v4, p0, Lcom/htc/laputa/engine/util/Service$Adapter;->mCmdType:I

    iget-object v5, p0, Lcom/htc/laputa/engine/util/Service$Adapter;->mDataCallback:Lcom/htc/laputa/engine/aidl/IDataCallback;

    invoke-interface {v0, v3, v4, p1, v5}, Lcom/htc/laputa/engine/aidl/IDataService;->runTaskA(IILandroid/os/Bundle;Lcom/htc/laputa/engine/aidl/IDataCallback;)I

    move-result v3

    iput v3, p0, Lcom/htc/laputa/engine/util/Service$Adapter;->mRunningTaskId:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    iget v3, p0, Lcom/htc/laputa/engine/util/Service$Adapter;->mRunningTaskId:I

    goto :goto_0

    .line 408
    :catch_0
    move-exception v1

    .line 410
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "runA"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 411
    const/16 v2, -0x3e8

    .line 412
    new-instance v3, Lcom/htc/laputa/engine/util/ServiceConnectionException;

    invoke-direct {v3, v1}, Lcom/htc/laputa/engine/util/ServiceConnectionException;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method public runS(Landroid/os/Bundle;Ljava/util/ArrayList;)I
    .locals 7
    .parameter "param"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/laputa/engine/util/ServiceConnectionException;
        }
    .end annotation

    .prologue
    .line 352
    .local p2, retBndlList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Service.Adpater.runS"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 355
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 357
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v4

    throw v4

    .line 360
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "run()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const/4 v2, 0x0

    .line 364
    .local v2, errCode:I
    if-nez p2, :cond_1

    .line 367
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .end local p2           #retBndlList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .local v3, retBndlList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    move-object p2, v3

    .line 370
    .end local v3           #retBndlList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .restart local p2       #retBndlList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :cond_1
    iget v4, p0, Lcom/htc/laputa/engine/util/Service$Adapter;->mCmdId:I

    iget v5, p0, Lcom/htc/laputa/engine/util/Service$Adapter;->mCmdType:I

    invoke-interface {v0, v4, v5, p1, p2}, Lcom/htc/laputa/engine/aidl/IDataService;->runTaskS(IILandroid/os/Bundle;Ljava/util/List;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 377
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    retBndlList size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "run() end"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    return v2

    .line 371
    :catch_0
    move-exception v1

    .line 372
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "runS() failed"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 373
    const/16 v2, -0x3e8

    .line 374
    new-instance v4, Lcom/htc/laputa/engine/util/ServiceConnectionException;

    invoke-direct {v4, v1}, Lcom/htc/laputa/engine/util/ServiceConnectionException;-><init>(Ljava/lang/Exception;)V

    throw v4
.end method
