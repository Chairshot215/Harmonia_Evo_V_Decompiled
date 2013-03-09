.class public Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;
.super Ljava/lang/Object;
.source "DataRequestDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DispatcherServer"
.end annotation


# instance fields
.field protected final headerFlag:B

.field protected volatile serverAddress:Ljava/lang/String;

.field protected serverRequests:Ljava/util/Vector;

.field protected final supportedDataRequests:Ljava/util/Vector;

.field private tempRequests:Ljava/util/Vector;

.field final synthetic this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;


# direct methods
.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;Ljava/lang/String;Ljava/util/Vector;B)V
    .locals 1

    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->serverRequests:Ljava/util/Vector;

    iput-object p2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->serverAddress:Ljava/lang/String;

    iput-object p3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->supportedDataRequests:Ljava/util/Vector;

    iput-byte p4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->headerFlag:B

    return-void
.end method

.method private checkNeedToActivate()Z
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->isSuspended()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->serverRequests:Ljava/util/Vector;

    monitor-enter v3

    const/4 v0, 0x0

    :goto_1
    :try_start_0
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->serverRequests:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->serverRequests:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;

    invoke-interface {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->isImmediate()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private networkAccessDenied(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "REQUEST"

    invoke-static {v0, p1}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logQuietThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->stop()V

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->maybeNotifyNetworkError(I)V

    return-void
.end method


# virtual methods
.method protected declared-synchronized activate()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->canDispatchNow()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #getter for: Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->threadDispatchLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->access$200(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->dequeuePendingRequests()Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->tempRequests:Ljava/util/Vector;

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->tempRequests:Ljava/util/Vector;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->access$308(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)I

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->tempRequests:Ljava/util/Vector;

    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->containsForegroundRequest(Ljava/util/Vector;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->access$408(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)I

    :cond_1
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->tempRequests:Ljava/util/Vector;

    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->containsSubmissionRequest(Ljava/util/Vector;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->access$508(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)I

    :cond_2
    new-instance v0, Ljava/lang/Thread;

    const-string v2, "DataRequestDispatcher"

    invoke-direct {v0, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_1
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->tempRequests:Ljava/util/Vector;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_3

    :try_start_3
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #getter for: Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->threadDispatchLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->access$200(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    :try_start_4
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected activateIfNeeded()V
    .locals 1

    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->checkNeedToActivate()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->activate()V

    :cond_0
    return-void
.end method

.method public addDataRequest(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;)V
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->serverRequests:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-interface {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->isImmediate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->isSuspended()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->activate()V

    :cond_0
    return-void
.end method

.method protected canHandle(I)Z
    .locals 2

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->supportedDataRequests:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->supportedDataRequests:Ljava/util/Vector;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dequeuePendingRequests()Ljava/util/Vector;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->serverRequests:Ljava/util/Vector;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->serverRequests:Ljava/util/Vector;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 8

    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #getter for: Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->threadDispatchLock:Ljava/lang/Object;
    invoke-static {v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->access$200(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_0
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->tempRequests:Ljava/util/Vector;

    const/4 v4, 0x0

    iput-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->tempRequests:Ljava/util/Vector;

    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #getter for: Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;
    invoke-static {v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->access$700(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v6

    invoke-interface {v6}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v6

    #setter for: Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->lastActiveTime:J
    invoke-static {v4, v6, v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->access$602(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;J)J

    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #getter for: Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->threadDispatchLock:Ljava/lang/Object;
    invoke-static {v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->access$200(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->containsForegroundRequest(Ljava/util/Vector;)Z

    move-result v0

    invoke-static {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->containsSubmissionRequest(Ljava/util/Vector;)Z

    move-result v1

    :goto_0
    :try_start_1
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    iget-boolean v4, v4, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->active:Z

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    if-lez v4, :cond_3

    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #getter for: Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->errorRetryTime:J
    invoke-static {v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->access$800(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    :try_start_3
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #getter for: Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->errorRetryTime:J
    invoke-static {v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->access$800(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_0
    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v4, v3, p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->serviceRequests(Ljava/util/Vector;Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;)V

    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    iget-object v4, v4, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->connectionFactory:Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;->registerNetworkSuccess(Z)Z

    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #calls: Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->clearNetworkError()V
    invoke-static {v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->access$900(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)V

    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #getter for: Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;
    invoke-static {v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->access$700(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v5

    invoke-interface {v5}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v5

    #setter for: Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->lastSuccessTime:J
    invoke-static {v4, v5, v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->access$1002(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;J)J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_6
    invoke-direct {p0, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->networkAccessDenied(Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #getter for: Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->threadDispatchLock:Ljava/lang/Object;
    invoke-static {v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->access$200(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_7
    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-static {v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->access$310(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)I

    if-eqz v0, :cond_1

    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-static {v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->access$410(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)I

    :cond_1
    if-eqz v1, :cond_2

    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-static {v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->access$510(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)I

    :cond_2
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->activateIfNeeded()V

    throw v4

    :catchall_1
    move-exception v4

    :try_start_8
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v4

    :catchall_2
    move-exception v4

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v4

    :catch_1
    move-exception v2

    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    const/4 v5, 0x3

    #calls: Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->handleError(ILjava/lang/Throwable;)V
    invoke-static {v4, v5, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->access$1100(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;ILjava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v2

    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    const/4 v5, 0x5

    #calls: Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->handleError(ILjava/lang/Throwable;)V
    invoke-static {v4, v5, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->access$1100(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;ILjava/lang/Throwable;)V

    const-string v4, "REQUEST"

    invoke-static {v4, v2}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catch_3
    move-exception v2

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->handleOutOfMemory()V

    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    const/4 v5, 0x5

    #calls: Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->handleError(ILjava/lang/Throwable;)V
    invoke-static {v4, v5, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->access$1100(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;ILjava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    :cond_3
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #getter for: Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->threadDispatchLock:Ljava/lang/Object;
    invoke-static {v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->access$200(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_b
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-static {v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->access$310(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)I

    if-eqz v0, :cond_4

    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-static {v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->access$410(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)I

    :cond_4
    if-eqz v1, :cond_5

    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-static {v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->access$510(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)I

    :cond_5
    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->activateIfNeeded()V

    return-void

    :catchall_3
    move-exception v4

    :try_start_c
    monitor-exit v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    throw v4

    :catchall_4
    move-exception v4

    :try_start_d
    monitor-exit v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw v4

    :catch_4
    move-exception v4

    goto/16 :goto_1
.end method

.method public start()V
    .locals 0

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->activateIfNeeded()V

    return-void
.end method
