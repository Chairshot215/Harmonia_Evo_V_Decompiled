.class Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$2;
.super Ljava/lang/Object;
.source "LibraryReplicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->onErrorResponse(Lcom/android/volley/VolleyError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;)V
    .locals 0
    .parameter

    .prologue
    .line 480
    iput-object p1, p0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$2;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 483
    iget-object v3, p0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$2;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iget-object v3, v3, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    #getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mCurrentRequest:Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;
    invoke-static {v3}, Lcom/google/android/finsky/library/LibraryReplicator;->access$000(Lcom/google/android/finsky/library/LibraryReplicator;)Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;

    move-result-object v3

    if-nez v3, :cond_0

    .line 484
    const-string v3, "Expected pending replication request."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 504
    :goto_0
    return-void

    .line 487
    :cond_0
    const-wide/16 v0, 0xc8

    .line 488
    .local v0, nextRequestTimeout:J
    iget-object v3, p0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$2;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iget-object v3, v3, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    #getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mCurrentRequest:Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;
    invoke-static {v3}, Lcom/google/android/finsky/library/LibraryReplicator;->access$000(Lcom/google/android/finsky/library/LibraryReplicator;)Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;

    move-result-object v3

    iget-boolean v3, v3, Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;->isRetry:Z

    if-nez v3, :cond_3

    .line 490
    sget-boolean v3, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 491
    const-string v3, "Retrying replication request."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 493
    :cond_1
    new-instance v2, Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;

    iget-object v3, p0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$2;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iget-object v3, v3, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    #getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mCurrentRequest:Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;
    invoke-static {v3}, Lcom/google/android/finsky/library/LibraryReplicator;->access$000(Lcom/google/android/finsky/library/LibraryReplicator;)Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;->libraryIds:[Ljava/lang/String;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$2;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iget-object v5, v5, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    #getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mCurrentRequest:Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;
    invoke-static {v5}, Lcom/google/android/finsky/library/LibraryReplicator;->access$000(Lcom/google/android/finsky/library/LibraryReplicator;)Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;->finishRunnable:Ljava/lang/Runnable;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$2;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iget-object v7, v7, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    #getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mCurrentRequest:Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;
    invoke-static {v7}, Lcom/google/android/finsky/library/LibraryReplicator;->access$000(Lcom/google/android/finsky/library/LibraryReplicator;)Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;->debugTag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "[r]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;-><init>([Ljava/lang/String;ZLjava/lang/Runnable;Ljava/lang/String;)V

    .line 496
    .local v2, retryRequest:Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;
    iget-object v3, p0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$2;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iget-object v3, v3, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    #calls: Lcom/google/android/finsky/library/LibraryReplicator;->scheduleRequestAtFront(Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;)V
    invoke-static {v3, v2}, Lcom/google/android/finsky/library/LibraryReplicator;->access$1000(Lcom/google/android/finsky/library/LibraryReplicator;Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;)V

    .line 497
    const-wide/16 v0, 0x7d0

    .line 502
    .end local v2           #retryRequest:Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$2;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iget-object v3, v3, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    const/4 v4, 0x0

    #setter for: Lcom/google/android/finsky/library/LibraryReplicator;->mCurrentRequest:Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;
    invoke-static {v3, v4}, Lcom/google/android/finsky/library/LibraryReplicator;->access$002(Lcom/google/android/finsky/library/LibraryReplicator;Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;)Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;

    .line 503
    iget-object v3, p0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$2;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iget-object v3, v3, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    #calls: Lcom/google/android/finsky/library/LibraryReplicator;->handleNextRequest(J)V
    invoke-static {v3, v0, v1}, Lcom/google/android/finsky/library/LibraryReplicator;->access$1200(Lcom/google/android/finsky/library/LibraryReplicator;J)V

    goto :goto_0

    .line 498
    :cond_3
    iget-object v3, p0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$2;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iget-object v3, v3, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    #getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mCurrentRequest:Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;
    invoke-static {v3}, Lcom/google/android/finsky/library/LibraryReplicator;->access$000(Lcom/google/android/finsky/library/LibraryReplicator;)Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;->finishRunnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_2

    .line 500
    iget-object v3, p0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$2;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iget-object v3, v3, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    #getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mNotificationHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/google/android/finsky/library/LibraryReplicator;->access$1100(Lcom/google/android/finsky/library/LibraryReplicator;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$2;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iget-object v4, v4, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    #getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mCurrentRequest:Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;
    invoke-static {v4}, Lcom/google/android/finsky/library/LibraryReplicator;->access$000(Lcom/google/android/finsky/library/LibraryReplicator;)Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;->finishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method
