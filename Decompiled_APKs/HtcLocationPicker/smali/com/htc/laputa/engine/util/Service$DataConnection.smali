.class Lcom/htc/laputa/engine/util/Service$DataConnection;
.super Ljava/lang/Object;
.source "Service.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/laputa/engine/util/Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataConnection"
.end annotation


# instance fields
.field private mEngineListener:Lcom/htc/laputa/engine/util/Service$EngineStatusListener;

.field private mServiceListener:Lcom/htc/laputa/engine/util/Service$ServiceListener;


# direct methods
.method public constructor <init>(Lcom/htc/laputa/engine/util/Service$ServiceListener;Lcom/htc/laputa/engine/util/Service$EngineStatusListener;)V
    .locals 1
    .parameter "serviceListener"
    .parameter "engineListener"

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object v0, p0, Lcom/htc/laputa/engine/util/Service$DataConnection;->mServiceListener:Lcom/htc/laputa/engine/util/Service$ServiceListener;

    .line 73
    iput-object v0, p0, Lcom/htc/laputa/engine/util/Service$DataConnection;->mEngineListener:Lcom/htc/laputa/engine/util/Service$EngineStatusListener;

    .line 77
    iput-object p1, p0, Lcom/htc/laputa/engine/util/Service$DataConnection;->mServiceListener:Lcom/htc/laputa/engine/util/Service$ServiceListener;

    .line 78
    iput-object p2, p0, Lcom/htc/laputa/engine/util/Service$DataConnection;->mEngineListener:Lcom/htc/laputa/engine/util/Service$EngineStatusListener;

    .line 79
    return-void
.end method

.method static synthetic access$300(Lcom/htc/laputa/engine/util/Service$DataConnection;)Lcom/htc/laputa/engine/util/Service$EngineStatusListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$DataConnection;->mEngineListener:Lcom/htc/laputa/engine/util/Service$EngineStatusListener;

    return-object v0
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .parameter "name"
    .parameter "service"

    .prologue
    .line 84
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->access$000()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 86
    :try_start_0
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v4, "DataConnection.onServiceConnected()"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->access$200()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v4, "mConnectionMap.isEmpty()"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    monitor-exit v3

    .line 130
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v2

    if-nez v2, :cond_1

    .line 94
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v4, "accept new binder service"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-static {p2}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/laputa/engine/util/Service;->setDataService(Lcom/htc/laputa/engine/aidl/IDataService;)V

    .line 98
    :cond_1
    iget-object v2, p0, Lcom/htc/laputa/engine/util/Service$DataConnection;->mServiceListener:Lcom/htc/laputa/engine/util/Service$ServiceListener;

    if-eqz v2, :cond_2

    .line 99
    iget-object v2, p0, Lcom/htc/laputa/engine/util/Service$DataConnection;->mServiceListener:Lcom/htc/laputa/engine/util/Service$ServiceListener;

    invoke-interface {v2}, Lcom/htc/laputa/engine/util/Service$ServiceListener;->onConnected()V

    .line 101
    :cond_2
    iget-object v2, p0, Lcom/htc/laputa/engine/util/Service$DataConnection;->mEngineListener:Lcom/htc/laputa/engine/util/Service$EngineStatusListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    .line 103
    const/4 v1, 0x0

    .line 105
    .local v1, ret:I
    :try_start_1
    new-instance v2, Lcom/htc/laputa/engine/util/Service$DataConnection$1;

    invoke-direct {v2, p0}, Lcom/htc/laputa/engine/util/Service$DataConnection$1;-><init>(Lcom/htc/laputa/engine/util/Service$DataConnection;)V

    invoke-static {v2}, Lcom/htc/laputa/engine/util/Service;->GetEngineStatueA(Lcom/htc/laputa/engine/util/CmdListener;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/htc/laputa/engine/util/ServiceConnectionException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 126
    :goto_1
    if-gez v1, :cond_3

    .line 127
    :try_start_2
    iget-object v2, p0, Lcom/htc/laputa/engine/util/Service$DataConnection;->mEngineListener:Lcom/htc/laputa/engine/util/Service$EngineStatusListener;

    const/4 v4, -0x1

    invoke-interface {v2, v4}, Lcom/htc/laputa/engine/util/Service$EngineStatusListener;->onEngineStatusUpdate(I)V

    .line 129
    .end local v1           #ret:I
    :cond_3
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 120
    .restart local v1       #ret:I
    :catch_0
    move-exception v0

    .line 122
    .local v0, e:Lcom/htc/laputa/engine/util/ServiceConnectionException;
    :try_start_3
    invoke-virtual {v0}, Lcom/htc/laputa/engine/util/ServiceConnectionException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 123
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 134
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 136
    :try_start_0
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DataConnection.onServiceDisconnected()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$DataConnection;->mServiceListener:Lcom/htc/laputa/engine/util/Service$ServiceListener;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$DataConnection;->mServiceListener:Lcom/htc/laputa/engine/util/Service$ServiceListener;

    invoke-interface {v0}, Lcom/htc/laputa/engine/util/Service$ServiceListener;->onDisconnected()V

    .line 140
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/htc/laputa/engine/util/Service;->setDataService(Lcom/htc/laputa/engine/aidl/IDataService;)V

    .line 141
    monitor-exit v1

    .line 143
    return-void

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected release()V
    .locals 2

    .prologue
    .line 147
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 149
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/htc/laputa/engine/util/Service$DataConnection;->mServiceListener:Lcom/htc/laputa/engine/util/Service$ServiceListener;

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/laputa/engine/util/Service$DataConnection;->mEngineListener:Lcom/htc/laputa/engine/util/Service$EngineStatusListener;

    .line 151
    monitor-exit v1

    .line 152
    return-void

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
