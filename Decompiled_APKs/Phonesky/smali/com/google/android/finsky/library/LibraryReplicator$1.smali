.class Lcom/google/android/finsky/library/LibraryReplicator$1;
.super Ljava/lang/Object;
.source "LibraryReplicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/library/LibraryReplicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/library/LibraryReplicator;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/library/LibraryReplicator;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/google/android/finsky/library/LibraryReplicator$1;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 115
    iget-object v6, p0, Lcom/google/android/finsky/library/LibraryReplicator$1;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    #getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mCurrentRequest:Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;
    invoke-static {v6}, Lcom/google/android/finsky/library/LibraryReplicator;->access$000(Lcom/google/android/finsky/library/LibraryReplicator;)Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;

    move-result-object v6

    if-nez v6, :cond_4

    .line 116
    monitor-enter p0

    .line 117
    :try_start_0
    iget-object v6, p0, Lcom/google/android/finsky/library/LibraryReplicator$1;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    #getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mReplicationRequests:Ljava/util/List;
    invoke-static {v6}, Lcom/google/android/finsky/library/LibraryReplicator;->access$100(Lcom/google/android/finsky/library/LibraryReplicator;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 118
    monitor-exit p0

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v7, p0, Lcom/google/android/finsky/library/LibraryReplicator$1;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    iget-object v6, p0, Lcom/google/android/finsky/library/LibraryReplicator$1;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    #getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mReplicationRequests:Ljava/util/List;
    invoke-static {v6}, Lcom/google/android/finsky/library/LibraryReplicator;->access$100(Lcom/google/android/finsky/library/LibraryReplicator;)Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v6, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;

    #setter for: Lcom/google/android/finsky/library/LibraryReplicator;->mCurrentRequest:Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;
    invoke-static {v7, v6}, Lcom/google/android/finsky/library/LibraryReplicator;->access$002(Lcom/google/android/finsky/library/LibraryReplicator;Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;)Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;

    .line 121
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    iget-object v6, p0, Lcom/google/android/finsky/library/LibraryReplicator$1;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    #getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mEnableDebugging:Z
    invoke-static {v6}, Lcom/google/android/finsky/library/LibraryReplicator;->access$200(Lcom/google/android/finsky/library/LibraryReplicator;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 123
    iget-object v6, p0, Lcom/google/android/finsky/library/LibraryReplicator$1;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/google/android/finsky/library/LibraryReplicator$1;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    #getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mCurrentRequest:Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;
    invoke-static {v8}, Lcom/google/android/finsky/library/LibraryReplicator;->access$000(Lcom/google/android/finsky/library/LibraryReplicator;)Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;

    move-result-object v8

    iget-object v8, v8, Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;->debugTag:Ljava/lang/String;

    #calls: Lcom/google/android/finsky/library/LibraryReplicator;->recordDebugEvent(ILcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;Lcom/android/volley/VolleyError;Ljava/lang/String;)V
    invoke-static {v6, v7, v9, v9, v8}, Lcom/google/android/finsky/library/LibraryReplicator;->access$300(Lcom/google/android/finsky/library/LibraryReplicator;ILcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;Lcom/android/volley/VolleyError;Ljava/lang/String;)V

    .line 126
    :cond_2
    new-instance v5, Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationRequest;

    invoke-direct {v5}, Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationRequest;-><init>()V

    .line 127
    .local v5, request:Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationRequest;
    iget-object v6, p0, Lcom/google/android/finsky/library/LibraryReplicator$1;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    #getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mCurrentRequest:Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;
    invoke-static {v6}, Lcom/google/android/finsky/library/LibraryReplicator;->access$000(Lcom/google/android/finsky/library/LibraryReplicator;)Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;

    move-result-object v6

    iget-object v0, v6, Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;->libraryIds:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 128
    .local v3, libraryId:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/finsky/library/LibraryReplicator$1;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    #calls: Lcom/google/android/finsky/library/LibraryReplicator;->buildLibraryState(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;
    invoke-static {v6, v3}, Lcom/google/android/finsky/library/LibraryReplicator;->access$400(Lcom/google/android/finsky/library/LibraryReplicator;Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationRequest;->addLibraryState(Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;)Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationRequest;

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 121
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #libraryId:Ljava/lang/String;
    .end local v5           #request:Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationRequest;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 130
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v5       #request:Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationRequest;
    :cond_3
    new-instance v4, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iget-object v6, p0, Lcom/google/android/finsky/library/LibraryReplicator$1;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    invoke-direct {v4, v6}, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;-><init>(Lcom/google/android/finsky/library/LibraryReplicator;)V

    .line 131
    .local v4, listener:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;
    iget-object v6, p0, Lcom/google/android/finsky/library/LibraryReplicator$1;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    #getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;
    invoke-static {v6}, Lcom/google/android/finsky/library/LibraryReplicator;->access$500(Lcom/google/android/finsky/library/LibraryReplicator;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v6

    invoke-interface {v6, v5, v4, v4}, Lcom/google/android/finsky/api/DfeApi;->replicateLibrary(Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationRequest;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    goto :goto_0

    .line 132
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #listener:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;
    .end local v5           #request:Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationRequest;
    :cond_4
    sget-boolean v6, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 133
    const-string v6, "Replication request pending."

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
