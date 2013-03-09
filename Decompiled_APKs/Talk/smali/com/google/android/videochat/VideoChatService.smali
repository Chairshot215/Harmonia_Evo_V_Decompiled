.class public Lcom/google/android/videochat/VideoChatService;
.super Landroid/app/Service;
.source "VideoChatService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/videochat/VideoChatService$StopServiceHandler;,
        Lcom/google/android/videochat/VideoChatService$HardBinder;,
        Lcom/google/android/videochat/VideoChatService$SoftBinder;
    }
.end annotation


# instance fields
.field private mCachedCallSession:Lcom/google/android/videochat/CallSession;

.field private final mCachedCallSessionLock:Ljava/lang/Object;

.field private mCachedStanzaInjector:Lcom/google/android/videochat/StanzaInjector;

.field private final mCachedStanzaInjectorLock:Ljava/lang/Object;

.field private mCallManager:Lcom/google/android/videochat/CallManager;

.field private final mHardBinder:Lcom/google/android/videochat/VideoChatService$HardBinder;

.field private mHardBound:Z

.field private final mKeepAliveRequests:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkConnectionManager:Lcom/google/android/videochat/NetworkConnectionManager;

.field private mNotifyNewJingleInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mOngoingNotificationFactory:Lcom/google/android/videochat/OngoingNotificationFactory;

.field private mOutputReceiverComponent:Landroid/content/ComponentName;

.field private final mSoftBinder:Lcom/google/android/videochat/VideoChatService$SoftBinder;

.field private mStopServiceHandler:Lcom/google/android/videochat/VideoChatService$StopServiceHandler;

