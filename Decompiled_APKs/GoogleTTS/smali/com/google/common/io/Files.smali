.class public final Lcom/google/common/io/Files;
.super Ljava/lang/Object;
.source "Files.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInputStreamSupplier(Ljava/io/File;)Lcom/google/common/io/InputSupplier;
    .locals 1
    .parameter "file"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/google/common/io/InputSupplier",
            "<",
            "Ljava/io/FileInputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-instance v0, Lcom/google/common/io/Files$1;

    invoke-direct {v0, p0}, Lcom/google/common/io/Files$1;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static newOutputStreamSupplier(Ljava/io/File;)Lcom/google/common/io/OutputSupplier;
    .locals 1
    .parameter "file"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/google/common/io/OutputSupplier",
            "<",
            "Ljava/io/FileOutputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/common/io/Files;->newOutputStreamSupplier(Ljava/io/File;Z)Lcom/google/common/io/OutputSupplier;

    move-result-object v0

    return-object v0
.end method

.method public static newOutputStreamSupplier(Ljava/io/File;Z)Lcom/google/common/io/OutputSupplier;
    .locals 1
    .parameter "file"
    .parameter "append"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Z)",
            "Lcom/google/common/io/OutputSupplier",
            "<",
            "Ljava/io/FileOutputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    new-instance v0, Lcom/google/common/io/Files$2;

    invoke-direct {v0, p0, p1}, Lcom/google/common/io/Files$2;-><init>(Ljava/io/File;Z)V

    return-object v0
.end method

.method public static toByteArray(Ljava/io/File;)[B
    .locals 7
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 186
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 188
    invoke-static {p0}, Lcom/google/common/io/Files;->newInputStreamSupplier(Ljava/io/File;)Lcom/google/common/io/InputSupplier;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/io/ByteStreams;->toByteArray(Lcom/google/common/io/InputSupplier;)[B

    move-result-object v0

    .line 200
    :goto_1
    return-object v0

    .line 185
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 191
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v3, v3

    new-array v0, v3, [B

    .line 192
    .local v0, b:[B
    const/4 v2, 0x1

    .line 193
    .local v2, threw:Z
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 195
    .local v1, in:Ljava/io/InputStream;
    :try_start_0
    invoke-static {v1, v0}, Lcom/google/common/io/ByteStreams;->readFully(Ljava/io/InputStream;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    const/4 v2, 0x0

    .line 198
    invoke-static {v1, v2}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    goto :goto_1

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v3
.end method

.method public static write([BLjava/io/File;)V
    .locals 1
    .parameter "from"
    .parameter "to"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    invoke-static {p1}, Lcom/google/common/io/Files;->newOutputStreamSupplier(Ljava/io/File;)Lcom/google/common/io/OutputSupplier;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/io/ByteStreams;->write([BLcom/google/common/io/OutputSupplier;)V

    .line 239
    return-void
.end method
