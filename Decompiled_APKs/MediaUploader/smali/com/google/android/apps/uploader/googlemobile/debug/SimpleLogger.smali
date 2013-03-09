.class public abstract Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/apps/uploader/googlemobile/debug/Logger;


# instance fields
.field private activationLevel:I

.field private buffer:Ljava/lang/StringBuffer;

.field private final logThreads:Z

.field private final logTime:Z

.field private final startTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/debug/Log;->parseLogLevel(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->activationLevel:I

    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/debug/Log;->logThreads()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->logThreads:Z

    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/debug/Log;->logTime()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->logTime:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->startTime:J

    return-void
.end method


# virtual methods
.method public flush()V
    .locals 0

    return-void
.end method

.method public getLogTime()I
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->startTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getThreadId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLoggable(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->activationLevel:I

    if-gt v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public log(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 4

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->activationLevel:I

    if-gt v0, p2, :cond_3

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p2}, Lcom/google/android/apps/uploader/googlemobile/debug/Log;->getLevelName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->logThreads:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->getThreadId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->logTime:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->getLogTime()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-eqz p3, :cond_2

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->log(Ljava/lang/String;)V

    :cond_3
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public abstract log(Ljava/lang/String;)V
.end method

.method public logThrowable(Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 4

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->activationLevel:I

    if-gt v0, p3, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p3}, Lcom/google/android/apps/uploader/googlemobile/debug/Log;->getLevelName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const-string v2, ":EXCEPTION]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p4, :cond_0

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->log(Ljava/lang/String;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public logTimer(Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;I)V
    .locals 4

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->activationLevel:I

    if-gt v0, p4, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p4}, Lcom/google/android/apps/uploader/googlemobile/debug/Log;->getLevelName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const-string v2, ":TIMER]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p5, :cond_0

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-ltz v2, :cond_2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->log(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    :try_start_2
    const-string v2, "START"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_3
    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method
