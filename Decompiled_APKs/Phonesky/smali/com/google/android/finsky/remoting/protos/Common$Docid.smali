.class public final Lcom/google/android/finsky/remoting/protos/Common$Docid;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Common.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Common;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Docid"
.end annotation


# instance fields
.field private backendDocid_:Ljava/lang/String;

.field private backend_:I

.field private cachedSize:I

.field private hasBackend:Z

.field private hasBackendDocid:Z

.field private hasType:Z

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 334
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 339
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Docid;->backendDocid_:Ljava/lang/String;

    .line 356
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Docid;->type_:I

    .line 373
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Docid;->backend_:I

    .line 416
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Docid;->cachedSize:I

    .line 334
    return-void
.end method


# virtual methods
.method public getBackend()I
    .locals 1

    .prologue
    .line 375
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Docid;->backend_:I

    return v0
.end method

.method public getBackendDocid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Docid;->backendDocid_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 419
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Docid;->cachedSize:I

    if-gez v0, :cond_0

    .line 421
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Docid;->getSerializedSize()I

    .line 423
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Docid;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 428
    const/4 v0, 0x0

    .line 429
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Docid;->hasBackendDocid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 430
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Docid;->getBackendDocid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 433
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Docid;->hasType()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 434
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Docid;->getType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 437
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Docid;->hasBackend()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 438
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Docid;->getBackend()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 441
    :cond_2
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Docid;->cachedSize:I

    .line 442
    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 358
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Docid;->type_:I

    return v0
.end method

.method public hasBackend()Z
    .locals 1

    .prologue
    .line 374
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Docid;->hasBackend:Z

    return v0
.end method

.method public hasBackendDocid()Z
    .locals 1

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Docid;->hasBackendDocid:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 357
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Docid;->hasType:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Common$Docid;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 450
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 451
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 455
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Common$Docid;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 456
    :sswitch_0
    return-object p0

    .line 461
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Common$Docid;->setBackendDocid(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Common$Docid;

    goto :goto_0

    .line 465
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Common$Docid;->setType(I)Lcom/google/android/finsky/remoting/protos/Common$Docid;

    goto :goto_0

    .line 469
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Common$Docid;->setBackend(I)Lcom/google/android/finsky/remoting/protos/Common$Docid;

    goto :goto_0

    .line 451
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
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
    .line 331
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Common$Docid;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Common$Docid;

    move-result-object v0

    return-object v0
.end method

.method public setBackend(I)Lcom/google/android/finsky/remoting/protos/Common$Docid;
    .locals 1
    .parameter "value"

    .prologue
    .line 377
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Docid;->hasBackend:Z

    .line 378
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Common$Docid;->backend_:I

    .line 379
    return-object p0
.end method

.method public setBackendDocid(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Common$Docid;
    .locals 1
    .parameter "value"

    .prologue
    .line 343
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Docid;->hasBackendDocid:Z

    .line 344
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Common$Docid;->backendDocid_:Ljava/lang/String;

    .line 345
    return-object p0
.end method

.method public setType(I)Lcom/google/android/finsky/remoting/protos/Common$Docid;
    .locals 1
    .parameter "value"

    .prologue
    .line 360
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Docid;->hasType:Z

    .line 361
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Common$Docid;->type_:I

    .line 362
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
    .line 405
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Docid;->hasBackendDocid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Docid;->getBackendDocid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 408
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Docid;->hasType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Docid;->getType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 411
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Docid;->hasBackend()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 412
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Docid;->getBackend()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 414
    :cond_2
    return-void
.end method
