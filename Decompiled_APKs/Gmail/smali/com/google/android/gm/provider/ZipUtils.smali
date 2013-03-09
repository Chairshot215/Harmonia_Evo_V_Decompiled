.class public Lcom/google/android/gm/provider/ZipUtils;
.super Ljava/lang/Object;
.source "ZipUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deflate([B)[B
    .locals 2
    .parameter "data"

    .prologue
    .line 83
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/android/gm/provider/ZipUtils;->deflate([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static deflate([BII)[B
    .locals 5
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 67
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 68
    .local v2, out:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/util/zip/DeflaterOutputStream;

    new-instance v3, Ljava/util/zip/Deflater;

    invoke-direct {v3}, Ljava/util/zip/Deflater;-><init>()V

    invoke-direct {v1, v2, v3}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V

    .line 70
    .local v1, os:Ljava/util/zip/DeflaterOutputStream;
    :try_start_0
    invoke-virtual {v1, p0, p1, p2}, Ljava/util/zip/DeflaterOutputStream;->write([BII)V

    .line 71
    invoke-virtual {v1}, Ljava/util/zip/DeflaterOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 72
    :catch_0
    move-exception v0

    .line 74
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "ByteArrayOutputStream threw "

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static inflate(Ljava/util/zip/Inflater;)[B
    .locals 5
    .parameter "inflater"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .prologue
    .line 22
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 23
    .local v2, out:Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 26
    .local v0, bytes:[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v1

    .line 27
    .local v1, len:I
    if-nez v1, :cond_0

    .line 32
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 33
    .local v3, unzipped:[B
    return-object v3

    .line 30
    .end local v3           #unzipped:[B
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method

.method public static inflate([BII)[B
    .locals 2
    .parameter "data"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    .line 43
    .local v0, inflater:Ljava/util/zip/Inflater;
    :try_start_0
    invoke-virtual {v0, p0, p1, p2}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 44
    invoke-static {v0}, Lcom/google/android/gm/provider/ZipUtils;->inflate(Ljava/util/zip/Inflater;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 46
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    throw v1
.end method

.method public static inflateToStream([B[B)Ljava/io/InputStream;
    .locals 3
    .parameter "compressed"
    .parameter "dict"

    .prologue
    .line 99
    new-instance v0, Lcom/google/android/gm/provider/ZipUtils$1;

    invoke-direct {v0, p1}, Lcom/google/android/gm/provider/ZipUtils$1;-><init>([B)V

    .line 108
    .local v0, inflater:Ljava/util/zip/Inflater;
    new-instance v1, Lcom/google/android/gm/provider/ZipUtils$2;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2, v0}, Lcom/google/android/gm/provider/ZipUtils$2;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    return-object v1
.end method
