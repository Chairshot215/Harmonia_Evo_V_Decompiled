.class public Lcom/google/android/location/internal/client/NetworkLocationClient;
.super Ljava/lang/Object;
.source "NetworkLocationClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/location/internal/client/NetworkLocationClient$MyHandler;,
        Lcom/google/android/location/internal/client/NetworkLocationClient$MyServiceConnection;
    }
.end annotation


# instance fields
.field private final androidConnection:Lcom/google/android/location/internal/client/NetworkLocationClient$MyServiceConnection;

.field private bestConnection:Lcom/google/android/location/internal/client/NetworkLocationClient$MyServiceConnection;

.field private final clientReporter:Lcom/google/android/location/internal/client/ClientReporter;

.field private closed:Z

.field private final context:Landroid/content/Context;

.field private final gmmConnection:Lcom/google/android/location/internal/client/NetworkLocationClient$MyServiceConnection;

.field private final handler:Lcom/google/android/location/internal/client/NetworkLocationClient$MyHandler;

.field private final handlerThread:Landroid/os/HandlerThread;

.field private final listenServer:Lcom/google/android/location/internal/ILocationListener$Stub;

.field private final lock:Ljava/lang/Object;

.field private nlpVersionInfo:Lcom/google/android/location/internal/NlpVersionInfo;

.field private periodSecs:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 6
    .parameter "context"
    .parameter "periodSecs"
    .parameter "listener"
    .parameter "looper"

    .prologue
    .line 162
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/internal/client/NetworkLocationClient;-><init>(Landroid/content/Context;ILandroid/location/LocationListener;Landroid/os/Looper;I)V

    .line 163
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/location/LocationListener;Landroid/os/Looper;I)V
    .locals 2
    .parameter "context"
    .parameter "periodSecs"
    .parameter "listener"
    .parameter "looper"
    .parameter "maxLastKnownLocationSecs"

    .prologue
    const/4 v1, 0x0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/internal/client/NetworkLocationClient;->lock:Ljava/lang/Object;

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/internal/client/NetworkLocationClient;->closed:Z

    .line 109
    new-instance v0, Lcom/google/android/location/internal/client/NetworkLocationClient$MyServiceConnection;

    invoke-direct {v0, p0, v1}, Lcom/google/android/location/internal/client/NetworkLocationClient$MyServiceConnection;-><init>(Lcom/google/android/location/internal/client/NetworkLocationClient;Lcom/google/android/location/internal/client/NetworkLocationClient$1;)V

    iput-object v0, p0, Lcom/google/android/location/internal/client/NetworkLocationClient;->androidConnection:Lcom/google/android/location/internal/client/NetworkLocationClient$MyServiceConnection;

    .line 112
    new-instance v0, Lcom/google/android/location/internal/client/NetworkLocationClient$MyServiceConnection;

    invoke-direct {v0, p0, v1}, Lcom/google/android/location/internal/client/NetworkLocationClient$MyServiceConnection;-><init>(Lcom/google/android/location/internal/client/NetworkLocationClient;Lcom/google/android/location/internal/client/NetworkLocationClient$1;)V

    iput-object v0, p0, Lcom/google/android/location/internal/client/NetworkLocationClient;->gmmConnection:Lcom/google/android/location/internal/client/NetworkLocationClient$MyServiceConnection;

    .line 117
    new-instance v0, Lcom/google/android/location/internal/client/NetworkLocationClient$1;

    invoke-direct {v0, p0}, Lcom/google/android/location/internal/client/NetworkLocationClient$1;-><init>(Lcom/google/android/location/internal/client/NetworkLocationClient;)V

    iput-object v0, p0, Lcom/google/android/location/internal/client/NetworkLocationClient;->listenServer:Lcom/google/android/location/internal/ILocationListener$Stub;

    .line 149
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NLP Client"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/location/internal/client/NetworkLocationClient;->handlerThread:Landroid/os/HandlerThread;

    .line 178
    iput p2, p0, Lcom/google/android/location/internal/client/NetworkLocationClient;->periodSecs:I

    .line 179
    iput-object p1, p0, Lcom/google/android/location/internal/client/NetworkLocationClient;->context:Landroid/content/Context;

    .line 180
    new-instance v0, Lcom/google/android/location/internal/client/ClientReporter;

    invoke-direct {v0, p3, p4}, Lcom/google/android/location/internal/client/ClientReporter;-><init>(Landroid/location/LocationListener;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/location/internal/client/NetworkLocationClient;->clientReporter:Lcom/google/android/location/internal/client/ClientReporter;

    .line 183
    iget-object v0, p0, Lcom/google/android/location/internal/client/NetworkLocationClient;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 184
    new-instance v0, Lcom/google/android/location/internal/client/NetworkLocationClient$MyHandler;

    iget-object v1, p0, Lcom/google/android/location/internal/client/NetworkLocationClient;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p5}, Lcom/google/android/location/internal/client/NetworkLocationClient$MyHandler;-><init>(Lcom/google/android/location/internal/client/NetworkLocationClient;Landroid/os/Looper;I)V

    iput-object v0, p0, Lcom/google/android/location/internal/client/NetworkLocationClient;->handler:Lcom/google/android/location/internal/client/NetworkLocationClient$MyHandler;

    .line 186
    iget-object v1, p0, Lcom/google/android/location/internal/client/NetworkLocationClient;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 189
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/location/internal/client/NetworkLocationClient;->chooseNlpVersion()Lcom/google/android/location/internal/NlpVersionInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/location/internal/client/NetworkLocationClient;->bindToNlpLocked(Lcom/google/android/location/internal/NlpVersionInfo;)V

    .line 190
    monitor-exit v1

    .line 191
    return-void

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$100(Lcom/google/android/location/internal/client/NetworkLocationClient;)Lcom/google/android/location/internal/client/ClientReporter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/location/internal/client/NetworkLocationClient;->clientReporter:Lcom/google/android/location/internal/client/ClientReporter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/location/internal/client/NetworkLocationClient;)Lcom/google/android/location/internal/NlpVersionInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/google/android/location/internal/client/NetworkLocationClient;->chooseNlpVersion()Lcom/google/android/location/internal/NlpVersionInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/location/internal/client/NetworkLocationClient;)Lcom/google/android/location/internal/NlpVersionInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/location/internal/client/NetworkLocationClient;->nlpVersionInfo:Lcom/google/android/location/internal/NlpVersionInfo;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/location/internal/client/NetworkLocationClient;Lcom/google/android/location/internal/NlpVersionInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/google/android/location/internal/client/NetworkLocationClient;->bindToNlpLocked(Lcom/google/android/location/internal/NlpVersionInfo;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/location/internal/client/NetworkLocationClient;)Landroid/os/HandlerThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/location/internal/client/NetworkLocationClient;->handlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/location/internal/client/NetworkLocationClient;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/location/internal/client/NetworkLocationClient;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/location/internal/client/NetworkLocationClient;)Lcom/google/android/location/internal/client/NetworkLocationClient$MyServiceConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/location/internal/client/NetworkLocationClient;->bestConnection:Lcom/google/android/location/internal/client/NetworkLocationClient$MyServiceConnection;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/location/internal/client/NetworkLocationClient;)Lcom/google/android/location/internal/client/NetworkLocationClient$MyHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/location/internal/client/NetworkLocationClient;->handler:Lcom/google/android/location/internal/client/NetworkLocationClient$MyHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/location/internal/client/NetworkLocationClient;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/google/android/location/internal/client/NetworkLocationClient;->closed:Z

    return v0
