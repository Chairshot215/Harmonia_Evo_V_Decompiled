.class public Lcom/htc/laputa/engine/util/Service;
.super Ljava/lang/Object;
.source "Service.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/laputa/engine/util/Service$Runnable1;,
        Lcom/htc/laputa/engine/util/Service$SearchCmd;,
        Lcom/htc/laputa/engine/util/Service$BasicCmd;,
        Lcom/htc/laputa/engine/util/Service$Adapter;,
        Lcom/htc/laputa/engine/util/Service$DataConnection;,
        Lcom/htc/laputa/engine/util/Service$EngineStatusListener;,
        Lcom/htc/laputa/engine/util/Service$ServiceListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sConnectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/htc/laputa/engine/util/Service$DataConnection;",
            ">;"
        }
    .end annotation
.end field

.field private static sDataService:Lcom/htc/laputa/engine/aidl/IDataService;

.field private static sRetHandlerThread:Landroid/os/HandlerThread;

.field private static sServiceLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    const-class v0, Lcom/htc/laputa/engine/util/Service;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/laputa/engine/util/Service;->TAG:Ljava/lang/String;

    .line 65
    sput-object v1, Lcom/htc/laputa/engine/util/Service;->sDataService:Lcom/htc/laputa/engine/aidl/IDataService;

    .line 66
    sput-object v1, Lcom/htc/laputa/engine/util/Service;->sRetHandlerThread:Landroid/os/HandlerThread;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/laputa/engine/util/Service;->sConnectionMap:Ljava/util/HashMap;

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/laputa/engine/util/Service;->sServiceLock:Ljava/lang/Object;

    .line 704
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 736
    return-void
.end method

