.class Lcom/google/android/location/internal/client/NetworkLocationClient$MyServiceConnection;
.super Ljava/lang/Object;
.source "NetworkLocationClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/location/internal/client/NetworkLocationClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyServiceConnection"
.end annotation


# instance fields
.field private service:Lcom/google/android/location/internal/INetworkLocationInternal;

.field final synthetic this$0:Lcom/google/android/location/internal/client/NetworkLocationClient;


# direct methods
.method private constructor <init>(Lcom/google/android/location/internal/client/NetworkLocationClient;)V
    .locals 0
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Lcom/google/android/location/internal/client/NetworkLocationClient$MyServiceConnection;->this$0:Lcom/google/android/location/internal/client/NetworkLocationClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/internal/client/NetworkLocationClient;Lcom/google/android/location/internal/client/NetworkLocationClient$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 323
    invoke-direct {p0, p1}, Lcom/google/android/location/internal/client/NetworkLocationClient$MyServiceConnection;-><init>(Lcom/google/android/location/internal/client/NetworkLocationClient;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/location/internal/client/NetworkLocationClient$MyServiceConnection;)Lcom/google/android/location/internal/INetworkLocationInternal;
    .locals 1
    .parameter "x0"

    .prologue
    .line 323
    iget-object v0, p0, Lcom/google/android/location/internal/client/NetworkLocationClient$MyServiceConnection;->service:Lcom/google/android/location/internal/INetworkLocationInternal;

    return-object v0
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "className"
    .parameter "binder"

    .prologue
    .line 330
    const-string v0, "NetworkLocationClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v0, p0, Lcom/google/android/location/internal/client/NetworkLocationClient$MyServiceConnection;->this$0:Lcom/google/android/location/internal/client/NetworkLocationClient;

    #getter for: Lcom/google/android/location/internal/client/NetworkLocationClient;->lock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/android/location/internal/client/NetworkLocationClient;->access$300(Lcom/google/android/location/internal/client/NetworkLocationClient;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 332
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/internal/client/NetworkLocationClient$MyServiceConnection;->this$0:Lcom/google/android/location/internal/client/NetworkLocationClient;

    #getter for: Lcom/google/android/location/internal/client/NetworkLocationClient;->bestConnection:Lcom/google/android/location/internal/client/NetworkLocationClient$MyServiceConnection;
    invoke-static {v0}, Lcom/google/android/location/internal/client/NetworkLocationClient;->access$400(Lcom/google/android/location/internal/client/NetworkLocationClient;)Lcom/google/android/location/internal/client/NetworkLocationClient$MyServiceConnection;

    move-result-object v0

    if-eq p0, v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/google/android/location/internal/client/NetworkLocationClient$MyServiceConnection;->this$0:Lcom/google/android/location/internal/client/NetworkLocationClient;

    #getter for: Lcom/google/android/location/internal/client/NetworkLocationClient;->handler:Lcom/google/android/location/internal/client/NetworkLocationClient$MyHandler;
    invoke-static {v0}, Lcom/google/android/location/internal/client/NetworkLocationClient;->access$500(Lcom/google/android/location/internal/client/NetworkLocationClient;)Lcom/google/android/location/internal/client/NetworkLocationClient$MyHandler;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 334
    monitor-exit v1

    .line 349
    :goto_0
    return-void

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/internal/client/NetworkLocationClient$MyServiceConnection;->this$0:Lcom/google/android/location/internal/client/NetworkLocationClient;

    #getter for: Lcom/google/android/location/internal/client/NetworkLocationClient;->closed:Z
    invoke-static {v0}, Lcom/google/android/location/internal/client/NetworkLocationClient;->access$600(Lcom/google/android/location/internal/client/NetworkLocationClient;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    const-string v0, "NetworkLocationClient"

    const-string v2, "Service connected when already closed"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 342
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/location/internal/client/NetworkLocationClient$MyServiceConnection;->service:Lcom/google/android/location/internal/INetworkLocationInternal;

    if-eqz v0, :cond_2

    .line 343
    const-string v0, "NetworkLocationClient"

    const-string v2, "Service connecting when already connected"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_2
    invoke-static {p2}, Lcom/google/android/location/internal/INetworkLocationInternal$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/location/internal/INetworkLocationInternal;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/internal/client/NetworkLocationClient$MyServiceConnection;->service:Lcom/google/android/location/internal/INetworkLocationInternal;

    .line 346
    iget-object v0, p0, Lcom/google/android/location/internal/client/NetworkLocationClient$MyServiceConnection;->this$0:Lcom/google/android/location/internal/client/NetworkLocationClient;

    #getter for: Lcom/google/android/location/internal/client/NetworkLocationClient;->handler:Lcom/google/android/location/internal/client/NetworkLocationClient$MyHandler;
    invoke-static {v0}, Lcom/google/android/location/internal/client/NetworkLocationClient;->access$500(Lcom/google/android/location/internal/client/NetworkLocationClient;)Lcom/google/android/location/internal/client/NetworkLocationClient$MyHandler;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "className"

    .prologue
    .line 353
    const-string v0, "NetworkLocationClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v0, p0, Lcom/google/android/location/internal/client/NetworkLocationClient$MyServiceConnection;->this$0:Lcom/google/android/location/internal/client/NetworkLocationClient;

    #getter for: Lcom/google/android/location/internal/client/NetworkLocationClient;->lock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/android/location/internal/client/NetworkLocationClient;->access$300(Lcom/google/android/location/internal/client/NetworkLocationClient;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 355
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/android/location/internal/client/NetworkLocationClient$MyServiceConnection;->service:Lcom/google/android/location/internal/INetworkLocationInternal;

    .line 356
    monitor-exit v1

    .line 357
    return-void

    .line 356
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
