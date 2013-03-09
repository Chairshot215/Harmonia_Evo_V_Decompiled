.class public final Lcom/google/android/finsky/remoting/protos/Common$SignedData;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Common.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Common;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SignedData"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasSignature:Z

.field private hasSignedData:Z

.field private signature_:Ljava/lang/String;

.field private signedData_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2365
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2370
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$SignedData;->signedData_:Ljava/lang/String;

    .line 2387
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$SignedData;->signature_:Ljava/lang/String;

    .line 2425
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Common$SignedData;->cachedSize:I

    .line 2365
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2428
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Common$SignedData;->cachedSize:I

    if-gez v0, :cond_0

    .line 2430
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$SignedData;->getSerializedSize()I

    .line 2432
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Common$SignedData;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2437
    const/4 v0, 0x0

    .line 2438
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$SignedData;->hasSignedData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2439
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$SignedData;->getSignedData()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2442
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$SignedData;->hasSignature()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2443
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$SignedData;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2446
    :cond_1
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Common$SignedData;->cachedSize:I

    .line 2447
    return v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2388
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$SignedData;->signature_:Ljava/lang/String;

    return-object v0
.end method

.method public getSignedData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2371
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$SignedData;->signedData_:Ljava/lang/String;

    return-object v0
.end method

.method public hasSignature()Z
    .locals 1

    .prologue
    .line 2389
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$SignedData;->hasSignature:Z

    return v0
.end method

.method public hasSignedData()Z
    .locals 1

    .prologue
    .line 2372
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$SignedData;->hasSignedData:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Common$SignedData;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2455
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2456
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2460
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Common$SignedData;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2461
    :sswitch_0
    return-object p0

    .line 2466
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Common$SignedData;->setSignedData(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Common$SignedData;

    goto :goto_0

    .line 2470
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Common$SignedData;->setSignature(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Common$SignedData;

    goto :goto_0

    .line 2456
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 2362
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Common$SignedData;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Common$SignedData;

    move-result-object v0

    return-object v0
.end method

.method public setSignature(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Common$SignedData;
    .locals 1
    .parameter "value"

    .prologue
    .line 2391
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$SignedData;->hasSignature:Z

    .line 2392
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Common$SignedData;->signature_:Ljava/lang/String;

    .line 2393
    return-object p0
.end method

.method public setSignedData(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Common$SignedData;
    .locals 1
    .parameter "value"

    .prologue
    .line 2374
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$SignedData;->hasSignedData:Z

    .line 2375
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Common$SignedData;->signedData_:Ljava/lang/String;

    .line 2376
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
    .line 2417
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$SignedData;->hasSignedData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2418
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$SignedData;->getSignedData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2420
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$SignedData;->hasSignature()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2421
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$SignedData;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2423
    :cond_1
    return-void
.end method