.end method

.method static synthetic access$700(Lcom/google/android/location/internal/client/NetworkLocationClient;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/google/android/location/internal/client/NetworkLocationClient;->periodSecs:I

    return v0
.end method

.method static synthetic access$800(Lcom/google/android/location/internal/client/NetworkLocationClient;)Lcom/google/android/location/internal/ILocationListener$Stub;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/location/internal/client/NetworkLocationClient;->listenServer:Lcom/google/android/location/internal/ILocationListener$Stub;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/location/internal/client/NetworkLocationClient;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/location/internal/client/NetworkLocationClient;->context:Landroid/content/Context;

    return-object v0
.end method

.method private bindToNlpLocked(Lcom/google/android/location/internal/NlpVersionInfo;)V
    .locals 4
    .parameter "nlpVersionInfo"

    .prologue
    .line 198
    iput-object p1, p0, Lcom/google/android/location/internal/client/NetworkLocationClient;->nlpVersionInfo:Lcom/google/android/location/internal/NlpVersionInfo;

    .line 199
    iget-object v0, p1, Lcom/google/android/location/internal/NlpVersionInfo;->apk:Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;

    sget-object v1, Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;->ANDROID:Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/location/internal/client/NetworkLocationClient;->androidConnection:Lcom/google/android/location/internal/client/NetworkLocationClient$MyServiceConnection;

    :goto_0
    iput-object v0, p0, Lcom/google/android/location/internal/client/NetworkLocationClient;->bestConnection:Lcom/google/android/location/internal/client/NetworkLocationClient$MyServiceConnection;

    .line 200
    const-string v0, "NetworkLocationClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binding to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/location/internal/NlpVersionInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcom/google/android/location/internal/client/NetworkLocationClient;->context:Landroid/content/Context;

    iget-object v1, p1, Lcom/google/android/location/internal/NlpVersionInfo;->intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/location/internal/client/NetworkLocationClient;->bestConnection:Lcom/google/android/location/internal/client/NetworkLocationClient$MyServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 202
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/internal/client/NetworkLocationClient;->gmmConnection:Lcom/google/android/location/internal/client/NetworkLocationClient$MyServiceConnection;

    goto :goto_0
.end method

.method private chooseNlpVersion()Lcom/google/android/location/internal/NlpVersionInfo;
    .locals 3

    .prologue
    .line 304
    sget-object v1, Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;->ANDROID:Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;

    iget-object v2, p0, Lcom/google/android/location/internal/client/NetworkLocationClient;->context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/google/android/location/internal/NlpVersionInfo;->getNlpVersionInfo(Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;Landroid/content/Context;)Lcom/google/android/location/internal/NlpVersionInfo;

    move-result-object v0

    .line 305
    .local v0, android:Lcom/google/android/location/internal/NlpVersionInfo;
    const-string v1, "NetworkLocationClient"

    invoke-virtual {v0}, Lcom/google/android/location/internal/NlpVersionInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/location/internal/NlpVersionInfo;->compatible(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    return-object v0

    .line 309
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "no compatible NLP found"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public changePeriod(I)V
    .locals 4
    .parameter "periodSecs"

    .prologue
    .line 209
    iget-object v1, p0, Lcom/google/android/location/internal/client/NetworkLocationClient;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 210
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/location/internal/client/NetworkLocationClient;->closed:Z

    if-eqz v0, :cond_0

    .line 211
    const-string v0, "NetworkLocationClient"

    const-string v2, "already closed in changePeriod"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    monitor-exit v1

    .line 217
    :goto_0
    return-void

    .line 214
    :cond_0
    iput p1, p0, Lcom/google/android/location/internal/client/NetworkLocationClient;->periodSecs:I

    .line 215
    iget-object v0, p0, Lcom/google/android/location/internal/client/NetworkLocationClient;->handler:Lcom/google/android/location/internal/client/NetworkLocationClient$MyHandler;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/location/internal/client/NetworkLocationClient;->bestConnection:Lcom/google/android/location/internal/client/NetworkLocationClient$MyServiceConnection;

    invoke-static {v0, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 216
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDebugDump()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 261
    const/4 v1, 0x0

    .line 262
    .local v1, nli:Lcom/google/android/location/internal/INetworkLocationInternal;
    iget-object v3, p0, Lcom/google/android/location/internal/client/NetworkLocationClient;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 263
    :try_start_0
    iget-boolean v4, p0, Lcom/google/android/location/internal/client/NetworkLocationClient;->closed:Z

    if-eqz v4, :cond_0

    .line 264
    const-string v4, "NetworkLocationClient"

    const-string v5, "Already closed in getDebugDump."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    monitor-exit v3

    .line 278
    :goto_0
    return-object v2

    .line 267
    :cond_0
    iget-object v4, p0, Lcom/google/android/location/internal/client/NetworkLocationClient;->bestConnection:Lcom/google/android/location/internal/client/NetworkLocationClient$MyServiceConnection;

    #getter for: Lcom/google/android/location/internal/client/NetworkLocationClient$MyServiceConnection;->service:Lcom/google/android/location/internal/INetworkLocationInternal;
    invoke-static {v4}, Lcom/google/android/location/internal/client/NetworkLocationClient$MyServiceConnection;->access$200(Lcom/google/android/location/internal/client/NetworkLocationClient$MyServiceConnection;)Lcom/google/android/location/internal/INetworkLocationInternal;

    move-result-object v1

    .line 268
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    if-eqz v1, :cond_1

    .line 271
    :try_start_1
    invoke-interface {v1}, Lcom/google/android/location/internal/INetworkLocationInternal;->getDebugDump()Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_0

    .line 268
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "NetworkLocationClient"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 277
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const-string v3, "NetworkLocationClient"

    const-string v4, "nli null in getDebugDump"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
