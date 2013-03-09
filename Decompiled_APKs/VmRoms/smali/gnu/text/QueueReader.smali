.class public Lgnu/text/QueueReader;
.super Ljava/io/Reader;
.source "QueueReader.java"

# interfaces
.implements Ljava/lang/Appendable;


# instance fields
.field EOFseen:Z

.field buffer:[C

.field limit:I

.field mark:I

.field pos:I

.field readAheadLimit:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public declared-synchronized append(C)Lgnu/text/QueueReader;
    .locals 3
    .parameter "ch"

    .prologue
    .line 129
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lgnu/text/QueueReader;->reserveSpace(I)V

    .line 130
    iget-object v0, p0, Lgnu/text/QueueReader;->buffer:[C

    iget v1, p0, Lgnu/text/QueueReader;->limit:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/text/QueueReader;->limit:I

    aput-char p1, v0, v1

    .line 131
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    monitor-exit p0

    return-object p0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public append(Ljava/lang/CharSequence;)Lgnu/text/QueueReader;
    .locals 2
    .parameter "csq"

    .prologue
    .line 60
    if-nez p1, :cond_0

    .line 61
    const-string p1, "null"

    .line 62
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lgnu/text/QueueReader;->append(Ljava/lang/CharSequence;II)Lgnu/text/QueueReader;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized append(Ljava/lang/CharSequence;II)Lgnu/text/QueueReader;
    .locals 8
    .parameter "csq"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 67
    monitor-enter p0

    if-nez p1, :cond_0

    .line 68
    :try_start_0
    const-string p1, "null"

    .line 69
    :cond_0
    sub-int v5, p3, p2

    .line 70
    .local v5, len:I
    invoke-virtual {p0, v5}, Lgnu/text/QueueReader;->reserveSpace(I)V

    .line 71
    iget v6, p0, Lgnu/text/QueueReader;->limit:I

    .line 72
    .local v6, sz:I
    iget-object v1, p0, Lgnu/text/QueueReader;->buffer:[C

    .line 73
    .local v1, d:[C
    instance-of v7, p1, Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 74
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v7, p2, p3, v1, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 83
    :cond_1
    :goto_0
    add-int v7, v6, v5

    iput v7, p0, Lgnu/text/QueueReader;->limit:I

    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit p0

    return-object p0

    .line 75
    :cond_2
    :try_start_1
    instance-of v7, p1, Lgnu/lists/CharSeq;

    if-eqz v7, :cond_3

    .line 76
    move-object v0, p1

    check-cast v0, Lgnu/lists/CharSeq;

    move-object v7, v0

    invoke-interface {v7, p2, p3, v1, v6}, Lgnu/lists/CharSeq;->getChars(II[CI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 67
    .end local v1           #d:[C
    .end local v5           #len:I
    .end local v6           #sz:I
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 79
    .restart local v1       #d:[C
    .restart local v5       #len:I
    .restart local v6       #sz:I
    :cond_3
    move v3, v6

    .line 80
    .local v3, j:I
    move v2, p2

    .local v2, i:I
    move v4, v3

    .end local v3           #j:I
    .local v4, j:I
    :goto_1
    if-ge v2, p3, :cond_1

    .line 81
    add-int/lit8 v3, v4, 0x1

    .end local v4           #j:I
    .restart local v3       #j:I
    :try_start_2
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    aput-char v7, v1, v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    .end local v3           #j:I
    .restart local v4       #j:I
    goto :goto_1
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lgnu/text/QueueReader;->append(C)Lgnu/text/QueueReader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lgnu/text/QueueReader;->append(Ljava/lang/CharSequence;)Lgnu/text/QueueReader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10
    invoke-virtual {p0, p1, p2, p3}, Lgnu/text/QueueReader;->append(Ljava/lang/CharSequence;II)Lgnu/text/QueueReader;

    move-result-object v0

    return-object v0
.end method

.method public append([C)V
    .locals 2
    .parameter "chars"

    .prologue
    .line 116
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lgnu/text/QueueReader;->append([CII)V

    .line 117
    return-void
.end method

.method public declared-synchronized append([CII)V
    .locals 2
    .parameter "chars"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 121
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p3}, Lgnu/text/QueueReader;->reserveSpace(I)V

    .line 122
    iget-object v0, p0, Lgnu/text/QueueReader;->buffer:[C

    iget v1, p0, Lgnu/text/QueueReader;->limit:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    iget v0, p0, Lgnu/text/QueueReader;->limit:I

    add-int/2addr v0, p3

    iput v0, p0, Lgnu/text/QueueReader;->limit:I

    .line 124
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    monitor-exit p0

    return-void

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized appendEOF()V
    .locals 1

    .prologue
    .line 138
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lgnu/text/QueueReader;->EOFseen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    monitor-exit p0

    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public checkAvailable()V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 207
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lgnu/text/QueueReader;->pos:I

    .line 208
    const/4 v0, 0x0

    iput v0, p0, Lgnu/text/QueueReader;->limit:I

    .line 209
    const/4 v0, 0x0

    iput v0, p0, Lgnu/text/QueueReader;->mark:I

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnu/text/QueueReader;->EOFseen:Z

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/text/QueueReader;->buffer:[C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    monitor-exit p0

    return-void

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized mark(I)V
    .locals 1
    .parameter "readAheadLimit"

    .prologue
    .line 30
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lgnu/text/QueueReader;->readAheadLimit:I

    .line 31
    iget v0, p0, Lgnu/text/QueueReader;->pos:I

    iput v0, p0, Lgnu/text/QueueReader;->mark:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit p0

    return-void

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized read()I
    .locals 4

    .prologue
    .line 163
    monitor-enter p0

    :goto_0
    :try_start_0
    iget v1, p0, Lgnu/text/QueueReader;->pos:I

    iget v2, p0, Lgnu/text/QueueReader;->limit:I

    if-lt v1, v2, :cond_1

    .line 165
    iget-boolean v1, p0, Lgnu/text/QueueReader;->EOFseen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 166
    const/4 v1, -0x1

    .line 177
    :goto_1
    monitor-exit p0

    return v1

    .line 167
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lgnu/text/QueueReader;->checkAvailable()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 172
    :catch_0
    move-exception v1

    goto :goto_0

    .line 176
    :cond_1
    :try_start_3
    iget-object v1, p0, Lgnu/text/QueueReader;->buffer:[C

    iget v2, p0, Lgnu/text/QueueReader;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lgnu/text/QueueReader;->pos:I

    aget-char v0, v1, v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .local v0, ch:C
    move v1, v0

    .line 177
    goto :goto_1

    .line 163
    .end local v0           #ch:C
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized read([CII)I
    .locals 3
    .parameter "cbuf"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 182
    monitor-enter p0

    if-nez p3, :cond_1

    .line 183
    const/4 v1, 0x0

    .line 202
    :goto_0
    monitor-exit p0

    return v1

    .line 188
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lgnu/text/QueueReader;->checkAvailable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 184
    :cond_1
    :goto_1
    :try_start_2
    iget v1, p0, Lgnu/text/QueueReader;->pos:I

    iget v2, p0, Lgnu/text/QueueReader;->limit:I

    if-lt v1, v2, :cond_2

    .line 186
    iget-boolean v1, p0, Lgnu/text/QueueReader;->EOFseen:Z

    if-eqz v1, :cond_0

    .line 187
    const/4 v1, -0x1

    goto :goto_0

    .line 197
    :cond_2
    iget v1, p0, Lgnu/text/QueueReader;->limit:I

    iget v2, p0, Lgnu/text/QueueReader;->pos:I

    sub-int v0, v1, v2

    .line 198
    .local v0, avail:I
    if-le p3, v0, :cond_3

    .line 199
    move p3, v0

    .line 200
    :cond_3
    iget-object v1, p0, Lgnu/text/QueueReader;->buffer:[C

    iget v2, p0, Lgnu/text/QueueReader;->pos:I

    invoke-static {v1, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    iget v1, p0, Lgnu/text/QueueReader;->pos:I

    add-int/2addr v1, p3

    iput v1, p0, Lgnu/text/QueueReader;->pos:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, p3

    .line 202
    goto :goto_0

    .line 193
    .end local v0           #avail:I
    :catch_0
    move-exception v1

    goto :goto_1

    .line 182
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized ready()Z
    .locals 2

    .prologue
    .line 151
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lgnu/text/QueueReader;->pos:I

    iget v1, p0, Lgnu/text/QueueReader;->limit:I

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lgnu/text/QueueReader;->EOFseen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected reserveSpace(I)V
    .locals 2
    .parameter "len"

    .prologue
    .line 143
    iget-object v0, p0, Lgnu/text/QueueReader;->buffer:[C

    if-nez v0, :cond_1

    .line 144
    add-int/lit8 v0, p1, 0x64

    new-array v0, v0, [C

    iput-object v0, p0, Lgnu/text/QueueReader;->buffer:[C

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    iget-object v0, p0, Lgnu/text/QueueReader;->buffer:[C

    array-length v0, v0

    iget v1, p0, Lgnu/text/QueueReader;->limit:I

    add-int/2addr v1, p1

    if-ge v0, v1, :cond_0

    .line 146
    invoke-virtual {p0, p1}, Lgnu/text/QueueReader;->resize(I)V

    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 36
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lgnu/text/QueueReader;->readAheadLimit:I

    if-lez v0, :cond_0

    .line 37
    iget v0, p0, Lgnu/text/QueueReader;->mark:I

    iput v0, p0, Lgnu/text/QueueReader;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_0
    monitor-exit p0

    return-void

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method resize(I)V
    .locals 5
    .parameter "len"

    .prologue
    const/4 v4, 0x0

    .line 42
    iget v2, p0, Lgnu/text/QueueReader;->limit:I

    iget v3, p0, Lgnu/text/QueueReader;->pos:I

    sub-int v0, v2, v3

    .line 43
    .local v0, cur_size:I
    iget v2, p0, Lgnu/text/QueueReader;->readAheadLimit:I

    if-lez v2, :cond_0

    iget v2, p0, Lgnu/text/QueueReader;->pos:I

    iget v3, p0, Lgnu/text/QueueReader;->mark:I

    sub-int/2addr v2, v3

    iget v3, p0, Lgnu/text/QueueReader;->readAheadLimit:I

    if-gt v2, v3, :cond_0

    .line 44
    iget v2, p0, Lgnu/text/QueueReader;->limit:I

    iget v3, p0, Lgnu/text/QueueReader;->mark:I

    sub-int v0, v2, v3

    .line 47
    :goto_0
    iget-object v2, p0, Lgnu/text/QueueReader;->buffer:[C

    array-length v2, v2

    add-int v3, v0, p1

    if-ge v2, v3, :cond_1

    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v2, p1

    new-array v2, v2, [C

    move-object v1, v2

    .line 50
    .local v1, new_buffer:[C
    :goto_1
    iget-object v2, p0, Lgnu/text/QueueReader;->buffer:[C

    iget v3, p0, Lgnu/text/QueueReader;->mark:I

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    iput-object v1, p0, Lgnu/text/QueueReader;->buffer:[C

    .line 52
    iget v2, p0, Lgnu/text/QueueReader;->pos:I

    iget v3, p0, Lgnu/text/QueueReader;->mark:I

    sub-int/2addr v2, v3

    iput v2, p0, Lgnu/text/QueueReader;->pos:I

    .line 53
    iput v4, p0, Lgnu/text/QueueReader;->mark:I

    .line 54
    iput v0, p0, Lgnu/text/QueueReader;->limit:I

    .line 55
    return-void

    .line 46
    .end local v1           #new_buffer:[C
    :cond_0
    iget v2, p0, Lgnu/text/QueueReader;->pos:I

    iput v2, p0, Lgnu/text/QueueReader;->mark:I

    goto :goto_0

    .line 47
    :cond_1
    iget-object v2, p0, Lgnu/text/QueueReader;->buffer:[C

    move-object v1, v2

    goto :goto_1
.end method
