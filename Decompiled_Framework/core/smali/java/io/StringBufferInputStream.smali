.class public Ljava/io/StringBufferInputStream;
.super Ljava/io/InputStream;
.source "StringBufferInputStream.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected buffer:Ljava/lang/String;

.field protected count:I

.field protected pos:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Ljava/io/StringBufferInputStream;->buffer:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Ljava/io/StringBufferInputStream;->count:I

    return-void
.end method


# virtual methods
.method public declared-synchronized available()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/io/StringBufferInputStream;->count:I

    iget v1, p0, Ljava/io/StringBufferInputStream;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read()I
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/io/StringBufferInputStream;->pos:I

    iget v1, p0, Ljava/io/StringBufferInputStream;->count:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Ljava/io/StringBufferInputStream;->buffer:Ljava/lang/String;

    iget v1, p0, Ljava/io/StringBufferInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/StringBufferInputStream;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    and-int/lit16 v0, v0, 0xff

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .locals 5

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "buffer == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_0
    :try_start_1
    array-length v2, p1

    invoke-static {v2, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p3, :cond_1

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_2
    iget v2, p0, Ljava/io/StringBufferInputStream;->count:I

    iget v3, p0, Ljava/io/StringBufferInputStream;->pos:I

    sub-int/2addr v2, v3

    if-ge v2, p3, :cond_2

    iget v2, p0, Ljava/io/StringBufferInputStream;->count:I

    iget v3, p0, Ljava/io/StringBufferInputStream;->pos:I

    sub-int v0, v2, v3

    :goto_1
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_3

    add-int v2, p2, v1

    iget-object v3, p0, Ljava/io/StringBufferInputStream;->buffer:Ljava/lang/String;

    iget v4, p0, Ljava/io/StringBufferInputStream;->pos:I

    add-int/2addr v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    move v0, p3

    goto :goto_1

    :cond_3
    iget v2, p0, Ljava/io/StringBufferInputStream;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Ljava/io/StringBufferInputStream;->pos:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Ljava/io/StringBufferInputStream;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized skip(J)J
    .locals 4

    const-wide/16 v1, 0x0

    monitor-enter p0

    cmp-long v3, p1, v1

    if-gtz v3, :cond_0

    :goto_0
    monitor-exit p0

    return-wide v1

    :cond_0
    :try_start_0
    iget v1, p0, Ljava/io/StringBufferInputStream;->count:I

    iget v2, p0, Ljava/io/StringBufferInputStream;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    cmp-long v1, v1, p1

    if-gez v1, :cond_1

    iget v1, p0, Ljava/io/StringBufferInputStream;->count:I

    iget v2, p0, Ljava/io/StringBufferInputStream;->pos:I

    sub-int v0, v1, v2

    iget v1, p0, Ljava/io/StringBufferInputStream;->count:I

    iput v1, p0, Ljava/io/StringBufferInputStream;->pos:I

    :goto_1
    int-to-long v1, v0

    goto :goto_0

    :cond_1
    long-to-int v0, p1

    iget v1, p0, Ljava/io/StringBufferInputStream;->pos:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    long-to-int v1, v1

    iput v1, p0, Ljava/io/StringBufferInputStream;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
