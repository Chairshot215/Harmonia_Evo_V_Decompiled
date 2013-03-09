.class public final Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "AndroidAppDelivery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EncryptionParams"
.end annotation


# instance fields
.field private cachedSize:I

.field private encryptionKey_:Ljava/lang/String;

.field private hasEncryptionKey:Z

.field private hasHmacKey:Z

.field private hasVersion:Z

.field private hmacKey_:Ljava/lang/String;

.field private version_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 328
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;->version_:I

    .line 345
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;->encryptionKey_:Ljava/lang/String;

    .line 362
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;->hmacKey_:Ljava/lang/String;

    .line 402
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;->cachedSize:I

    .line 323
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 405
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;->cachedSize:I

    if-gez v0, :cond_0

    .line 407
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;->getSerializedSize()I

    .line 409
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;->cachedSize:I

    return v0
.end method

.method public getEncryptionKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;->encryptionKey_:Ljava/lang/String;

    return-object v0
.end method

.method public getHmacKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;->hmacKey_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 414
    const/4 v0, 0x0

    .line 415
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;->hasVersion()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 416
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;->getVersion()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 419
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;->hasEncryptionKey()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 420
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;->getEncryptionKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 423
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;->hasHmacKey()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 424
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;->getHmacKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 427
    :cond_2
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;->cachedSize:I

    .line 428
    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 329
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;->version_:I

    return v0
.end method

.method public hasEncryptionKey()Z
    .locals 1

    .prologue
    .line 347
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;->hasEncryptionKey:Z

    return v0
.end method

.method public hasHmacKey()Z
    .locals 1

    .prologue
    .line 364
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;->hasHmacKey:Z

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 330
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;->hasVersion:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 436
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 437
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 441
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 442
    :sswitch_0
    return-object p0

    .line 447
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;->setVersion(I)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;

    goto :goto_0

    .line 451
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;->setEncryptionKey(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;

    goto :goto_0

    .line 455
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;->setHmacKey(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;

    goto :goto_0

    .line 437
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
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
    .line 320
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;

    move-result-object v0

    return-object v0
.end method

.method public setEncryptionKey(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;
    .locals 1
    .parameter "value"

    .prologue
    .line 349
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;->hasEncryptionKey:Z

    .line 350
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;->encryptionKey_:Ljava/lang/String;

    .line 351
    return-object p0
.end method

.method public setHmacKey(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;
    .locals 1
    .parameter "value"

    .prologue
    .line 366
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;->hasHmacKey:Z

    .line 367
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;->hmacKey_:Ljava/lang/String;

    .line 368
    return-object p0
.end method

.method public setVersion(I)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;
    .locals 1
    .parameter "value"

    .prologue
    .line 332
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;->hasVersion:Z

    .line 333
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;->version_:I

    .line 334
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
    .line 391
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;->getVersion()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 394
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;->hasEncryptionKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 395
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;->getEncryptionKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 397
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;->hasHmacKey()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 398
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;->getHmacKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 400
    :cond_2
    return-void
.end method
