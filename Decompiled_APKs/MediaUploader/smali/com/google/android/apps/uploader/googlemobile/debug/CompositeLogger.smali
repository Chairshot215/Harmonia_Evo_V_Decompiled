.class public Lcom/google/android/apps/uploader/googlemobile/debug/CompositeLogger;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/apps/uploader/googlemobile/debug/Logger;


# instance fields
.field private final loggers:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/debug/CompositeLogger;->loggers:Ljava/util/Vector;

    return-void
.end method

.method private hasLoggableChild(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/debug/CompositeLogger;->loggers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    move v2, v3

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/debug/CompositeLogger;->loggers:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/uploader/googlemobile/debug/Logger;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/apps/uploader/googlemobile/debug/CompositeLogger;->isLoggable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized add(Lcom/google/android/apps/uploader/googlemobile/debug/Logger;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/debug/CompositeLogger;->loggers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized flush()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/debug/CompositeLogger;->loggers:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/debug/CompositeLogger;->loggers:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/uploader/googlemobile/debug/Logger;

    invoke-interface {v0}, Lcom/google/android/apps/uploader/googlemobile/debug/Logger;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isLoggable(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/uploader/googlemobile/debug/CompositeLogger;->hasLoggableChild(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized log(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 8

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/debug/CompositeLogger;->loggers:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v6

    move v7, v0

    :goto_0
    if-ge v7, v6, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/debug/CompositeLogger;->loggers:Ljava/util/Vector;

    invoke-virtual {v0, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/uploader/googlemobile/debug/Logger;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/apps/uploader/googlemobile/debug/Logger;->log(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized logThrowable(Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 9

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/debug/CompositeLogger;->loggers:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v7

    move v8, v0

    :goto_0
    if-ge v8, v7, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/debug/CompositeLogger;->loggers:Ljava/util/Vector;

    invoke-virtual {v0, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/uploader/googlemobile/debug/Logger;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/android/apps/uploader/googlemobile/debug/Logger;->logThrowable(Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized logTimer(Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;I)V
    .locals 10

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/debug/CompositeLogger;->loggers:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v8

    move v9, v0

    :goto_0
    if-ge v9, v8, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/debug/CompositeLogger;->loggers:Ljava/util/Vector;

    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/uploader/googlemobile/debug/Logger;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/google/android/apps/uploader/googlemobile/debug/Logger;->logTimer(Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
