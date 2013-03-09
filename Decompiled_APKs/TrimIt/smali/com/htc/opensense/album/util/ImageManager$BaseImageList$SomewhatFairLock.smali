.class Lcom/htc/opensense/album/util/ImageManager$BaseImageList$SomewhatFairLock;
.super Ljava/lang/Object;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/util/ImageManager$BaseImageList;
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

.field final synthetic this$1:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;


# direct methods
.method constructor <init>(Lcom/htc/opensense/album/util/ImageManager$BaseImageList;)V
    .locals 1
    .parameter

    .prologue
    .line 1442
    iput-object p1, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList$SomewhatFairLock;->this$1:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1443
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList$SomewhatFairLock;->mSync:Ljava/lang/Object;

    .line 1444
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList$SomewhatFairLock;->mLocked:Z

    .line 1445
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList$SomewhatFairLock;->mWaiting:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method lock()V
    .locals 4

    .prologue
    .line 1449
    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList$SomewhatFairLock;->mSync:Ljava/lang/Object;

    monitor-enter v2

    .line 1450
    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList$SomewhatFairLock;->mLocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 1453
    :try_start_1
    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList$SomewhatFairLock;->mWaiting:Ljava/util/ArrayList;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1454
    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList$SomewhatFairLock;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 1455
    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList$SomewhatFairLock;->mWaiting:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    if-ne v1, v3, :cond_0

    .line 1456
    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList$SomewhatFairLock;->mWaiting:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1464
    :cond_1
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList$SomewhatFairLock;->mLocked:Z

    .line 1465
    monitor-exit v2

    .line 1466
    return-void

    .line 1459
    :catch_0
    move-exception v0

    .line 1460
    .local v0, ex:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 1465
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method unlock()V
    .locals 2

    .prologue
    .line 1470
    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList$SomewhatFairLock;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1471
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList$SomewhatFairLock;->mLocked:Z

    .line 1472
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList$SomewhatFairLock;->mSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1473
    monitor-exit v1

    .line 1474
    return-void

    .line 1473
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
