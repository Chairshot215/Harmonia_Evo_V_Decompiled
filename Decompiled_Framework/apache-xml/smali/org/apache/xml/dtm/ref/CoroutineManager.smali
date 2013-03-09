.class public Lorg/apache/xml/dtm/ref/CoroutineManager;
.super Ljava/lang/Object;
.source "CoroutineManager.java"


# static fields
.field static final ANYBODY:I = -0x1

.field static final NOBODY:I = -0x1

.field static final m_unreasonableId:I = 0x400


# instance fields
.field m_activeIDs:Ljava/util/BitSet;

.field m_nextCoroutine:I

.field m_yield:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_activeIDs:Ljava/util/BitSet;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_yield:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_nextCoroutine:I

    return-void
.end method


# virtual methods
.method public declared-synchronized co_entry_pause(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_activeIDs:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NoSuchMethodException;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :goto_0
    :try_start_1
    iget v0, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_nextCoroutine:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v0, p1, :cond_1

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    :try_start_3
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_yield:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized co_exit(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_activeIDs:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->clear(I)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_nextCoroutine:I

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized co_exit_to(Ljava/lang/Object;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_activeIDs:Ljava/util/BitSet;

    invoke-virtual {v0, p3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NoSuchMethodException;

    const-string v1, "ER_COROUTINE_NOT_AVAIL"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_yield:Ljava/lang/Object;

    iput p3, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_nextCoroutine:I

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_activeIDs:Ljava/util/BitSet;

    invoke-virtual {v0, p2}, Ljava/util/BitSet;->clear(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized co_joinCoroutineSet(I)I
    .locals 3

    const/4 v0, -0x1

    const/16 v2, 0x400

    monitor-enter p0

    if-ltz p1, :cond_1

    if-ge p1, v2, :cond_0

    :try_start_0
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_activeIDs:Ljava/util/BitSet;

    invoke-virtual {v1, p1}, Ljava/util/BitSet;->get(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-ge p1, v2, :cond_2

    :try_start_1
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_activeIDs:Ljava/util/BitSet;

    invoke-virtual {v1, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    if-ge p1, v2, :cond_0

    :cond_3
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_activeIDs:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized co_resume(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    const/4 v1, -0x1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_activeIDs:Ljava/util/BitSet;

    invoke-virtual {v0, p3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NoSuchMethodException;

    const-string v1, "ER_COROUTINE_NOT_AVAIL"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_yield:Ljava/lang/Object;

    iput p3, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_nextCoroutine:I

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    :goto_0
    iget v0, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_nextCoroutine:I

    if-ne v0, p2, :cond_1

    iget v0, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_nextCoroutine:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_nextCoroutine:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, v1, :cond_2

    :cond_1
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    :try_start_3
    iget v0, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_nextCoroutine:I

    if-ne v0, v1, :cond_3

    invoke-virtual {p0, p2}, Lorg/apache/xml/dtm/ref/CoroutineManager;->co_exit(I)V

    new-instance v0, Ljava/lang/NoSuchMethodException;

    const-string v1, "ER_COROUTINE_CO_EXIT"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_yield:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0
.end method
