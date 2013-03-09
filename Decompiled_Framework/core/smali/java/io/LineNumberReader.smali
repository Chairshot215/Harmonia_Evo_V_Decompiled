.class public Ljava/io/LineNumberReader;
.super Ljava/io/BufferedReader;
.source "LineNumberReader.java"


# instance fields
.field private lastWasCR:Z

.field private lineNumber:I

.field private markedLastWasCR:Z

.field private markedLineNumber:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v0, -0x1

    iput v0, p0, Ljava/io/LineNumberReader;->markedLineNumber:I

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    const/4 v0, -0x1

    iput v0, p0, Ljava/io/LineNumberReader;->markedLineNumber:I

    return-void
.end method


# virtual methods
.method public getLineNumber()I
    .locals 2

    iget-object v1, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Ljava/io/LineNumberReader;->lineNumber:I

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public mark(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-super {p0, p1}, Ljava/io/BufferedReader;->mark(I)V

    iget v0, p0, Ljava/io/LineNumberReader;->lineNumber:I

    iput v0, p0, Ljava/io/LineNumberReader;->markedLineNumber:I

    iget-boolean v0, p0, Ljava/io/LineNumberReader;->lastWasCR:Z

    iput-boolean v0, p0, Ljava/io/LineNumberReader;->markedLastWasCR:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-super {p0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget-boolean v1, p0, Ljava/io/LineNumberReader;->lastWasCR:Z

    if-eqz v1, :cond_0

    invoke-super {p0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/io/LineNumberReader;->lastWasCR:Z

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    monitor-exit v2

    return v0

    :pswitch_1
    const/16 v0, 0xa

    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/io/LineNumberReader;->lastWasCR:Z

    :pswitch_2
    iget v1, p0, Ljava/io/LineNumberReader;->lineNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/io/LineNumberReader;->lineNumber:I

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public read([CII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, -0x1

    iget-object v4, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/BufferedReader;->read([CII)I

    move-result v2

    if-ne v2, v3, :cond_0

    monitor-exit v4

    move v2, v3

    :goto_0
    return v2

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_4

    add-int v3, p2, v1

    aget-char v0, p1, v3

    const/16 v3, 0xd

    if-ne v0, v3, :cond_1

    iget v3, p0, Ljava/io/LineNumberReader;->lineNumber:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/io/LineNumberReader;->lineNumber:I

    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/io/LineNumberReader;->lastWasCR:Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/16 v3, 0xa

    if-ne v0, v3, :cond_3

    iget-boolean v3, p0, Ljava/io/LineNumberReader;->lastWasCR:Z

    if-nez v3, :cond_2

    iget v3, p0, Ljava/io/LineNumberReader;->lineNumber:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/io/LineNumberReader;->lineNumber:I

    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Ljava/io/LineNumberReader;->lastWasCR:Z

    goto :goto_2

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_3
    const/4 v3, 0x0

    :try_start_1
    iput-boolean v3, p0, Ljava/io/LineNumberReader;->lastWasCR:Z

    goto :goto_2

    :cond_4
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public readLine()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, p0, Ljava/io/LineNumberReader;->lastWasCR:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/io/LineNumberReader;->chompNewline()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/io/LineNumberReader;->lastWasCR:Z

    :cond_0
    invoke-super {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, p0, Ljava/io/LineNumberReader;->lineNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/io/LineNumberReader;->lineNumber:I

    :cond_1
    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-super {p0}, Ljava/io/BufferedReader;->reset()V

    iget v0, p0, Ljava/io/LineNumberReader;->markedLineNumber:I

    iput v0, p0, Ljava/io/LineNumberReader;->lineNumber:I

    iget-boolean v0, p0, Ljava/io/LineNumberReader;->markedLastWasCR:Z

    iput-boolean v0, p0, Ljava/io/LineNumberReader;->lastWasCR:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setLineNumber(I)V
    .locals 2

    iget-object v1, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Ljava/io/LineNumberReader;->lineNumber:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public skip(J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "charCount < 0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v2, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v0, 0x0

    :goto_0
    int-to-long v3, v0

    cmp-long v1, v3, p1

    if-gez v1, :cond_2

    :try_start_0
    invoke-virtual {p0}, Ljava/io/LineNumberReader;->read()I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    int-to-long p1, v0

    monitor-exit v2

    :goto_1
    return-wide p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
