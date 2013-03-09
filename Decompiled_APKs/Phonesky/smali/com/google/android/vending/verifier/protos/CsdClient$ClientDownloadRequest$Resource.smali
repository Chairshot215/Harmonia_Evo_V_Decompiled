.class public final Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "CsdClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Resource"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasReferrer:Z

.field private hasRemoteIp:Z

.field private hasType:Z

.field private hasUrl:Z

.field private referrer_:Ljava/lang/String;

.field private remoteIp_:Lcom/google/protobuf/micro/ByteStringMicro;

.field private type_:I

.field private url_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 183
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;->url_:Ljava/lang/String;

    .line 200
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;->type_:I

    .line 217
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;->remoteIp_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 234
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;->referrer_:Ljava/lang/String;

    .line 280
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;->cachedSize:I

    .line 178
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;->cachedSize:I

    if-gez v0, :cond_0

    .line 285
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;->getSerializedSize()I

    .line 287
    :cond_0
    iget v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;->cachedSize:I

    return v0
.end method

.method public getReferrer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;->referrer_:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteIp()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;->remoteIp_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 292
    const/4 v0, 0x0

    .line 293
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;->hasUrl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 294
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 297
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;->hasType()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 298
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;->getType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 301
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;->hasRemoteIp()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 302
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;->getRemoteIp()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 305
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;->hasReferrer()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 306
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;->getReferrer()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 309
    :cond_3
    iput v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;->cachedSize:I

    .line 310
    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;->type_:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public hasReferrer()Z
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;->hasReferrer:Z

    return v0
.end method

.method public hasRemoteIp()Z
    .locals 1

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;->hasRemoteIp:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;->hasType:Z

    return v0
.end method

.method public hasUrl()Z
    .locals 1

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;->hasUrl:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 318
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 319
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 323
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 324
    :sswitch_0
    return-object p0

    .line 329
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;->setUrl(Ljava/lang/String;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;

    goto :goto_0

    .line 333
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;->setType(I)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;

    goto :goto_0

    .line 337
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;->setRemoteIp(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;

    goto :goto_0

    .line 341
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;->setReferrer(Ljava/lang/String;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;

    goto :goto_0

    .line 319
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
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
    .line 175
    invoke-virtual {p0, p1}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;

    move-result-object v0

    return-object v0
.end method

.method public setReferrer(Ljava/lang/String;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;
    .locals 1
    .parameter "value"

    .prologue
    .line 238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;->hasReferrer:Z

    .line 239
    iput-object p1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;->referrer_:Ljava/lang/String;

    .line 240
    return-object p0
.end method

.method public setRemoteIp(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;
    .locals 1
    .parameter "value"

    .prologue
    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;->hasRemoteIp:Z

    .line 222
    iput-object p1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;->remoteIp_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 223
    return-object p0
.end method

.method public setType(I)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;
    .locals 1
    .parameter "value"

    .prologue
    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;->hasType:Z

    .line 205
    iput p1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;->type_:I

    .line 206
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;
    .locals 1
    .parameter "value"

    .prologue
    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;->hasUrl:Z

    .line 188
    iput-object p1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;->url_:Ljava/lang/String;

    .line 189
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
    .line 266
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 269
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;->hasType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;->getType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 272
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;->hasRemoteIp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 273
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;->getRemoteIp()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 275
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;->hasReferrer()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 276
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;->getReferrer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 278
    :cond_3
    return-void
.end method
