.class public Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager$ElegantPool;
.super Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;
.source "ElegantThreadSafeConnManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ElegantPool"
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/http/conn/ClientConnectionOperator;Lorg/apache/http/params/HttpParams;)V
    .locals 0
    .parameter "operator"
    .parameter "params"

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;-><init>(Lorg/apache/http/conn/ClientConnectionOperator;Lorg/apache/http/params/HttpParams;)V

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager$ElegantPool;)Ljava/util/concurrent/locks/Lock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager$ElegantPool;->poolLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager$ElegantPool;)Ljava/util/concurrent/locks/Lock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager$ElegantPool;->poolLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method


# virtual methods
.method protected getEntryBlocking(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;)Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    .locals 19
    .parameter "route"
    .parameter "state"
    .parameter "timeout"
    .parameter "tunit"
    .parameter "aborter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/conn/ConnectionPoolTimeoutException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 132
    const/4 v3, 0x0

    .line 133
    .local v3, deadline:Ljava/util/Date;
    const-wide/16 v13, 0x0

    cmp-long v13, p3, v13

    if-lez v13, :cond_0

    .line 134
    new-instance v3, Ljava/util/Date;

    .end local v3           #deadline:Ljava/util/Date;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object/from16 v0, p5

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v15

    add-long/2addr v13, v15

    invoke-direct {v3, v13, v14}, Ljava/util/Date;-><init>(J)V

    .line 138
    .restart local v3       #deadline:Ljava/util/Date;
    :cond_0
    const/4 v6, 0x0

    .line 139
    .local v6, entry:Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 140
    .local v9, startTime:J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager$ElegantPool;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v13}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 143
    const/4 v13, 0x1

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v13}, Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager$ElegantPool;->getRoutePool(Lorg/apache/http/conn/routing/HttpRoute;Z)Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;

    move-result-object v8

    .line 144
    .local v8, rospl:Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;
    const/4 v12, 0x0

    .line 146
    .local v12, waitingThread:Lorg/apache/http/impl/conn/tsccm/WaitingThread;
    :cond_1
    :goto_0
    if-nez v6, :cond_4

    .line 148
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager$ElegantPool;->isShutDown:Z

    if-eqz v13, :cond_3

    .line 149
    new-instance v13, Ljava/lang/IllegalStateException;

    const-string v14, "Connection pool shut down."

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    .end local v8           #rospl:Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;
    .end local v12           #waitingThread:Lorg/apache/http/impl/conn/tsccm/WaitingThread;
    :catchall_0
    move-exception v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager$ElegantPool;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v14}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 231
    .local v4, endTime:J
    sget-boolean v14, Lcom/android/volley/VolleyLog;->DEBUG:Z

    if-eqz v14, :cond_2

    sub-long v14, v4, v9

    const-wide/16 v16, 0xa

    cmp-long v14, v14, v16

    if-lez v14, :cond_2

    .line 232
    const-string v14, "GetEntryBlocking() took %s ms"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    sub-long v17, v4, v9

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    :cond_2
    throw v13

    .line 165
    .end local v4           #endTime:J
    .restart local v8       #rospl:Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;
    .restart local v12       #waitingThread:Lorg/apache/http/impl/conn/tsccm/WaitingThread;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v8, v1}, Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager$ElegantPool;->getFreeEntry(Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;Ljava/lang/Object;)Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 166
    if-eqz v6, :cond_6

    .line 229
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager$ElegantPool;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v13}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 231
    .restart local v4       #endTime:J
    sget-boolean v13, Lcom/android/volley/VolleyLog;->DEBUG:Z

    if-eqz v13, :cond_5

    sub-long v13, v4, v9

    const-wide/16 v15, 0xa

    cmp-long v13, v13, v15

    if-lez v13, :cond_5

    .line 232
    const-string v13, "GetEntryBlocking() took %s ms"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    sub-long v16, v4, v9

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    :cond_5
    return-object v6

    .line 169
    .end local v4           #endTime:J
    :cond_6
    :try_start_2
    sget-boolean v13, Lcom/android/volley/VolleyLog;->DEBUG:Z

    if-eqz v13, :cond_7

    .line 170
    const-string v13, "Constructed new connection to route=[%s]"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p1, v14, v15

    invoke-static {v13, v14}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    :cond_7
    invoke-virtual {v8}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->getCapacity()I

    move-result v13

    if-lez v13, :cond_8

    const/4 v7, 0x1

    .line 183
    .local v7, hasCapacity:Z
    :goto_1
    if-eqz v7, :cond_9

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager$ElegantPool;->numConnections:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager$ElegantPool;->maxTotalConnections:I

    if-ge v13, v14, :cond_9

    .line 184
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager$ElegantPool;->operator:Lorg/apache/http/conn/ClientConnectionOperator;

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v13}, Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager$ElegantPool;->createEntry(Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;Lorg/apache/http/conn/ClientConnectionOperator;)Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    move-result-object v6

    goto/16 :goto_0

    .line 175
    .end local v7           #hasCapacity:Z
    :cond_8
    const/4 v7, 0x0

    goto :goto_1

    .line 186
    .restart local v7       #hasCapacity:Z
    :cond_9
    if-eqz v7, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager$ElegantPool;->freeConnections:Ljava/util/Queue;

    invoke-interface {v13}, Ljava/util/Queue;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_a

    .line 188
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager$ElegantPool;->deleteLeastUsedEntry()V

    .line 189
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager$ElegantPool;->operator:Lorg/apache/http/conn/ClientConnectionOperator;

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v13}, Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager$ElegantPool;->createEntry(Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;Lorg/apache/http/conn/ClientConnectionOperator;)Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    move-result-object v6

    goto/16 :goto_0

    .line 198
    :cond_a
    if-nez v12, :cond_b

    .line 199
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager$ElegantPool;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v13}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v8}, Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager$ElegantPool;->newWaitingThread(Ljava/util/concurrent/locks/Condition;Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;)Lorg/apache/http/impl/conn/tsccm/WaitingThread;

    move-result-object v12

    .line 201
    move-object/from16 v0, p6

    invoke-virtual {v0, v12}, Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;->setWaitingThread(Lorg/apache/http/impl/conn/tsccm/WaitingThread;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 204
    :cond_b
    const/4 v11, 0x0

    .line 206
    .local v11, success:Z
    :try_start_3
    invoke-virtual {v8, v12}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->queueThread(Lorg/apache/http/impl/conn/tsccm/WaitingThread;)V

    .line 207
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager$ElegantPool;->waitingThreads:Ljava/util/Queue;

    invoke-interface {v13, v12}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 208
    invoke-virtual {v12, v3}, Lorg/apache/http/impl/conn/tsccm/WaitingThread;->await(Ljava/util/Date;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v11

    .line 215
    :try_start_4
    invoke-virtual {v8, v12}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->removeThread(Lorg/apache/http/impl/conn/tsccm/WaitingThread;)V

    .line 216
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager$ElegantPool;->waitingThreads:Ljava/util/Queue;

    invoke-interface {v13, v12}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 220
    if-nez v11, :cond_1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-gtz v13, :cond_1

    .line 222
    new-instance v13, Lorg/apache/http/conn/ConnectionPoolTimeoutException;

    const-string v14, "Timeout waiting for connection"

    invoke-direct {v13, v14}, Lorg/apache/http/conn/ConnectionPoolTimeoutException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 215
    :catchall_1
    move-exception v13

    invoke-virtual {v8, v12}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->removeThread(Lorg/apache/http/impl/conn/tsccm/WaitingThread;)V

    .line 216
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager$ElegantPool;->waitingThreads:Ljava/util/Queue;

    invoke-interface {v14, v12}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 215
    throw v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public requestPoolEntry(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;
    .locals 2
    .parameter "route"
    .parameter "state"

    .prologue
    .line 107
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;

    invoke-direct {v0}, Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;-><init>()V

    .line 108
    .local v0, aborter:Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;
    new-instance v1, Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager$ElegantPool$1;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager$ElegantPool$1;-><init>(Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager$ElegantPool;Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)V

    return-object v1
.end method
