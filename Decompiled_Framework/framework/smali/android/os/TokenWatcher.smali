.class public abstract Landroid/os/TokenWatcher;
.super Ljava/lang/Object;
.source "TokenWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/TokenWatcher$Death;
    }
.end annotation


# instance fields
.field private volatile mAcquired:Z

.field private mHandler:Landroid/os/Handler;

.field private mNotificationQueue:I

.field private mNotificationTask:Ljava/lang/Runnable;

.field private mTag:Ljava/lang/String;

.field private mTokens:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/os/TokenWatcher$Death;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/TokenWatcher$1;

    invoke-direct {v0, p0}, Landroid/os/TokenWatcher$1;-><init>(Landroid/os/TokenWatcher;)V

    iput-object v0, p0, Landroid/os/TokenWatcher;->mNotificationTask:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    const/4 v0, -0x1

    iput v0, p0, Landroid/os/TokenWatcher;->mNotificationQueue:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/TokenWatcher;->mAcquired:Z

    iput-object p1, p0, Landroid/os/TokenWatcher;->mHandler:Landroid/os/Handler;

    if-eqz p2, :cond_0

    :goto_0
    iput-object p2, p0, Landroid/os/TokenWatcher;->mTag:Ljava/lang/String;

    return-void

    :cond_0
    const-string p2, "TokenWatcher"

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/os/TokenWatcher;)Ljava/util/WeakHashMap;
    .locals 1

    iget-object v0, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic access$100(Landroid/os/TokenWatcher;)I
    .locals 1

    iget v0, p0, Landroid/os/TokenWatcher;->mNotificationQueue:I

    return v0
.end method

.method static synthetic access$102(Landroid/os/TokenWatcher;I)I
    .locals 0

    iput p1, p0, Landroid/os/TokenWatcher;->mNotificationQueue:I

    return p1
.end method

.method static synthetic access$200(Landroid/os/TokenWatcher;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/TokenWatcher;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method private sendNotificationLocked(Z)V
    .locals 3

    const/4 v2, -0x1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Landroid/os/TokenWatcher;->mNotificationQueue:I

    if-ne v1, v2, :cond_2

    iput v0, p0, Landroid/os/TokenWatcher;->mNotificationQueue:I

    iget-object v1, p0, Landroid/os/TokenWatcher;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/os/TokenWatcher;->mNotificationTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget v1, p0, Landroid/os/TokenWatcher;->mNotificationQueue:I

    if-eq v1, v0, :cond_0

    iput v2, p0, Landroid/os/TokenWatcher;->mNotificationQueue:I

    iget-object v1, p0, Landroid/os/TokenWatcher;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/os/TokenWatcher;->mNotificationTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1
.end method


# virtual methods
.method public acquire(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 5

    iget-object v4, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->size()I

    move-result v2

    new-instance v0, Landroid/os/TokenWatcher$Death;

    invoke-direct {v0, p0, p1, p2}, Landroid/os/TokenWatcher$Death;-><init>(Landroid/os/TokenWatcher;Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    :try_start_1
    invoke-interface {p1, v0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v3, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v2, :cond_0

    iget-boolean v3, p0, Landroid/os/TokenWatcher;->mAcquired:Z

    if-nez v3, :cond_0

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Landroid/os/TokenWatcher;->sendNotificationLocked(Z)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/os/TokenWatcher;->mAcquired:Z

    :cond_0
    monitor-exit v4

    :goto_0
    return-void

    :catch_0
    move-exception v1

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public abstract acquired()V
.end method

.method public cleanup(Landroid/os/IBinder;Z)V
    .locals 4

    iget-object v2, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/TokenWatcher$Death;

    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/os/TokenWatcher$Death;->token:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/os/TokenWatcher$Death;->token:Landroid/os/IBinder;

    :cond_0
    iget-object v1, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->size()I

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroid/os/TokenWatcher;->mAcquired:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/os/TokenWatcher;->sendNotificationLocked(Z)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/os/TokenWatcher;->mAcquired:Z

    :cond_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump()V
    .locals 8

    iget-object v5, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    invoke-virtual {v4}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    iget-object v4, p0, Landroid/os/TokenWatcher;->mTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Token count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    invoke-virtual {v7}, Ljava/util/WeakHashMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    iget-object v6, p0, Landroid/os/TokenWatcher;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "] "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v4, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/TokenWatcher$Death;

    iget-object v4, v4, Landroid/os/TokenWatcher$Death;->tag:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " - "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v5

    return-void

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public isAcquired()Z
    .locals 2

    iget-object v1, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Landroid/os/TokenWatcher;->mAcquired:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release(Landroid/os/IBinder;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/os/TokenWatcher;->cleanup(Landroid/os/IBinder;Z)V

    return-void
.end method

.method public abstract released()V
.end method
