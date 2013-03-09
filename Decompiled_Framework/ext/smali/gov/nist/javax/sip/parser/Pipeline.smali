.class public Lgov/nist/javax/sip/parser/Pipeline;
.super Ljava/io/InputStream;
.source "Pipeline.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgov/nist/javax/sip/parser/Pipeline$Buffer;,
        Lgov/nist/javax/sip/parser/Pipeline$MyTimer;
    }
.end annotation


# instance fields
.field private buffList:Ljava/util/LinkedList;

.field private currentBuffer:Lgov/nist/javax/sip/parser/Pipeline$Buffer;

.field private isClosed:Z

.field private myTimerTask:Ljava/util/TimerTask;

.field private pipe:Ljava/io/InputStream;

.field private readTimeout:I

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;ILjava/util/Timer;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p3, p0, Lgov/nist/javax/sip/parser/Pipeline;->timer:Ljava/util/Timer;

    iput-object p1, p0, Lgov/nist/javax/sip/parser/Pipeline;->pipe:Ljava/io/InputStream;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    iput p2, p0, Lgov/nist/javax/sip/parser/Pipeline;->readTimeout:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/parser/Pipeline;->isClosed:Z

    iget-object v1, p0, Lgov/nist/javax/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lgov/nist/javax/sip/parser/Pipeline;->pipe:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, -0x1

    iget-object v3, p0, Lgov/nist/javax/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lgov/nist/javax/sip/parser/Pipeline;->currentBuffer:Lgov/nist/javax/sip/parser/Pipeline$Buffer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lgov/nist/javax/sip/parser/Pipeline;->currentBuffer:Lgov/nist/javax/sip/parser/Pipeline$Buffer;

    iget v2, v2, Lgov/nist/javax/sip/parser/Pipeline$Buffer;->ptr:I

    iget-object v4, p0, Lgov/nist/javax/sip/parser/Pipeline;->currentBuffer:Lgov/nist/javax/sip/parser/Pipeline$Buffer;

    iget v4, v4, Lgov/nist/javax/sip/parser/Pipeline$Buffer;->length:I

    if-ge v2, v4, :cond_1

    iget-object v2, p0, Lgov/nist/javax/sip/parser/Pipeline;->currentBuffer:Lgov/nist/javax/sip/parser/Pipeline$Buffer;

    invoke-virtual {v2}, Lgov/nist/javax/sip/parser/Pipeline$Buffer;->getNextByte()I

    move-result v1

    iget-object v2, p0, Lgov/nist/javax/sip/parser/Pipeline;->currentBuffer:Lgov/nist/javax/sip/parser/Pipeline$Buffer;

    iget v2, v2, Lgov/nist/javax/sip/parser/Pipeline$Buffer;->ptr:I

    iget-object v4, p0, Lgov/nist/javax/sip/parser/Pipeline;->currentBuffer:Lgov/nist/javax/sip/parser/Pipeline$Buffer;

    iget v4, v4, Lgov/nist/javax/sip/parser/Pipeline$Buffer;->length:I

    if-ne v2, v4, :cond_0

    const/4 v2, 0x0

    iput-object v2, p0, Lgov/nist/javax/sip/parser/Pipeline;->currentBuffer:Lgov/nist/javax/sip/parser/Pipeline$Buffer;

    :cond_0
    monitor-exit v3

    :goto_0
    return v1

    :cond_1
    iget-boolean v2, p0, Lgov/nist/javax/sip/parser/Pipeline;->isClosed:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lgov/nist/javax/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :try_start_1
    iget-object v2, p0, Lgov/nist/javax/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lgov/nist/javax/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    iget-boolean v2, p0, Lgov/nist/javax/sip/parser/Pipeline;->isClosed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v2, :cond_2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_3
    :try_start_3
    iget-object v2, p0, Lgov/nist/javax/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/parser/Pipeline$Buffer;

    iput-object v2, p0, Lgov/nist/javax/sip/parser/Pipeline;->currentBuffer:Lgov/nist/javax/sip/parser/Pipeline$Buffer;

    iget-object v2, p0, Lgov/nist/javax/sip/parser/Pipeline;->currentBuffer:Lgov/nist/javax/sip/parser/Pipeline$Buffer;

    invoke-virtual {v2}, Lgov/nist/javax/sip/parser/Pipeline$Buffer;->getNextByte()I

    move-result v1

    iget-object v2, p0, Lgov/nist/javax/sip/parser/Pipeline;->currentBuffer:Lgov/nist/javax/sip/parser/Pipeline$Buffer;

    iget v2, v2, Lgov/nist/javax/sip/parser/Pipeline$Buffer;->ptr:I

    iget-object v4, p0, Lgov/nist/javax/sip/parser/Pipeline;->currentBuffer:Lgov/nist/javax/sip/parser/Pipeline$Buffer;

    iget v4, v4, Lgov/nist/javax/sip/parser/Pipeline$Buffer;->length:I

    if-ne v2, v4, :cond_4

    const/4 v2, 0x0

    iput-object v2, p0, Lgov/nist/javax/sip/parser/Pipeline;->currentBuffer:Lgov/nist/javax/sip/parser/Pipeline$Buffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_4
    :try_start_4
    monitor-exit v3

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/util/NoSuchElementException;->printStackTrace()V

    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/util/NoSuchElementException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public startTimer()V
    .locals 4

    iget v0, p0, Lgov/nist/javax/sip/parser/Pipeline;->readTimeout:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/parser/Pipeline$MyTimer;

    invoke-direct {v0, p0, p0}, Lgov/nist/javax/sip/parser/Pipeline$MyTimer;-><init>(Lgov/nist/javax/sip/parser/Pipeline;Lgov/nist/javax/sip/parser/Pipeline;)V

    iput-object v0, p0, Lgov/nist/javax/sip/parser/Pipeline;->myTimerTask:Ljava/util/TimerTask;

    iget-object v0, p0, Lgov/nist/javax/sip/parser/Pipeline;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lgov/nist/javax/sip/parser/Pipeline;->myTimerTask:Ljava/util/TimerTask;

    iget v2, p0, Lgov/nist/javax/sip/parser/Pipeline;->readTimeout:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method

.method public stopTimer()V
    .locals 2

    iget v0, p0, Lgov/nist/javax/sip/parser/Pipeline;->readTimeout:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/parser/Pipeline;->myTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/parser/Pipeline;->myTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    goto :goto_0
.end method

.method public write([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v1, p0, Lgov/nist/javax/sip/parser/Pipeline;->isClosed:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Closed!!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/parser/Pipeline$Buffer;

    array-length v1, p1

    invoke-direct {v0, p0, p1, v1}, Lgov/nist/javax/sip/parser/Pipeline$Buffer;-><init>(Lgov/nist/javax/sip/parser/Pipeline;[BI)V

    iget-object v2, p0, Lgov/nist/javax/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lgov/nist/javax/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lgov/nist/javax/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public write([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v1, p0, Lgov/nist/javax/sip/parser/Pipeline;->isClosed:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Closed!!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/parser/Pipeline$Buffer;

    invoke-direct {v0, p0, p1, p3}, Lgov/nist/javax/sip/parser/Pipeline$Buffer;-><init>(Lgov/nist/javax/sip/parser/Pipeline;[BI)V

    iput p2, v0, Lgov/nist/javax/sip/parser/Pipeline$Buffer;->ptr:I

    iget-object v2, p0, Lgov/nist/javax/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lgov/nist/javax/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lgov/nist/javax/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
