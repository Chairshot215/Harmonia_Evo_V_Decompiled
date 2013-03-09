.class public Lcom/android/browser/SnapshotByteArrayOutputStream;
.super Ljava/io/OutputStream;
.source "SnapshotByteArrayOutputStream.java"


# static fields
.field private static final MAX_SIZE:I = 0x19f0a0


# instance fields
.field private mStream:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 30
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const v1, 0x19f0a0

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lcom/android/browser/SnapshotByteArrayOutputStream;->mStream:Ljava/io/ByteArrayOutputStream;

    .line 31
    return-void
.end method

.method private checkError(I)V
    .locals 2
    .parameter "expandBy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/android/browser/SnapshotByteArrayOutputStream;->size()I

    move-result v0

    add-int/2addr v0, p1

    const v1, 0x19f0a0

    if-le v0, v1, :cond_0

    .line 47
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Exceeded max size!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    return-void
.end method


# virtual methods
.method public size()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/browser/SnapshotByteArrayOutputStream;->mStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    return v0
.end method

.method public toByteArray()[B
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/browser/SnapshotByteArrayOutputStream;->mStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized write(I)V
    .locals 1
    .parameter "oneByte"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/browser/SnapshotByteArrayOutputStream;->checkError(I)V

    .line 36
    iget-object v0, p0, Lcom/android/browser/SnapshotByteArrayOutputStream;->mStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    monitor-exit p0

    return-void

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public write([BII)V
    .locals 1
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p3}, Lcom/android/browser/SnapshotByteArrayOutputStream;->checkError(I)V

    .line 42
    iget-object v0, p0, Lcom/android/browser/SnapshotByteArrayOutputStream;->mStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 43
    return-void
.end method
