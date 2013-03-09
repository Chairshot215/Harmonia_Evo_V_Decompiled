.class Lcom/htc/opensense2/album/util/ImageManager$BaseImageList$SomewhatFairLock;
.super Ljava/lang/Object;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;
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

.field final synthetic this$1:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;


# direct methods
.method constructor <init>(Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;)V
    .locals 1
    .parameter

    .prologue
    .line 1614
    iput-object p1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList$SomewhatFairLock;->this$1:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1615
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList$SomewhatFairLock;->mSync:Ljava/lang/Object;

    .line 1616
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList$SomewhatFairLock;->mLocked:Z

    .line 1617
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList$SomewhatFairLock;->mWaiting:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method lock()V
    .locals 4

    .prologue
    .line 1621
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList$SomewhatFairLock;->mSync:Ljava/lang/Object;

    monitor-enter v2

    .line 1622
    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList$SomewhatFairLock;->mLocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 1625
    :try_start_1
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList$SomewhatFairLock;->mWaiting:Ljava/util/ArrayList;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1626
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList$SomewhatFairLock;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 1627
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList$SomewhatFairLock;->mWaiting:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    if-ne v1, v3, :cond_0

    .line 1628
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList$SomewhatFairLock;->mWaiting:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1636
    :cond_1
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList$SomewhatFairLock;->mLocked:Z

    .line 1637
    monitor-exit v2

    .line 1638
    return-void

    .line 1631
    :catch_0
    move-exception v0

    .line 1632
    .local v0, ex:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 1637
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
    .line 1642
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList$SomewhatFairLock;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1643
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList$SomewhatFairLock;->mLocked:Z

    .line 1644
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList$SomewhatFairLock;->mSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1645
    monitor-exit v1

    .line 1646
    return-void

    .line 1645
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
