.class public final Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "CsdClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Digests"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasMd5:Z

.field private hasSha1:Z

.field private hasSha256:Z

.field private md5_:Lcom/google/protobuf/micro/ByteStringMicro;

.field private sha1_:Lcom/google/protobuf/micro/ByteStringMicro;

.field private sha256_:Lcom/google/protobuf/micro/ByteStringMicro;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 28
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;->sha256_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 45
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;->sha1_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 62
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;->md5_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 102
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;->cachedSize:I

    .line 23
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;->cachedSize:I

    if-gez v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;->getSerializedSize()I

    .line 109
    :cond_0
    iget v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;->cachedSize:I

    return v0
.end method

.method public getMd5()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;->md5_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 114
    const/4 v0, 0x0

    .line 115
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;->hasSha256()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;->getSha256()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;->hasSha1()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;->getSha1()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 123
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;->hasMd5()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 124
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;->getMd5()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 127
    :cond_2
    iput v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;->cachedSize:I

    .line 128
    return v0
.end method

.method public getSha1()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;->sha1_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public getSha256()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;->sha256_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public hasMd5()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;->hasMd5:Z

    return v0
.end method

.method public hasSha1()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;->hasSha1:Z

    return v0
.end method

.method public hasSha256()Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;->hasSha256:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 137
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 141
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    :sswitch_0
    return-object p0

    .line 147
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;->setSha256(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;

    goto :goto_0

    .line 151
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;->setSha1(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;

    goto :goto_0

    .line 155
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;->setMd5(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;

    goto :goto_0

    .line 137
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;

    move-result-object v0

    return-object v0
.end method

.method public setMd5(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;
    .locals 1
    .parameter "value"

    .prologue
    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;->hasMd5:Z

    .line 67
    iput-object p1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;->md5_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 68
    return-object p0
.end method

.method public setSha1(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;
    .locals 1
    .parameter "value"

    .prologue
    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;->hasSha1:Z

    .line 50
    iput-object p1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;->sha1_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 51
    return-object p0
.end method

.method public setSha256(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;
    .locals 1
    .parameter "value"

    .prologue
    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;->hasSha256:Z

    .line 33
    iput-object p1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;->sha256_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 34
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;->hasSha256()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;->getSha256()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;->hasSha1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;->getSha1()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 97
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;->hasMd5()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;->getMd5()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 100
    :cond_2
    return-void
.end method
