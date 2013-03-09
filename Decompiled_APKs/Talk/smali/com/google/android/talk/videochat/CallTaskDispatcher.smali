.class public Lcom/google/android/talk/videochat/CallTaskDispatcher;
.super Ljava/lang/Object;
.source "CallTaskDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/videochat/CallTaskDispatcher$CallTask;
    }
.end annotation


# instance fields
.field private final mCallTaskQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/talk/videochat/CallTaskDispatcher$CallTask;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mVcBinder:Lcom/google/android/videochat/VideoChatServiceBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/videochat/CallTaskDispatcher;->mCallTaskQueue:Ljava/util/Queue;

    .line 36
    iput-object p1, p0, Lcom/google/android/talk/videochat/CallTaskDispatcher;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/talk/videochat/CallTaskDispatcher;Lcom/google/android/videochat/VideoChatService$HardBinder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/CallTaskDispatcher;->onVideoChatServiceBound(Lcom/google/android/videochat/VideoChatService$HardBinder;)V

    return-void
.end method

.method private bindVideoChatService()V
    .locals 5

    .prologue
    .line 69
    new-instance v0, Lcom/google/android/videochat/VideoChatServiceBinder;

    iget-object v1, p0, Lcom/google/android/talk/videochat/CallTaskDispatcher;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/google/android/talk/videochat/CallTaskDispatcher;->mContext:Landroid/content/Context;

    const-class v4, Lcom/google/android/talk/videochat/VideoChatOutputReceiver;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/videochat/VideoChatServiceBinder;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/CallTaskDispatcher;->mVcBinder:Lcom/google/android/videochat/VideoChatServiceBinder;

    .line 71
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallTaskDispatcher;->mVcBinder:Lcom/google/android/videochat/VideoChatServiceBinder;

    new-instance v1, Lcom/google/android/talk/videochat/CallTaskDispatcher$1;

    invoke-direct {v1, p0}, Lcom/google/android/talk/videochat/CallTaskDispatcher$1;-><init>(Lcom/google/android/talk/videochat/CallTaskDispatcher;)V

    invoke-virtual {v0, v1}, Lcom/google/android/videochat/VideoChatServiceBinder;->bind(Lcom/google/android/videochat/VideoChatServiceBinder$ServiceBoundCallback;)V

    .line 77
    return-void
.end method

.method private onVideoChatServiceBound(Lcom/google/android/videochat/VideoChatService$HardBinder;)V
    .locals 4
    .parameter "service"

    .prologue
    .line 80
    invoke-virtual {p1}, Lcom/google/android/videochat/VideoChatService$HardBinder;->getCallSession()Lcom/google/android/videochat/CallSession;

    move-result-object v0

    .line 81
    .local v0, session:Lcom/google/android/videochat/CallSession;
    if-eqz v0, :cond_1

    .line 82
    iget-object v3, p0, Lcom/google/android/talk/videochat/CallTaskDispatcher;->mCallTaskQueue:Ljava/util/Queue;

    monitor-enter v3

    .line 84
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/google/android/talk/videochat/CallTaskDispatcher;->mCallTaskQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 85
    iget-object v2, p0, Lcom/google/android/talk/videochat/CallTaskDispatcher;->mCallTaskQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/talk/videochat/CallTaskDispatcher$CallTask;

    .line 86
    .local v1, task:Lcom/google/android/talk/videochat/CallTaskDispatcher$CallTask;
    invoke-interface {v1, v0}, Lcom/google/android/talk/videochat/CallTaskDispatcher$CallTask;->runTask(Lcom/google/android/videochat/CallSession;)V

    goto :goto_0

    .line 91
    .end local v1           #task:Lcom/google/android/talk/videochat/CallTaskDispatcher$CallTask;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 89
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/talk/videochat/CallTaskDispatcher;->mVcBinder:Lcom/google/android/videochat/VideoChatServiceBinder;

    invoke-virtual {v2}, Lcom/google/android/videochat/VideoChatServiceBinder;->unbind()V

    .line 90
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/talk/videochat/CallTaskDispatcher;->mVcBinder:Lcom/google/android/videochat/VideoChatServiceBinder;

    .line 91
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    :goto_1
    return-void

    .line 93
    :cond_1
    const-string v2, "Talk:CallTaskDispatcher"

    const-string v3, "Bound to service, but call session is null!!!"

    invoke-static {v2, v3}, Lcom/google/android/talk/TalkApp;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public postCallTask(Lcom/google/android/talk/videochat/CallTaskDispatcher$CallTask;)V
    .locals 2
    .parameter "task"

    .prologue
    .line 53
    iget-object v1, p0, Lcom/google/android/talk/videochat/CallTaskDispatcher;->mCallTaskQueue:Ljava/util/Queue;

    monitor-enter v1

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallTaskDispatcher;->mCallTaskQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-direct {p0}, Lcom/google/android/talk/videochat/CallTaskDispatcher;->bindVideoChatService()V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallTaskDispatcher;->mCallTaskQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 61
    monitor-exit v1

    .line 62
    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
