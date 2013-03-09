.class Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;
.super Ljava/lang/Thread;
.source "MediaDecoderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/common/MediaDecoderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaDecoder"
.end annotation


# instance fields
.field private mBottom:I

.field private mStop:Z

.field private mTasks:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/htc/sunny2/common/MediaDecodeItem;",
            ">;"
        }
    .end annotation
.end field

.field private mTop:I

.field final synthetic this$0:Lcom/htc/sunny2/common/MediaDecoderManager;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/common/MediaDecoderManager;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->this$0:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-boolean v1, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->mStop:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->mTasks:Ljava/util/Queue;

    iput v1, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->mTop:I

    iput v1, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->mBottom:I

    iput-boolean v1, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->mStop:Z

    return-void
.end method

.method private declared-synchronized isInVisibleRange(Lcom/htc/sunny2/common/MediaDecodeItem;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/htc/sunny2/common/MediaDecodeItem;->getPosistion()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v1, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->mTop:I

    if-lt v0, v1, :cond_0

    iget v1, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->mBottom:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gt v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public addTask(Lcom/htc/sunny2/common/MediaDecodeItem;)V
    .locals 2

    iget-object v1, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->mTasks:Ljava/util/Queue;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->mTasks:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->mTasks:Ljava/util/Queue;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->mStop:Z

    invoke-virtual {p0}, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->removeAllTasks()V

    return-void
.end method

.method public removeAllTasks()V
    .locals 3

    iget-object v1, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->mTasks:Ljava/util/Queue;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->mTasks:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    invoke-static {}, Lcom/htc/sunny2/common/MediaDecoderManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MediaDecoder awaked by removeAllTasks"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->mTasks:Ljava/util/Queue;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 8

    const/4 v7, 0x1

    invoke-static {}, Lcom/htc/sunny2/common/MediaDecoderManager;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MediaDecoder run+"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->mStop:Z

    if-nez v3, :cond_1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->mTasks:Ljava/util/Queue;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->mTasks:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_3

    :try_start_1
    iget-boolean v3, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->mStop:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v3, :cond_2

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    invoke-static {}, Lcom/htc/sunny2/common/MediaDecoderManager;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MediaDecoder run-"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    :try_start_3
    iget-object v3, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->mTasks:Ljava/util/Queue;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_1
    :try_start_4
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    :catch_0
    move-exception v1

    :try_start_5
    invoke-static {}, Lcom/htc/sunny2/common/MediaDecoderManager;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MediaDecoder awake because of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->mTasks:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/htc/sunny2/common/MediaDecodeItem;

    move-object v2, v0

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-direct {p0, v2}, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->isInVisibleRange(Lcom/htc/sunny2/common/MediaDecodeItem;)Z

    move-result v3

    if-ne v7, v3, :cond_4

    invoke-virtual {v2}, Lcom/htc/sunny2/common/MediaDecodeItem;->decode()V

    iput v7, v2, Lcom/htc/sunny2/common/CacheItem;->mStatusFlag:I

    iget-object v3, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->this$0:Lcom/htc/sunny2/common/MediaDecoderManager;

    #calls: Lcom/htc/sunny2/common/MediaDecoderManager;->onMediaDecodeEnd(Lcom/htc/sunny2/common/MediaDecodeItem;)V
    invoke-static {v3, v2}, Lcom/htc/sunny2/common/MediaDecoderManager;->access$100(Lcom/htc/sunny2/common/MediaDecoderManager;Lcom/htc/sunny2/common/MediaDecodeItem;)V

    :goto_2
    iget-object v3, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->this$0:Lcom/htc/sunny2/common/MediaDecoderManager;

    #getter for: Lcom/htc/sunny2/common/MediaDecoderManager;->mRaisePriorityOnce:Z
    invoke-static {v3}, Lcom/htc/sunny2/common/MediaDecoderManager;->access$200(Lcom/htc/sunny2/common/MediaDecoderManager;)Z

    move-result v3

    if-ne v3, v7, :cond_0

    invoke-static {}, Lcom/htc/sunny2/common/MediaDecoderManager;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MediaDecoder thread priority set to DefaultPriority"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v7}, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->setPriority(I)V

    iget-object v3, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->this$0:Lcom/htc/sunny2/common/MediaDecoderManager;

    const/4 v4, 0x0

    #setter for: Lcom/htc/sunny2/common/MediaDecoderManager;->mRaisePriorityOnce:Z
    invoke-static {v3, v4}, Lcom/htc/sunny2/common/MediaDecoderManager;->access$202(Lcom/htc/sunny2/common/MediaDecoderManager;Z)Z

    goto :goto_0

    :cond_4
    const/4 v3, 0x2

    iput v3, v2, Lcom/htc/sunny2/common/CacheItem;->mStatusFlag:I

    iget-object v3, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->this$0:Lcom/htc/sunny2/common/MediaDecoderManager;

    #calls: Lcom/htc/sunny2/common/MediaDecoderManager;->onMediaDecodeEnd(Lcom/htc/sunny2/common/MediaDecodeItem;)V
    invoke-static {v3, v2}, Lcom/htc/sunny2/common/MediaDecoderManager;->access$100(Lcom/htc/sunny2/common/MediaDecoderManager;Lcom/htc/sunny2/common/MediaDecodeItem;)V

    goto :goto_2
.end method

.method public declared-synchronized setVisibleRange(II)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->mTop:I

    iput p2, p0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->mBottom:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
