.class final Lcom/google/android/location/os/real/MultipartZippedRequest$GZipInputStreamProvider;
.super Ljava/lang/Object;
.source "MultipartZippedRequest.java"

# interfaces
.implements Lcom/google/masf/InputStreamProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/location/os/real/MultipartZippedRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GZipInputStreamProvider"
.end annotation


# instance fields
.field private mRaw:[B

.field private mZipped:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .parameter "raw"

    .prologue
    const/4 v0, 0x0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-object v0, p0, Lcom/google/android/location/os/real/MultipartZippedRequest$GZipInputStreamProvider;->mRaw:[B

    .line 186
    iput-object v0, p0, Lcom/google/android/location/os/real/MultipartZippedRequest$GZipInputStreamProvider;->mZipped:[B

    .line 194
    iput-object p1, p0, Lcom/google/android/location/os/real/MultipartZippedRequest$GZipInputStreamProvider;->mRaw:[B

    .line 195
    return-void
.end method

.method private gzip([B)[B
    .locals 3
    .parameter "raw"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 211
    .local v1, rawOut:Ljava/io/ByteArrayOutputStream;
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 212
    .local v0, out:Ljava/util/zip/GZIPOutputStream;
    invoke-virtual {v0, p1}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 213
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 214
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 215
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/location/os/real/MultipartZippedRequest$GZipInputStreamProvider;->mRaw:[B

    .line 216
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method private declared-synchronized mightZip()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/os/real/MultipartZippedRequest$GZipInputStreamProvider;->mZipped:[B

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/google/android/location/os/real/MultipartZippedRequest$GZipInputStreamProvider;->mRaw:[B

    invoke-direct {p0, v0}, Lcom/google/android/location/os/real/MultipartZippedRequest$GZipInputStreamProvider;->gzip([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/os/real/MultipartZippedRequest$GZipInputStreamProvider;->mZipped:[B

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/os/real/MultipartZippedRequest$GZipInputStreamProvider;->mRaw:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    :cond_0
    monitor-exit p0

    return-void

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 199
    iput-object v0, p0, Lcom/google/android/location/os/real/MultipartZippedRequest$GZipInputStreamProvider;->mRaw:[B

    .line 200
    iput-object v0, p0, Lcom/google/android/location/os/real/MultipartZippedRequest$GZipInputStreamProvider;->mZipped:[B

    .line 201
    return-void
.end method

.method public declared-synchronized getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/location/os/real/MultipartZippedRequest$GZipInputStreamProvider;->mightZip()V

    .line 235
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/google/android/location/os/real/MultipartZippedRequest$GZipInputStreamProvider;->mZipped:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStreamLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/location/os/real/MultipartZippedRequest$GZipInputStreamProvider;->mightZip()V

    .line 244
    iget-object v0, p0, Lcom/google/android/location/os/real/MultipartZippedRequest$GZipInputStreamProvider;->mZipped:[B

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
