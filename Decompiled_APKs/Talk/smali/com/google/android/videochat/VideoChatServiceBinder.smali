.class public Lcom/google/android/videochat/VideoChatServiceBinder;
.super Ljava/lang/Object;
.source "VideoChatServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/videochat/VideoChatServiceBinder$ServiceBoundCallback;
    }
.end annotation


# instance fields
.field private mBindRequested:Z

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mOutgoingStanzaReceiverComponent:Landroid/content/ComponentName;

.field private mServiceBoundCallback:Lcom/google/android/videochat/VideoChatServiceBinder$ServiceBoundCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 1
    .parameter "context"
    .parameter "outgoingStanzaReceiverComponent"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/videochat/VideoChatServiceBinder;->mBindRequested:Z

    .line 62
    new-instance v0, Lcom/google/android/videochat/VideoChatServiceBinder$1;

    invoke-direct {v0, p0}, Lcom/google/android/videochat/VideoChatServiceBinder$1;-><init>(Lcom/google/android/videochat/VideoChatServiceBinder;)V

    iput-object v0, p0, Lcom/google/android/videochat/VideoChatServiceBinder;->mConnection:Landroid/content/ServiceConnection;

    .line 30
    iput-object p1, p0, Lcom/google/android/videochat/VideoChatServiceBinder;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/google/android/videochat/VideoChatServiceBinder;->mOutgoingStanzaReceiverComponent:Landroid/content/ComponentName;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/videochat/VideoChatServiceBinder;)Landroid/content/ComponentName;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/videochat/VideoChatServiceBinder;->mOutgoingStanzaReceiverComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/videochat/VideoChatServiceBinder;)Lcom/google/android/videochat/VideoChatServiceBinder$ServiceBoundCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/videochat/VideoChatServiceBinder;->mServiceBoundCallback:Lcom/google/android/videochat/VideoChatServiceBinder$ServiceBoundCallback;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/videochat/VideoChatServiceBinder;Lcom/google/android/videochat/VideoChatServiceBinder$ServiceBoundCallback;)Lcom/google/android/videochat/VideoChatServiceBinder$ServiceBoundCallback;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/google/android/videochat/VideoChatServiceBinder;->mServiceBoundCallback:Lcom/google/android/videochat/VideoChatServiceBinder$ServiceBoundCallback;

    return-object p1
.end method


# virtual methods
.method public bind(Lcom/google/android/videochat/VideoChatServiceBinder$ServiceBoundCallback;)V
    .locals 4
    .parameter

    .prologue
    .line 35
    monitor-enter p0

    .line 36
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/videochat/VideoChatServiceBinder;->mBindRequested:Z

    if-eqz v0, :cond_0

    .line 37
    const-string v0, "vclib:VideoChatServiceBinder"

    const-string v1, "bind already called; ignoring repeated call"

    invoke-static {v0, v1}, Lcom/google/android/videochat/util/LogUtil;->LOGW(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    monitor-exit p0

    .line 48
    :goto_0
    return-void

    .line 41
    :cond_0
    iput-object p1, p0, Lcom/google/android/videochat/VideoChatServiceBinder;->mServiceBoundCallback:Lcom/google/android/videochat/VideoChatServiceBinder$ServiceBoundCallback;

    .line 43
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.talk.HARD_BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lcom/google/android/videochat/VideoChatServiceBinder;->mContext:Landroid/content/Context;

    const-class v2, Lcom/google/android/videochat/VideoChatService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 45
    iget-object v1, p0, Lcom/google/android/videochat/VideoChatServiceBinder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/videochat/VideoChatServiceBinder;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/videochat/VideoChatServiceBinder;->mBindRequested:Z

    .line 47
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unbind()V
    .locals 2

    .prologue
    .line 51
    monitor-enter p0

    .line 52
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/videochat/VideoChatServiceBinder;->mBindRequested:Z

    if-nez v0, :cond_0

    .line 53
    const-string v0, "vclib:VideoChatServiceBinder"

    const-string v1, "service not bound; ignoring unbind call"

    invoke-static {v0, v1}, Lcom/google/android/videochat/util/LogUtil;->LOGW(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    monitor-exit p0

    .line 60
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/google/android/videochat/VideoChatServiceBinder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/videochat/VideoChatServiceBinder;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/videochat/VideoChatServiceBinder;->mBindRequested:Z

    .line 59
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
