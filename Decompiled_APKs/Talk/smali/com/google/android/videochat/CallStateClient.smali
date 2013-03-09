.class public Lcom/google/android/videochat/CallStateClient;
.super Ljava/lang/Object;
.source "CallStateClient.java"


# instance fields
.field private mCallStateListener:Lcom/google/android/videochat/CallStateListener;

.field protected mContext:Landroid/content/Context;

.field private mSoftConnection:Landroid/content/ServiceConnection;

.field private mSoftServiceBinder:Lcom/google/android/videochat/VideoChatService$SoftBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/google/android/videochat/CallStateClient$1;

    invoke-direct {v0, p0}, Lcom/google/android/videochat/CallStateClient$1;-><init>(Lcom/google/android/videochat/CallStateClient;)V

    iput-object v0, p0, Lcom/google/android/videochat/CallStateClient;->mCallStateListener:Lcom/google/android/videochat/CallStateListener;

    .line 153
    new-instance v0, Lcom/google/android/videochat/CallStateClient$2;

    invoke-direct {v0, p0}, Lcom/google/android/videochat/CallStateClient$2;-><init>(Lcom/google/android/videochat/CallStateClient;)V

    iput-object v0, p0, Lcom/google/android/videochat/CallStateClient;->mSoftConnection:Landroid/content/ServiceConnection;

    .line 150
    iput-object p1, p0, Lcom/google/android/videochat/CallStateClient;->mContext:Landroid/content/Context;

    .line 151
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/videochat/CallStateClient;Lcom/google/android/videochat/VideoChatService$SoftBinder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/google/android/videochat/CallStateClient;->onSoftVideoChatServiceBound(Lcom/google/android/videochat/VideoChatService$SoftBinder;)V

    return-void
.end method

.method static synthetic access$102(Lcom/google/android/videochat/CallStateClient;Lcom/google/android/videochat/VideoChatService$SoftBinder;)Lcom/google/android/videochat/VideoChatService$SoftBinder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/google/android/videochat/CallStateClient;->mSoftServiceBinder:Lcom/google/android/videochat/VideoChatService$SoftBinder;

    return-object p1
.end method

.method private bindVideoChatService()V
    .locals 4

    .prologue
    .line 180
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.talk.SOFT_BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 181
    iget-object v1, p0, Lcom/google/android/videochat/CallStateClient;->mContext:Landroid/content/Context;

    const-class v2, Lcom/google/android/videochat/VideoChatService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 185
    iget-object v1, p0, Lcom/google/android/videochat/CallStateClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/videochat/CallStateClient;->mSoftConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 186
    return-void
.end method

.method private onSoftVideoChatServiceBound(Lcom/google/android/videochat/VideoChatService$SoftBinder;)V
    .locals 2
    .parameter "service"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/google/android/videochat/CallStateClient;->mSoftServiceBinder:Lcom/google/android/videochat/VideoChatService$SoftBinder;

    .line 174
    iget-object v0, p0, Lcom/google/android/videochat/CallStateClient;->mSoftServiceBinder:Lcom/google/android/videochat/VideoChatService$SoftBinder;

    iget-object v1, p0, Lcom/google/android/videochat/CallStateClient;->mCallStateListener:Lcom/google/android/videochat/CallStateListener;

    invoke-virtual {v0, v1}, Lcom/google/android/videochat/VideoChatService$SoftBinder;->addRemoteCallStateListener(Lcom/google/android/videochat/CallStateListener;)V

    .line 176
    iget-object v0, p0, Lcom/google/android/videochat/CallStateClient;->mSoftServiceBinder:Lcom/google/android/videochat/VideoChatService$SoftBinder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/videochat/VideoChatService$SoftBinder;->requestCallStateUpdate(Ljava/lang/Object;)V

    .line 177
    return-void
.end method


# virtual methods
.method public onCallStateUpdate(Ljava/lang/String;Lcom/google/android/videochat/CallState;ZLjava/lang/Object;)V
    .locals 0
    .parameter "remoteBareJid"
    .parameter "callState"
    .parameter "isRequestReply"
    .parameter "callbackParam"

    .prologue
    .line 63
    return-void
.end method

.method public onChatRoomUpdate(Ljava/util/Set;Ljava/util/Set;ZLjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter "isRequestReply"
    .parameter "callbackParam"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/videochat/NamedSource;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/videochat/NamedSource;",
            ">;Z",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, allAudioSources:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/videochat/NamedSource;>;"
    .local p2, allVideoSources:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/videochat/NamedSource;>;"
    return-void
.end method

.method public onDisconnected()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public onLoudestSpeakerUpdate(IZLjava/lang/Object;)V
    .locals 0
    .parameter "loudestAudioSsrc"
    .parameter "isRequestReply"
    .parameter "callbackParam"

    .prologue
    .line 97
    return-void
.end method

.method public requestUpdate()V
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/videochat/CallStateClient;->requestUpdate(Ljava/lang/Object;)V

    .line 118
    return-void
.end method

.method public requestUpdate(Ljava/lang/Object;)V
    .locals 1
    .parameter "callbackParam"

    .prologue
    .line 127
    monitor-enter p0

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/google/android/videochat/CallStateClient;->mSoftServiceBinder:Lcom/google/android/videochat/VideoChatService$SoftBinder;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/google/android/videochat/CallStateClient;->mSoftServiceBinder:Lcom/google/android/videochat/VideoChatService$SoftBinder;

    invoke-virtual {v0, p1}, Lcom/google/android/videochat/VideoChatService$SoftBinder;->requestCallStateUpdate(Ljava/lang/Object;)V

    .line 131
    :cond_0
    monitor-exit p0

    .line 132
    return-void

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startListening()V
    .locals 2

    .prologue
    .line 108
    const-string v0, "vclib:CallStateClient"

    const-string v1, "startListening"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-direct {p0}, Lcom/google/android/videochat/CallStateClient;->bindVideoChatService()V

    .line 110
    return-void
.end method

.method public stopListening()V
    .locals 3

    .prologue
    .line 135
    const-string v1, "vclib:CallStateClient"

    const-string v2, "stopListening"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v1, p0, Lcom/google/android/videochat/CallStateClient;->mSoftServiceBinder:Lcom/google/android/videochat/VideoChatService$SoftBinder;

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/google/android/videochat/CallStateClient;->mSoftServiceBinder:Lcom/google/android/videochat/VideoChatService$SoftBinder;

    iget-object v2, p0, Lcom/google/android/videochat/CallStateClient;->mCallStateListener:Lcom/google/android/videochat/CallStateListener;

    invoke-virtual {v1, v2}, Lcom/google/android/videochat/VideoChatService$SoftBinder;->removeRemoteCallStateListener(Lcom/google/android/videochat/CallStateListener;)V

    .line 141
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/videochat/CallStateClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/videochat/CallStateClient;->mSoftConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 145
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "vclib:CallStateClient"

    const-string v2, "Problem unbinding service."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