.method protected static GetEngineStatueA(Lcom/htc/laputa/engine/util/CmdListener;)I
    .locals 5
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/laputa/engine/util/ServiceConnectionException;
        }
    .end annotation

    .prologue
    .line 713
    new-instance v2, Lcom/htc/laputa/engine/util/Service$Adapter;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Lcom/htc/laputa/engine/util/Service$Adapter;-><init>(I)V

    .line 714
    .local v2, svcAdapter:Lcom/htc/laputa/engine/util/Service$Adapter;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 715
    .local v1, retBndlList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    const/4 v3, 0x0

    new-instance v4, Lcom/htc/laputa/engine/util/Service$1;

    invoke-direct {v4, p0, v2}, Lcom/htc/laputa/engine/util/Service$1;-><init>(Lcom/htc/laputa/engine/util/CmdListener;Lcom/htc/laputa/engine/util/Service$Adapter;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/laputa/engine/util/Service$Adapter;->runA(Landroid/os/Bundle;Lcom/htc/laputa/engine/util/Service$Adapter$RetListener;)I

    move-result v0

    .line 733
    .local v0, errCode:I
    return v0
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/htc/laputa/engine/util/Service;->sServiceLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/htc/laputa/engine/util/Service;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/htc/laputa/engine/util/Service;->sConnectionMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600()Landroid/os/HandlerThread;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/htc/laputa/engine/util/Service;->sRetHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method public static bindEngineService(Landroid/content/Context;Lcom/htc/laputa/engine/util/Service$ServiceListener;)Z
    .locals 1
    .parameter "context"
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/htc/laputa/engine/util/Service;->bindEngineService(Landroid/content/Context;Lcom/htc/laputa/engine/util/Service$ServiceListener;Lcom/htc/laputa/engine/util/Service$EngineStatusListener;)Z

    move-result v0

    return v0
.end method

.method public static bindEngineService(Landroid/content/Context;Lcom/htc/laputa/engine/util/Service$ServiceListener;Lcom/htc/laputa/engine/util/Service$EngineStatusListener;)Z
    .locals 8
    .parameter "context"
    .parameter "serviceListener"
    .parameter "engineListener"

    .prologue
    const/4 v1, 0x0

    .line 177
    if-nez p0, :cond_0

    .line 179
    sget-object v2, Lcom/htc/laputa/engine/util/Service;->TAG:Ljava/lang/String;

    const-string v3, "bindEngineService: invalid argument, context is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "context is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 183
    :cond_0
    sget-object v3, Lcom/htc/laputa/engine/util/Service;->sServiceLock:Ljava/lang/Object;

    monitor-enter v3

    .line 185
    :try_start_0
    sget-object v2, Lcom/htc/laputa/engine/util/Service;->TAG:Ljava/lang/String;

    const-string v4, "bindEngineService() with context = %d, %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    sget-object v2, Lcom/htc/laputa/engine/util/Service;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 189
    sget-object v2, Lcom/htc/laputa/engine/util/Service;->TAG:Ljava/lang/String;

    const-string v4, "bindEngineService() duplicate binding with same context %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    monitor-exit v3

    .line 213
    :goto_0
    return v1

    .line 193
    :cond_1
    new-instance v0, Lcom/htc/laputa/engine/util/Service$DataConnection;

    invoke-direct {v0, p1, p2}, Lcom/htc/laputa/engine/util/Service$DataConnection;-><init>(Lcom/htc/laputa/engine/util/Service$ServiceListener;Lcom/htc/laputa/engine/util/Service$EngineStatusListener;)V

    .line 195
    .local v0, dc:Lcom/htc/laputa/engine/util/Service$DataConnection;
    sget-object v2, Lcom/htc/laputa/engine/util/Service;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/htc/laputa/engine/aidl/IDataService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v0, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 199
    .local v1, ret:Z
    if-nez v1, :cond_2

    .line 201
    sget-object v2, Lcom/htc/laputa/engine/util/Service;->TAG:Ljava/lang/String;

    const-string v4, "context.bindService failed"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    sget-object v2, Lcom/htc/laputa/engine/util/Service;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_2
    sget-object v2, Lcom/htc/laputa/engine/util/Service;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mConnectionMap = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/htc/laputa/engine/util/Service;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    sget-object v2, Lcom/htc/laputa/engine/util/Service;->sRetHandlerThread:Landroid/os/HandlerThread;

    if-nez v2, :cond_3

    .line 209
    new-instance v2, Landroid/os/HandlerThread;

    const-class v4, Lcom/htc/laputa/engine/util/Service;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    invoke-direct {v2, v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/htc/laputa/engine/util/Service;->sRetHandlerThread:Landroid/os/HandlerThread;

    .line 210
    sget-object v2, Lcom/htc/laputa/engine/util/Service;->sRetHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 213
    :cond_3
    monitor-exit v3

    goto :goto_0

    .line 214
    .end local v0           #dc:Lcom/htc/laputa/engine/util/Service$DataConnection;
    .end local v1           #ret:Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected static getDataService()Lcom/htc/laputa/engine/aidl/IDataService;
    .locals 1

    .prologue
    .line 263
    sget-object v0, Lcom/htc/laputa/engine/util/Service;->sDataService:Lcom/htc/laputa/engine/aidl/IDataService;

    return-object v0
.end method

.method protected static getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;
    .locals 2

    .prologue
    .line 273
    new-instance v0, Lcom/htc/laputa/engine/util/ServiceConnectionException;

    const-string v1, "Service not ready."

    invoke-direct {v0, v1}, Lcom/htc/laputa/engine/util/ServiceConnectionException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected static setDataService(Lcom/htc/laputa/engine/aidl/IDataService;)V
    .locals 0
    .parameter "ids"

    .prologue
    .line 268
    sput-object p0, Lcom/htc/laputa/engine/util/Service;->sDataService:Lcom/htc/laputa/engine/aidl/IDataService;

    .line 269
    return-void
.end method

.method public static unbineEngineService(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x1

    .line 225
    if-nez p0, :cond_0

    .line 227
    sget-object v1, Lcom/htc/laputa/engine/util/Service;->TAG:Ljava/lang/String;

    const-string v2, "unbindEngineService: invalid argument, context is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "context is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 231
    :cond_0
    sget-object v2, Lcom/htc/laputa/engine/util/Service;->sServiceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 233
    :try_start_0
    sget-object v1, Lcom/htc/laputa/engine/util/Service;->TAG:Ljava/lang/String;

    const-string v3, "unbindEngineService() with context = %d, %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    sget-object v1, Lcom/htc/laputa/engine/util/Service;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/laputa/engine/util/Service$DataConnection;

    .line 237
    .local v0, dc:Lcom/htc/laputa/engine/util/Service$DataConnection;
    if-eqz v0, :cond_1

    .line 239
    sget-object v1, Lcom/htc/laputa/engine/util/Service;->TAG:Ljava/lang/String;

    const-string v3, "unbind service with dc "

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 241
    invoke-virtual {v0}, Lcom/htc/laputa/engine/util/Service$DataConnection;->release()V

    .line 244
    :cond_1
    const/4 v0, 0x0

    .line 245
    sget-object v1, Lcom/htc/laputa/engine/util/Service;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mConnectionMap = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/laputa/engine/util/Service;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    sget-object v1, Lcom/htc/laputa/engine/util/Service;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 248
    sget-object v1, Lcom/htc/laputa/engine/util/Service;->TAG:Ljava/lang/String;

    const-string v3, "null the mDataService"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/htc/laputa/engine/util/Service;->setDataService(Lcom/htc/laputa/engine/aidl/IDataService;)V

    .line 251
    sget-object v1, Lcom/htc/laputa/engine/util/Service;->sRetHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_2

    .line 253
    sget-object v1, Lcom/htc/laputa/engine/util/Service;->sRetHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 254
    const/4 v1, 0x0

    sput-object v1, Lcom/htc/laputa/engine/util/Service;->sRetHandlerThread:Landroid/os/HandlerThread;

    .line 257
    :cond_2
    monitor-exit v2

    .line 258
    return v7

    .line 257
    .end local v0           #dc:Lcom/htc/laputa/engine/util/Service$DataConnection;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
