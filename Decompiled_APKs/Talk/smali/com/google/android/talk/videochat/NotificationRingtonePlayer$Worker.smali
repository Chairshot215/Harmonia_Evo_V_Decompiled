.class Lcom/google/android/talk/videochat/NotificationRingtonePlayer$Worker;
.super Ljava/lang/Object;
.source "NotificationRingtonePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/NotificationRingtonePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mLooper:Landroid/os/Looper;

.field final synthetic this$0:Lcom/google/android/talk/videochat/NotificationRingtonePlayer;


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/NotificationRingtonePlayer;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "name"

    .prologue
    .line 237
    iput-object p1, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer$Worker;->this$0:Lcom/google/android/talk/videochat/NotificationRingtonePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer$Worker;->mLock:Ljava/lang/Object;

    .line 238
    new-instance v0, Ljava/lang/Thread;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 239
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 240
    iget-object v2, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer$Worker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 241
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer$Worker;->mLooper:Landroid/os/Looper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 243
    :try_start_1
    iget-object v1, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer$Worker;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 244
    :catch_0
    move-exception v1

    goto :goto_0

    .line 247
    :cond_0
    :try_start_2
    monitor-exit v2

    .line 248
    return-void

    .line 247
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public getLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer$Worker;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 256
    iget-object v1, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer$Worker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 257
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 258
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer$Worker;->mLooper:Landroid/os/Looper;

    .line 259
    iget-object v0, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer$Worker;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 260
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 262
    return-void

    .line 260
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
