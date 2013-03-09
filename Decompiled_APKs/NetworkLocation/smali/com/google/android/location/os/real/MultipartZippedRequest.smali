.class public Lcom/google/android/location/os/real/MultipartZippedRequest;
.super Lcom/google/masf/protocol/SimpleRequest;
.source "MultipartZippedRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/location/os/real/MultipartZippedRequest$GZipInputStreamProvider;
    }
.end annotation


# static fields
.field private static final BODY_PART_COUNT:[B


# instance fields
.field private payloadHeader:[B

.field private payloadProvider:Lcom/google/masf/InputStreamProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/location/os/real/MultipartZippedRequest;->BODY_PART_COUNT:[B

    return-void

    nop

    :array_0
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "serviceUri"
    .parameter "serviceVersion"

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/location/os/real/MultipartZippedRequest;-><init>(Ljava/lang/String;I[B)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[B)V
    .locals 1
    .parameter "serviceUri"
    .parameter "serviceVersion"
    .parameter "payload"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/google/masf/protocol/SimpleRequest;-><init>(Ljava/lang/String;I)V

    .line 69
    const/16 v0, 0x101

    invoke-virtual {p0, v0}, Lcom/google/android/location/os/real/MultipartZippedRequest;->setBlockType(I)V

    .line 70
    invoke-virtual {p0, p3}, Lcom/google/android/location/os/real/MultipartZippedRequest;->setPayload([B)V

    .line 71
    return-void
.end method

.method private generateBlockData()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    const-string v0, "MultipartRequest.generateBlockData(): monitor on \'this\' must be held by the current thread"

    invoke-static {v0, p0}, Lcom/google/common/util/Assert;->assertLocked(Ljava/lang/String;Ljava/lang/Object;)V

    .line 150
    iget-object v0, p0, Lcom/google/android/location/os/real/MultipartZippedRequest;->payloadHeader:[B

    if-nez v0, :cond_0

    .line 151
    invoke-direct {p0}, Lcom/google/android/location/os/real/MultipartZippedRequest;->generatePayloadHeader()V

    .line 153
    :cond_0
    return-void
.end method

.method private generatePayloadHeader()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 106
    const-string v2, "MultipartRequest.generatePayloadHeader(): monitor on \'this\' must be held by the current thread"

    invoke-static {v2, p0}, Lcom/google/common/util/Assert;->assertLocked(Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 110
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 112
    .local v1, dos:Ljava/io/DataOutputStream;
    invoke-virtual {p0}, Lcom/google/android/location/os/real/MultipartZippedRequest;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 113
    invoke-virtual {p0}, Lcom/google/android/location/os/real/MultipartZippedRequest;->getServiceUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/google/android/location/os/real/MultipartZippedRequest;->getServiceVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 115
    const-string v2, "POST"

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 116
    const/16 v2, 0x6d72

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 117
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 118
    const-string v2, "ROOT"

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 121
    iget-object v2, p0, Lcom/google/android/location/os/real/MultipartZippedRequest;->payloadProvider:Lcom/google/masf/InputStreamProvider;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/location/os/real/MultipartZippedRequest;->payloadProvider:Lcom/google/masf/InputStreamProvider;

    invoke-interface {v2}, Lcom/google/masf/InputStreamProvider;->getStreamLength()I

    move-result v2

    if-lez v2, :cond_0

    .line 123
    iget-object v2, p0, Lcom/google/android/location/os/real/MultipartZippedRequest;->payloadProvider:Lcom/google/masf/InputStreamProvider;

    invoke-interface {v2}, Lcom/google/masf/InputStreamProvider;->getStreamLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 124
    const-string v2, "g"

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 130
    :goto_0
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 131
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 133
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/location/os/real/MultipartZippedRequest;->payloadHeader:[B

    .line 134
    return-void

    .line 126
    :cond_0
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized dispose()V
    .locals 1

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/google/masf/protocol/SimpleRequest;->dispose()V

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/os/real/MultipartZippedRequest;->payloadHeader:[B

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/os/real/MultipartZippedRequest;->payloadProvider:Lcom/google/masf/InputStreamProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    monitor-exit p0

    return-void

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getBodyInputStream()Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/google/android/location/os/real/MultipartZippedRequest;->generateBlockData()V

    .line 158
    iget-object v0, p0, Lcom/google/android/location/os/real/MultipartZippedRequest;->payloadProvider:Lcom/google/masf/InputStreamProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/os/real/MultipartZippedRequest;->payloadProvider:Lcom/google/masf/InputStreamProvider;

    invoke-interface {v0}, Lcom/google/masf/InputStreamProvider;->getStreamLength()I

    move-result v0

    if-nez v0, :cond_1

    .line 160
    :cond_0
    new-instance v0, Lcom/google/common/io/SequenceInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/google/android/location/os/real/MultipartZippedRequest;->payloadHeader:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v2, Ljava/io/ByteArrayInputStream;

    sget-object v3, Lcom/google/android/location/os/real/MultipartZippedRequest;->BODY_PART_COUNT:[B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1, v2}, Lcom/google/common/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    .line 165
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/google/common/io/SequenceInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/google/android/location/os/real/MultipartZippedRequest;->payloadHeader:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v2, p0, Lcom/google/android/location/os/real/MultipartZippedRequest;->payloadProvider:Lcom/google/masf/InputStreamProvider;

    invoke-interface {v2}, Lcom/google/masf/InputStreamProvider;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayInputStream;

    sget-object v4, Lcom/google/android/location/os/real/MultipartZippedRequest;->BODY_PART_COUNT:[B

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method protected getBodyStreamLength()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/google/android/location/os/real/MultipartZippedRequest;->generateBlockData()V

    .line 173
    iget-object v1, p0, Lcom/google/android/location/os/real/MultipartZippedRequest;->payloadHeader:[B

    array-length v1, v1

    sget-object v2, Lcom/google/android/location/os/real/MultipartZippedRequest;->BODY_PART_COUNT:[B

    array-length v2, v2

    add-int v0, v1, v2

    .line 174
    .local v0, length:I
    iget-object v1, p0, Lcom/google/android/location/os/real/MultipartZippedRequest;->payloadProvider:Lcom/google/masf/InputStreamProvider;

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/google/android/location/os/real/MultipartZippedRequest;->payloadProvider:Lcom/google/masf/InputStreamProvider;

    invoke-interface {v1}, Lcom/google/masf/InputStreamProvider;->getStreamLength()I

    move-result v1

    add-int/2addr v0, v1

    .line 177
    :cond_0
    return v0
.end method

.method public declared-synchronized setId(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/google/masf/protocol/SimpleRequest;->setId(I)V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/os/real/MultipartZippedRequest;->payloadHeader:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit p0

    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPayload([B)V
    .locals 1
    .parameter "payload"

    .prologue
    .line 93
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    if-lez v0, :cond_0

    .line 96
    new-instance v0, Lcom/google/android/location/os/real/MultipartZippedRequest$GZipInputStreamProvider;

    invoke-direct {v0, p1}, Lcom/google/android/location/os/real/MultipartZippedRequest$GZipInputStreamProvider;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/location/os/real/MultipartZippedRequest;->payloadProvider:Lcom/google/masf/InputStreamProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :goto_0
    monitor-exit p0

    return-void

    .line 98
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/google/android/location/os/real/MultipartZippedRequest;->payloadProvider:Lcom/google/masf/InputStreamProvider;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