.field private mStopped:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/videochat/VideoChatService;->mKeepAliveRequests:Ljava/util/HashSet;

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/videochat/VideoChatService;->mCachedCallSessionLock:Ljava/lang/Object;

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/videochat/VideoChatService;->mCachedStanzaInjectorLock:Ljava/lang/Object;

    .line 81
    new-instance v0, Lcom/google/android/videochat/VideoChatService$1;

    invoke-direct {v0, p0}, Lcom/google/android/videochat/VideoChatService$1;-><init>(Lcom/google/android/videochat/VideoChatService;)V

    iput-object v0, p0, Lcom/google/android/videochat/VideoChatService;->mNotifyNewJingleInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 374
    new-instance v0, Lcom/google/android/videochat/VideoChatService$SoftBinder;

    invoke-direct {v0, p0}, Lcom/google/android/videochat/VideoChatService$SoftBinder;-><init>(Lcom/google/android/videochat/VideoChatService;)V

    iput-object v0, p0, Lcom/google/android/videochat/VideoChatService;->mSoftBinder:Lcom/google/android/videochat/VideoChatService$SoftBinder;

    .line 388
    new-instance v0, Lcom/google/android/videochat/VideoChatService$HardBinder;

    invoke-direct {v0, p0}, Lcom/google/android/videochat/VideoChatService$HardBinder;-><init>(Lcom/google/android/videochat/VideoChatService;)V

    iput-object v0, p0, Lcom/google/android/videochat/VideoChatService;->mHardBinder:Lcom/google/android/videochat/VideoChatService$HardBinder;

    .line 483
    new-instance v0, Lcom/google/android/videochat/VideoChatService$StopServiceHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/videochat/VideoChatService$StopServiceHandler;-><init>(Lcom/google/android/videochat/VideoChatService;Lcom/google/android/videochat/VideoChatService$1;)V

    iput-object v0, p0, Lcom/google/android/videochat/VideoChatService;->mStopServiceHandler:Lcom/google/android/videochat/VideoChatService$StopServiceHandler;

    .line 488
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/videochat/VideoChatService;)Lcom/google/android/videochat/CallManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/videochat/VideoChatService;->mCallManager:Lcom/google/android/videochat/CallManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/videochat/VideoChatService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/google/android/videochat/VideoChatService;->onCallConnected(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/videochat/VideoChatService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/google/android/videochat/VideoChatService;->onCallEnding(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/videochat/VideoChatService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/google/android/videochat/VideoChatService;->mStopped:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/videochat/VideoChatService;)Lcom/google/android/videochat/CallSession;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/android/videochat/VideoChatService;->getCallSession()Lcom/google/android/videochat/CallSession;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/videochat/VideoChatService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/android/videochat/VideoChatService;->stopServiceIfSafe()Z

    move-result v0

    return v0
.end method

.method private createSessionKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "remoteJid"
    .parameter "localBareJid"

    .prologue
    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCallSession()Lcom/google/android/videochat/CallSession;
    .locals 3

    .prologue
    .line 253
    iget-object v1, p0, Lcom/google/android/videochat/VideoChatService;->mCachedCallSessionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/google/android/videochat/VideoChatService;->mCachedCallSession:Lcom/google/android/videochat/CallSession;

    if-nez v0, :cond_0

    .line 255
    new-instance v0, Lcom/google/android/videochat/CallSession;

    iget-object v2, p0, Lcom/google/android/videochat/VideoChatService;->mCallManager:Lcom/google/android/videochat/CallManager;

    invoke-direct {v0, p0, v2}, Lcom/google/android/videochat/CallSession;-><init>(Lcom/google/android/videochat/VideoChatService;Lcom/google/android/videochat/CallManager;)V

    iput-object v0, p0, Lcom/google/android/videochat/VideoChatService;->mCachedCallSession:Lcom/google/android/videochat/CallSession;

    .line 257
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    iget-object v0, p0, Lcom/google/android/videochat/VideoChatService;->mCachedCallSession:Lcom/google/android/videochat/CallSession;

    return-object v0

    .line 257
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getStanzaInjector()Lcom/google/android/videochat/StanzaInjector;
    .locals 3

    .prologue
    .line 263
    iget-object v1, p0, Lcom/google/android/videochat/VideoChatService;->mCachedStanzaInjectorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 264
    :try_start_0
    iget-object v0, p0, Lcom/google/android/videochat/VideoChatService;->mCachedStanzaInjector:Lcom/google/android/videochat/StanzaInjector;

    if-nez v0, :cond_0

    .line 265
    new-instance v0, Lcom/google/android/videochat/StanzaInjector;

    iget-object v2, p0, Lcom/google/android/videochat/VideoChatService;->mCallManager:Lcom/google/android/videochat/CallManager;

    invoke-direct {v0, p0, v2}, Lcom/google/android/videochat/StanzaInjector;-><init>(Lcom/google/android/videochat/VideoChatService;Lcom/google/android/videochat/CallManager;)V

    iput-object v0, p0, Lcom/google/android/videochat/VideoChatService;->mCachedStanzaInjector:Lcom/google/android/videochat/StanzaInjector;

    .line 267
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    iget-object v0, p0, Lcom/google/android/videochat/VideoChatService;->mCachedStanzaInjector:Lcom/google/android/videochat/StanzaInjector;

    return-object v0

    .line 267
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private initCallManager()Lcom/google/android/videochat/CallManager;
    .locals 2

    .prologue
    .line 277
    invoke-static {p0}, Lcom/google/android/videochat/CallManager;->getInstance(Lcom/google/android/videochat/VideoChatService;)Lcom/google/android/videochat/CallManager;

    move-result-object v0

    .line 278
    .local v0, cm:Lcom/google/android/videochat/CallManager;
    new-instance v1, Lcom/google/android/videochat/VideoChatService$2;

    invoke-direct {v1, p0}, Lcom/google/android/videochat/VideoChatService$2;-><init>(Lcom/google/android/videochat/VideoChatService;)V

    invoke-virtual {v0, v1}, Lcom/google/android/videochat/CallManager;->setCallBoundaryCallback(Lcom/google/android/videochat/CallManager$CallBoundaryCallback;)V

    .line 312
    return-object v0
.end method

.method private onCallConnected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "remoteJid"
    .parameter "localBareJid"

    .prologue
    .line 327
    invoke-virtual {p0, p1, p2}, Lcom/google/android/videochat/VideoChatService;->offerUpgradeToFullJidKeepAliveRequest(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method private onCallEnding(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "remoteJid"
    .parameter "localBareJid"

    .prologue
    .line 333
    invoke-virtual {p0, p1, p2}, Lcom/google/android/videochat/VideoChatService;->removeKeepAliveRequest(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    return-void
.end method

.method private stopServiceIfSafe()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 416
    iget-object v1, p0, Lcom/google/android/videochat/VideoChatService;->mKeepAliveRequests:Ljava/util/HashSet;

    monitor-enter v1

    .line 417
    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/videochat/VideoChatService;->mStopped:Z

    if-nez v2, :cond_0

    .line 418
    invoke-virtual {p0}, Lcom/google/android/videochat/VideoChatService;->safeToStop()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 419
    const-string v2, "vclib:VideoChatService"

    const-string v3, "Stopping VideoChatService..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    invoke-virtual {p0}, Lcom/google/android/videochat/VideoChatService;->stopSelf()V

    .line 421
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/videochat/VideoChatService;->mStopped:Z

    .line 422
    monitor-exit v1

    .line 426
    :goto_0
    return v0

    .line 425
    :cond_0
    monitor-exit v1

    .line 426
    const/4 v0, 0x0

    goto :goto_0

    .line 425
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method addKeepAliveRequest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "remoteJid"
    .parameter "localBareJid"

    .prologue
    .line 149
    invoke-direct {p0, p1, p2}, Lcom/google/android/videochat/VideoChatService;->createSessionKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, sessionKey:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/videochat/VideoChatService;->mKeepAliveRequests:Ljava/util/HashSet;

    monitor-enter v2

    .line 151
    :try_start_0
    iget-object v1, p0, Lcom/google/android/videochat/VideoChatService;->mKeepAliveRequests:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/google/android/videochat/VideoChatService;->mKeepAliveRequests:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-static {}, Lcom/google/android/videochat/util/LogUtil;->getTalkLogLevel()I

    move-result v1

    const/4 v3, 0x2

    if-gt v1, v3, :cond_1

    .line 154
    const-string v1, "vclib:VideoChatService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add keep-alive for remoteJid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  localBareJid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    :goto_0
    monitor-exit v2

    .line 162
    return-void

    .line 158
    :cond_1
    const-string v1, "vclib:VideoChatService"

    const-string v3, "add keep-alive"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 161
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .parameter "fd"
    .parameter "writer"
    .parameter "args"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/videochat/VideoChatService;->mCallManager:Lcom/google/android/videochat/CallManager;

    invoke-virtual {v0, p2}, Lcom/google/android/videochat/CallManager;->dump(Ljava/io/PrintWriter;)V

    .line 146
    return-void
.end method

.method public getNetworkConnectionManager()Lcom/google/android/videochat/NetworkConnectionManager;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/videochat/VideoChatService;->mNetworkConnectionManager:Lcom/google/android/videochat/NetworkConnectionManager;

    return-object v0
.end method

.method public getNumKeepAliveRequests()I
    .locals 2

    .prologue
    .line 513
    iget-object v1, p0, Lcom/google/android/videochat/VideoChatService;->mKeepAliveRequests:Ljava/util/HashSet;

    monitor-enter v1

    .line 514
    :try_start_0
    iget-object v0, p0, Lcom/google/android/videochat/VideoChatService;->mKeepAliveRequests:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 515
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getOutputReceiverComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/google/android/videochat/VideoChatService;->mOutputReceiverComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public isBound()Z
    .locals 1

    .prologue
    .line 520
    iget-boolean v0, p0, Lcom/google/android/videochat/VideoChatService;->mHardBound:Z

    return v0
.end method

.method public isStopped()Z
    .locals 1

    .prologue
    .line 525
    iget-boolean v0, p0, Lcom/google/android/videochat/VideoChatService;->mStopped:Z

    return v0
.end method

.method offerUpgradeToFullJidKeepAliveRequest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "remoteJid"
    .parameter "localBareJid"

    .prologue
    .line 173
    invoke-static {p1}, Lcom/google/android/videochat/util/Util;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, username:Ljava/lang/String;
    invoke-direct {p0, v2, p2}, Lcom/google/android/videochat/VideoChatService;->createSessionKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 175
    .local v3, usernameSessionKey:Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/google/android/videochat/VideoChatService;->createSessionKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, fullySpecifiedSessionKey:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/videochat/VideoChatService;->mKeepAliveRequests:Ljava/util/HashSet;

    monitor-enter v5

    .line 178
    :try_start_0
    iget-object v4, p0, Lcom/google/android/videochat/VideoChatService;->mKeepAliveRequests:Ljava/util/HashSet;

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 179
    iget-object v4, p0, Lcom/google/android/videochat/VideoChatService;->mKeepAliveRequests:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 183
    iget-object v4, p0, Lcom/google/android/videochat/VideoChatService;->mKeepAliveRequests:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 185
    invoke-direct {p0, p1, p2}, Lcom/google/android/videochat/VideoChatService;->createSessionKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, sessionKey:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/videochat/VideoChatService;->mKeepAliveRequests:Ljava/util/HashSet;

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 189
    .end local v1           #sessionKey:Ljava/lang/String;
    :cond_0
    monitor-exit v5

    .line 190
    return-void

    .line 189
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter

    .prologue
    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/videochat/VideoChatService;->mStopped:Z

    .line 233
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.talk.SOFT_BIND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/google/android/videochat/VideoChatService;->mSoftBinder:Lcom/google/android/videochat/VideoChatService$SoftBinder;

    .line 248
    :goto_0
    return-object v0

    .line 235
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.talk.HARD_BIND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 242
    const-class v1, Lcom/google/android/videochat/VideoChatService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 243
    invoke-virtual {p0, v0}, Lcom/google/android/videochat/VideoChatService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/videochat/VideoChatService;->mHardBound:Z

    .line 246
    iget-object v0, p0, Lcom/google/android/videochat/VideoChatService;->mHardBinder:Lcom/google/android/videochat/VideoChatService$HardBinder;

    goto :goto_0

    .line 248
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 96
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 98
    invoke-direct {p0}, Lcom/google/android/videochat/VideoChatService;->initCallManager()Lcom/google/android/videochat/CallManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/videochat/VideoChatService;->mCallManager:Lcom/google/android/videochat/CallManager;

    .line 100
    new-instance v1, Lcom/google/android/videochat/NetworkConnectionManager;

    invoke-direct {v1, p0}, Lcom/google/android/videochat/NetworkConnectionManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/videochat/VideoChatService;->mNetworkConnectionManager:Lcom/google/android/videochat/NetworkConnectionManager;

    .line 103
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.google.android.videochat.NOTIFY_JINGLE_INFO"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 104
    .local v0, intentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/google/android/videochat/VideoChatService;->mNotifyNewJingleInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/videochat/VideoChatService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 105
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 431
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 432
    const-string v0, "vclib:VideoChatService"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iput-object v2, p0, Lcom/google/android/videochat/VideoChatService;->mCachedCallSession:Lcom/google/android/videochat/CallSession;

    .line 434
    iput-object v2, p0, Lcom/google/android/videochat/VideoChatService;->mCachedStanzaInjector:Lcom/google/android/videochat/StanzaInjector;

    .line 435
    iget-object v0, p0, Lcom/google/android/videochat/VideoChatService;->mCallManager:Lcom/google/android/videochat/CallManager;

    invoke-virtual {v0}, Lcom/google/android/videochat/CallManager;->release()V

    .line 438
    iget-object v0, p0, Lcom/google/android/videochat/VideoChatService;->mNetworkConnectionManager:Lcom/google/android/videochat/NetworkConnectionManager;

    invoke-virtual {v0}, Lcom/google/android/videochat/NetworkConnectionManager;->stopUsingMobileHipri()V

    .line 440
    iget-object v0, p0, Lcom/google/android/videochat/VideoChatService;->mNotifyNewJingleInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/videochat/VideoChatService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 441
    return-void
.end method

.method onNewCallStarting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "remoteJid"
    .parameter "localBareJid"

    .prologue
    .line 318
    invoke-virtual {p0, p1, p2}, Lcom/google/android/videochat/VideoChatService;->addKeepAliveRequest(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 109
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/google/android/videochat/VideoChatService;->mStopped:Z

    .line 110
    const/4 v4, 0x2

    .line 112
    .local v4, retVal:I
    if-nez p1, :cond_1

    .line 136
    :cond_0
    :goto_0
    return v4

    .line 117
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, action:Ljava/lang/String;
    const-string v6, "com.google.android.videochat.ACTION_INCOMING_STANZA"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "com.google.android.videochat.ACTION_INCOMING_STANZA_RESPONSE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 120
    :cond_2
    const-string v6, "output_receiver"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 122
    .local v3, outputReceiverComponent:Landroid/content/ComponentName;
    const-string v6, "stanza"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 124
    .local v5, stanzaString:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/google/android/videochat/VideoChatService;->setOutputReceiverComponent(Landroid/content/ComponentName;)V

    .line 126
    const-string v6, "com.google.android.videochat.ACTION_INCOMING_STANZA"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 127
    const-string v6, "local_bare_jid"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, localBareJid:Ljava/lang/String;
    invoke-direct {p0}, Lcom/google/android/videochat/VideoChatService;->getStanzaInjector()Lcom/google/android/videochat/StanzaInjector;

    move-result-object v6

    invoke-virtual {v6, v5, v1}, Lcom/google/android/videochat/StanzaInjector;->injectStanza(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    .end local v1           #localBareJid:Ljava/lang/String;
    :cond_3
    const-string v6, "original_stanza"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, originalStanzaString:Ljava/lang/String;
    invoke-direct {p0}, Lcom/google/android/videochat/VideoChatService;->getStanzaInjector()Lcom/google/android/videochat/StanzaInjector;

    move-result-object v6

    invoke-virtual {v6, v2, v5}, Lcom/google/android/videochat/StanzaInjector;->injectResponseStanza(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 404
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.talk.SOFT_BIND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 411
    :cond_0
    :goto_0
    return v2

    .line 406
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.talk.HARD_BIND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    iput-boolean v2, p0, Lcom/google/android/videochat/VideoChatService;->mHardBound:Z

    .line 408
    invoke-direct {p0}, Lcom/google/android/videochat/VideoChatService;->stopServiceIfSafe()Z

    goto :goto_0
.end method

.method postOngoingNotification(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .parameter "remoteJid"
    .parameter "localBareJid"
    .parameter "video"

    .prologue
    .line 460
    invoke-static {p1}, Lcom/google/android/videochat/util/Util;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 462
    .local v0, remoteBareJid:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/videochat/VideoChatService;->mOngoingNotificationFactory:Lcom/google/android/videochat/OngoingNotificationFactory;

    new-instance v2, Lcom/google/android/videochat/VideoChatService$3;

    invoke-direct {v2, p0}, Lcom/google/android/videochat/VideoChatService$3;-><init>(Lcom/google/android/videochat/VideoChatService;)V

    invoke-interface {v1, v2, v0, p2, p3}, Lcom/google/android/videochat/OngoingNotificationFactory;->requestOngoingNotification(Lcom/google/android/videochat/OngoingNotificationFactory$OngoingNotificationReadyCallback;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 473
    return-void
.end method

.method postStopServiceIfSafe()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 504
    iget-object v1, p0, Lcom/google/android/videochat/VideoChatService;->mStopServiceHandler:Lcom/google/android/videochat/VideoChatService$StopServiceHandler;

    invoke-virtual {v1, v2}, Lcom/google/android/videochat/VideoChatService$StopServiceHandler;->removeMessages(I)V

    .line 505
    iget-object v1, p0, Lcom/google/android/videochat/VideoChatService;->mStopServiceHandler:Lcom/google/android/videochat/VideoChatService$StopServiceHandler;

    invoke-virtual {v1, v2}, Lcom/google/android/videochat/VideoChatService$StopServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 506
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/google/android/videochat/VideoChatService;->mStopServiceHandler:Lcom/google/android/videochat/VideoChatService$StopServiceHandler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/videochat/VideoChatService$StopServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 507
    return-void
.end method

.method public removeKeepAliveRequest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "remoteJid"
    .parameter "localBareJid"

    .prologue
    const/4 v5, 0x2

    .line 194
    invoke-direct {p0, p1, p2}, Lcom/google/android/videochat/VideoChatService;->createSessionKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, sessionKey:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/videochat/VideoChatService;->mKeepAliveRequests:Ljava/util/HashSet;

    monitor-enter v4

    .line 197
    :try_start_0
    iget-object v3, p0, Lcom/google/android/videochat/VideoChatService;->mKeepAliveRequests:Ljava/util/HashSet;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 198
    iget-object v3, p0, Lcom/google/android/videochat/VideoChatService;->mKeepAliveRequests:Ljava/util/HashSet;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 199
    invoke-static {}, Lcom/google/android/videochat/util/LogUtil;->getTalkLogLevel()I

    move-result v3

    if-gt v3, v5, :cond_1

    .line 200
    const-string v3, "vclib:VideoChatService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove keep-alive for remoteJid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  localBareJid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_0
    :goto_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    invoke-direct {p0}, Lcom/google/android/videochat/VideoChatService;->stopServiceIfSafe()Z

    .line 224
    return-void

    .line 203
    :cond_1
    :try_start_1
    const-string v3, "vclib:VideoChatService"

    const-string v5, "remove keep-alive"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 222
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 206
    :cond_2
    :try_start_2
    invoke-static {p1}, Lcom/google/android/videochat/util/Util;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, username:Ljava/lang/String;
    invoke-direct {p0, v1, p2}, Lcom/google/android/videochat/VideoChatService;->createSessionKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, usernameSessionKey:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/videochat/VideoChatService;->mKeepAliveRequests:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 213
    iget-object v3, p0, Lcom/google/android/videochat/VideoChatService;->mKeepAliveRequests:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 214
    invoke-static {}, Lcom/google/android/videochat/util/LogUtil;->getTalkLogLevel()I

    move-result v3

    if-gt v3, v5, :cond_3

    .line 215
    const-string v3, "vclib:VideoChatService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove keep-alive for remoteJid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  localBareJid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 218
    :cond_3
    const-string v3, "vclib:VideoChatService"

    const-string v5, "remove keep-alive"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method removeOngoingNotification()V
    .locals 1

    .prologue
    .line 480
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/videochat/VideoChatService;->stopForeground(Z)V

    .line 481
    return-void
.end method

.method public safeToStop()Z
    .locals 2

    .prologue
    .line 448
    iget-object v1, p0, Lcom/google/android/videochat/VideoChatService;->mKeepAliveRequests:Ljava/util/HashSet;

    monitor-enter v1

    .line 449
    :try_start_0
    iget-object v0, p0, Lcom/google/android/videochat/VideoChatService;->mKeepAliveRequests:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/videochat/VideoChatService;->mHardBound:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 450
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOngoingNotificationFactory(Lcom/google/android/videochat/OngoingNotificationFactory;)V
    .locals 0
    .parameter "factory"

    .prologue
    .line 391
    iput-object p1, p0, Lcom/google/android/videochat/VideoChatService;->mOngoingNotificationFactory:Lcom/google/android/videochat/OngoingNotificationFactory;

    .line 392
    return-void
.end method

.method setOutputReceiverComponent(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "receiverComponent"

    .prologue
    .line 273
    iput-object p1, p0, Lcom/google/android/videochat/VideoChatService;->mOutputReceiverComponent:Landroid/content/ComponentName;

    .line 274
    return-void
.end method
