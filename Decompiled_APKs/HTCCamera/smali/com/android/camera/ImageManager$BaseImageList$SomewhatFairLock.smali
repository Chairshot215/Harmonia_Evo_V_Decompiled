.class Lcom/android/camera/ImageManager$BaseImageList$SomewhatFairLock;
.super Ljava/lang/Object;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ImageManager$BaseImageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SomewhatFairLock"
.end annotation


# instance fields
.field private mLocked:Z

.field private mSync:Ljava/lang/Object;

.field private mWaiting:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/camera/ImageManager$BaseImageList;


# direct methods
.method constructor <init>(Lcom/android/camera/ImageManager$BaseImageList;)V
    .locals 1

    iput-object p1, p0, Lcom/android/camera/ImageManager$BaseImageList$SomewhatFairLock;->this$0:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList$SomewhatFairLock;->mSync:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ImageManager$BaseImageList$SomewhatFairLock;->mLocked:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList$SomewhatFairLock;->mWaiting:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method lock()V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImageList$SomewhatFairLock;->mSync:Ljava/lang/Object;

    monitor-enter v1

    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/ImageManager$BaseImageList$SomewhatFairLock;->mLocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList$SomewhatFairLock;->mWaiting:Ljava/util/ArrayList;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList$SomewhatFairLock;->mSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList$SomewhatFairLock;->mWaiting:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList$SomewhatFairLock;->mWaiting:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/camera/ImageManager$BaseImageList$SomewhatFairLock;->mLocked:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method unlock()V
    .locals 2

    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImageList$SomewhatFairLock;->mSync:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/ImageManager$BaseImageList$SomewhatFairLock;->mLocked:Z

    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList$SomewhatFairLock;->mSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
